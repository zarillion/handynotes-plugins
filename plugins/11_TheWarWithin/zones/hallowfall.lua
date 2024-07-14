-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible
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
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40851, criteria = 69718})}
-- }) -- Brineslash

-- map.nodes[10002000] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40851, criteria = 69720})}
-- }) -- Crazed Cabbage Smacker

map.nodes[67552316] = Rare({
    id = 214757,
    quest = nil,
    note = L['croakit_note'],
    rewards = {Achievement({id = 40851, criteria = 69722})},
    pois = {POI({65802355})}
}) -- Croakit

-- map.nodes[14002000] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40851, criteria = 69721})}
-- }) -- Deathpetal

map.nodes[44744241] = Rare({
    id = 221753,
    quest = nil,
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
    quest = 80011,
    rewards = {
        Achievement({id = 40851, criteria = 69703}),
        Transmog({item = 223394, type = L['plate']}) -- Deepfiend Pauldrons
    }
}) -- Deepfiend Azellix

map.nodes[63931977] = Rare({
    id = 221179,
    quest = nil,
    rewards = {Achievement({id = 40851, criteria = 69724})}
}) -- Duskshadow

-- map.nodes[22002000] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40851, criteria = 69727})}
-- }) -- Finclaw Bloodtide

map.nodes[36807187] = Rare({
    id = 221767,
    quest = 81881,
    rewards = {Achievement({id = 40851, criteria = 69707})}
}) -- Funglour

map.nodes[36905469] = Rare({
    id = 221551,
    quest = 81761,
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
    quest = 80006,
    rewards = {
        Achievement({id = 40851, criteria = 69704}),
        Transmog({item = 223379, type = L['plate']}) -- Nerubian Weaver's Chestplate
    }
}) -- Ixlorb the Weaver

map.nodes[23005922] = Rare({
    id = 221534,
    quest = nil,
    rewards = {Achievement({id = 40851, criteria = 69710})}
}) -- Lytfang the Lost

map.nodes[63402880] = Rare({
    id = 206203,
    quest = nil,
    rewards = {Achievement({id = 40851, criteria = 69719})}
}) -- Moth'ethk

map.nodes[52132681] = Rare({
    id = 218452, -- 218455 Lost Cache
    quest = 80010,
    rewards = {
        Achievement({id = 40851, criteria = 69705}),
        Transmog({item = 223383, type = L['plate']}) -- Murkshade Handguards
    }
}) -- Murkshade

-- map.nodes[10002200] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40851, criteria = 69728})}
-- }) -- Murkspike

-- map.nodes[12002200] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40851, criteria = 69725})}
-- }) -- Parasidous

map.nodes[57304857] = Rare({
    id = 221786,
    quest = 81882, -- 84068
    rewards = {Achievement({id = 40851, criteria = 69715})}
}) -- Pride of Beledar

map.nodes[59702107] = Rare({
    id = 207826,
    quest = nil,
    rewards = {Achievement({id = 40851, criteria = 69726})}
}) -- Ravageant

map.nodes[35943547] = Rare({
    id = 221708,
    quest = 84067, -- 81853
    rewards = {Achievement({id = 40851, criteria = 69714})}
}) -- Sir Alastair Purefire

map.nodes[73215297] = Rare({
    id = 215805,
    quest = 79271, -- 84062
    rewards = {Achievement({id = 40851, criteria = 69709})}
}) -- Sloshmuck

map.nodes[42703134] = Rare({
    id = 221690,
    quest = 84066, -- 81849
    rewards = {
        Achievement({id = 40851, criteria = 69713}),
        Transmog({item = 221246, type = L['staff']}) -- Fierce Beast Staff
    }
}) -- Strength of Beledar

map.nodes[44011637] = Rare({
    id = 221648,
    quest = 84064, -- 81791
    rewards = {
        Achievement({id = 40851, criteria = 69711}),
        Transmog({item = 221229, type = L['plate']}) -- Perchfather's Cuffs
    }
}) -- The Perchfather

