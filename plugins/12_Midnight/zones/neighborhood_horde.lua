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
local POI = ns.poi.POI

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

map.nodes[53735023] = Riddle({quest = 93073, item = 236654})
map.nodes[55574979] = Riddle({quest = 93074, item = 236655})
map.nodes[56404802] = Riddle({quest = 93075, item = 236666})
map.nodes[57994891] = Riddle({quest = 93077, item = 244532})
map.nodes[63604481] = Riddle({
    quest = 93078,
    item = 244533,
    location = L['in_water']
})
map.nodes[62294891] = Riddle({quest = 93079, item = 244534})
map.nodes[62665166] = Riddle({quest = 93080, item = 245266})
map.nodes[72294979] = Riddle({quest = 93081, item = 245266})
map.nodes[68925248] = Riddle({quest = 93082, item = 245533})
map.nodes[72114165] = Riddle({quest = 93083, item = 245545})
map.nodes[60726463] = Riddle({quest = 93084, item = 245546})
map.nodes[38648026] = Riddle({quest = 93085, item = 246259})
map.nodes[55575240] = Riddle({quest = 93087, item = 246260})
map.nodes[63735623] = Riddle({quest = 93088, item = 246261})
map.nodes[64655805] = Riddle({quest = 93091, item = 246036})
map.nodes[57756345] = Riddle({quest = 93097, item = 246217})
map.nodes[68276895] = Riddle({quest = 93098, item = 246218})
map.nodes[68167574] = Riddle({quest = 93099, item = 246224})
map.nodes[64817304] = Riddle({quest = 93100, item = 246587})
map.nodes[61877867] = Riddle({quest = 93101, item = 246687})
map.nodes[62048870] = Riddle({
    quest = 93102,
    item = 250920,
    note = L['in_water']
})
map.nodes[57938627] = Riddle({quest = 93103, item = 246241})
map.nodes[58017995] = Riddle({quest = 93104, item = 246880})
map.nodes[53808204] = Riddle({quest = 93105, item = 246883})
map.nodes[52178180] = Riddle({quest = 93106, item = 247221})
map.nodes[53448464] = Riddle({quest = 93107, item = 248246})
map.nodes[50418303] = Riddle({quest = 93108, item = 251973})
map.nodes[47778839] = Riddle({quest = 93109, item = 245680})
map.nodes[44228676] = Riddle({quest = 93110, item = 245398})
map.nodes[39507014] = Riddle({
    quest = 93111,
    item = 245555,
    note = L['in_cave'],
    pois = {Entrance({39967294})}
})
map.nodes[42176631] = Riddle({quest = 93115, item = 246614})
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
map.nodes[51787266] = Riddle({quest = 93137, item = 245649})
map.nodes[59057366] = Riddle({quest = 93138, item = 246250})
map.nodes[64536921] = Riddle({quest = 93139, item = 246253})
map.nodes[57145826] = Riddle({quest = 93140, item = 246249})
map.nodes[50367680] = Riddle({quest = 93141, item = 251981})
map.nodes[50976155] = Riddle({quest = 93142, item = 257691})
map.nodes[49546003] = Riddle({quest = 93143, item = 241617})
map.nodes[50908960] = _Riddle_({quest = 93147, item = 253493})
map.nodes[43246945] = Riddle({quest = 93148, item = 244169})
map.nodes[39207400] = _Riddle_({quest = 93149, item = 243495})
map.nodes[39335760] = Riddle({
    quest = 93150,
    item = 241620,
    note = L['in_small_cave'],
    pois = {Entrance({39795785})}
})
map.nodes[40037850] = Riddle({quest = 93151, item = 257692})
map.nodes[58676949] = Riddle({quest = 93152, item = 241621})

-- 95166 triggered when petting npc 256523 Raptor Hatchling, running around @54695761, sleeps @54525807

-------------------------------------------------------------------------------
------------------------- ACHIEVEMENT: SOUVENIR SEEKER ------------------------
-------------------------------------------------------------------------------

map.nodes[54205690] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 117974})}
}) -- Secret Souvenir (1) [266613]

map.nodes[54805750] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 117975})}
}) -- Secret Souvenir (2) [266614]

map.nodes[53305660] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 117976})}
}) -- Secret Souvenir (3) [266615]

map.nodes[52705270] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 117977})}
}) -- Secret Souvenir (4) [266616]

map.nodes[53804900] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 117978})}
}) -- Secret Souvenir (5) [266617]

map.nodes[58504950] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 117979})}
}) -- Secret Souvenir (6) [266618]

map.nodes[51505870] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 117980})}
}) -- Secret Souvenir (7) [266619]

map.nodes[63604420] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 117981})}
}) -- Secret Souvenir (8) [266620]

map.nodes[62405210] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 117982})}
}) -- Secret Souvenir (9) [266621]

map.nodes[64305830] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 117983})}
}) -- Secret Souvenir (10) [266622]

map.nodes[69007600] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 117984})}
}) -- Secret Souvenir (11) [266623]

