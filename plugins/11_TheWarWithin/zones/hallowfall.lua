-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible
local DisturbedEarth = ns.node.DisturbedEarth
local PT = ns.node.ProfessionTreasures
local Rare = ns.node.Rare
local Treasure = ns.node.Treasure

local LoreObject = ns.node.LoreObject
local SkyridingGlyph = ns.node.SkyridingGlyph

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Recipe = ns.reward.Recipe
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

local ItemStatus = ns.tooltip.ItemStatus
local ReputationGain = ns.tooltip.ReputationGain

local POI = ns.poi.POI
local Path = ns.poi.Path
local Circle = ns.poi.Circle

-------------------------------------------------------------------------------

local map = Map({id = 2215, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[15004000] = Rare({
    id = 207802,
    quest = 81763, -- 85164
    rewards = {
        Mount({item = 223315, id = 2192}),
        Achievement({id = 40851, criteria = 69716})
    },
    pois = {
        POI({
            25825754, 32673962, 37207191, 37744585, 38382474, 42733133,
            45252569, 47015504, 48853197, 50514857, 51427080, 54833679,
            58034885, 60451862, 61380753, 62823857, 68123014, 71976558, 72804152
        })
    }
}) -- Beledar's Spawn

-- map.nodes[08002000] = Rare({
--     id = 220159,
--     quest = 80486, review -- need rep quest id if triggered
--     rewards = {Achievement({id = 40851, criteria = 69718})}
-- }) -- Brineslash

map.nodes[65052965] = Rare({
    id = 206514,
    quest = 82558, -- 84052
    rlabel = ReputationGain(150, 2570), -- Hallowfall Arathi
    rewards = {Achievement({id = 40851, criteria = 69720})}
}) -- Crazed Cabbage Smacker

map.nodes[67552316] = Rare({
    id = 214757,
    quest = 82560, -- 84054
    note = L['croakit_note'],
    rewards = {Achievement({id = 40851, criteria = 69722})},
    pois = {POI({65802355})}
}) -- Croakit

map.nodes[63643205] = Rare({
    id = 206184,
    quest = 82559, -- 84053
    rlabel = ReputationGain(150, 2570), -- Hallowfall Arathi
    rewards = {Achievement({id = 40851, criteria = 69721})}
}) -- Deathpetal

map.nodes[44744241] = Rare({
    id = 221753,
    quest = 81880, -- 85165
    note = L['deathtide_note'],
    rewards = {Achievement({id = 40851, criteria = 69717})},
    pois = {
        POI({48001668, color = 'Green'}), -- Jar of Mucus
        POI({
            28925120, 34185782, 34365357, 43451413, 50094966, 53771913, 55142344
        }) -- Offering of Pure Water
    }
}) -- Deathtide

map.nodes[72116435] = Rare({
    id = 218458,
    quest = 80011, -- One Time Kill
    rewards = {
        Achievement({id = 40851, criteria = 69703}),
        Transmog({item = 223394, type = L['plate']}) -- Deepfiend Pauldrons
    }
}) -- Deepfiend Azellix

map.nodes[63931977] = Rare({
    id = 221179,
    quest = 82562, -- 84056
    rewards = {Achievement({id = 40851, criteria = 69724})}
}) -- Duskshadow

map.nodes[62011683] = Rare({
    id = 207780,
    quest = 82564, -- 84059
    rewards = {Achievement({id = 40851, criteria = 69727})}
}) -- Finclaw Bloodtide

map.nodes[36807187] = Rare({
    id = 221767,
    quest = 81881, -- One Time Kill
    rewards = {Achievement({id = 40851, criteria = 69707})}
}) -- Funglour

map.nodes[36905469] = Rare({
    id = 221551,
    quest = 81761, -- One Time Kill
    rewards = {Achievement({id = 40851, criteria = 69706})},
    pois = {
        Path({
            36905469, 36905429, 36855379, 36735331, 36555288, 36345249,
            36065219, 35685190, 35495149, 35335104, 35175059, 35065035,
            34835090, 34665135, 34505180, 34115202, 33725179, 33325155,
            32935132, 32705124, 32815171, 32945218, 33065266, 33195313,
            33075353, 32675373, 32275396, 31875418, 31485440, 31255461,
            31465481, 31825500, 32225522, 32615544, 33005566, 33255602,
            33115648, 32995695, 32865743, 32765791, 33165776, 33565753,
            33965730, 34435735, 34635776, 34805820, 35055875, 35295826,
            35485783, 35655740, 36025709, 36305680, 36555644, 36735602,
            36845554, 36905504, 36915462
        })
    }
}) -- Grimslice

map.nodes[33122687] = Rare({
    id = 221668,
    quest = 81836, -- 84065
    rlabel = ReputationGain(150, 2570), -- Hallowfall Arathi
    rewards = {Achievement({id = 40851, criteria = 69712})},
    pois = {
        Path({
            20005108, 21234999, 22614911, 23814796, 24974684, 26234575,
            27724486, 29244409, 30744342, 31084181, 30414033, 29213918,
            28083795, 27033665, 26183527, 25963369, 26733228, 28243161,
            29813119, 31383148, 32253007, 32722850, 33122687, 33752531,
            34702396, 35702260, 36762134, 38242057, 39611962, 40801845,
            41521700, 41741536, 42141377, 42681215, 43201051, 43790895, 44730761
        })
    }
}) -- Horror of the Shallows

map.nodes[57046433] = Rare({
    id = 218426,
    quest = 80006, -- One Time Kill
    rewards = {
        Achievement({id = 40851, criteria = 69704}),
        Transmog({item = 223379, type = L['plate']}) -- Nerubian Weaver's Chestplate
    }
}) -- Ixlorb the Spinner

map.nodes[23005922] = Rare({
    id = 221534,
    quest = 81756, -- 84063
    rlabel = ReputationGain(150, 2570), -- Hallowfall Arathi
    rewards = {
        Achievement({id = 40851, criteria = 69710}),
        Transmog({item = 221207, type = L['mail']}) -- Den Mother's Chestpiece
    }
}) -- Lytfang the Lost

map.nodes[63402880] = Rare({
    id = 206203,
    quest = 82557, -- 84051
    rewards = {Achievement({id = 40851, criteria = 69719})}
}) -- Moth'ethk

map.nodes[52132681] = Rare({
    id = 218452, -- 218455 Lost Cache
    quest = 80010, -- One Time Kill
    rewards = {
        Achievement({id = 40851, criteria = 69705}),
        Transmog({item = 223384, type = L['cloth']}), -- Murkshade Gloves
        Transmog({item = 223382, type = L['leather']}), -- Murkshade Grips
        Transmog({item = 223385, type = L['mail']}), -- Murkshade Gauntlets
        Transmog({item = 223383, type = L['plate']}) -- Murkshade Handguards
    }
}) -- Murkshade

map.nodes[61981331] = Rare({ -- patrols
    id = 220771,
    quest = 82565, -- 84060
    rlabel = ReputationGain(150, 2570), -- Hallowfall Arathi
    rewards = {Achievement({id = 40851, criteria = 69728})}
}) -- Murkspike

-- map.nodes[12002200] = Rare({
--     id = nil,
--     quest = 82563, -- review -- need rep quest id if triggered
--     rewards = {Achievement({id = 40851, criteria = 69725})}
-- }) -- Parasidious

map.nodes[57304857] = Rare({
    id = 221786,
    quest = 81882, -- 84068
    rlabel = ReputationGain(150, 2570), -- Hallowfall Arathi
    rewards = {Achievement({id = 40851, criteria = 69715})}
}) -- Pride of Beledar

map.nodes[59702107] = Rare({
    id = 207826, -- Multiple spawn points 61933187
    quest = 82566, --- 84058
    rewards = {Achievement({id = 40851, criteria = 69726})}
}) -- Ravageant

map.nodes[35943547] = Rare({
    id = 221708,
    quest = 81853, -- 84067
    rlabel = ReputationGain(150, 2570), -- Hallowfall Arathi
    rewards = {Achievement({id = 40851, criteria = 69714})}
}) -- Sir Alastair Purefire

map.nodes[73405259] = Rare({
    id = 215805,
    quest = 79271, -- 84062
    rlabel = ReputationGain(150, 2570), -- Hallowfall Arathi
    rewards = {Achievement({id = 40851, criteria = 69709})}
}) -- Sloshmuck

map.nodes[42703134] = Rare({
    id = 221690,
    quest = 81849, -- 84066
    rlabel = ReputationGain(150, 2570), -- Hallowfall Arathi
    rewards = {
        Achievement({id = 40851, criteria = 69713}),
        Transmog({item = 221246, type = L['staff']}) -- Fierce Beast Staff
    }
}) -- Strength of Beledar

map.nodes[44011637] = Rare({
    id = 221648,
    quest = 81791, -- 84064
    rlabel = ReputationGain(150, 2570), -- Hallowfall Arathi
    rewards = {
        Achievement({id = 40851, criteria = 69711}),
        Transmog({item = 221229, type = L['plate']}) -- Perchfather's Cuffs
    }
}) -- The Perchfather

map.nodes[56486899] = Rare({
    id = 218444,
    quest = 80009, -- 84061
    rlabel = ReputationGain(150, 2570), -- Hallowfall Arathi
    rewards = {Achievement({id = 40851, criteria = 69708})}
}) -- The Taskmaker

map.nodes[66432411] = Rare({
    id = 207803,
    quest = 82561, -- 84055
    rlabel = ReputationGain(150, 2570), -- Hallowfall Arathi
    rewards = {Achievement({id = 40851, criteria = 69723})}
}) -- Toadstomper

map.nodes[63782057] = Rare({
    id = 214905,
    quest = nil, -- no quest triggered
    pois = {
        Path({
            62102153, 62622116, 63162080, 63782057, 63932018, 63761978,
            63641936, 63531893, 63341857, 62931795
        })
    },
    fgroup = 'mycelium'
}) -- Radiant-Twisted Mycelium

-- Drops a "Massive Remnant" on the ground which gives Buff 432622 (also called Massive Remnant)
-- which can be used to empower keyflames. After empowering the keyflames have a 30 minute countdown.
-- There might be more to those keyflames butt i'm campaign locked until they fix some bugs.

-- Known Keyflame locations:
-- 66552394 Stillstone Pond Keyflame (NPC ID 229141)

map.nodes[62090835] = Rare({
    id = 214905,
    quest = nil,
    pois = {Path({62880584, 62230644, 61870771, 62380853, 63490849})},
    fgroup = 'mycelium'
}) -- Radiant-Twisted Mycelium

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[40035112] = Treasure({
    quest = 83298,
    note = L['arathi_loremaster_note'],
    rewards = {
        Achievement({id = 40848, criteria = 69695}), --
        Toy({item = 225659}) -- Arathi Book Collection
    },
    pois = {
        POI({48756471}), Path({Circle({origin = 48756471, radius = 2})}), -- Palawltar's Codez of Dimensional Structure -- q83309
        POI({69344394}), Path({Circle({origin = 69344394, radius = 2})}), -- Care and Feeding of the Imperial Lynx -- q83310
        POI({64182812}), Path({Circle({origin = 64182812, radius = 2})}), -- Shadow Curfew Guidelines -- q83311
        POI({56586518}), Path({Circle({origin = 56586518, radius = 2})}), -- Beledar - The Emperor's Vision -- q83312
        POI({70225684}), Path({Circle({origin = 70225684, radius = 2})}), -- The Song of Renilash -- q83313
        POI({48153959}), Path({Circle({origin = 48153959, radius = 2})}) -- The Big Book of Arathi Idioms -- q83314
    }
}) -- Arathi Loremaster

-- Questions trigger quests > 83300 > 83301 > 83302 > 83303 > 83304 > 83305

map.nodes[41795827] = Treasure({
    quest = 83263,
    note = L['caesper_note'],
    rlabel = ReputationGain(150, 2570), -- Hallowfall Arathi
    rewards = {
        Achievement({id = 40848, criteria = 69692}),
        Recipe({item = 225639, profession = 185}) -- Recipe: Exquisitely Eviscerated Muscle
    },
    pois = {
        POI({69254397}), -- Torran Dellain
        Path({Circle({origin = 69254397, radius = 2})})
    }
}) -- Caesper

map.nodes[59525966] = Treasure({
    quest = 83284,
    location = L['in_cave'],
    note = L['dark_ritual_note'],
    rlabel = ReputationGain(150, 2570), -- Hallowfall Arathi
    rewards = {
        Achievement({id = 40848, criteria = 69694}),
        Item({item = 225693, note = L['trinket']}) -- Shadowed Essence
    },
    pois = {
        POI({59656067}) -- Entrance
    }
}) -- Dark Ritual

map.nodes[58382715] = Treasure({
    quest = 81468,
    location = L['in_small_cave'],
    note = L['illuminated_footlocker_note'],
    rlabel = ReputationGain(150, 2570), -- Hallowfall Arathi
    rewards = {
        Achievement({id = 40848, criteria = 69701}), --
        Toy({item = 224552}) -- Cave Spelunker's Torch
    },
    pois = {POI({57642740})} -- Entrance
}) -- Illuminated Footlocker

local IllusiveKobyssLure = Class('IllusiveKobyssLure', Treasure, {
    quest = 83299,
    rlabel = ns.status.Gray('{item:225641}'),
    fgroup = 'illusive_kobyss_lure',
    rewards = {
        Achievement({id = 40848, criteria = 69696}), --
        Toy({item = 225641}) -- Illusive Kobyss Lure
    }
}) -- Illusive Kobyss Lure

function IllusiveKobyssLure.getters:note()
    local note = L['illusive_kobyss_lure_note']
    note = note .. ItemStatus(225554, 1, '{item:225554}') -- Sunless Lure
    note = note .. ItemStatus(225558, 1, '{item:225558}') -- Murkfin Lure
    note = note .. ItemStatus(225559, 1, '{item:225559}') -- Hungering Shimmerfin
    note = note .. ItemStatus(225560, 1, '{item:225560}') -- Ragefin Necrostaff
    return note
end

map.nodes[55362720] = IllusiveKobyssLure({
    label = '{item:225554}',
    location = L['sunless_lure_location'],
    pois = {POI({54962723, 54632815, 53532879, 53462991, 53942986, 53782639})}
}) -- Sunless Lure

map.nodes[47611854] = IllusiveKobyssLure({
    label = '{item:225558}',
    location = L['murkfin_lure_location'],
    pois = {
        POI({
            46421831, 46271596, 45961566, 45171463, 44791220, 44531189,
            44931131, 44991046, 46281055, 46471247, 46581366, 47061512,
            48191456, 47941494, 48301671, 48221749, 44191467, 43731380
        })
    }
}) -- Murkfin Lure

map.nodes[50655037] = IllusiveKobyssLure({
    label = '{item:225559}',
    location = L['hungering_shimmerfin_location'],
    pois = {POI({51914861, 51475176, 50765233, 49194822, 50674744})}
}) -- Hungering Shimmerfin

map.nodes[34965465] = IllusiveKobyssLure({
    label = '{item:225560}',
    location = L['ragefin_necrostaff_location'],
    pois = {Path({Circle({origin = 34965465, radius = 1.5})})}
}) -- Ragefin Necrostaff

map.nodes[55726960] = Treasure({
    quest = 81971,
    location = L['jewel_of_the_cliffs_location'],
    rewards = {
        Achievement({id = 40848, criteria = 69697}), --
        Item({item = 224580}) -- Massive Sapphire Chunk
    }
}) -- Jewel of the Cliffs

map.nodes[50071385] = Treasure({
    quest = 81978,
    note = L['lost_necklace_note'],
    rewards = {
        Achievement({id = 40848, criteria = 69699}),
        Item({item = 224575, note = L['neck']}) -- Lightbearer's Pendant
    }
}) -- Lost Necklace

map.nodes[30233875] = Treasure({
    quest = 81972,
    location = L['priory_satchel_location'],
    rewards = {
        Achievement({id = 40848, criteria = 69698}),
        Item({item = 224578, note = L['bag']}) -- Arathor Courier's Satchel
    }
}) -- Priory Satchel

map.nodes[45944513] = Treasure({
    quest = 82005,
    rewards = {
        Achievement({id = 40848, criteria = 69700}), Toy({item = 224554})
    },
    pois = {
        Path({
            color = 'Green',
            points = {
                50285167, 51255187, 52245197, 53275188, 54235171, 55115155,
                56055131, 56855106, 57785082, 58705052, 59655013, 60654982,
                61474943, 62074875, 62504792, 62784687, 62774598, 62464500,
                61974406, 61454330, 60814264, 60114201, 59454139, 58754080,
                58134025, 57503970, 56873913, 56253855, 55613801, 54973750,
                54343695, 53713640, 53093588, 52433536, 51763487, 50983433,
                50113372, 49423325, 48573265, 47753230, 46813261, 46093331,
                45413384, 44883456, 44433547, 44103641, 43863744, 43733853,
                43643960, 43574073, 43594183, 43774286, 44074387, 44454486,
                44824577, 45204669, 45634760, 46134845, 46674913, 47304976,
                47955033, 48605083, 49395131, 50285167
            } -- Sky-Captain Dornald
        }), Path({
            color = 'Yellow',
            points = {
                49245744, 49365640, 49535553, 49615452, 49755337, 49715233,
                49445133, 49025041, 48524957, 47974878, 47424805, 46834738,
                46134676, 45464628, 44554580, 43594549, 42654536, 41694524,
                40754517, 39754511, 38794507, 37854504, 36894506, 35914510,
                34934523, 33994547, 33104590, 32434641, 31794692, 31114742,
                30504800, 30094888, 29844993, 29735102, 29775217, 29905331,
                30065433, 30325527, 30905608, 31435683, 32165737, 32995774,
                33965814, 34885844, 35855871, 36685904, 37495933, 38395971,
                39246015, 40036065, 40716112, 41396160, 42106220, 42786267,
                43716310, 44636349, 45636343, 46586309, 47186251, 47786183,
                48226097, 48555998, 48875899, 49155797, 49245744
            }
        }), -- Sky-Captain Clarmonte
        Path({
            color = 'Blue',
            points = {
                53482382, 53772273, 54022179, 54302070, 54541971, 54771878,
                54971791, 55241702, 55471615, 55521503, 55371398, 55171293,
                54931192, 54591099, 54151012, 53550932, 52990871, 52270818,
                51420777, 50460734, 49460704, 48510705, 47510718, 46550748,
                45690804, 45140878, 44670970, 44281066, 43961159, 43641265,
                43471375, 43411482, 43371587, 43341694, 43381798, 43501908,
                43582012, 43672123, 43792236, 44002342, 44342443, 44762542,
                45212633, 45622709, 46152808, 46642878, 47292951, 47833017,
                48613070, 49473105, 50463112, 51283047, 51762943, 52052855,
                52342764, 52672661, 53012548, 53272460, 53482382
            }
        }), -- Sky-Captain Onaro
        Path({
            color = 'Red',
            points = {
                41954204, 41204260, 40264305, 39344337, 38384359, 37434363,
                36434356, 35434348, 34494339, 33554319, 32624282, 31664252,
                30694214, 30034163, 29394101, 28824037, 28283960, 27863874,
                27583774, 27483670, 27503559, 27653446, 27913353, 28303262,
                28793174, 29303091, 29853016, 30482944, 31092880, 31762813,
                32382748, 33042687, 33842619, 34482566, 35162512, 35832462,
                36542410, 37302356, 38092303, 38892237, 39852214, 40852202,
                41772230, 42342303, 42852380, 43362467, 43832555, 44282646,
                44622742, 44862841, 45102952, 45283055, 45383159, 45383266,
                45373375, 45283484, 45153589, 45023677, 44803787, 44383873,
                43813946, 43324028, 42824109, 42244176, 41954204
            }
        }) -- Sky-Captain Aerthin
    }
    -- you might have to talk to 4 Sky-Captains on flying boats to unlock this treasure
    -- hidden quests after talking to the captains: 82012, 82024, 82025, 82026
}) -- Sky-Captains' Sunken Cache

map.nodes[55145185] = Treasure({
    quest = 83273,
    requires = ns.requirement.Item(225335), -- Smuggler's Key
    location = L['smugglers_treasure_location'],
    rlabel = ReputationGain(150, 2570), -- Hallowfall Arathi
    note = L['smugglers_treasure_note'],
    rewards = {
        Achievement({id = 40848, criteria = 69693}), --
        Item({item = 226021}) -- Jar of Pickels
    },
    pois = {POI({55425164})} -- Dead Arathi
}) -- Smuggler's Treasure

map.nodes[76765382] = Treasure({ -- review, was not there when i looked
    quest = 79275,
    location = L['in_cave'],
    rewards = {Achievement({id = 40848, criteria = 69702})},
    pois = {POI({76105390})} -- Entrance
}) -- Spore-covered Coffer

map.nodes[63990612] = Treasure({
    quest = 80687,
    label = L['coral_fused_clam'],
    note = L['coral_fused_clam_note'],
    pois = {
        POI({61890609}) -- Clammer's Kit - Requires level 80 -- q80687
    }
}) -- Coral-Fused Clam

-- map.nodes[56091454] = Treasure({
--     quest = 81518,
--     rewards = {
--         Item({item = 206350}), -- Radiant Remnant
--     }
-- }) -- Fisherman's Pouch

-------------------------------------------------------------------------------
----------------------------- PROFESSION TREASURES ----------------------------
-------------------------------------------------------------------------------

map.nodes[42645510] = PT.Alchemy({quest = 83844, id = 226269}) -- Chemist's Purified Water
map.nodes[41665584] = PT.Alchemy({quest = 83845, id = 226270}) -- Sanctified Mortar and Pestle
map.nodes[47586106] = PT.Blacksmithing({quest = 83852, id = 226280}) -- Holy Flame Forge
map.nodes[44065559] = PT.Blacksmithing({quest = 83853, id = 226281}) -- Radiant Tongs
map.nodes[40067055] = PT.Enchanting({quest = 83862, id = 226288}) -- Essence of Holy Fire
map.nodes[42632725] = PT.Enchanting({quest = 83868, id = 226289}) -- Enchanted Arathi Scroll
map.nodes[46316135] = PT.Engineering({quest = 83870, id = 226296}) -- Holy Firework Dud
map.nodes[41634893] = PT.Engineering({quest = 83871, id = 226297}) -- Arathi Safety Gloves
map.nodes[47786330] = PT.Herbalism({quest = 83878, id = 226304}) -- Arathi Garden Trowel
map.nodes[35975501] = PT.Herbalism({quest = 83879, id = 226305}) -- Arathi Herb Pruner
map.nodes[43255894] = PT.Inscription({quest = 83886, id = 226312}) -- Informant's Fountain Pen
map.nodes[42834907] = PT.Inscription({quest = 83887, id = 226313}) -- Calligrapher's Chiselled Marker
map.nodes[47396068] = PT.Jewelcrafting({quest = 83894, id = 226320}) -- Arathi Sizing Gauges
map.nodes[44695097] = PT.Jewelcrafting({quest = 83895, id = 226321}) -- Librarian's Magnifiers
map.nodes[47516513] = PT.Leatherworking({quest = 83902, id = 226328}) -- Arathi Beveler Set
map.nodes[41505783] = PT.Leatherworking({quest = 83903, id = 226329}) -- Arathi Leather Burnisher
map.nodes[46076439] = PT.Mining({quest = 83910, id = 226336}) -- Arathi Precision Drill
map.nodes[43095684] = PT.Mining({quest = 83911, id = 226337}) -- Devout Archaeologist's Excavator
map.nodes[49366215] = PT.Skinning({quest = 83918, id = 226344}) -- Arathi Tanning Agent
map.nodes[42295393] = PT.Skinning({quest = 83919, id = 226345}) -- Arathi Craftsman's Spokeshave
map.nodes[49326231] = PT.Tailoring({quest = 83926, id = 226352}) -- Arathi Rotary Cutter
map.nodes[40096813] = PT.Tailoring({quest = 83927, id = 226353}) -- Royal Outfitter's Protractor

-------------------------------------------------------------------------------
--------------------------- HALLOWFALL GLYPH HUNTER ---------------------------
-------------------------------------------------------------------------------

map.nodes[62855170] = SkyridingGlyph({
    rewards = {Achievement({id = 40704, criteria = 69255})}
}) -- The Fangs

map.nodes[57363255] = SkyridingGlyph({
    rewards = {Achievement({id = 40704, criteria = 69256})}
}) -- Sina's Yearning

map.nodes[63686555] = SkyridingGlyph({
    rewards = {Achievement({id = 40704, criteria = 69257})}
}) -- Sanguine Grasps

map.nodes[69954421] = SkyridingGlyph({
    rewards = {Achievement({id = 40704, criteria = 69258})}
}) -- Dunelle's Kindness

map.nodes[62750719] = SkyridingGlyph({
    rewards = {Achievement({id = 40704, criteria = 69259})}
}) -- Bleak Sand

map.nodes[43345277] = SkyridingGlyph({
    rewards = {Achievement({id = 40704, criteria = 69260})}
}) -- Mereldar

map.nodes[35443384] = SkyridingGlyph({
    rewards = {Achievement({id = 40704, criteria = 69261})}
}) -- Priory of the Sacred Flame

map.nodes[30715148] = SkyridingGlyph({
    rewards = {Achievement({id = 40704, criteria = 69262})}
}) -- Fortune's Fall

map.nodes[45741243] = SkyridingGlyph({
    rewards = {Achievement({id = 40704, criteria = 69263})}
}) -- Velhan's Claim

map.nodes[57616460] = SkyridingGlyph({
    rewards = {Achievement({id = 40704, criteria = 69264})}
}) -- Tenir's Ascent

-------------------------------------------------------------------------------
------------------------ ACHIEVEMENT: BIBLO ARCHIVIST ------------------------
-------------------------------------------------------------------------------

local BibloBook = Class('BibloBook', Collectible,
    {icon = 5341597, group = ns.groups.BIBLO_ARCHIVIST})

map.nodes[48153959] = BibloBook({
    location = L['biblo_book_01_location'],
    rewards = {Achievement({id = 40622, criteria = 68954})}
}) -- The Big Book of Arathi Idioms

map.nodes[43884991] = BibloBook({
    location = L['biblo_book_02_location'],
    rewards = {Achievement({id = 40622, criteria = 68955})}
}) -- 500 Dishes Using Cave Fish and Mushrooms

map.nodes[69344394] = BibloBook({
    location = L['biblo_book_03_location'],
    rewards = {Achievement({id = 40622, criteria = 68957})}
}) -- Care and Feeding of the Imperial Lynx

map.nodes[68684159] = BibloBook({
    location = L['biblo_book_04_location'],
    rewards = {Achievement({id = 40622, criteria = 68958})}
}) -- Light's Gambit Playbook

map.nodes[57825183] = BibloBook({
    location = L['biblo_book_05_location'],
    rewards = {Achievement({id = 40622, criteria = 68960})}
}) -- From the Depths They Come

map.nodes[48756471] = BibloBook({
    location = L['biblo_book_06_location'],
    rewards = {Achievement({id = 40622, criteria = 68961})}
}) -- Palawltar's Codex of Dimensional Structure

map.nodes[64182812] = BibloBook({
    location = L['biblo_book_07_location'],
    rewards = {Achievement({id = 40622, criteria = 68963})}
}) -- Shadow Curfew Guidelines

map.nodes[59802203] = BibloBook({
    location = L['biblo_book_08_location'],
    rewards = {Achievement({id = 40622, criteria = 68965})}
}) -- Shadow Curfew Journal

map.nodes[70225684] = BibloBook({
    location = L['biblo_book_09_location'],
    rewards = {Achievement({id = 40622, criteria = 68967})}
}) -- The Song of Renilash

map.nodes[56586518] = BibloBook({
    location = L['biblo_book_10_location'],
    rewards = {Achievement({id = 40622, criteria = 68968})}
}) -- Beledar - The Emperor's Vision

map.nodes[52635999] = BibloBook({
    location = L['biblo_book_11_location'],
    rewards = {Achievement({id = 40622, criteria = 69729})}
}) -- Lightspark Grade Book

-------------------------------------------------------------------------------
------------------------- ACHIEVEMENT: LOST AND FOUND -------------------------
-------------------------------------------------------------------------------

local Momento = Class('Momento', Collectible, {
    icon = 4635200,
    group = ns.groups.LOST_AND_FOUND,
    note = L['lost_and_found_note'],
    pois = {POI({60486018})}
})

map.nodes[65463222] = Momento({
    location = L['broken_bracelet_location'],
    requires = ns.requirement.Quest(80678),
    rewards = {Achievement({id = 40618, criteria = 68932})}
}) -- Broken Bracelet

map.nodes[43285542] = Momento({
    location = L['stuffed_lynx_toy_location'],
    requires = ns.requirement.Quest(80678),
    rewards = {Achievement({id = 40618, criteria = 68933})}
}) -- Stuffed Lynx Toy

map.nodes[43465171] = Momento({
    location = L['tarnished_compass_location'],
    requires = ns.requirement.Quest(80678),
    rewards = {Achievement({id = 40618, criteria = 68934})}
}) -- Tarnished Compass

map.nodes[43204979] = Momento({
    location = L['sturdy_locket_location'],
    requires = ns.requirement.Quest(82813),
    rewards = {Achievement({id = 40618, criteria = 68935})}
}) -- Sturdy Locket

map.nodes[69264384] = Momento({
    location = L['wooden_figure_location'],
    requires = ns.requirement.Quest(82813),
    rewards = {Achievement({id = 40618, criteria = 68937})}
}) -- Wooden Figure

map.nodes[48423888] = Momento({
    location = L['calcified_journal_location'],
    requires = ns.requirement.Quest(82813),
    rewards = {Achievement({id = 40618, criteria = 68940})}
}) -- Calcified Journal

map.nodes[41643474] = Momento({
    location = L['ivory_tinderbox_location'],
    requires = ns.requirement.Quest(82810),
    rewards = {Achievement({id = 40618, criteria = 68942})}
}) -- Ivory Tinderbox

map.nodes[42355502] = Momento({
    location = L['dented_spear_location'],
    requires = ns.requirement.Quest(82810),
    rewards = {Achievement({id = 40618, criteria = 68943})}
}) -- Dented Spear

map.nodes[43974970] = Momento({
    location = L['filigreed_cleric_location'],
    requires = ns.requirement.Quest(82810),
    rewards = {Achievement({id = 40618, criteria = 68945})}
}) -- Filigreed Cleric

-------------------------------------------------------------------------------
------------------------ ACHIEVEMENT: THE MISSING LYNX ------------------------
-------------------------------------------------------------------------------

local MissingLynx = Class('MissingLynx', Collectible, {
    icon = 5689905,
    group = ns.groups.MISSING_LYNX,
    note = L['missing_lynx_note']
})

map.nodes[60426022] = MissingLynx({
    location = L['magpie_location'],
    rewards = {Achievement({id = 40625, criteria = 68975})}
}) -- Magpie

map.nodes[42695384] = MissingLynx({
    location = L['in_building'],
    rewards = {Achievement({id = 40625, criteria = 68998})}
}) -- Evan

map.nodes[42735388] = MissingLynx({
    location = L['in_building'],
    rewards = {Achievement({id = 40625, criteria = 68999})}
}) -- Emery

map.nodes[42305381] = MissingLynx({
    location = L['in_building'],
    rewards = {Achievement({id = 40625, criteria = 69000})}
}) -- Jinx

map.nodes[69274362] = MissingLynx({
    location = L['in_building'],
    rewards = {Achievement({id = 40625, criteria = 69001})}
}) -- Moog

map.nodes[69274372] = MissingLynx({
    location = L['in_building'],
    rewards = {Achievement({id = 40625, criteria = 69002})}
}) -- Iggy

map.nodes[63182936] = MissingLynx({
    requires = ns.requirement.Item(206350, 3), -- Radiant Remnant
    location = L['nightclaw_location'],
    rewards = {Achievement({id = 40625, criteria = 69003})}
}) -- Nightclaw

map.nodes[63792932] = MissingLynx({
    requires = ns.requirement.Item(206350, 20), -- Radiant Remnant
    location = L['purrlock_location'],
    rewards = {Achievement({id = 40625, criteria = 69004})} -- review (criteria is for Fuzzy but tracks Fuzzy)
}) -- Purrlock

map.nodes[63262811] = MissingLynx({
    requires = ns.requirement.Item(206350, 20), -- Radiant Remnant
    location = L['shadowpouncer_location'],
    rewards = {Achievement({id = 40625, criteria = 69005})}
}) -- Shadowpouncer

map.nodes[61193054] = MissingLynx({
    location = L['miral_murder_mittens_location'],
    rewards = {Achievement({id = 40625, criteria = 69006})}
}) -- Miral Murder-Mittens

map.nodes[64441857] = MissingLynx({
    location = L['fuzzy_location'],
    rewards = {Achievement({id = 40625, criteria = 69007})} -- review (criteria is for Fuzzy but tracks Purrlock)
}) -- Fuzzy

map.nodes[64441857] = MissingLynx({
    location = L['furball_location'],
    rewards = {Achievement({id = 40625, criteria = 69008})}
}) -- Furball

map.nodes[61922081] = MissingLynx({
    location = L['dander_location'],
    rewards = {Achievement({id = 40625, criteria = 69009})}
}) -- Dander

map.nodes[42145371] = MissingLynx({
    location = L['gobbo_location'],
    rewards = {Achievement({id = 40625, criteria = 69010})}
}) -- Gobbo

-------------------------------------------------------------------------------
--------------------- ACHIEVEMENT: KHAZ ALGAR LORE HUNTER ---------------------
-------------------------------------------------------------------------------

map.nodes[62214557] = LoreObject({
    -- rlabel = ReputationGain(250, 2570), -- Hallowfall Arathi
    rewards = {Achievement({id = 40762, criteria = 69383})}
}) -- A Scout's Journal

map.nodes[71433667] = LoreObject({
    -- rlabel = ReputationGain(250, 2570), -- Hallowfall Arathi
    rewards = {Achievement({id = 40762, criteria = 69382})}
}) -- A Tattered Note

map.nodes[78244041] = LoreObject({
    rlabel = ReputationGain(250, 2570), -- Hallowfall Arathi
    rewards = {Achievement({id = 40762, criteria = 69381})}
}) -- A Weathered Tome

map.nodes[25085371] = LoreObject({
    -- rlabel = ReputationGain(250, 2570), -- Hallowfall Arathi
    rewards = {Achievement({id = 40762, criteria = 69380})}
}) -- A Worn Down Book

map.nodes[25723845] = LoreObject({
    -- rlabel = ReputationGain(250, 2570), -- Hallowfall Arathi
    rewards = {Achievement({id = 40762, criteria = 69379})}
}) -- Captain's Chest

-------------------------------------------------------------------------------
------------------------- ACHIEVEMENT: MERELDAR MENACE ------------------------
-------------------------------------------------------------------------------

local MereldarMenace = Class('mereldar_menace', Collectible, {
    icon = 135232,
    group = ns.groups.MERELDAR_MENACE,
    note = L['mereldar_menace_note']
})

map.nodes[41845564] = MereldarMenace({
    rewards = {Achievement({id = 40151, criteria = 67121})},
    pois = {
        POI({41895552}) -- Throwing stone
    }
}) -- Orphanage Window

map.nodes[42545551] = MereldarMenace({
    rewards = {Achievement({id = 40151, criteria = 67122})},
    pois = {
        POI({41895552}) -- Throwing stone
    }
}) -- Notice Board

map.nodes[42455439] = MereldarMenace({
    rewards = {Achievement({id = 40151, criteria = 67123})},
    pois = {
        POI({41895552}) -- Throwing stone
    }
}) -- Food Stall

map.nodes[42355491] = MereldarMenace({
    rewards = {Achievement({id = 40151, criteria = 67124})},
    pois = {
        POI({41895552}) -- Throwing stone
    }
}) -- Fountain

map.nodes[42295439] = MereldarMenace({
    rewards = {Achievement({id = 40151, criteria = 67125})},
    pois = {
        POI({41895552}) -- Throwing stone
    }
}) -- Spice Stall

map.nodes[42975268] = MereldarMenace({
    rewards = {Achievement({id = 40151, criteria = 67126})},
    location = L['light_and_flame_location'],
    pois = {
        POI({42265254}) -- Throwing stone
    }
}) -- Light and Flame

map.nodes[43025235] = MereldarMenace({
    rewards = {Achievement({id = 40151, criteria = 67127})},
    location = L['lamplighter_doorway_location'],
    pois = {
        POI({42265254}) -- Throwing stone
    }
}) -- Lamplighter Doorway

map.nodes[41325296] = MereldarMenace({
    rewards = {Achievement({id = 40151, criteria = 67128})},
    location = L['barracks_doorway_location'],
    pois = {
        POI({42265254}) -- Throwing stone
    }
}) -- Barracks Doorway

map.nodes[43505078] = MereldarMenace({
    rewards = {Achievement({id = 40151, criteria = 67129})},
    pois = {
        POI({44245123}) -- Throwing stone
    }
}) -- Holy Oil

map.nodes[44685177] = MereldarMenace({
    rewards = {Achievement({id = 40151, criteria = 67130})},
    pois = {
        POI({44245123}) -- Throwing stone
    }
}) -- Airship Drafting Board

-------------------------------------------------------------------------------
-------------------------------- DISTURBED DIRT -------------------------------
-------------------------------------------------------------------------------

map.nodes[25155531] = DisturbedEarth()
map.nodes[30336036] = DisturbedEarth()
map.nodes[35304999] = DisturbedEarth()
map.nodes[37645636] = DisturbedEarth()
map.nodes[37825901] = DisturbedEarth()
map.nodes[38295761] = DisturbedEarth()
map.nodes[39785362] = DisturbedEarth()
map.nodes[41486045] = DisturbedEarth()
map.nodes[45365843] = DisturbedEarth()
map.nodes[46775590] = DisturbedEarth()
map.nodes[47646194] = DisturbedEarth()
map.nodes[48943269] = DisturbedEarth()
map.nodes[49043768] = DisturbedEarth()
map.nodes[49631997] = DisturbedEarth()
map.nodes[50023537] = DisturbedEarth()
map.nodes[50803190] = DisturbedEarth()
map.nodes[51083410] = DisturbedEarth()
map.nodes[52345653] = DisturbedEarth()
map.nodes[58085003] = DisturbedEarth()
map.nodes[60755455] = DisturbedEarth()
map.nodes[61894422] = DisturbedEarth()
map.nodes[63135518] = DisturbedEarth()
map.nodes[63614485] = DisturbedEarth()
map.nodes[65112334] = DisturbedEarth()
map.nodes[65652720] = DisturbedEarth()
map.nodes[66212719] = DisturbedEarth()
map.nodes[66252500] = DisturbedEarth()
map.nodes[66344187] = DisturbedEarth()
map.nodes[44147539] = DisturbedEarth()
map.nodes[44537632] = DisturbedEarth()
map.nodes[44947610] = DisturbedEarth()

