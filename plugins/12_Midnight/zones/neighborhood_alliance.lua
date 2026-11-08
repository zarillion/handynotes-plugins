-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local Map = ns.Map
local L = ns.locale

local Riddle = ns.node.Riddle
local Souvenir = ns.node.Souvenir

local Achievement = ns.reward.Achievement

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

map.nodes[63203830] = Riddle({quest = 92437, item = 245375})
map.nodes[55407150] = Riddle({quest = 92969, item = 242951})
map.nodes[39105990] = _Riddle_({quest = 92970, item = 246742})
map.nodes[40846131] = Riddle({quest = 92971, item = 246104})
map.nodes[49905660] = Riddle({quest = 92975, item = 246245})
map.nodes[28604670] = Riddle({quest = 92980, item = 245556})
map.nodes[42504470] = _Riddle_({quest = 92983, item = 245372})
map.nodes[42705390] = Riddle({quest = 92984, item = 245336})
map.nodes[36605780] = Riddle({quest = 92987, item = 235677})
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

map.nodes[59805240] = Riddle({
    item = 235523,
    location = L['in_water'],
    quest = 92965
})

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

-------------------------------------------------------------------------------
------------------------- ACHIEVEMENT: SOUVENIR SEEKER ------------------------
-------------------------------------------------------------------------------

map.nodes[52703870] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118034})}
}) -- Secret Souvenir (1) [266674]

map.nodes[53204020] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118035})}
}) -- Secret Souvenir (2) [266675]

map.nodes[53804170] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118036})}
}) -- Secret Souvenir (3) [266676]

map.nodes[56004120] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118037})}
}) -- Secret Souvenir (4) [266677]

map.nodes[57204530] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118038})}
}) -- Secret Souvenir (5) [266678]

map.nodes[52103290] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118039})}
}) -- Secret Souvenir (6) [266679]

map.nodes[58002690] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118040})}
}) -- Secret Souvenir (7) [266680]

map.nodes[54402740] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118041})}
}) -- Secret Souvenir (8) [266681]

map.nodes[49202710] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118042})}
}) -- Secret Souvenir (9) [266682]

map.nodes[59304490] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118043})}
}) -- Secret Souvenir (10) [266683]

map.nodes[64303650] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118044})}
}) -- Secret Souvenir (11) [266684]

map.nodes[63604170] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118045})}
}) -- Secret Souvenir (12) [266685]

map.nodes[64405110] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118046})}
}) -- Secret Souvenir (13) [266686]

map.nodes[67305770] = Souvenir({
    note = L['in_water_cave'],
    pois = {Entrance({64605760})},
    rewards = {Achievement({id = 63605, criteria = 118047})}
}) -- Secret Souvenir (14) [266687]

map.nodes[59906250] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118048})}
}) -- Secret Souvenir (15) [266688]

map.nodes[55905710] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118049})}
}) -- Secret Souvenir (16) [266689]

map.nodes[58306520] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118050})}
}) -- Secret Souvenir (17) [266690]

map.nodes[54206470] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118051})}
}) -- Secret Souvenir (18) [266691]

map.nodes[47905540] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118052})}
}) -- Secret Souvenir (19) [266692]

map.nodes[47306180] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118053})}
}) -- Secret Souvenir (20) [266693]

map.nodes[46705900] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118054})}
}) -- Secret Souvenir (21) [266694]

map.nodes[39506000] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118055})}
}) -- Secret Souvenir (22) [266695]

map.nodes[38006410] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118056})}
}) -- Secret Souvenir (23) [266696]

map.nodes[34707220] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118057})}
}) -- Secret Souvenir (24) [266697]

map.nodes[37705700] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118058})}
}) -- Secret Souvenir (25) [266698]

map.nodes[42104300] = Souvenir({
    note = L['souvenir_balloon_note'],
    rewards = {Achievement({id = 63605, criteria = 118059})}
}) -- Secret Souvenir (26) [266699]

