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

local FlightMaster = ns.node.FlightMaster
-- local LoreObject = ns.node.LoreObject
local SkyridingGlyph = ns.node.SkyridingGlyph

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Recipe = ns.reward.Recipe
local Reputation = ns.reward.Reputation
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

local ItemStatus = ns.tooltip.ItemStatus

local Circle = ns.poi.Circle
local Entrance = ns.poi.Entrance
local Path = ns.poi.Path
local POI = ns.poi.POI

-------------------------------------------------------------------------------

local map = Map({id = 2215, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

local BeledarsSpawn = Class('BeledarsSpawn', Rare, {
    id = 207802,
    quest = 81763, -- 85164
    rewards = {
        Achievement({id = 40851, criteria = 69716}),
        Mount({item = 223315, id = 2192}),
        Reputation({id = 2570, gain = 150, quest = 85164})
    },
    pois = {
        POI({
            25825754, 32673962, 37207191, 37744585, 38382474, 42733133,
            45252569, 47015504, 48853197, 50514857, 51427080, 54833679,
            58034885, 58612883, 60451862, 61380753, 62823857, 68123014,
            71976558, 72804152
        })
    }
}) -- Beledar's Spawn

function BeledarsSpawn.getters:note()
    local timeFormat =
        ns:GetOpt('use_standard_time') and L['time_format_12hrs'] or
            L['time_format_24hrs']

    local timeLeft = (GetQuestResetTime() + 3660) % 10800
    local nextSpawn = timeLeft + time()

    local spawnsIn = timeLeft <= 60 and L['now'] or
                         SecondsToTime(timeLeft, true, true)

    local color = ns.color.Orange
    if timeLeft < 1800 then color = ns.color.Yellow end -- 30 mins
    if timeLeft < 600 then color = ns.color.Green end -- 10 mins
    spawnsIn = color(spawnsIn)

    return format(L['beledars_spawn_note'], spawnsIn,
        date(timeFormat, nextSpawn))
end

map.nodes[25004500] = BeledarsSpawn()

-- map.nodes[08002000] = Rare({
--     id = 220159,
--     quest = 80486, review -- need rep quest id if triggered
--     rewards = {Achievement({id = 40851, criteria = 69718})}
-- }) -- Brineslash

map.nodes[65052965] = Rare({
    id = 206514,
    quest = 82558, -- 84052
    note = L['spreading_the_light_rares_note'],
    rewards = {
        Achievement({id = 40851, criteria = 69720}),
        Reputation({id = 2570, gain = 150, quest = 84052}),
        Transmog({item = 223935, type = L['cloth']}), -- Cabbage Harvester's Pantaloons
        Transmog({item = 223928, type = L['plate']}), -- Crop Cutter's Gauntlets
        Transmog({item = 221238, type = L['staff']}) -- Pillar of Constructs
    }
}) -- Crazed Cabbage Smacker

map.nodes[67552316] = Rare({
    id = 214757,
    quest = 82560, -- 84054
    note = L['croakit_note'],
    rewards = {
        Achievement({id = 40851, criteria = 69722}),
        Reputation({id = 2570, gain = 150, quest = 84054}),
        Transmog({item = 223938, type = L['leather']}), -- Marsh Hopper's Spaulders
        Transmog({item = 221251, type = L['2h_axe']}), -- Bestial Underground Cleaver
        Transmog({item = 221246, type = L['staff']}), -- Fierce Beast Staff
        Transmog({item = 221247, type = L['crossbow']}) -- Cavernous Critter Shooter
    },
    pois = {POI({65802355})}
}) -- Croakit

map.nodes[63643205] = Rare({
    id = 206184,
    quest = 82559, -- 84053
    note = L['spreading_the_light_rares_note'],
    rewards = {
        Achievement({id = 40851, criteria = 69721}),
        Reputation({id = 2570, gain = 150, quest = 84053}),
        Transmog({item = 223927, type = L['leather']}), -- Vinewrapped Leather Tunic
        Transmog({item = 221253, type = L['fist']}), -- Cultivator's Plant Puncher
        Transmog({item = 221250, type = L['1h_sword']}) -- Creeping Lasher Machete
    }
}) -- Deathpetal

map.nodes[44744241] = Rare({
    id = 221753,
    quest = 81880, -- 85165
    note = L['deathtide_note'],
    rewards = {
        Achievement({id = 40851, criteria = 69717}),
        Reputation({id = 2570, gain = 150, quest = 85165}),
        Transmog({item = 225997}), -- Earthen Adventurer's Spaulders
        Transmog({item = 223920, type = L['shield']}) -- Slime Deflecting Stopper
    },
    pois = {
        POI({
            label = '{item:220124}',
            color = 'Green',
            points = {48001668, 48805020}
        }), -- Jar of Mucus
        POI({
            label = '{item:220122}',
            color = 'Red',
            points = {
                28925120, 34185782, 34365357, 43451413, 50094966, 53771913,
                55142344, 52385016
            }
        }) -- Offering of Pure Water
    }
}) -- Deathtide

map.nodes[72116435] = Rare({
    id = 218458,
    quest = 80011, -- One Time Kill
    rewards = {
        Achievement({id = 40851, criteria = 69703}),
        Reputation({id = 2570, gain = 150, quest = 80011}),
        Transmog({item = 223394, type = L['plate']}), -- Deepfiend Pauldrons
        Transmog({item = 223393, type = L['leather']}), -- Deepfiend Spaulders
        Transmog({item = 223396, type = L['mail']}), -- Deepfiend Shoulder Shells
        Transmog({item = 223395, type = L['cloth']}) -- Deepfiend Shoulderpads
    }
}) -- Deepfiend Azellix

map.nodes[63931977] = Rare({
    id = 221179,
    quest = 82562, -- 84056
    note = L['spreading_the_light_rares_note'],
    rewards = {
        Achievement({id = 40851, criteria = 69724}),
        Reputation({id = 2570, gain = 150, quest = 84056}),
        Transmog({item = 223936, type = L['mail']}), -- Shadow Bog Trousers
        Transmog({item = 223918, type = L['gun']}), -- Specter Stalker's Shotgun
        Transmog({item = 223919, type = L['1h_mace']}) -- Abducted Lawman's Gavel
    }
}) -- Duskshadow

map.nodes[62011683] = Rare({
    id = 207780,
    quest = 82564, -- 84059
    note = L['spreading_the_light_rares_note'],
    rewards = {
        Achievement({id = 40851, criteria = 69727}),
        Reputation({id = 2570, gain = 150, quest = 84059}),
        Transmog({item = 221248, type = L['1h_axe']}), -- Deep Terror Carver
        Transmog({item = 221255, type = L['dagger']}), -- Sharpened Scalepiercer
        Transmog({item = 223925, type = L['plate']}) -- Blood Hungerer's Chestplate
    }
}) -- Finclaw Bloodtide

map.nodes[36807187] = Rare({
    id = 221767,
    quest = 81881, -- One Time Kill
    rewards = {
        Achievement({id = 40851, criteria = 69707}),
        Reputation({id = 2570, gain = 150, quest = 81881})
    }
}) -- Funglour

map.nodes[36905469] = Rare({
    id = 221551,
    quest = 81761, -- One Time Kill
    rewards = {
        Achievement({id = 40851, criteria = 69706}),
        Reputation({id = 2570, gain = 150, quest = 81761}),
        Transmog({item = 223397, slot = L['plate']}), -- Abyssal Hunter's Girdle
        Transmog({item = 223399, slot = L['mail']}), -- Abyssal Hunter's Chain
        Transmog({item = 223400, slot = L['leather']}), -- Abyssal Hunter's Cinch
        Transmog({item = 223398, slot = L['cloth']}) -- Abyssal Hunter's Sash
    },
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
    rewards = {
        Achievement({id = 40851, criteria = 69712}),
        Reputation({id = 2570, gain = 150, quest = 84065}),
        Transmog({item = 221211, type = L['cloth']}), -- Grasp of the Shallows
        Transmog({item = 221248, type = L['1h_axe']}), -- Deep Terror Carver
        Transmog({item = 221255, type = L['dagger']}) -- Sharpened Scalepiercer
    },
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
        Reputation({id = 2570, gain = 150, quest = 80006}),
        Transmog({item = 223379, type = L['plate']}), -- Nerubian Weaver's Chestplate
        Transmog({item = 223380, type = L['mail']}), -- Nerubian Weaver's Chainmail
        Transmog({item = 223381, type = L['leather']}), -- Nerubian Weaver's Vest
        Transmog({item = 223374, type = L['cloth']}) -- Nerubian Weaver's Gown
    }
}) -- Ixlorb the Spinner

map.nodes[23005922] = Rare({
    id = 221534,
    quest = 81756, -- 84063
    rewards = {
        Achievement({id = 40851, criteria = 69710}),
        Reputation({id = 2570, gain = 150, quest = 84063}),
        Transmog({item = 221207, type = L['mail']}), -- Den Mother's Chestpiece
        Transmog({item = 221246, type = L['staff']}), -- Fierce Beast Staff
        Transmog({item = 221251, type = L['2h_axe']}), -- Bestial Underground Cleaver
        Transmog({item = 221247, type = L['crossbow']}) -- Cavernous Critter Shooter
    }
}) -- Lytfang the Lost

map.nodes[63452854] = Rare({
    id = 206203,
    quest = 82557, -- 84051
    note = L['spreading_the_light_rares_note'],
    rewards = {
        Achievement({id = 40851, criteria = 69719}),
        Reputation({id = 2570, gain = 150, quest = 84051}),
        Transmog({item = 223924, type = L['cloth']}), -- Chitin-Inscribed Vest
        Transmog({item = 221252, type = L['2h_sword']}), -- Nerubian Slayer's Claymore
        Transmog({item = 221240, type = L['1h_sword']}) -- Nerubian Stagshell Gouger
    }
}) -- Moth'ethk

map.nodes[52132681] = Rare({
    id = 218452, -- 218455 Lost Cache
    quest = 80010, -- One Time Kill
    note = L['murkshade_note'],
    rewards = {
        Achievement({id = 40851, criteria = 69705}),
        Reputation({id = 2570, gain = 150, quest = 80010}),
        Transmog({item = 223384, type = L['cloth']}), -- Murkshade Gloves
        Transmog({item = 223382, type = L['leather']}), -- Murkshade Grips
        Transmog({item = 223385, type = L['mail']}), -- Murkshade Gauntlets
        Transmog({item = 223383, type = L['plate']}) -- Murkshade Handguards
    }
}) -- Murkshade

map.nodes[61981331] = Rare({ -- patrols
    id = 220771,
    quest = 82565, -- 84060
    note = L['spreading_the_light_rares_note'],
    rewards = {
        Achievement({id = 40851, criteria = 69728}),
        Reputation({id = 2570, gain = 150, quest = 84060}),
        Transmog({item = 223934, type = L['plate']}), -- Makrura's Foreboding Legplates
        Transmog({item = 221248, type = L['1h_axe']}), -- Deep Terror Carver
        Transmog({item = 221255, type = L['dagger']}) -- Sharpened Scalepiercer
    }
}) -- Murkspike

map.nodes[61613277] = Rare({
    id = 206977,
    quest = 82563,
    note = L['parasidious_note'],
    rewards = {
        Achievement({id = 40851, criteria = 69725}),
        Reputation({id = 2570, gain = 150, quest = 84057}),
        Transmog({item = 223940, type = L['mail']}), -- Deranged Fungarian's Epaulets
        Transmog({item = 221250, type = L['1h_sword']}), -- Creeping Lasher Machete
        Transmog({item = 221253, type = L['fist']}) -- Cultivator's Plant Puncher
    },
    pois = {POI({64463107, label = '{npc:206533}'})} -- Chef Dinaire
}) -- Parasidious

map.nodes[57304857] = Rare({
    id = 221786,
    quest = 81882, -- 84068
    rewards = {
        Achievement({id = 40851, criteria = 69715}),
        Reputation({id = 2570, gain = 150, quest = 84068}),
        Transmog({item = 221225, type = L['cloth']}), -- Benevolent Hornstag Cinch
        Transmog({item = 223007, type = L['polearm']}), -- Lance of Beledar's Pride
        Transmog({item = 221251, type = L['2h_axe']}), -- Bestial Underground Cleaver
        Transmog({item = 221247, type = L['crossbow']}), -- Cavernous Critter Shooter
        Transmog({item = 221246, type = L['staff']}) -- Fierce Beast Staff
    }
}) -- Pride of Beledar

map.nodes[61943197] = Rare({
    id = 207826,
    quest = 82566, --- 84058
    note = L['spreading_the_light_rares_note'],
    rewards = {
        Achievement({id = 40851, criteria = 69726}),
        Reputation({id = 2570, gain = 150, quest = 84058}),
        Transmog({item = 223932, type = L['mail']}), -- Scarab's Carapace Cap
        Transmog({item = 221252, type = L['2h_sword']}), -- Nerubian Slayer's Claymore
        Transmog({item = 221240, type = L['1h_sword']}) -- Nerubian Stagshell Gouger
    }
}) -- Ravageant

map.nodes[35943547] = Rare({
    id = 221708,
    quest = 81853, -- 84067
    rewards = {
        Achievement({id = 40851, criteria = 69714}),
        Reputation({id = 2570, gain = 150, quest = 84067}),
        Transmog({item = 221245, type = L['leather']}), -- Righteous Path Treads
        Transmog({item = 221241, type = L['dagger']}) -- Priestly Agent's Knife
    }
}) -- Sir Alastair Purefire

map.nodes[73405259] = Rare({
    id = 215805,
    quest = 79271, -- 84062
    rewards = {
        Achievement({id = 40851, criteria = 69709}),
        Reputation({id = 2570, gain = 150, quest = 84062}),
        Transmog({item = 221223, type = L['mail']}), -- Bog Beast Mantle
        Transmog({item = 221253, type = L['fist']}), -- Cultivator's Plant Puncher
        Transmog({item = 221250, type = L['1h_sword']}) -- Creeping Lasher Machete
    }
}) -- Sloshmuck

map.nodes[43602994] = Rare({
    id = 221690,
    quest = 81849, -- 84066
    rewards = {
        Achievement({id = 40851, criteria = 69713}),
        Reputation({id = 2570, gain = 150, quest = 84066}),
        Transmog({item = 221216, type = L['plate']}), -- Bruin Strength Legplates
        Transmog({item = 221508, type = L['cloak']}), -- Pelt of Beledar's Strength
        Transmog({item = 221251, type = L['2h_axe']}), -- Bestial Underground Cleaver
        Transmog({item = 221247, type = L['crossbow']}), -- Cavernous Critter Shooter
        Transmog({item = 221246, type = L['staff']}) -- Fierce Beast Staff
    }
}) -- Strength of Beledar

map.nodes[44011637] = Rare({
    id = 221648,
    quest = 81791, -- 84064
    rewards = {
        Achievement({id = 40851, criteria = 69711}),
        Reputation({id = 2570, gain = 150, quest = 84064}),
        Transmog({item = 221229, type = L['plate']}), -- Perchfather's Cuffs
        Transmog({item = 221251, type = L['2h_axe']}), -- Bestial Underground Cleaver
        Transmog({item = 221247, type = L['crossbow']}), -- Cavernous Critter Shooter
        Transmog({item = 221246, type = L['staff']}) -- Fierce Beast Staff
    }
}) -- The Perchfather

map.nodes[56486899] = Rare({
    id = 218444,
    quest = 80009, -- 84061
    rewards = {
        Achievement({id = 40851, criteria = 69708}),
        Reputation({id = 2570, gain = 150, quest = 84061}),
        Transmog({item = 221215, type = L['leather']}), -- Taskmaster's Mining Cap
        Transmog({item = 221252, type = L['2h_sword']}), -- Nerubian Slayer's Claymore
        Transmog({item = 221240, type = L['1h_sword']}) -- Nerubian Stagshell Gouger
    }
}) -- The Taskmaker

map.nodes[66432411] = Rare({
    id = 207803,
    quest = 82561, -- 84055
    note = L['spreading_the_light_rares_note'],
    rewards = {
        Achievement({id = 40851, criteria = 69723}),
        Reputation({id = 2570, gain = 150, quest = 84055}),
        Transmog({item = 223933, type = L['leather']}), -- Slime Goliath's Cap
        Transmog({item = 223920, type = L['shield']}) -- Slime Deflecting Stopper
    }
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
        Reputation({id = 2570, gain = 150, quest = 83298}), --
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
        Reputation({id = 2570, gain = 150, quest = 83263}),
        Recipe({item = 225639, profession = 185}) -- Recipe: Exquisitely Eviscerated Muscle
    },
    pois = {
        POI({label = '{npc:217645}', color = 'Blue', points = {69254397}}), -- Torran Dellain
        Path({Circle({origin = 69254397, radius = 2})})
    }
}) -- Caesper

