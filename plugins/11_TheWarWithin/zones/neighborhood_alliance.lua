-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local Map = ns.Map
local L = ns.locale

-------------------------------------------------------------------------------

local map = Map({id = 2352, settings = true})

-------------------------------------------------------------------------------
----------------------------------- RIDDLES -----------------------------------
-------------------------------------------------------------------------------

map.nodes[50005000] = ns.node.NPC({
    id = 253596,
    icon = 'peg_bl',
    scale = 2,
    note = L['last_architect_note'],
    quest = {
        92437, 92961, 92962, 92963, 92964, 92965, 92966, 92967, 92968, 92969,
        92970, 92971, 92972, 92973, 92974, 92975, 92976, 92977, 92978, 92979,
        92980, 92981, 92982, 92983, 92984, 92985, 92986, 92987, 92988, 92989,
        92990, 92991, 92992, 92993, 92994, 92995, 92996, 92997, 92998, 92999,
        93000, 93001, 93002, 93003, 93004, 93005, 93006, 93007, 93008, 93009
    },
    questCount = true
}) -- The Last Architect

local Riddle = Class('Riddle', ns.node.Node,
    {label = '{quest:93074}', icon = 'peg_gn', scale = 2})

function Riddle:IsEnabled()
    return self.quest and C_QuestLog.IsOnQuest(self.quest[1]) or false
end

function Riddle.getters:rewards()
    return self.decor and {ns.reward.Decor({id = self.decor})} or {}
end

local _Riddle_ = Class('_Riddle_', Riddle,
    {devnote = 'Wowhead data, please confirm coordinates'})
-- remove Class once all nodes have been confirmed

-- coords, quests and rewards from wowhead
-- https://www.wowhead.com/de/guide/player-housing/alliance-neighborhood-decor-treasure-hunt-quests-solutions#appearances-and-solutions

map.nodes[63203830] = _Riddle_({quest = 92437, decor = 373})
map.nodes[58103010] = _Riddle_({quest = 92961, decor = 374})
map.nodes[69202670] = _Riddle_({quest = 92962, decor = 378})
map.nodes[63104670] = _Riddle_({quest = 92963, decor = 389})
map.nodes[64805090] = _Riddle_({quest = 92964, decor = 390})
map.nodes[59805240] = _Riddle_({quest = 92965, decor = 494})
map.nodes[66905700] = _Riddle_({quest = 92966, decor = 528})
map.nodes[58306500] = _Riddle_({quest = 92967, decor = 530})
map.nodes[52806680] = _Riddle_({quest = 92968, decor = 529})
map.nodes[55307130] = _Riddle_({quest = 92969, decor = 1122})
map.nodes[39105990] = _Riddle_({quest = 92970, decor = 2496})
map.nodes[40806130] = _Riddle_({quest = 92971, decor = 1994})
map.nodes[45406440] = _Riddle_({quest = 92972, decor = 1993})
map.nodes[46305800] = _Riddle_({quest = 92973, decor = 1991})
map.nodes[54905060] = _Riddle_({quest = 92974, decor = 2101})
map.nodes[49905660] = _Riddle_({quest = 92975, decor = 2100})
map.nodes[47706190] = _Riddle_({quest = 92976, decor = 2099})
map.nodes[64508560] = _Riddle_({quest = 92977, decor = 1739})
map.nodes[54207360] = _Riddle_({quest = 92978, decor = 1280})
map.nodes[61607940] = _Riddle_({quest = 92979, decor = 1123})
map.nodes[28504480] = _Riddle_({quest = 92980, decor = 1745})
map.nodes[29804840] = _Riddle_({quest = 92981, decor = 1738})
map.nodes[61008200] = _Riddle_({quest = 92982, decor = 1435})
map.nodes[42504470] = _Riddle_({quest = 92983, decor = 496})
map.nodes[42605380] = _Riddle_({quest = 92984, decor = 495})
map.nodes[37104590] = _Riddle_({quest = 92985, decor = 1996})
map.nodes[36605420] = _Riddle_({quest = 92986, decor = 726})
map.nodes[36605780] = _Riddle_({quest = 92987, decor = 383})
map.nodes[34606020] = _Riddle_({quest = 92988, decor = 377})
map.nodes[33907280] = _Riddle_({quest = 92989, decor = 9471})
map.nodes[49704250] = _Riddle_({quest = 92990, decor = 2113})
map.nodes[49102710] = _Riddle_({quest = 92991, decor = 2109})
map.nodes[40902830] = _Riddle_({quest = 92992, decor = 1772})
map.nodes[39903200] = _Riddle_({quest = 92993, decor = 1771})
map.nodes[36903280] = _Riddle_({quest = 92994, decor = 1770})
map.nodes[30903110] = _Riddle_({quest = 92995, decor = 10860})
map.nodes[29002810] = _Riddle_({quest = 92996, decor = 2342})
map.nodes[21003000] = _Riddle_({quest = 92997, decor = 1997})
map.nodes[26203790] = _Riddle_({quest = 92998, decor = 1992})
map.nodes[28304010] = _Riddle_({quest = 92999, decor = 1878})
map.nodes[59004570] = _Riddle_({quest = 93000, decor = 985})
map.nodes[56805230] = _Riddle_({quest = 93001, decor = 1488})
map.nodes[57704200] = _Riddle_({quest = 93002, decor = 1162})
map.nodes[56602750] = _Riddle_({quest = 93003, decor = 11719})
map.nodes[55004000] = _Riddle_({quest = 93004, decor = 1486})
map.nodes[60305680] = _Riddle_({quest = 93005, decor = 994})
map.nodes[53603970] = _Riddle_({quest = 93006, decor = 1153})
map.nodes[57303920] = _Riddle_({quest = 93007, decor = 9255})
map.nodes[52002900] = _Riddle_({quest = 93008, decor = 80})
map.nodes[53604190] = _Riddle_({quest = 93009, decor = 2110})
