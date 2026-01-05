-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local Map = ns.Map
local L = ns.locale

local Riddle = ns.node.Riddle

local Entrance = ns.poi.Entrance

-------------------------------------------------------------------------------

local map = Map({id = 2351, settings = true})

-------------------------------------------------------------------------------
----------------------------------- RIDDLES -----------------------------------
-------------------------------------------------------------------------------

map.nodes[53695737] = ns.node.NPC({
    id = 253596,
    icon = 'peg_bl',
    scale = 2,
    note = L['last_architect_note'],
    quest = {
        93073, 93074, 93075, 93077, 93078, 93079, 93080, 93081, 93082, 93083,
        93084, 93085, 93087, 93088, 93091, 93097, 93098, 93099, 93100, 93101,
        93102, 93103, 93104, 93105, 93106, 93107, 93108, 93109, 93110, 93111,
        93115, 93131, 93132, 93133, 93134, 93135, 93136, 93137, 93138, 93139,
        93140, 93141, 93142, 93143, 93147, 93148, 93149, 93150, 93151, 93152
    },
    questCount = true
}) -- The Last Architect

local _Riddle_ = Class('_Riddle_', Riddle,
    {devnote = 'Wowhead data, please confirm coordinates'})
-- remove Class once all nodes have been confirmed

-- coords, quests and rewards from wowhead
-- https://www.wowhead.com/de/guide/player-housing/horde-neighborhood-decor-treasure-hunt-quests-solutions#appearances-and-solutions

map.nodes[53505000] = _Riddle_({quest = 93073, item = 236654})
map.nodes[55574979] = Riddle({quest = 93074, item = 236655})
map.nodes[56404802] = Riddle({quest = 93075, item = 236666})
map.nodes[57994891] = Riddle({quest = 93077, item = 244532})
map.nodes[63604481] = Riddle({quest = 93078, item = 244533})
map.nodes[62294891] = Riddle({quest = 93079, item = 244534})
map.nodes[62605160] = _Riddle_({quest = 93080, decor = 1700})
map.nodes[72294979] = Riddle({quest = 93081, item = 245266})
map.nodes[68925248] = Riddle({quest = 93082, item = 245533})
map.nodes[72104180] = _Riddle_({quest = 93083, item = 245545})
map.nodes[60726463] = Riddle({quest = 93084, item = 245546})
map.nodes[38648026] = Riddle({quest = 93085, item = 246259})
map.nodes[55505240] = _Riddle_({quest = 93087, item = 246260})
map.nodes[63735623] = Riddle({quest = 93088, item = 246261})
map.nodes[64605800] = _Riddle_({quest = 93091, item = 246036})
map.nodes[57706340] = _Riddle_({quest = 93097, item = 246217})
map.nodes[68276895] = Riddle({quest = 93098, item = 246218})
map.nodes[68107570] = _Riddle_({quest = 93099, item = 246224})
map.nodes[64817304] = Riddle({quest = 93100, item = 246587})
map.nodes[61807840] = _Riddle_({quest = 93101, item = 246687})
map.nodes[63209250] = _Riddle_({quest = 93102, item = 250920})
map.nodes[58008620] = _Riddle_({quest = 93103, item = 246241})
map.nodes[58007990] = _Riddle_({quest = 93104, item = 246880})
map.nodes[53808204] = Riddle({quest = 93105, item = 246883})
map.nodes[52108180] = _Riddle_({quest = 93106, item = 247221})
map.nodes[53448464] = Riddle({quest = 93107, item = 248246})
map.nodes[50308300] = _Riddle_({quest = 93108, item = 251973})
map.nodes[47808860] = _Riddle_({quest = 93109, item = 245680})
map.nodes[44228676] = Riddle({quest = 93110, item = 245398})
map.nodes[39507014] = Riddle({
    quest = 93111,
    item = 245555,
    note = L['in_cave'],
    pois = {Entrance({39967294})}
})
map.nodes[42106630] = _Riddle_({quest = 93115, item = 246614})
map.nodes[44766636] = Riddle({quest = 93131, item = 246868})
map.nodes[42635039] = Riddle({
    quest = 93132,
    item = 246869,
    note = L['in_water']
})
map.nodes[51758004] = Riddle({
    quest = 93133,
    item = 246882,
    note = L['in_water']
})
map.nodes[45245631] = Riddle({quest = 93134, item = 248760})
map.nodes[45545793] = Riddle({
    quest = 93135,
    item = 245581,
    note = L['in_small_cave'],
    pois = {Entrance({45435738})}
})
map.nodes[47185971] = Riddle({quest = 93136, item = 245583})
map.nodes[51707270] = _Riddle_({quest = 93137, item = 245649})
map.nodes[59007370] = _Riddle_({quest = 93138, item = 246250})
map.nodes[64506910] = _Riddle_({quest = 93139, item = 246253})
map.nodes[57145826] = Riddle({quest = 93140, item = 246249})
map.nodes[50367680] = Riddle({quest = 93141, item = 251981})
map.nodes[50976155] = Riddle({quest = 93142, item = 257691})
map.nodes[49505990] = _Riddle_({quest = 93143, item = 241617})
map.nodes[50908960] = _Riddle_({quest = 93147, item = 253493})
map.nodes[43246945] = Riddle({quest = 93148, item = 244169})
map.nodes[39207400] = _Riddle_({quest = 93149, item = 243495})
map.nodes[39335760] = Riddle({
    quest = 93150,
    item = 241620,
    note = L['in_small_cave'],
    pois = {Entrance({39795785})}
})
map.nodes[39807870] = _Riddle_({quest = 93151, item = 257692})
map.nodes[58676949] = Riddle({quest = 93152, item = 241621})

-- 95166 triggered when petting npc 256523 Raptor Hatchling, running around @54695761, sleeps @54525807