map.nodes[56486899] = Rare({
    id = 218444,
    quest = nil,
    rewards = {Achievement({id = 40851, criteria = 69708})}
}) -- The Taskmaker

-- map.nodes[26002200] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40851, criteria = 69723})}
-- }) -- Toadstomper

map.nodes[63782057] = Rare({
    id = 214905,
    quest = nil,
    pois = {
        Path({
            62102153, 62622116, 63162080, 63782057, 63932018, 63761978,
            63641936, 63531893, 63341857, 62931795
        })
    },
    fgroup = 'mycelium'
}) -- Radiant-Twisted Mycelium

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
    quest = nil,
    label = L['coral_fused_clam'],
    note = L['coral_fused_clam_note'],
    pois = {
        POI({61890609}) -- Clammer's Kit - Requires level 80
    }
}) -- Coral Fused Clam

-- map.nodes[56091454] = Treasure({
--     quest = 81518,
--     rewards = {
--         Item({item = 206350}), -- Radiant Remnant
--     }
-- }) -- Fisherman's Pouch

-------------------------------------------------------------------------------
----------------------------- PROFESSION TREASURES ----------------------------
-------------------------------------------------------------------------------

map.nodes[47586106] = PT.Blacksmithing({quest = 83852, id = 226280}) -- Holy Flame Forge -- review
map.nodes[44065559] = PT.Blacksmithing({quest = 83853, id = 226281}) -- Radiant Tongs -- review
map.nodes[35925497] = PT.Herbalism({quest = nil, id = 226305}) -- Arathi Herb Pruner -- review
map.nodes[43095685] = PT.Mining({quest = 83911, id = 226337}) -- Devout Archaeologist's Excavator -- review
map.nodes[42305391] = PT.Skinning({quest = nil, id = 226345}) -- Arathi Craftsman's Spokeshave -- review
map.nodes[49316233] = PT.Tailoring({quest = nil, id = 226352}) -- Arathi Rotary Cutter -- review
map.nodes[40116812] = PT.Tailoring({quest = nil, id = 226353}) -- Royal Outfitter's Protractor -- review

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
------------------------ ACHIEVEMENT: BIBLIO ARCHIVIST ------------------------
-------------------------------------------------------------------------------

local BiblioBook = Class('BiblioBook', Collectible,
    {icon = 5341597, group = ns.groups.BIBLIO_ARCHIVIST})

map.nodes[48153959] = BiblioBook({
    location = L['biblio_book_01_location'],
    rewards = {Achievement({id = 40622, criteria = 68954})}
}) -- The Big Book of Arathi Idioms

map.nodes[43884991] = BiblioBook({
    location = L['biblio_book_02_location'],
    rewards = {Achievement({id = 40622, criteria = 68955})}
}) -- 500 Dishes Using Cave Fish and Mushrooms

map.nodes[69344394] = BiblioBook({
    location = L['biblio_book_03_location'],
    rewards = {Achievement({id = 40622, criteria = 68957})}
}) -- Care and Feeding of the Imperial Lynx

map.nodes[68684159] = BiblioBook({
    location = L['biblio_book_04_location'],
    rewards = {Achievement({id = 40622, criteria = 68958})}
}) -- Light's Gambit Playbook

map.nodes[57595180] = BiblioBook({
    location = L['biblio_book_05_location'],
    rewards = {Achievement({id = 40622, criteria = 68960})}
}) -- From the Depths They Come

map.nodes[48756471] = BiblioBook({
    location = L['biblio_book_06_location'],
    rewards = {Achievement({id = 40622, criteria = 68961})}
}) -- Palawltar's Codex of Dimensional Structure

map.nodes[64182812] = BiblioBook({
    location = L['biblio_book_07_location'],
    rewards = {Achievement({id = 40622, criteria = 68963})}
}) -- Shadow Curfew Guidelines

map.nodes[59802203] = BiblioBook({
    location = L['biblio_book_08_location'],
    rewards = {Achievement({id = 40622, criteria = 68965})}
}) -- Shadow Curfew Journal

