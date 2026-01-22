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
map.nodes[59805240] = _Riddle_({quest = 92965, item = 235523})
map.nodes[55407150] = Riddle({quest = 92969, item = 242951})
map.nodes[39105990] = _Riddle_({quest = 92970, item = 246742})
map.nodes[40846131] = Riddle({quest = 92971, item = 246104})
map.nodes[49905660] = _Riddle_({quest = 92975, item = 246245})
map.nodes[28604670] = Riddle({quest = 92980, item = 245556})
map.nodes[42504470] = _Riddle_({quest = 92983, item = 245372})
map.nodes[42605380] = _Riddle_({quest = 92984, item = 245336})
map.nodes[36605780] = _Riddle_({quest = 92987, item = 235677})
map.nodes[34616043] = Riddle({quest = 92988, item = 235675})
map.nodes[33907280] = Riddle({quest = 92989, item = 253589})
map.nodes[49704240] = Riddle({quest = 92990, item = 246258})
map.nodes[41002840] = Riddle({quest = 92992, item = 245578})
map.nodes[39963196] = Riddle({quest = 92993, item = 245576})
map.nodes[36933293] = Riddle({quest = 92994, item = 245575})
map.nodes[30863111] = Riddle({quest = 92995, item = 255650})
map.nodes[29002810] = Riddle({quest = 92996, item = 246502})
map.nodes[26203790] = Riddle({quest = 92998, item = 246102})
map.nodes[55333995] = Riddle({quest = 93004, item = 244780})
map.nodes[60305680] = _Riddle_({quest = 93005, item = 253441})
map.nodes[57333927] = Riddle({quest = 93007, item = 253181})
map.nodes[52002900] = _Riddle_({quest = 93008, item = 235994})

map.nodes[58143008] = Riddle({quest = 92961, item = 245384})
map.nodes[69202670] = Riddle({quest = 92962, item = 245355})
map.nodes[63124673] = Riddle({quest = 92963, item = 245356})
map.nodes[64875098] = Riddle({quest = 92964, item = 245376})
map.nodes[58356504] = Riddle({quest = 92967, item = 236678})
map.nodes[52826684] = Riddle({quest = 92968, item = 236677})
map.nodes[46325795] = Riddle({quest = 92973, item = 246101})
map.nodes[55055073] = Riddle({quest = 92974, item = 246246})
map.nodes[47706190] = Riddle({quest = 92976, item = 246243})
map.nodes[64568560] = Riddle({quest = 92977, item = 245548})
map.nodes[54207360] = Riddle({quest = 92978, item = 243334})
map.nodes[29854833] = Riddle({quest = 92981, item = 245547})
map.nodes[61908250] = Riddle({quest = 92982, item = 244531})
map.nodes[36615416] = Riddle({quest = 92986, item = 239075})
map.nodes[49172714] = Riddle({quest = 92991, item = 246254})
map.nodes[21103000] = Riddle({quest = 92997, item = 246107})
map.nodes[28334014] = Riddle({quest = 92999, item = 245662})
map.nodes[56825230] = Riddle({quest = 93001, item = 244782})
map.nodes[57814204] = Riddle({quest = 93002, item = 253490})
map.nodes[56652751] = Riddle({quest = 93003, item = 257690})
map.nodes[53653978] = Riddle({quest = 93006, item = 253479})
map.nodes[53604195] = Riddle({quest = 93009, item = 246255})

map.nodes[45416434] = Riddle({
    item = 246103,
    location = L['in_small_cave'],
    quest = 92972,
    pois = {Entrance({45766492})}
})

map.nodes[61617944] = Riddle({
    item = 245334,
    location = L['in_small_cave'],
    quest = 92979,
    pois = {Entrance({62407950})}
})

map.nodes[37084593] = Riddle({
    item = 246106,
    location = L['in_water'],
    quest = 92985
})

map.nodes[59204490] = Riddle({
    item = 241618,
    location = L['in_small_cave'],
    quest = 93000,
    pois = {Entrance({59004550})}
})

map.nodes[66905700] = Riddle({
    item = 236676,
    location = L['in_water_cave'],
    quest = 92966,
    pois = {Entrance({64655751})}
})
