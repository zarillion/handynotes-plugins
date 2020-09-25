-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local Class = ns.Class
local HBD = LibStub('HereBeDragons-2.0')

-------------------------------------------------------------------------------

local function ResetPin(pin)
    pin.texture:SetRotation(0)
    pin.texture:SetTexCoord(0, 1, 0, 1)
    pin.texture:SetVertexColor(1, 1, 1, 1)
    pin.frameOffset = 0
    pin:SetAlpha(1)
    if pin.SetScalingLimits then -- World map only!
        pin:SetScalingLimits(nil, nil, nil)
    end
    return pin.texture
end

-------------------------------------------------------------------------------
-------------------------- POI (Point of Interest) ----------------------------
-------------------------------------------------------------------------------

local POI = Class('POI')

function POI:Render(map, template)
    -- draw a circle at every coord
    for i=1, #self, 1 do
        map:AcquirePin(template, self, self[i])
    end
end

function POI:Draw(pin, xy)
    local t = ResetPin(pin)
    local size = (pin.minimap and 10 or (pin.parentHeight * 0.012))
    t:SetVertexColor(0, 0.5, 1, 1)
    t:SetTexture("Interface\\AddOns\\"..ADDON_NAME.."\\icons\\circle")
    pin:SetSize(size, size)
    return HandyNotes:getXY(xy)
end

-------------------------------------------------------------------------------
------------------------------------ GLOW -------------------------------------
-------------------------------------------------------------------------------

local Glow = Class('Glow', POI)

function Glow:Draw(pin, xy)
    local t = ResetPin(pin)

    local hn_alpha, hn_scale
    if pin.minimap then
        hn_alpha = HandyNotes.db.profile.icon_alpha_minimap
        hn_scale = HandyNotes.db.profile.icon_scale_minimap
    else
        hn_alpha = HandyNotes.db.profile.icon_alpha
        hn_scale = HandyNotes.db.profile.icon_scale
    end

    local size = 15 * hn_scale * self.scale

    t:SetTexCoord(self.icon.tCoordLeft, self.icon.tCoordRight, self.icon.tCoordTop, self.icon.tCoordBottom)
    t:SetTexture(self.icon.icon)

    if self.r then
        t:SetVertexColor(self.r, self.g, self.b, self.a or 1)
    end

    pin.frameOffset = 1
    if pin.SetScalingLimits then -- World map only!
        pin:SetScalingLimits(1, 1.0, 1.2)
    end
    pin:SetAlpha(hn_alpha * self.alpha)
    pin:SetSize(size, size)
    return HandyNotes:getXY(xy)
end

-------------------------------------------------------------------------------
------------------------------------ PATH -------------------------------------
-------------------------------------------------------------------------------

local Path = Class('Path', POI)

function Path:Render(map, template)
    -- draw a circle at every coord and a line between them
    for i=1, #self, 1 do
        map:AcquirePin(template, self, 'circle', self[i])
        if i < #self then
            map:AcquirePin(template, self, 'line', self[i], self[i+1])
        end
    end
end

function Path:Draw(pin, type, xy1, xy2)
    local t = ResetPin(pin)
    t:SetVertexColor(0, 0.5, 1, 1)
    t:SetTexture("Interface\\AddOns\\"..ADDON_NAME.."\\icons\\"..type)

    -- constant size for minimaps, variable size for world maps
    local size = pin.minimap and 5 or (pin.parentHeight * 0.005)
    local line_width = pin.minimap and 60 or (pin.parentHeight * 0.05)

    if type == 'circle' then
        pin:SetSize(size, size)
        return HandyNotes:getXY(xy1)
    else
        local x1, y1 = HandyNotes:getXY(xy1)
        local x2, y2 = HandyNotes:getXY(xy2)
        local line_length

        if pin.minimap then
            local mapID = HBD:GetPlayerZone()
            local wx1, wy1 = HBD:GetWorldCoordinatesFromZone(x1, y1, mapID)
            local wx2, wy2 = HBD:GetWorldCoordinatesFromZone(x2, y2, mapID)
            local wmapDistance = sqrt((wx2-wx1)^2 + (wy2-wy1)^2)
            local mmapDiameter = C_Minimap:GetViewRadius() * 2
            line_length = Minimap:GetWidth() * (wmapDistance / mmapDiameter)
            t:SetRotation(-math.atan2(wy2-wy1, wx2-wx1))
        else
            local x1p = x1 * pin.parentWidth
            local x2p = x2 * pin.parentWidth
            local y1p = y1 * pin.parentHeight
            local y2p = y2 * pin.parentHeight
            line_length = sqrt((x2p-x1p)^2 + (y2p-y1p)^2)
            t:SetRotation(-math.atan2(y2p-y1p, x2p-x1p))
        end
        pin:SetSize(line_length, line_width)

        return (x1+x2)/2, (y1+y2)/2
    end
end

-------------------------------------------------------------------------------

ns.poi = {
    POI=POI,
    Glow=Glow,
    Path=Path
}