map.nodes[44402950] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118060})}
}) -- Secret Souvenir (27) [266700]

map.nodes[39303010] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118061})}
}) -- Secret Souvenir (28) [266701]

map.nodes[40502550] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118062})}
}) -- Secret Souvenir (29) [266702]

map.nodes[41902980] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118063})}
}) -- Secret Souvenir (30) [266703]

map.nodes[32203870] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118064})}
}) -- Secret Souvenir (31) [266704]

map.nodes[28304730] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118065})}
}) -- Secret Souvenir (32) [266705]

map.nodes[37004530] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118066})}
}) -- Secret Souvenir (33) [266706]

map.nodes[35604950] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118067})}
}) -- Secret Souvenir (34) [266707]

map.nodes[34506060] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118068})}
}) -- Secret Souvenir (35) [266708]

map.nodes[32807090] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118069})}
}) -- Secret Souvenir (36) [266709]

map.nodes[45306440] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118070})}
}) -- Secret Souvenir (37) [266710]

map.nodes[49207170] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118071})}
}) -- Secret Souvenir (38) [266711]

map.nodes[55407510] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118072})}
}) -- Secret Souvenir (39) [266712]

map.nodes[62108130] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118073})}
}) -- Secret Souvenir (40) [266713]

map.nodes[75208350] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118074})}
}) -- Secret Souvenir (41) [266714]

map.nodes[61306620] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118075})}
}) -- Secret Souvenir (42) [266715]

map.nodes[59605060] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118076})}
}) -- Secret Souvenir (43) [266716]

map.nodes[56702080] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118077})}
}) -- Secret Souvenir (44) [266717]

map.nodes[44701720] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118078})}
}) -- Secret Souvenir (45) [266718]

map.nodes[31700820] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118079})}
}) -- Secret Souvenir (46) [266719]

map.nodes[07303760] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118080})}
}) -- Secret Souvenir (47) [266720]

map.nodes[43405540] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118081})}
}) -- Secret Souvenir (48) [266721]

map.nodes[72803530] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118082})}
}) -- Secret Souvenir (49) [266722]

map.nodes[57103880] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118083})}
}) -- Secret Souvenir (50) [266723]

map.nodes[61904390] = Souvenir({
    fgroup = 'souvenir_waterfall',
    note = L['multiple_spawns'] .. '\n' .. L['souvenir_waterfall_note'],
    rewards = {Achievement({id = 63605, criteria = 118084})}
}) -- Secret Souvenir (51) (1/3) [266724]

map.nodes[55305030] = Souvenir({
    fgroup = 'souvenir_waterfall',
    note = L['multiple_spawns'] .. '\n' .. L['souvenir_waterfall_note'],
    rewards = {Achievement({id = 63605, criteria = 118084})}
}) -- Secret Souvenir (51) (2/3) [266724]

map.nodes[45506460] = Souvenir({
    fgroup = 'souvenir_waterfall',
    note = L['multiple_spawns'] .. '\n' .. L['souvenir_waterfall_note'],
    rewards = {Achievement({id = 63605, criteria = 118084})}
}) -- Secret Souvenir (51) (3/3) [266724]

map.nodes[39103130] = Souvenir({
    note = L['souvenir_soil_note'],
    rewards = {Achievement({id = 63605, criteria = 118085})}
}) -- Secret Souvenir (52) [266725]

map.nodes[52003500] = Souvenir({
    fgroup = 'souvenir_cart',
    note = L['multiple_spawns'] .. '\n' .. L['souvenir_cart_note'],
    rewards = {Achievement({id = 63605, criteria = 118086})}
}) -- Secret Souvenir (53) (1/2) [266726]

map.nodes[46006100] = Souvenir({
    fgroup = 'souvenir_cart',
    note = L['multiple_spawns'] .. '\n' .. L['souvenir_cart_note'],
    rewards = {Achievement({id = 63605, criteria = 118086})}
}) -- Secret Souvenir (53) (2/2) [266726]

