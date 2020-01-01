-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local Class = ns.Class

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local Map = Class('Map')

Map.id = 0

function Map:init ()
    self.nodes = {}
end

function Map:prepare () end

function Map:enabled (node, coord, minimap)
    local db = ns.addon.db

    -- Check if we've been hidden by the user
    if db.char[self.id..'_coord_'..coord] then return false end

    return node:enabled(self, coord, minimap)
end

-------------------------------------------------------------------------------
---------------------------- MINIMAP DATA PROVIDER ----------------------------
-------------------------------------------------------------------------------

local HBD = LibStub("HereBeDragons-2.0")
local HBDPins = LibStub("HereBeDragons-Pins-2.0")
local MinimapPinsKey = ADDON_NAME.."MinimapPins"
local MinimapDataProvider = CreateFrame("Frame", ADDON_NAME.."MinimapDP")

MinimapDataProvider.facing = GetPlayerFacing()
MinimapDataProvider.indoors = GetCVar("minimapZoom")+0 == Minimap:GetZoom() and "outdoor" or "indoor"
MinimapDataProvider.pins = {}
MinimapDataProvider.pool = {}
MinimapDataProvider.scales = {
    indoor = {1, 1.25, 5/3, 2.5, 3.75, 6},
    outdoor = {1, 7/6, 1.4, 1.75, 7/3, 3.5}
}

function MinimapDataProvider:ReleasePin(pin)
    pin:Hide()
    self.pool[pin] = true
end

function MinimapDataProvider:ReleaseAllPins()
    for i, pin in ipairs(self.pins) do
        self:ReleasePin(pin)
    end
end

function MinimapDataProvider:AcquirePin(mapID, poi, ...)
    local pin = next(self.pool)
    if pin then
        self.pool[pin] = nil -- remove it from the pool
    else
        pin = self:CreatePin()
    end

    -- Calculate the scale size for this zoom level. Don't ask where I got
    -- the 700 and 466 values from. I tried values at the 1.5 aspect ratio
    -- (which is the same ratio the world map uses) until shit looked correct.
    -- The minimap API is horrendous compared to the world map one. Luckily
    -- the HBD author had already figured out the scale values for each zoom
    -- level (in self.scales).
    local scale = self.scales[self.indoors][Minimap:GetZoom()+1]
    pin.parentWidth = 700 * scale
    pin.parentHeight = 466 * scale

    local x, y = poi:draw(pin, ...)
    if GetCVar('rotateMinimap') == '1' then
        pin.texture:SetRotation(pin.texture:GetRotation() + math.pi*2 - self.facing)
    end
    HBDPins:AddMinimapIconMap(MinimapPinsKey, pin, mapID, x, y, true)
end

function MinimapDataProvider:CreatePin()
    local name = ADDON_NAME.."Pin"..(#self.pins + 1)
    local pin = CreateFrame("Button", name, Minimap)
    local texture = pin:CreateTexture(nil, "OVERLAY")
    pin:SetFrameLevel(Minimap:GetFrameLevel() + 3)
    pin:SetFrameStrata(Minimap:GetFrameStrata())
    pin:SetParent(Minimap)
    pin:SetWidth(12)
    pin:SetHeight(12)
    pin.texture = texture
    texture:SetAllPoints(pin)
    texture:SetTexelSnappingBias(0)
    texture:SetSnapToPixelGrid(false)
    pin:Hide()
    self.pins[#self.pins + 1] = pin
    return pin
end

function MinimapDataProvider:RefreshAllData()
    self.lastRefresh = GetTime()
    HBDPins:RemoveAllMinimapIcons(MinimapPinsKey)
    self:ReleaseAllPins()

    local map = ns.maps[HBD:GetPlayerZone()]
    if not map then return end

    for coord, node in pairs(map.nodes) do
        if node._focus or node._hover then
            for i, poi in ipairs(node.pois or {}) do
                poi:render(self, map.id)
            end
        end
    end
end

function MinimapDataProvider:OnUpdate()
    local facing = GetPlayerFacing()
    if facing ~= self.facing then
        if GetCVar('rotateMinimap') == '1' then
            self:RefreshAllData()
        end
        self.facing = facing
    end
end

MinimapDataProvider:SetScript('OnUpdate', function ()
    MinimapDataProvider:OnUpdate()
end)

ns.addon:RegisterEvent('MINIMAP_UPDATE_ZOOM', function (...)
    local zoom = Minimap:GetZoom()
    if GetCVar("minimapZoom") == GetCVar("minimapInsideZoom") then
        Minimap:SetZoom(zoom < 2 and zoom + 1 or zoom - 1)
    end
    MinimapDataProvider.indoors = GetCVar("minimapZoom")+0 == Minimap:GetZoom() and "outdoor" or "indoor"
    Minimap:SetZoom(zoom)
end)

hooksecurefunc(Minimap, "SetZoom", function ()
    MinimapDataProvider:RefreshAllData()
end)

-------------------------------------------------------------------------------
--------------------------- WORLD MAP DATA PROVIDER ---------------------------
-------------------------------------------------------------------------------

local WorldMapDataProvider = CreateFromMixins(MapCanvasDataProviderMixin)
local WorldMapPinTemplate = ADDON_NAME..'WorldMapPinTemplate'
local WorldMapPinMixin = CreateFromMixins(MapCanvasPinMixin)

_G[ADDON_NAME..'WorldMapPinMixin'] = WorldMapPinMixin

function WorldMapDataProvider:RemoveAllData()
    if self:GetMap() then
        self:GetMap():RemoveAllPinsByTemplate(WorldMapPinTemplate)
    end
end

function WorldMapDataProvider:RefreshAllData(fromOnShow)
    self:RemoveAllData()

    if not self:GetMap() then return end
    local map = ns.maps[self:GetMap():GetMapID()]
    if not map then return end

    for coord, node in pairs(map.nodes) do
        if node._focus or node._hover then
            for i, poi in ipairs(node.pois or {}) do
                poi:render(self:GetMap(), WorldMapPinTemplate)
            end
        end
    end
end

function WorldMapPinMixin:OnLoad()
    -- The MAP_HIGHLIGHT frame level is well below the level standard
    -- HandyNotes pins use, preventing mouseover conflicts
    self:UseFrameLevelType("PIN_FRAME_LEVEL_MAP_HIGHLIGHT")
end

function WorldMapPinMixin:OnAcquired(poi, ...)
    local l, b, w, h = self:GetParent():GetRect()
    self.parentWidth = w
    self.parentHeight = h
    if (w and h) then
        local x, y = poi:draw(self, ...)
        self:SetPosition(x, y)
    end
end

-------------------------------------------------------------------------------
------------------------------ HANDYNOTES HOOKS -------------------------------
-------------------------------------------------------------------------------

-- HandyNotes removes its data provider from the world map when the global
-- enable/disable checkbox is toggled at the top of its UI window. We need
-- to do the same thing here or our paths will still display.

local OnEnable = HandyNotes.OnEnable
local OnDisable = HandyNotes.OnDisable

function HandyNotes:OnEnable()
    OnEnable(self)
    if not HandyNotes.db.profile.enabled then return end
    WorldMapFrame:AddDataProvider(WorldMapDataProvider)
end

function HandyNotes:OnDisable()
    OnDisable(self)
    if WorldMapFrame.dataProviders[WorldMapDataProvider] then
        WorldMapFrame:RemoveDataProvider(WorldMapDataProvider)
    end
end

-------------------------------------------------------------------------------

ns.Map = Map
ns.MinimapDataProvider = MinimapDataProvider
ns.WorldMapDataProvider = WorldMapDataProvider