map.nodes[62209020] = Souvenir({
    note = string.format(L['souvenir_guide_note'], '{spell:1297643}'),
    rewards = {Achievement({id = 63441, criteria = 117985})},
    pois = {POI({62109020, color = 'Red'})} -- Guide
}) -- Secret Souvenir (12) [266624]

map.nodes[61508990] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 117986})}
}) -- Secret Souvenir (13) [266625]

map.nodes[54508160] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 117987})}
}) -- Secret Souvenir (14) [266626]

map.nodes[52107240] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 117988})}
}) -- Secret Souvenir (15) [266627]

map.nodes[51106950] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 117989})}
}) -- Secret Souvenir (16) [266628]

map.nodes[52606440] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 117990})}
}) -- Secret Souvenir (17) [266629]

map.nodes[44605450] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 117991})}
}) -- Secret Souvenir (18) [266630]

map.nodes[43705070] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 117992})}
}) -- Secret Souvenir (19) [266631]

map.nodes[39305780] = Souvenir({
    note = L['in_waterfall_cave'],
    pois = {Entrance({39905790})},
    rewards = {Achievement({id = 63441, criteria = 117993})}
}) -- Secret Souvenir (20) [266632]

map.nodes[41606690] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 117994})}
}) -- Secret Souvenir (21) [266633]

map.nodes[42706990] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 117995})}
}) -- Secret Souvenir (22) [266634]

map.nodes[44806610] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 117996})}
}) -- Secret Souvenir (23) [266635]

map.nodes[46707530] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 117997})}
}) -- Secret Souvenir (24) [266636]

map.nodes[40807860] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 117998})}
}) -- Secret Souvenir (25) [266637]

map.nodes[38708030] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 117999})}
}) -- Secret Souvenir (26) [266638]

map.nodes[44008730] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 118000})}
}) -- Secret Souvenir (27) [266639]

map.nodes[51108990] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 118001})}
}) -- Secret Souvenir (28) [266640]

map.nodes[64106950] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 118002})}
}) -- Secret Souvenir (29) [266641]

map.nodes[62106330] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 118003})}
}) -- Secret Souvenir (30) [266642]

map.nodes[59706470] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 118004})}
}) -- Secret Souvenir (31) [266643]

map.nodes[58006360] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 118005})}
}) -- Secret Souvenir (32) [266644]

map.nodes[57906980] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 118006})}
}) -- Secret Souvenir (33) [266645]

map.nodes[50506260] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 118007})}
}) -- Secret Souvenir (34) [266646]

map.nodes[51006500] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 118008})}
}) -- Secret Souvenir (35) [266647]

map.nodes[47606220] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 118009})}
}) -- Secret Souvenir (36) [266648]

map.nodes[48406180] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 118010})}
}) -- Secret Souvenir (37) [266649]

map.nodes[48205850] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 118011})}
}) -- Secret Souvenir (38) [266650]

map.nodes[48705410] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 118012})}
}) -- Secret Souvenir (39) [266651]

map.nodes[55905050] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 118013})}
}) -- Secret Souvenir (40) [266652]

map.nodes[56404840] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 118014})}
}) -- Secret Souvenir (41) [266653]

map.nodes[55506080] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 118015})}
}) -- Secret Souvenir (42) [266654]

map.nodes[57205810] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 118016})}
}) -- Secret Souvenir (43) [266655]

map.nodes[79904050] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 118017})}
}) -- Secret Souvenir (44) [266656]

map.nodes[41902450] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 118018})}
}) -- Secret Souvenir (45) [266657]

map.nodes[22904260] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 118019})}
}) -- Secret Souvenir (46) [266658]

map.nodes[75508870] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 118020})}
}) -- Secret Souvenir (47) [266659]

map.nodes[58805540] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 118021})}
}) -- Secret Souvenir (48) [266660]

map.nodes[51505400] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 118022})}
}) -- Secret Souvenir (49) [266661]

map.nodes[53505450] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 118023})}
}) -- Secret Souvenir (50) [266662]

map.nodes[54904280] = Souvenir({
    fgroup = 'souvenir_waterfall',
    note = L['multiple_spawns'] .. '\n' .. L['souvenir_waterfall_note'],
    rewards = {Achievement({id = 63441, criteria = 118024})}
}) -- Secret Souvenir (51) (1/4) [266663]

map.nodes[56005110] = Souvenir({
    fgroup = 'souvenir_waterfall',
    note = L['multiple_spawns'] .. '\n' .. L['souvenir_waterfall_note'],
    rewards = {Achievement({id = 63441, criteria = 118024})}
}) -- Secret Souvenir (51) (2/4) [266663]

map.nodes[62405750] = Souvenir({
    fgroup = 'souvenir_waterfall',
    note = L['multiple_spawns'] .. '\n' .. L['souvenir_waterfall_note'],
    rewards = {Achievement({id = 63441, criteria = 118024})}
}) -- Secret Souvenir (51) (3/4) [266663]

