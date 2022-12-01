-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...

-------------------------------------------------------------------------------
----------------------------------- TOM TOM -----------------------------------
-------------------------------------------------------------------------------

local function AddSingleWaypoint(oldNode, mapID, oldCoord)
    local x, y = HandyNotes:getXY(oldCoord)
    TomTom:AddWaypoint(mapID, x, y, {
        title = ns.RenderLinks(oldNode.label, true),
        from = ns.plugin_name,
        persistent = nil,
        minimap = true,
        world = true
    })
end

local function AddGroupWaypoints(oldNode, mapID, oldCoord)
    local map = ns.maps[mapID]
    for newCoord, newNode in pairs(map.nodes) do
        if oldNode.group == newNode.group then
            AddSingleWaypoint(newNode, mapID, newCoord)
        end
    end
end

ns.tomtom = {
    AddSingleWaypoint = AddSingleWaypoint,
    AddGroupWaypoints = AddGroupWaypoints
}
