-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
-- local Class = ns.Class
-- local L = ns.locale
local Map = ns.Map

local DragonRace = ns.node.DragonRace

-------------------------------------------------------------------------------

local map = Map({id = nil, settings = true})

-------------------------------------------------------------------------------
--------------------------------- DRAGONRACES ---------------------------------
-------------------------------------------------------------------------------

map.nodes[73003900] = DragonRace() -- Dunelle's Detour
map.nodes[40006600] = DragonRace() -- Light's Redoubt Descent
map.nodes[38006300] = DragonRace() -- Mereldar Meander
map.nodes[58002600] = DragonRace() -- Stillstone Slalom
map.nodes[60006800] = DragonRace() -- Ternir's Traversal
map.nodes[55001800] = DragonRace() -- Velhan's Venture