map.nodes[63906330] = Souvenir({
    fgroup = 'souvenir_waterfall',
    note = L['multiple_spawns'] .. '\n' .. L['souvenir_waterfall_note'],
    rewards = {Achievement({id = 63441, criteria = 118024})}
}) -- Secret Souvenir (51) (4/4) [266663]

map.nodes[47205970] = Souvenir({
    note = L['souvenir_soil_note'],
    rewards = {Achievement({id = 63441, criteria = 118025})}
}) -- Secret Souvenir (52) [266664]

map.nodes[55306150] = Souvenir({
    fgroup = 'souvenir_cart',
    note = L['multiple_spawns'] .. '\n' .. L['souvenir_cart_note'],
    rewards = {Achievement({id = 63441, criteria = 118026})}
}) -- Secret Souvenir (53) (1/3) [266665]

map.nodes[50607270] = Souvenir({
    fgroup = 'souvenir_cart',
    note = L['multiple_spawns'] .. '\n' .. L['souvenir_cart_note'],
    rewards = {Achievement({id = 63441, criteria = 118026})}
}) -- Secret Souvenir (53) (2/3) [266665]

map.nodes[63707140] = Souvenir({
    fgroup = 'souvenir_cart',
    note = L['multiple_spawns'] .. '\n' .. L['souvenir_cart_note'],
    rewards = {Achievement({id = 63441, criteria = 118026})}
}) -- Secret Souvenir (53) (3/3) [266665]

map.nodes[67805550] = Souvenir({
    fgroup = 'souvenir_turtle',
    note = L['multiple_spawns'] .. '\n' .. L['souvenir_turtle_note'],
    rewards = {Achievement({id = 63441, criteria = 118027})}
}) -- Secret Souvenir (54) (1/5) [266666]

map.nodes[59905440] = Souvenir({
    fgroup = 'souvenir_turtle',
    note = L['multiple_spawns'] .. '\n' .. L['souvenir_turtle_note'],
    rewards = {Achievement({id = 63441, criteria = 118027})}
}) -- Secret Souvenir (54) (2/5) [266666]

map.nodes[68705960] = Souvenir({
    fgroup = 'souvenir_turtle',
    note = L['multiple_spawns'] .. '\n' .. L['souvenir_turtle_note'],
    rewards = {Achievement({id = 63441, criteria = 118027})}
}) -- Secret Souvenir (54) (3/5) [266666]

map.nodes[65905310] = Souvenir({
    fgroup = 'souvenir_turtle',
    note = L['multiple_spawns'] .. '\n' .. L['souvenir_turtle_note'],
    rewards = {Achievement({id = 63441, criteria = 118027})}
}) -- Secret Souvenir (54) (4/5) [266666]

map.nodes[62604770] = Souvenir({
    fgroup = 'souvenir_turtle',
    note = L['multiple_spawns'] .. '\n' .. L['souvenir_turtle_note'],
    rewards = {Achievement({id = 63441, criteria = 118027})}
}) -- Secret Souvenir (54) (5/5) [266666]

map.nodes[52607310] = Souvenir({
    note = L['souvenir_beach_note'],
    rewards = {Achievement({id = 63441, criteria = 118028})}
}) -- Secret Souvenir (55) [266667]

map.nodes[55206180] = Souvenir({
    fgroup = 'souvenir_kite',
    note = L['multiple_spawns'] .. '\n' .. L['souvenir_kite_note'],
    rewards = {Achievement({id = 63441, criteria = 118029})}
}) -- Secret Souvenir (56) (1/2) [266668]

map.nodes[57005700] = Souvenir({
    fgroup = 'souvenir_kite',
    note = L['multiple_spawns'] .. '\n' .. L['souvenir_kite_note'],
    rewards = {Achievement({id = 63441, criteria = 118029})}
}) -- Secret Souvenir (56) (2/2) [266668]

map.nodes[39207380] = Souvenir({
    rewards = {Achievement({id = 63441, criteria = 118030})}
}) -- Secret Souvenir (57) [266669]

map.nodes[75204840] = Souvenir({
    note = string.format(L['souvenir_scroll_note'], '{item:276747}'),
    rewards = {Achievement({id = 63441, criteria = 118031})},
    pois = {POI({54205790, label = '{npc:268110}', color = 'Red'})} -- Rada
}) -- Secret Souvenir (58) [266670]

map.nodes[26303330] = Souvenir({
    note = string.format(L['souvenir_scroll_note'], '{item:276748}'),
    rewards = {Achievement({id = 63441, criteria = 118032})},
    pois = {POI({54205790, label = '{npc:268110}', color = 'Red'})} -- Rada
}) -- Secret Souvenir (59) [266671]

map.nodes[56109500] = Souvenir({
    note = string.format(L['souvenir_scroll_note'], '{item:276749}'),
    rewards = {Achievement({id = 63441, criteria = 118033})},
    pois = {POI({54205790, label = '{npc:268110}', color = 'Red'})} -- Rada
}) -- Secret Souvenir (60) [266672]
