-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...

-------------------------------------------------------------------------------
----------------------------------- TOM TOM -----------------------------------
-------------------------------------------------------------------------------

ns.tomtom = {}

function ns.tomtom:AddSingleWaypoint(attrs)
    local x, y = HandyNotes:getXY(self.coord)
    TomTom:AddWaypoint(self.mapID, x, y, {
        title = ns.RenderLinks(self.node.label, true),
        from = ns.plugin_name,
        persistent = nil,
        minimap = true,
        world = true
    })
end

function ns.tomtom:AddGroupWaypoints(attrs)
    local map = ns.maps[self.mapID]
    for coord, node in pairs(map.nodes) do
        if node.group == self.node.group then
            ns.tomtom.AddSingleWaypoint({
                node = node,
                mapID = self.mapID,
                coord = coord
            })
        end
    end
end
