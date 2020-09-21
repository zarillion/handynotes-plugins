-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local Class = ns.Class

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

--[[

Base class for all maps.

    id (integer): MapID value for this map
    intro (Node): An intro node to display when phased
    phased (boolean): If false, hide all nodes except the intro node.
    settings (boolean): Create a settings panel for this map (default: true).

--]]

local Map = Class('Map', nil, {
    id = 0,
    name = nil,
    intro = nil,
    phased = true
})

function Map:Initialize ()
    self.nodes = {}
    self.groups = {}
    self.settings = self.settings ~= false

    setmetatable(self.nodes, {
        __newindex = function (nodes, coord, node)
            self:add(coord, node)
        end
    })

    -- auto-register this map
    if ns.maps[self.id] then error('Map already registered: '..self.id) end
    ns.maps[self.id] = self
end

function Map:add(coord, node)
    if not ns.isinstance(node, ns.node.Node) then
        error('All nodes must be instances of the Node() class:', coord, node)
    end

    if node.group.name ~= 'intro' then
        -- Initialize group defaults and UI controls for this map if the group does
        -- not inherit its settings and defaults from a parent map
        if self.settings then ns.CreateGroupOptions(self, node.group) end

        -- Keep track of all groups associated with this map
        if not self.groups[node.group.name] then
            self.groups[#self.groups + 1] = node.group
            self.groups[node.group.name] = true
        end
    end

    rawset(self.nodes, coord, node)
end

function Map:Prepare ()
    for coord, node in pairs(self.nodes) do
        -- prepare each node once to ensure its dependent data is loaded
        if not node._prepared then
            node:Prepare()
            node._prepared = true
        end
    end
end

function Map:enabled (node, coord, minimap)
    local db = ns.addon.db
    local profile = db.profile

    -- Debug option to force display all nodes
    if profile.force_nodes or ns.dev_force then return true end

    -- Check if the zone is still phased
    if node ~= self.intro and not self.phased then return false end

    -- Check if we've been hidden by the user
    if db.char[self.id..'_coord_'..coord] then return false end

    -- Minimap may be disabled for this node
    if not node.minimap and minimap then return false end

    -- Node may be faction restricted
    if node.faction and node.faction ~= ns.faction then return false end

    -- Display the intro node!
    if node == self.intro then return not node:completed() end

    -- Check if node's group is disabled
    if not node.group:IsEnabled() then return false end

    -- Check for prerequisites and quest (or custom) completion
    if not node:enabled() then return false end

    -- Display the node based off the group display setting
    return node.group:GetDisplay()
end

function Map:HasEnabledGroups()
    for i, group in ipairs(self.groups) do
        if group:IsEnabled() then return true end
    end
    return false
end

-------------------------------------------------------------------------------
---------------------------- MINIMAP DATA PROVIDER ----------------------------
-------------------------------------------------------------------------------

local HBD = LibStub("HereBeDragons-2.0")
local HBDPins = LibStub("HereBeDragons-Pins-2.0")
local MinimapPinsKey = ADDON_NAME.."MinimapPins"
local MinimapDataProvider = CreateFrame("Frame", ADDON_NAME.."MinimapDP")
local MinimapPinTemplate = ADDON_NAME..'MinimapPinTemplate'
local MinimapPinMixin = {}

_G[ADDON_NAME..'MinimapPinMixin'] = MinimapPinMixin

MinimapDataProvider.facing = GetPlayerFacing()
MinimapDataProvider.indoors = GetCVar("minimapZoom")+0 == Minimap:GetZoom() and "outdoor" or "indoor"
MinimapDataProvider.pins = {}
MinimapDataProvider.pool = {}

-- The HBD author has already figured out the scale values for each zoom level
MinimapDataProvider.scales = {
    indoor = {1, 1.25, 5/3, 2.5, 3.75, 6},
    outdoor = {1, 7/6, 1.4, 1.75, 7/3, 3.5}
}

-- These values for width/height seem to render the minimap POIs correctly. I
-- still haven't figured out how to get these values out of the API, these were
-- manually found by tweaking values at a 1.5 width/height ratio (the ratio of
-- all world maps) until things looked right =/.
MinimapDataProvider.sizes = {
    [1527] = {1750, 1312},   -- Uldum
    [1530] = {700, 466},     -- Vale
    [1525] = {1900, 1280},   -- Revendreth
    [1533] = {2000, 1350},   -- Bastion
    [1536] = {2000, 1350},   -- Maldraxxus
    [1543] = {1325, 888},   -- The Maw
    [1565] = {2000, 1500},   -- Ardenweald
}

function MinimapDataProvider:ReleaseAllPins()
    for i, pin in ipairs(self.pins) do
        self.pool[pin] = true
        pin:OnReleased()
        pin:Hide()
    end
end

function MinimapDataProvider:AcquirePin(template, ...)
    local pin = next(self.pool)
    if pin then
        self.pool[pin] = nil -- remove it from the pool
    else
        pin = CreateFrame("Button", ADDON_NAME.."Pin"..(#self.pins + 1), Minimap, template)
        pin.provider = self
        pin:OnLoad()
        pin:Hide()
        self.pins[#self.pins + 1] = pin
    end
    pin:OnAcquired(...)
end

function MinimapDataProvider:RefreshAllData()
    -- Skip refresh if rotate minimap is on and we failed to get a facing value
    if GetCVar('rotateMinimap') == '1' and self.facing == nil then return end

    HBDPins:RemoveAllMinimapIcons(MinimapPinsKey)
    self:ReleaseAllPins()

    local map = ns.maps[HBD:GetPlayerZone()]
    if not map then return end

    for coord, node in pairs(map.nodes) do
        if node._prepared and map:enabled(node, coord, true) then
            -- If this icon has a glow enabled, render it
            local glow = node:glow(map)
            if glow then
                glow[1] = coord -- update POI coord for this placement
                glow:render(self, MinimapPinTemplate)
            end

            -- Render any POIs this icon has registered
            if node.pois and (node._focus or node._hover) then
                for i, poi in ipairs(node.pois) do
                    poi:render(self, MinimapPinTemplate)
                end
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

function MinimapPinMixin:OnLoad ()
    self:SetFrameLevel(Minimap:GetFrameLevel() + 3)
    self:SetFrameStrata(Minimap:GetFrameStrata())
    self.minimap = true
end

function MinimapPinMixin:OnAcquired (poi, ...)
    local mapID = HBD:GetPlayerZone()
    local scale = self.provider.scales[self.provider.indoors][Minimap:GetZoom()+1]
    local sizes = self.provider.sizes[mapID] or {750, 500}
    self.parentWidth = sizes[1] * scale
    self.parentHeight = sizes[2] * scale

    local x, y = poi:draw(self, ...)
    if GetCVar('rotateMinimap') == '1' then
        self.texture:SetRotation(self.texture:GetRotation() + math.pi*2 - self.provider.facing)
    end
    HBDPins:AddMinimapIconMap(MinimapPinsKey, self, mapID, x, y, true)
end

function MinimapPinMixin:OnReleased ()
    if self.ticker then
        self.ticker:Cancel()
        self.ticker = nil
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
        if node._prepared and map:enabled(node, coord, false) then
            -- If this icon has a glow enabled, render it
            local glow = node:glow(map)
            if glow then
                glow[1] = coord -- update POI coord for this placement
                glow:render(self:GetMap(), WorldMapPinTemplate)
            end

            -- Render any POIs this icon has registered
            if node.pois and (node._focus or node._hover) then
                for i, poi in ipairs(node.pois) do
                    poi:render(self:GetMap(), WorldMapPinTemplate)
                end
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
    local _, _, w, h = self:GetParent():GetRect()
    self.parentWidth = w
    self.parentHeight = h
    if (w and h) then
        local x, y = poi:draw(self, ...)
        self:ApplyCurrentScale()
        self:SetPosition(x, y)
    end
end

function WorldMapPinMixin:OnReleased()
    if self.ticker then
        self.ticker:Cancel()
        self.ticker = nil
    end
end

function WorldMapPinMixin:ApplyFrameLevel()
    -- Allow frame level adjustments in POIs even if the current frame level
    -- type has a range of only 1 frame level
    MapCanvasPinMixin.ApplyFrameLevel(self)
    self:SetFrameLevel(self:GetFrameLevel() + self.frameOffset)
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