map.nodes[70225684] = BiblioBook({
    location = L['biblio_book_09_location'],
    rewards = {Achievement({id = 40622, criteria = 68967})}
}) -- The Song of Renilash

map.nodes[56586518] = BiblioBook({
    location = L['biblio_book_10_location'],
    rewards = {Achievement({id = 40622, criteria = 68968})}
}) -- Beledar - The Emperor's Vision

-------------------------------------------------------------------------------
------------------------- ACHIEVEMENT: LOST AND FOUND -------------------------
-------------------------------------------------------------------------------

-- [60486020] Maera Ashyld

local Momento = Class('Momento', Collectible, {
    icon = 4635200,
    group = ns.groups.LOST_AND_FOUND,
    note = L['lost_and_found_note']
})

map.nodes[06001600] = Momento({
    location = L['broken_bracelet_location'],
    rewards = {Achievement({id = 40618, criteria = 68932})}
}) -- Broken Bracelet

map.nodes[08001600] = Momento({
    location = L['stuffed_lynx_toy_location'],
    rewards = {Achievement({id = 40618, criteria = 68933})}
}) -- Stuffed Lynx Toy

map.nodes[10001600] = Momento({
    location = L['tarnished_compass_location'],
    rewards = {Achievement({id = 40618, criteria = 68934})}
}) -- Tarnished Compass

map.nodes[12001600] = Momento({
    location = L['sturdy_locket_location'],
    rewards = {Achievement({id = 40618, criteria = 68935})}
}) -- Sturdy Locket

map.nodes[14001600] = Momento({
    location = L['wooden_figure_location'],
    rewards = {Achievement({id = 40618, criteria = 68937})}
}) -- Wooden Figure

map.nodes[16001600] = Momento({
    location = L['calcified_journal_location'],
    rewards = {Achievement({id = 40618, criteria = 68940})}
}) -- Calcified Journal

map.nodes[18001600] = Momento({
    location = L['ivory_tinderbox_location'],
    rewards = {Achievement({id = 40618, criteria = 68942})}
}) -- Ivory Tinderbox

map.nodes[20001600] = Momento({
    location = L['dented_spear_location'],
    rewards = {Achievement({id = 40618, criteria = 68943})}
}) -- Dented Spear

map.nodes[22001600] = Momento({
    location = L['filigreed_cleric_location'],
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
    location = L['evan_location'],
    rewards = {Achievement({id = 40625, criteria = 68998})}
}) -- Evan

map.nodes[42735388] = MissingLynx({
    location = L['emery_location'],
    rewards = {Achievement({id = 40625, criteria = 68999})}
}) -- Emery

map.nodes[42305381] = MissingLynx({
    location = L['jinx_location'],
    rewards = {Achievement({id = 40625, criteria = 69000})}
}) -- Jinx

map.nodes[69274362] = MissingLynx({
    location = L['moog_location'],
    rewards = {Achievement({id = 40625, criteria = 69001})}
}) -- Moog

map.nodes[69274372] = MissingLynx({
    location = L['iggy_location'],
    rewards = {Achievement({id = 40625, criteria = 69002})}
}) -- Iggy

map.nodes[18001800] = MissingLynx({
    location = L['nightclaw_location'],
    rewards = {Achievement({id = 40625, criteria = 69003})}
}) -- Nightclaw

map.nodes[63792932] = MissingLynx({
    location = L['purrlock_location'],
    rewards = {Achievement({id = 40625, criteria = 69004})}
}) -- Purrlock

map.nodes[63262811] = MissingLynx({
    location = L['shadowpouncer_location'],
    rewards = {Achievement({id = 40625, criteria = 69005})}
}) -- Shadowpouncer

map.nodes[61193054] = MissingLynx({
    location = L['miral_murder_mittens_location'],
    rewards = {Achievement({id = 40625, criteria = 69006})}
}) -- Miral Murder-Mittens

map.nodes[64441857] = MissingLynx({
    location = L['fuzzy_location'],
    rewards = {Achievement({id = 40625, criteria = 69007})}
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