map.nodes[48005380] = Souvenir({
    fgroup = 'souvenir_turtle',
    note = L['multiple_spawns'] .. '\n' .. L['souvenir_turtle_note'],
    rewards = {Achievement({id = 63605, criteria = 118087})}
}) -- Secret Souvenir (54) (1/5) [266727]

map.nodes[48205780] = Souvenir({
    fgroup = 'souvenir_turtle',
    note = L['multiple_spawns'] .. '\n' .. L['souvenir_turtle_note'],
    rewards = {Achievement({id = 63605, criteria = 118087})}
}) -- Secret Souvenir (54) (2/5) [266727]

map.nodes[52606160] = Souvenir({
    fgroup = 'souvenir_turtle',
    note = L['multiple_spawns'] .. '\n' .. L['souvenir_turtle_note'],
    rewards = {Achievement({id = 63605, criteria = 118087})}
}) -- Secret Souvenir (54) (3/5) [266727]

map.nodes[61005540] = Souvenir({
    fgroup = 'souvenir_turtle',
    note = L['multiple_spawns'] .. '\n' .. L['souvenir_turtle_note'],
    rewards = {Achievement({id = 63605, criteria = 118087})}
}) -- Secret Souvenir (54) (4/5) [266727]

map.nodes[64805620] = Souvenir({
    fgroup = 'souvenir_turtle',
    note = L['multiple_spawns'] .. '\n' .. L['souvenir_turtle_note'],
    rewards = {Achievement({id = 63605, criteria = 118087})}
}) -- Secret Souvenir (54) (5/5) [266727]

map.nodes[36804680] = Souvenir({
    note = L['souvenir_beach_note'],
    rewards = {Achievement({id = 63605, criteria = 118088})}
}) -- Secret Souvenir (55) [266728]

map.nodes[34416965] = Souvenir({
    fgroup = 'souvenir_kite',
    note = L['multiple_spawns'] .. '\n' .. L['souvenir_kite_note'],
    rewards = {Achievement({id = 63605, criteria = 118089})}
}) -- Secret Souvenir (56) (1/4) [266729]

map.nodes[43556241] = Souvenir({
    fgroup = 'souvenir_kite',
    note = L['multiple_spawns'] .. '\n' .. L['souvenir_kite_note'],
    rewards = {Achievement({id = 63605, criteria = 118089})}
}) -- Secret Souvenir (56) (2/4) [266729]

map.nodes[43605270] = Souvenir({
    fgroup = 'souvenir_kite',
    note = L['multiple_spawns'] .. '\n' .. L['souvenir_kite_note'],
    rewards = {Achievement({id = 63605, criteria = 118089})}
}) -- Secret Souvenir (56) (3/4) [266729]

map.nodes[50616450] = Souvenir({
    fgroup = 'souvenir_kite',
    note = L['multiple_spawns'] .. '\n' .. L['souvenir_kite_note'],
    rewards = {Achievement({id = 63605, criteria = 118089})}
}) -- Secret Souvenir (56) (4/4) [266729]

map.nodes[62108220] = Souvenir({
    rewards = {Achievement({id = 63605, criteria = 118090})}
}) -- Secret Souvenir (57) [266730]

map.nodes[77505400] = Souvenir({
    note = string.format(L['souvenir_scroll_note'], '{item:276747}'),
    rewards = {Achievement({id = 63605, criteria = 118091})}
}) -- Secret Souvenir (58) [266731]

map.nodes[19604260] = Souvenir({
    note = string.format(L['souvenir_scroll_note'], '{item:276748}'),
    rewards = {Achievement({id = 63605, criteria = 118092})}
}) -- Secret Souvenir (59) [266732]

map.nodes[55808510] = Souvenir({
    note = string.format(L['souvenir_scroll_note'], '{item:276749}'),
    rewards = {Achievement({id = 63605, criteria = 118093})}
}) -- Secret Souvenir (60) [266734]
