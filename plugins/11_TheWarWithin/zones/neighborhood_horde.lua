-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local Map = ns.Map
local L = ns.locale

local Riddle = ns.node.Riddle

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

map.nodes[53505000] = _Riddle_({quest = 93073, decor = 523})
map.nodes[55574979] = Riddle({quest = 93074, decor = 524})
map.nodes[56404790] = _Riddle_({quest = 93075, decor = 525})
map.nodes[58004890] = _Riddle_({quest = 93077, decor = 1436})
map.nodes[63504470] = _Riddle_({quest = 93078, decor = 1437})
map.nodes[62204890] = _Riddle_({quest = 93079, decor = 1438})
map.nodes[62605160] = _Riddle_({quest = 93080, decor = 1700})
map.nodes[72005000] = _Riddle_({quest = 93081, decor = 1723})
map.nodes[68905250] = _Riddle_({quest = 93082, decor = 1724})
map.nodes[72104180] = _Riddle_({quest = 93083, decor = 1736})
map.nodes[60726463] = Riddle({quest = 93084, item = 245546, decor = 1737})
map.nodes[38648026] = Riddle({quest = 93085, decor = 2114})
map.nodes[55505240] = _Riddle_({quest = 93087, decor = 2115})
map.nodes[63735623] = Riddle({quest = 93088, decor = 2116})
map.nodes[64605800] = _Riddle_({quest = 93091, decor = 1977})
map.nodes[57706340] = _Riddle_({quest = 93097, decor = 2087})
map.nodes[68306890] = _Riddle_({quest = 93098, decor = 2088})
map.nodes[68107570] = _Riddle_({quest = 93099, decor = 2093})
map.nodes[64807300] = _Riddle_({quest = 93100, decor = 2384})
map.nodes[61807840] = _Riddle_({quest = 93101, decor = 2454})
map.nodes[63209250] = _Riddle_({quest = 93102, decor = 7842})
map.nodes[58008620] = _Riddle_({quest = 93103, decor = 2098})
map.nodes[58007990] = _Riddle_({quest = 93104, decor = 2546})
map.nodes[53808200] = _Riddle_({quest = 93105, decor = 2549})
map.nodes[52108180] = _Riddle_({quest = 93106, decor = 2592})
map.nodes[53408460] = _Riddle_({quest = 93107, decor = 4386})
map.nodes[50308300] = _Riddle_({quest = 93108, decor = 8907})
map.nodes[47808860] = _Riddle_({quest = 93109, decor = 1879})
map.nodes[44208670] = _Riddle_({quest = 93110, decor = 81})
map.nodes[39807280] = _Riddle_({quest = 93111, decor = 1744})
map.nodes[42106630] = _Riddle_({quest = 93115, decor = 2446})
map.nodes[44766636] = Riddle({quest = 93131, decor = 2534})
map.nodes[42405040] = _Riddle_({quest = 93132, decor = 2535})
map.nodes[51608260] = _Riddle_({quest = 93133, decor = 2548})
map.nodes[45205630] = _Riddle_({quest = 93134, decor = 4562})
map.nodes[45405730] = _Riddle_({quest = 93135, decor = 1774})
map.nodes[47105960] = _Riddle_({quest = 93136, decor = 1776})
map.nodes[51707270] = _Riddle_({quest = 93137, decor = 1844})
map.nodes[59007370] = _Riddle_({quest = 93138, decor = 2105})
map.nodes[64506910] = _Riddle_({quest = 93139, decor = 2108})
map.nodes[57805900] = _Riddle_({quest = 93140, decor = 2104})
map.nodes[50367680] = Riddle({quest = 93141, decor = 8917})
map.nodes[50806150] = _Riddle_({quest = 93142, decor = 11720})
map.nodes[49505990] = _Riddle_({quest = 93143, decor = 984})
map.nodes[50908960] = _Riddle_({quest = 93147, decor = 1163})
map.nodes[43246945] = Riddle({quest = 93148, decor = 1356})
map.nodes[39207400] = _Riddle_({quest = 93149, decor = 1329})
map.nodes[39405760] = _Riddle_({quest = 93150, decor = 987})
map.nodes[39807870] = _Riddle_({quest = 93151, decor = 11721})
map.nodes[58006900] = _Riddle_({quest = 93152, decor = 988})

-- 95166 triggered when petting npc 256523 Raptor Hatchling, running around @54695761, sleeps @54525807