map.nodes[59525966] = Treasure({
    quest = 83284,
    location = L['in_cave'],
    note = L['dark_ritual_note'],
    rewards = {
        Achievement({id = 40848, criteria = 69694}),
        Reputation({id = 2570, gain = 150, quest = 83284}),
        Item({item = 225693, note = L['trinket']}) -- Shadowed Essence
    },
    pois = {
        Entrance({59656067}) -- Entrance
    }
}) -- Dark Ritual

map.nodes[58382715] = Treasure({
    quest = 81468,
    location = L['in_small_cave'],
    note = L['illuminated_footlocker_note'],
    rewards = {
        Achievement({id = 40848, criteria = 69701}), --
        Reputation({id = 2570, gain = 150, quest = 81468}), --
        Toy({item = 224552}) -- Cave Spelunker's Torch
    },
    pois = {Entrance({57642740})} -- Entrance
}) -- Illuminated Footlocker

local IllusiveKobyssLure = Class('IllusiveKobyssLure', Treasure, {
    quest = 83299,
    rlabel = ns.status.Gray('{item:225641}'),
    fgroup = 'illusive_kobyss_lure',
    rewards = {
        Achievement({id = 40848, criteria = 69696}), --
        Reputation({id = 2570, gain = 150, quest = 83299}), --
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
    pois = {
        POI({
            color = 'Yellow',
            points = {
                54962723, 54632815, 53532879, 53462991, 53942986, 53782639
            }
        })
    }
}) -- Sunless Lure

map.nodes[47611854] = IllusiveKobyssLure({
    label = '{item:225558}',
    location = L['murkfin_lure_location'],
    pois = {
        POI({
            color = 'Orange',
            points = {
                46421831, 46271596, 45961566, 45171463, 44791220, 44531189,
                44931131, 44991046, 46281055, 46471247, 46581366, 47061512,
                48191456, 47941494, 48301671, 48221749, 44191467, 43731380
            }
        })
    }
}) -- Murkfin Lure

map.nodes[50655037] = IllusiveKobyssLure({
    label = '{item:225559}',
    location = L['hungering_shimmerfin_location'],
    pois = {
        POI({
            color = 'Red',
            points = {51914861, 51475176, 50765233, 49194822, 50674744}
        })
    }
}) -- Hungering Shimmerfin

map.nodes[34965465] = IllusiveKobyssLure({
    label = '{item:225560}',
    location = L['ragefin_necrostaff_location'],
    pois = {Path({Circle({origin = 34965465, radius = 1.5})})}
}) -- Ragefin Necrostaff

map.nodes[55796954] = Treasure({
    quest = 81971,
    location = L['jewel_of_the_cliffs_location'],
    rewards = {
        Achievement({id = 40848, criteria = 69697}), --
        Reputation({id = 2570, gain = 150, quest = 81971}),
        Item({item = 224580}) -- Massive Sapphire Chunk
    }
}) -- Jewel of the Cliffs

map.nodes[50071385] = Treasure({
    quest = 81978,
    note = L['lost_necklace_note'],
    rewards = {
        Achievement({id = 40848, criteria = 69699}),
        Reputation({id = 2570, gain = 150, quest = 81978}),
        Item({item = 224575, note = L['neck']}) -- Lightbearer's Pendant
    }
}) -- Lost Necklace

map.nodes[30233875] = Treasure({
    quest = 81972,
    location = L['priory_satchel_location'],
    rewards = {
        Achievement({id = 40848, criteria = 69698}),
        Reputation({id = 2570, gain = 150, quest = 81972}),
        Item({item = 224578, note = L['bag']}) -- Arathor Courier's Satchel
    }
}) -- Priory Satchel

map.nodes[45944513] = Treasure({
    quest = 82005,
    location = L['in_water'],
    note = L['sky_captains_sunken_cache_note'],
    rewards = {
        Achievement({id = 40848, criteria = 69700}),
        Reputation({id = 2570, gain = 150, quest = 82005}), --
        Toy({item = 224554}) -- Silver Linin' Scepter
    },
    pois = {
        Path({
            color = 'Green',
            quest = 82012,
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
            }
        }), -- Sky-Captain Dornald
        Path({
            color = 'Yellow',
            quest = 82024,
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
            color = 'Orange',
            quest = 82026,
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
            quest = 82025,
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
}) -- Sky-Captains' Sunken Cache

map.nodes[55135193] = Treasure({
    quest = 83273,
    requires = ns.requirement.Item(225335), -- Smuggler's Key
    location = L['smugglers_treasure_location'],
    note = L['smugglers_treasure_note'],
    rewards = {
        Achievement({id = 40848, criteria = 69693}), --
        Reputation({id = 2570, gain = 150, quest = 83273}),
        Item({item = 226021}) -- Jar of Pickels
    },
    pois = {POI({55425164, label = '{npc:226025}', color = 'Blue'})} -- Dead Arathi
}) -- Smuggler's Treasure

map.nodes[76765382] = Treasure({ -- review, was not there when i looked
    quest = 79275,
    location = L['in_cave'],
    rewards = {
        Achievement({id = 40848, criteria = 69702}),
        Reputation({id = 2570, gain = 150, quest = 79275})
    },
    pois = {Entrance({76105390})} -- Entrance
}) -- Spore-covered Coffer

map.nodes[63990612] = Treasure({
    quest = 80687,
    label = L['coral_fused_clam'],
    requires = ns.requirement.Item(218354), -- Clammer's Pry Bar
    note = L['coral_fused_clam_note'],
    pois = {
        POI({61890609}) -- Clammer's Kit
    }
}) -- Coral-Fused Clam

-- map.nodes[56091454] = Treasure({
--     quest = 81518,
--     rewards = {
--         Item({item = 206350}), -- Radiant Remnant
--     }
-- }) -- Fisherman's Pouch

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[52436278] = ns.node.PetBattle({
    id = 223442,
    rewards = {
        Achievement({id = 40153, criteria = 67137, oneline = true}), -- Battle on Khaz Algar
        ns.reward.Spacer(),
        Achievement({id = 40154, criteria = 67141, oneline = true}), -- Aquatic Battler of Khaz Algar
        Achievement({id = 40155, criteria = 67145, oneline = true}), -- Beast Battler of Khaz Algar
        Achievement({id = 40156, criteria = 67149, oneline = true}), -- Critter Battler of Khaz Algar
        Achievement({id = 40157, criteria = 67153, oneline = true}), -- Dragonkin Battler of Khaz Algar
        Achievement({id = 40158, criteria = 67157, oneline = true}), -- Elemental Battler of Khaz Algar
        Achievement({id = 40161, criteria = 67161, oneline = true}), -- Flying Battler of Khaz Algar
        Achievement({id = 40162, criteria = 67164, oneline = true}), -- Humanoid Battler of Khaz Algar
        Achievement({id = 40163, criteria = 67168, oneline = true}), -- Magic Battler of Khaz Algar
        Achievement({id = 40164, criteria = 67172, oneline = true}), -- Mechanical Battler of Khaz Algar
        Achievement({id = 40165, criteria = 67176, oneline = true}) -- Undead Battler of Khaz Algar
    }
}) -- Kyrie

map.nodes[61066899] = ns.node.PetBattle({
    id = 223409,
    rewards = {
        Achievement({id = 40153, criteria = 67133, oneline = true}) -- Battle on Khaz Algar
    }
}) -- Guttergunk

-------------------------------------------------------------------------------
----------------------------- PROFESSION TREASURES ----------------------------
-------------------------------------------------------------------------------

map.nodes[42645510] = PT.Alchemy({quest = 83844, id = 226269}) -- Chemist's Purified Water
map.nodes[41665584] = PT.Alchemy({quest = 83845, id = 226270}) -- Sanctified Mortar and Pestle
map.nodes[47586106] = PT.Blacksmithing({quest = 83852, id = 226280}) -- Holy Flame Forge
map.nodes[44065559] = PT.Blacksmithing({quest = 83853, id = 226281}) -- Radiant Tongs
map.nodes[40067055] = PT.Enchanting({quest = 83862, id = 226288}) -- Essence of Holy Fire
map.nodes[48586450] = PT.Enchanting({quest = 83863, id = 226289}) -- Enchanted Arathi Scroll
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
    pois = {POI({60486018, label = '{npc:220718}', color = 'Red'})} -- Maera Ashyld
})

map.nodes[65463222] = Momento({
    location = L['broken_bracelet_location'],
    requires = ns.requirement.Quest(80678), -- Time Lost
    rewards = {Achievement({id = 40618, criteria = 68932})}
}) -- Broken Bracelet

map.nodes[43285542] = Momento({
    location = L['stuffed_lynx_toy_location'],
    requires = ns.requirement.Quest(80678), -- Time Lost
    rewards = {Achievement({id = 40618, criteria = 68933})}
}) -- Stuffed Lynx Toy

map.nodes[43465171] = Momento({
    location = L['tarnished_compass_location'],
    requires = ns.requirement.Quest(80678), -- Time Lost
    rewards = {Achievement({id = 40618, criteria = 68934})}
}) -- Tarnished Compass

map.nodes[43204979] = Momento({
    location = L['sturdy_locket_location'],
    requires = ns.requirement.Quest(82813), -- Time Borrowed
    rewards = {Achievement({id = 40618, criteria = 68935})}
}) -- Sturdy Locket

map.nodes[69264384] = Momento({
    location = L['wooden_figure_location'],
    requires = ns.requirement.Quest(82813), -- Time Borrowed
    rewards = {Achievement({id = 40618, criteria = 68937})}
}) -- Wooden Figure

map.nodes[48423888] = Momento({
    location = L['calcified_journal_location'],
    requires = ns.requirement.Quest(82813), -- Time Borrowed
    rewards = {Achievement({id = 40618, criteria = 68940})}
}) -- Calcified Journal

map.nodes[41643474] = Momento({
    location = L['ivory_tinderbox_location'],
    requires = ns.requirement.Quest(82810), -- Time Found
    rewards = {Achievement({id = 40618, criteria = 68942})}
}) -- Ivory Tinderbox

map.nodes[42355502] = Momento({
    location = L['dented_spear_location'],
    requires = ns.requirement.Quest(82810), -- Time Found
    rewards = {Achievement({id = 40618, criteria = 68943})}
}) -- Dented Spear

map.nodes[43974970] = Momento({
    location = L['filigreed_cleric_location'],
    requires = ns.requirement.Quest(82810), -- Time Found
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

map.nodes[63792962] = MissingLynx({
    label = '{npc:215606}',
    location = L['purrlock_location'],
    rewards = {Achievement({id = 40625, criteria = 9})} -- review (criteria id is bugged)
}) -- Purrlock

map.nodes[63262811] = MissingLynx({
    location = L['shadowpouncer_location'],
    rewards = {Achievement({id = 40625, criteria = 69005})}
}) -- Shadowpouncer

map.nodes[61193054] = MissingLynx({
    location = L['miral_murder_mittens_location'],
    rewards = {Achievement({id = 40625, criteria = 69006})}
}) -- Miral Murder-Mittens

map.nodes[64271887] = MissingLynx({
    location = L['fuzzy_location'],
    rewards = {Achievement({id = 40625, criteria = 69007})} -- review (criteria id is bugged)
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

-- map.nodes[62214557] = LoreObject({
--     rewards = {
--         Achievement({id = 40762, criteria = 69383}),
--         Reputation({id = 2570, gain = 250})
--     }
-- }) -- A Scout's Journal

-- map.nodes[71433667] = LoreObject({
--     rewards = {
--         Achievement({id = 40762, criteria = 69382}),
--         Reputation({id = 2570, gain = 250})
--     }
-- }) -- A Tattered Note

-- map.nodes[78244041] = LoreObject({
--     rewards = {
--         Achievement({id = 40762, criteria = 69381}),
--         Reputation({id = 2570, gain = 250})
--     }
-- }) -- A Weathered Tome

-- map.nodes[25085371] = LoreObject({
--     rewards = {
--         Achievement({id = 40762, criteria = 69380}),
--         Reputation({id = 2570, gain = 250})
--     }
-- }) -- A Worn Down Book

-- map.nodes[25723845] = LoreObject({
--     rewards = {
--         Achievement({id = 40762, criteria = 69379}),
--         Reputation({id = 2570, gain = 250})
--     }
-- }) -- Captain's Chest

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

-------------------------------------------------------------------------------
------------------------- ACHIEVEMENT: BEACON OF HOPE -------------------------
-------------------------------------------------------------------------------

local BeaconOfHope = Class('beacon_of_hope', Collectible, {
    icon = 135922,
    group = ns.groups.BEACON_OF_HOPE,
    requires = ns.requirement.Item(206350, 3), -- Radiant Remnant
    note = L['beacon_of_hope_note']
})

map.nodes[65392809] = BeaconOfHope({
    rewards = {
        Achievement({
            id = 40308,
            criteria = {
                {id = 67679}, -- Seeds of Salvation
                {id = 67680}, -- Tater Trawl
                {id = 67681} -- Right Between the Gyro-Optics
            }
        })
    }
})

map.nodes[63322942] = BeaconOfHope({
    rewards = {
        Achievement({
            id = 40308,
            criteria = {
                {id = 67684}, -- Web of Manipulation
                {id = 67685} -- Supply the Effort
            }
        })
    }
})

map.nodes[64553057] = BeaconOfHope({
    rewards = {
        Achievement({
            id = 40308,
            criteria = {
                {id = 67682}, -- Lost in Shadows
                {id = 67683} -- Sporadic Growth
            }
        })
    }
})

map.nodes[63643363] = BeaconOfHope({
    rewards = {
        Achievement({
            id = 40308,
            criteria = {
                {id = 67673}, -- Harvest Havoc
                {id = 67674} -- Squashing the Threat
            }
        })
    }
})

map.nodes[64423093] = BeaconOfHope({
    rewards = {
        Achievement({
            id = 40308,
            criteria = {
                {id = 67676}, -- The Sweet Eclipse
                {id = 67675}, -- Shadows of Flavor
                {id = 67677} -- Blossoming Delight
            }
        })
    }
})

map.nodes[65822443] = BeaconOfHope({
    rewards = {
        Achievement({
            id = 40308,
            criteria = {
                {id = 67672}, -- Hose It Down
                {id = 67671} -- Chew On That
            }
        })
    }
})

map.nodes[64371873] = BeaconOfHope({
    rewards = {
        Achievement({
            id = 40308,
            criteria = {
                {id = 67669}, -- Lizard Looters
                {id = 67670} -- Glow in the Dark
            }
        })
    }
})

map.nodes[61501747] = BeaconOfHope({
    rewards = {
        Achievement({
            id = 40308,
            criteria = {
                {id = 67668} -- Crab Grab
            }
        })
    }
})

-------------------------------------------------------------------------------
------------------------ ACHIEVEMENT: FLAMEGARD'S HOPE ------------------------
-------------------------------------------------------------------------------

map.nodes[43205177] = Collectible({
    icon = 463526,
    quest = 79081,
    label = '{achievement:20594}',
    note = L['flamegards_hope_note'],
    group = ns.groups.FLAMEGARDS_HOPE,
    rewards = {Achievement({id = 20594, criteria = {id = 1, qty = true}})}
})

-------------------------------------------------------------------------------
-------------------- ACHIEVEMENT: KHAZ ALGAR FLIGHT MASTER --------------------
-------------------------------------------------------------------------------

map.nodes[40457130] = FlightMaster({
    rewards = {Achievement({id = 40430, criteria = 68182})}
}) -- Light's Redoubt

map.nodes[41143365] = FlightMaster({
    rewards = {Achievement({id = 40430, criteria = 68186})}
}) -- Priory of the Sacred Flame

map.nodes[41575260] = FlightMaster({
    rewards = {Achievement({id = 40430, criteria = 68185})}
}) -- Mereldar

map.nodes[48394071] = FlightMaster({
    rewards = {Achievement({id = 40430, criteria = 68187})}
}) -- Lorel's Crossing

map.nodes[52866134] = FlightMaster({
    rewards = {Achievement({id = 40430, criteria = 68181})}
}) -- Lightspark

map.nodes[61343100] = FlightMaster({
    rewards = {Achievement({id = 40430, criteria = 68188})}
}) -- Hillhelm Family Farm

map.nodes[67484452] = FlightMaster({
    rewards = {Achievement({id = 40430, criteria = 68180})}
}) -- Dunelle's Kindness

map.nodes[71365648] = FlightMaster({
    rewards = {Achievement({id = 40430, criteria = 68189})}
}) -- The Aegis Wall

-------------------------------------------------------------------------------
---------------------------- PET: HALLOWED GLOWFLY ----------------------------
-------------------------------------------------------------------------------

map.nodes[65762440] = Collectible({
    label = L['hallowfall_sparkfly_label'],
    icon = 5771176,
    note = L['hallowfall_sparkfly_note'],
    rewards = {
        Pet({item = 220771, id = 4467}) -- Hallowed Glowfly
    },
    pois = {
        POI({
            65802510, 66702410, 66732700, 67162701, 67202631, 67572416,
            66862343, 66812530
        })
    }
}) -- Hallowfall Sparkfly

-------------------------------------------------------------------------------
-------------------------- PET: NIGHTFORM GROWTHLING --------------------------
-------------------------------------------------------------------------------

map.nodes[64593069] = Collectible({
    label = '{item:221546}',
    icon = 2027888,
    note = L['nightfarm_growthling_note'],
    rewards = {
        Pet({item = 221546, id = 4534}) -- Nightfarm Growthling
    },
    pois = {POI({63403105, 63002941, 65163340, 64103150})}
}) -- Nightfarm Growthling

-------------------------------------------------------------------------------
-------------------------------- PET: THUNDER ---------------------------------
-------------------------------------------------------------------------------

map.nodes[64451882] = Collectible({
    label = '{item:220782}',
    icon = 5648285,
    note = L['thunder_lynx_note'],
    -- quest = 82006, -- triggered after following all dialog
    rewards = {
        Pet({item = 220782, id = 4462}) -- Thunder
    },
    pois = {
        POI({label = '{npc:222373}', points = {66311569}, color = 'Blue'}), -- Beef
        Entrance({points = {65951863}, color = 'Blue'}), -- Cave entrance to Beef
        Path({
            points = {
                65951863, 66111857, 66231823, 66311781, 66281722, 66311569
            },
            color = 'Blue'
        }), -- Cave path to Beef
        POI({label = '{npc:222372}', points = {63901970}, color = 'Green'}), -- Beans
        POI({label = '{npc:222375}', points = {61982078}, color = 'Orange'}), -- Thunder
        POI({label = '{npc:222374}', points = {66702100}, color = 'Red'}) -- Cap'n Elaena
    }
}) -- Thunder
