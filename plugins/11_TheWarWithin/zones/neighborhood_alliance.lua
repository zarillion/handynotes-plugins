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

local map = Map({id = 2352, settings = true})

-------------------------------------------------------------------------------
----------------------------------- RIDDLES -----------------------------------
-------------------------------------------------------------------------------

map.nodes[52733748] = ns.node.NPC({
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

local _Riddle_ = Class('_Riddle_', Riddle,
    {devnote = 'Wowhead data, please confirm coordinates'})
-- remove Class once all nodes have been confirmed

-- coords, quests and rewards from wowhead
-- https://www.wowhead.com/de/guide/player-housing/alliance-neighborhood-decor-treasure-hunt-quests-solutions#appearances-and-solutions

map.nodes[63203830] = _Riddle_({quest = 92437, item = 245375})
map.nodes[58143008] = Riddle({quest = 92961, item = 245384})
map.nodes[69202670] = _Riddle_({quest = 92962, item = 245355})
map.nodes[63124673] = Riddle({quest = 92963, item = 245356})
map.nodes[64875098] = Riddle({quest = 92964, item = 245376})
map.nodes[59805240] = _Riddle_({quest = 92965, item = 235523})
map.nodes[58306500] = _Riddle_({quest = 92967, item = 236678})
map.nodes[52806680] = _Riddle_({quest = 92968, item = 236677})
map.nodes[55307130] = _Riddle_({quest = 92969, item = 242951})
map.nodes[39105990] = _Riddle_({quest = 92970, item = 246742})
map.nodes[40806130] = _Riddle_({quest = 92971, item = 246104})
map.nodes[45406440] = _Riddle_({quest = 92972, item = 246103})
map.nodes[46325795] = Riddle({quest = 92973, item = 246101})
map.nodes[55055073] = Riddle({quest = 92974, item = 246246})
map.nodes[49905660] = _Riddle_({quest = 92975, item = 246245})
map.nodes[47706190] = Riddle({quest = 92976, item = 246243})
map.nodes[64508560] = Riddle({quest = 92977, item = 245548})
map.nodes[54207360] = _Riddle_({quest = 92978, item = 243334})
map.nodes[61607940] = _Riddle_({quest = 92979, item = 245334})
map.nodes[28504480] = _Riddle_({quest = 92980, item = 245556})
map.nodes[29854833] = Riddle({quest = 92981, item = 245547})
map.nodes[61008200] = _Riddle_({quest = 92982, item = 244531})
map.nodes[42504470] = _Riddle_({quest = 92983, item = 245372})
map.nodes[42605380] = _Riddle_({quest = 92984, item = 245336})
map.nodes[37104590] = _Riddle_({quest = 92985, item = 246106})
map.nodes[36605420] = _Riddle_({quest = 92986, item = 239075})
map.nodes[36605780] = _Riddle_({quest = 92987, item = 235677})
map.nodes[34606020] = _Riddle_({quest = 92988, item = 235675})
map.nodes[33907280] = _Riddle_({quest = 92989, item = 253589})
map.nodes[49704250] = _Riddle_({quest = 92990, item = 246258})
map.nodes[49172714] = Riddle({quest = 92991, item = 246254})
map.nodes[40902830] = _Riddle_({quest = 92992, item = 245578})
map.nodes[39903200] = _Riddle_({quest = 92993, item = 245576})
map.nodes[36903280] = _Riddle_({quest = 92994, item = 245575})
map.nodes[30903110] = _Riddle_({quest = 92995, item = 255650})
map.nodes[29002810] = _Riddle_({quest = 92996, item = 246502})
map.nodes[21003000] = Riddle({quest = 92997, item = 246107})
map.nodes[26203790] = _Riddle_({quest = 92998, item = 246102})
map.nodes[28334014] = Riddle({quest = 92999, item = 245662})
map.nodes[59004570] = _Riddle_({quest = 93000, item = 241618})
map.nodes[56825230] = Riddle({quest = 93001, item = 244782})
map.nodes[57814204] = Riddle({quest = 93002, item = 253490})
map.nodes[56652751] = Riddle({quest = 93003, item = 257690})
map.nodes[55004000] = _Riddle_({quest = 93004, item = 244780})
map.nodes[60305680] = _Riddle_({quest = 93005, item = 253441})
map.nodes[53603970] = _Riddle_({quest = 93006, item = 253479})
map.nodes[57303920] = _Riddle_({quest = 93007, item = 253181})
map.nodes[52002900] = _Riddle_({quest = 93008, item = 235994})
map.nodes[53604195] = Riddle({quest = 93009, item = 246255})

map.nodes[66905700] = Riddle({
    location = L['in_water_cave'],
    quest = 92966,
    item = 236676,
    pois = {Entrance({64655751})}
})
