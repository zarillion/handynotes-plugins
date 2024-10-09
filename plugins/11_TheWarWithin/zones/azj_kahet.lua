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
local Pet = ns.reward.Pet
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog
local Reputation = ns.reward.Reputation

local Circle = ns.poi.Circle
local Entrance = ns.poi.Entrance
local Path = ns.poi.Path
local POI = ns.poi.POI

-------------------------------------------------------------------------------

local map = Map({id = 2255, settings = true})
local akl = Map({id = 2256, settings = true}) -- Azj-Kahet - Lower
local cot = Map({id = 2213, settings = true}) -- City of Threads
local cotl = Map({id = 2216, settings = true}) -- City of Threads - Lower

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[46383875] = Rare({
    id = 216031,
    quest = 81695, -- One Time Kill
    rewards = {
        Achievement({id = 40840, criteria = 69651}),
        Reputation({id = 2601, gain = 50, quest = 81695}),
        Reputation({id = 2605, gain = 50, quest = 81695}),
        Reputation({id = 2607, gain = 50, quest = 81695}),
        Transmog({item = 223390, type = L['cloth']}), -- Leggings of Dark Hunger
        Transmog({item = 223392, type = L['leather']}), -- Trousers of Dark Hunger
        Transmog({item = 223391, type = L['mail']}), -- Legguards of Dark Hunger
        Transmog({item = 223389, type = L['plate']}) -- Legplates of Dark Hunger
    }
}) -- Abyssal Devourer

map.nodes[37924284] = Rare({
    id = 214151,
    quest = 78905, -- One Time Kill
    rewards = {
        Achievement({id = 40840, criteria = 69654}),
        Reputation({id = 2601, gain = 50, quest = 78905}),
        Reputation({id = 2605, gain = 50, quest = 78905}),
        Reputation({id = 2607, gain = 50, quest = 78905})
    }
}) -- Ahg'zagall

map.nodes[70722147] = Rare({
    id = 216042,
    quest = 81704, -- 84073
    note = L['in_waterfall_cave'],
    rewards = {
        Achievement({id = 40840, criteria = 69661}),
        Reputation({id = 2601, gain = 50, quest = 84073}),
        Reputation({id = 2605, gain = 50, quest = 84073}),
        Reputation({id = 2607, gain = 50, quest = 84073}),
        Transmog({item = 221212, type = L['mail']}), -- Death Burrower Handguards
        Transmog({item = 221237, type = L['offhand']}) -- Lamentable Vagrant's Lantern
    },
    pois = {Entrance({70102201})} -- Entrance
}) -- Cha'tak

cot.nodes[30755599] = Rare({
    id = 216038,
    quest = 81634, -- 84069
    rewards = {
        Achievement({id = 40840, criteria = 69657}),
        Reputation({id = 2601, gain = 50, quest = 84069}),
        Reputation({id = 2605, gain = 50, quest = 84069}),
        Reputation({id = 2607, gain = 50, quest = 84069}),
        Transmog({item = 221214, type = L['mail']}), -- Chitin Chain Headpiece
        Transmog({item = 221240, type = L['1h_sword']}), -- Nerubian Stagshell Gouger
        Transmog({item = 221252, type = L['2h_sword']}) -- Nerubian Slayer's Claymore
    },
    parent = map.id
}) -- The Groundskeeper (Chitin Hulk)

map.nodes[64560668] = Rare({
    id = 222624,
    quest = 82077, -- 84081
    rewards = {
        Achievement({id = 40840, criteria = 69669}),
        Reputation({id = 2601, gain = 50, quest = 84081}),
        Reputation({id = 2605, gain = 50, quest = 84081}),
        Reputation({id = 2607, gain = 50, quest = 84081}),
        Transmog({item = 223923, type = L['plate']}), -- Gilded Cryptlord's Sabatons
        Transmog({item = 223916, type = L['polearm']}), -- Nerubian Cutthroat's Reach
        Transmog({item = 223915, type = L['dagger']}), -- Nerubian Orator's Stiletto
        Transmog({item = 223917, type = L['cloak']}) -- Nerubian Covert's Cloak
    },
    pois = {Path({64500582, 64650782})}
}) -- Deepcrawler Tx'kesh

map.nodes[58036210] = Rare({
    id = 216045,
    quest = 81707, -- 84076
    rewards = {
        Achievement({id = 40840, criteria = 69664}),
        Reputation({id = 2601, gain = 50, quest = 84076}),
        Reputation({id = 2605, gain = 50, quest = 84076}),
        Reputation({id = 2607, gain = 50, quest = 84076}),
        Transmog({item = 221243, type = L['cloth']}), -- Slippers of Delirium
        Transmog({item = 221255, type = L['dagger']}), -- Sharpened Scalepiercer
        Transmog({item = 221248, type = L['1h_axe']}) -- Deep Terror Carver
    }
}) -- Enduring Gutterface

map.nodes[61232730] = Rare({
    id = 216041,
    quest = 81699, -- One Time Kill
    note = L['in_building'],
    rewards = {
        Achievement({id = 40840, criteria = 69655}),
        Reputation({id = 2601, gain = 50, quest = 81699}),
        Reputation({id = 2605, gain = 50, quest = 81699}),
        Reputation({id = 2607, gain = 50, quest = 81699}),
        Transmog({item = 223369, slot = L['cloak']}) -- Webspeaker's Spiritual Cloak
    }
}) -- Webspeaker Grik'ik

akl.nodes[65198283] = Rare({
    id = 216050,
    quest = 82036, -- 84079
    rewards = {
        Achievement({id = 40840, criteria = 69667}),
        Reputation({id = 2601, gain = 50, quest = 84079}),
        Reputation({id = 2605, gain = 50, quest = 84079}),
        Reputation({id = 2607, gain = 50, quest = 84079}),
        Transmog({item = 223941, type = L['plate']}), -- Nerubian Cultivator's Girdle
        Transmog({item = 223916, type = L['polearm']}), -- Nerubian Cutthroat's Reach
        Transmog({item = 223915, type = L['dagger']}), -- Nerubian Orator's Stiletto
        Transmog({item = 223917, type = L['cloak']}) -- Nerubian Covert's Cloak
    },
    pois = {
        Path({
            65738036, 65288117, 65248203, 65198283, 64948363, 64678446,
            64508528, 64588614, 64838694, 64138720, 63688645, 63008597
        })
    },
    parent = map.id
}) -- Harvester Qixt

akl.nodes[67438318] = Rare({
    id = 216048,
    quest = 82034, -- 84077
    rewards = {
        Achievement({id = 40840, criteria = 69665}),
        Reputation({id = 2601, gain = 50, quest = 84077}),
        Reputation({id = 2605, gain = 50, quest = 84077}),
        Reputation({id = 2607, gain = 50, quest = 84077}),
        Transmog({item = 223950, type = L['leather']}), -- Corruption Sifter's Treads
        Transmog({item = 223916, type = L['polearm']}), -- Nerubian Cutthroat's Reach
        Transmog({item = 223915, type = L['dagger']}), -- Nerubian Orator's Stiletto
        Transmog({item = 223917, type = L['cloak']}) -- Nerubian Covert's Cloak
    },
    parent = map.id
}) -- Jix'ak the Crazed

map.nodes[62400703] = Rare({ -- renamed by Blizzard?
    id = 216052,
    quest = 82078, -- 84082
    rewards = {
        Achievement({id = 40840, criteria = 69670}),
        Reputation({id = 2601, gain = 50, quest = 84082}),
        Reputation({id = 2605, gain = 50, quest = 84082}),
        Reputation({id = 2607, gain = 50, quest = 84082}),
        Transmog({item = 223939, type = L['cloth']}), -- Esteemed Nerubian's Mantle
        Transmog({item = 223916, type = L['polearm']}), -- Nerubian Cutthroat's Reach
        Transmog({item = 223915, type = L['dagger']}), -- Nerubian Orator's Stiletto
        Transmog({item = 223917, type = L['cloak']}) -- Nerubian Covert's Cloak
    },
    pois = {Path({62870495, 62610615, 62400703, 62070804, 61830851, 61160787})}

}) -- Kaheti Bladeguard

map.nodes[63152530] = Rare({
    id = 221327,
    quest = 81702, -- 84071
    rewards = {
        Achievement({id = 40840, criteria = 69659}),
        Reputation({id = 2601, gain = 50, quest = 84071}),
        Reputation({id = 2605, gain = 50, quest = 84071}),
        Reputation({id = 2607, gain = 50, quest = 84071}),
        Transmog({item = 221206, type = L['plate']}), -- Reinforced Chitin Chestpiece
        Transmog({item = 221252, type = L['2h_sword']}), -- Nerubian Slayer's Claymore
        Transmog({item = 221240, type = L['1h_sword']}) -- Nerubian Stagshell Gouger
    },
    pois = {
        Path({
            65121909, 65182000, 64882081, 64542159, 64232241, 63912321,
            63612409, 63272490, 63072569, 62912657, 62762748, 62602830,
            62422913, 61742948
        })
    }
}) -- Kaheti Silk Hauler

map.nodes[66496197] = Rare({
    id = 216044,
    quest = 81706, -- 84075
    rewards = {
        Achievement({id = 40840, criteria = 69663}),
        Reputation({id = 2601, gain = 50, quest = 84075}),
        Reputation({id = 2605, gain = 50, quest = 84075}),
        Reputation({id = 2607, gain = 50, quest = 84075}),
        Transmog({item = 221217, type = L['cloth']}), -- Nerubian Bomber's Leggings
        Transmog({item = 221252, type = L['2h_sword']}), -- Nerubian Slayer's Claymore
        Transmog({item = 221240, type = L['1h_sword']}) -- Nerubian Stagshell Gouger
    },
    pois = {
        Path({
            64406543, 63386508, 62406514, 61816617, 61426703, 61616794,
            62516818, 63616779, 64116704, 64416621, 64776538, 65136438,
            65396351, 65736274, 66496197, 67346189, 67916253, 68346333,
            68776442, 69086546, 69276638, 69266727, 68826792, 68206849,
            67466921, 66436903, 66206818, 65886738, 65396650, 64906581, 64406543
        })
    }
}) -- Maddened Siegebomber

map.nodes[69986923] = Rare({
    id = 216043,
    quest = 81705, -- 84074
    rewards = {
        Achievement({id = 40840, criteria = 69662}),
        Reputation({id = 2601, gain = 50, quest = 84074}),
        Reputation({id = 2605, gain = 50, quest = 84074}),
        Reputation({id = 2607, gain = 50, quest = 84074}),
        Transmog({item = 221227, type = L['leather']}), -- Monstrous Fungal Cord
        Transmog({item = 221253, type = L['fist']}), -- Cultivator's Plant Puncher
        Transmog({item = 221250, type = L['1h_sword']}) -- Creeping Lasher Machete
    }
}) -- Monstrous Lasharoth

map.nodes[43863678] = Rare({
    id = 216032, -- 221032 Rhak'ik
    quest = 81694, -- One Time Kill
    rewards = {
        Achievement({id = 40840, criteria = 69653}),
        Reputation({id = 2601, gain = 50, quest = 81694}),
        Reputation({id = 2605, gain = 50, quest = 81694}),
        Reputation({id = 2607, gain = 50, quest = 81694}),
        Transmog({item = 223378, type = L['plate']}), -- Footguards of the Nerubian Twins
        Transmog({item = 223407, type = L['mail']}), -- Sabatons of the Nerubian Twins
        Transmog({item = 223408, type = L['leather']}), -- Treads of the Nerubian Twins
        Transmog({item = 223406, type = L['cloth']}) -- Slippers of the Nerubian Twins
    },
    pois = {
        Path({
            44043048, 43773132, 43533211, 43443299, 43293385, 43273476,
            43553553, 43823633, 43933722, 43933813, 43783898, 43573987,
            43424074, 43434158, 43764243
        })
    }
}) -- Rhak'ik & Khak'ik

akl.nodes[61918962] = Rare({
    id = 216049,
    quest = 82035, -- 84078
    location = L['in_small_cave'],
    rewards = {
        Achievement({id = 40840, criteria = 69666}),
        Reputation({id = 2601, gain = 50, quest = 84078}),
        Reputation({id = 2605, gain = 50, quest = 84078}),
        Reputation({id = 2607, gain = 50, quest = 84078}),
        Transmog({item = 223931, type = L['cloth']})
    },
    parent = map.id,
    pois = {Entrance({63418984})} -- Entrance
}) -- The Oozekhan

map.nodes[76585780] = Rare({
    id = 216034,
    quest = 81703, -- 84072
    location = L['in_small_cave'],
    rewards = {
        Achievement({id = 40840, criteria = 69660}),
        Reputation({id = 2601, gain = 50, quest = 84072}),
        Reputation({id = 2605, gain = 50, quest = 84072}),
        Reputation({id = 2607, gain = 50, quest = 84072}),
        Transmog({item = 221231, type = L['leather']}) -- Steam-Powered Wristwatch
    },
    pois = {Entrance({77485899})} -- Entrance
}) -- The XT-Minecrusher 8700

map.nodes[64590352] = Rare({
    id = 216051,
    quest = 82037, -- 84080
    rewards = {
        Achievement({id = 40840, criteria = 69668}),
        Reputation({id = 2601, gain = 50, quest = 84080}),
        Reputation({id = 2605, gain = 50, quest = 84080}),
        Reputation({id = 2607, gain = 50, quest = 84080}),
        Transmog({item = 223930, type = L['mail']}), -- Monstrous Chain Pincers
        Transmog({item = 221240, type = L['1h_sword']}), -- Nerubian Stagshell Gouger
        Transmog({item = 221252, type = L['2h_sword']}) -- Nerubian Slayer's Claymore
    }
}) -- Umbraclaw Matra

map.nodes[34694110] = Rare({
    id = 216037,
    quest = 81700, -- One Time Kill
    rewards = {
        Achievement({id = 40840, criteria = 69656}),
        Reputation({id = 2601, gain = 50, quest = 81700}),
        Reputation({id = 2605, gain = 50, quest = 81700}),
        Reputation({id = 2607, gain = 50, quest = 81700}),
        Transmog({item = 223386, type = L['cloth']}), -- Vilewing Crown
        Transmog({item = 223388, type = L['leather']}), -- Vilewing Cap
        Transmog({item = 223387, type = L['mail']}), -- Vilewing Chain Helm
        Transmog({item = 223405, type = L['plate']}) -- Vilewing Visor
    },
    pois = {
        Path({
            34493843, 34113856, 33653930, 33573969, 33644062, 33894099,
            34694110, 34994082, 35333998, 35433959, 35253877, 34923855, 34493843
        })
    }
}) -- Vilewing

cotl.nodes[67525826] = Rare({
    id = 216039,
    quest = 81701, -- 84070
    parent = {map.id, cot.id},
    rewards = {
        Achievement({id = 40840, criteria = 69658}),
        Reputation({id = 2601, gain = 50, quest = 84070}),
        Reputation({id = 2605, gain = 50, quest = 84070}),
        Reputation({id = 2607, gain = 50, quest = 84070}),
        Transmog({item = 221239, type = L['gun']}), -- Spider Blasting Blunderbuss
        Transmog({item = 221221, type = L['plate']}), -- Venomous Lurker's Greathelm
        Transmog({item = 221506, type = L['cloak']}) -- Arachnid's Web-Sown Guise
    }
}) -- Xishorr

-------------------------------------------------------------------------------

map.nodes[63479504] = Rare({
    id = 216047,
    location = L['in_cave'],
    quest = 82290, -- 85167
    rewards = {
        Reputation({id = 2601, gain = 50, quest = 85167}),
        Reputation({id = 2605, gain = 50, quest = 85167}),
        Reputation({id = 2607, gain = 50, quest = 85167}),
        Transmog({item = 221247, type = L['crossbow']}), -- Cavernous Critter Shooter
        Transmog({item = 221246, type = L['staff']}), -- Fierce Beast Staff
        Transmog({item = 221251, type = L['2h_axe']}), -- Bestial Underground Cleaver
        Transmog({item = 225998, type = L['cloak']}) -- Earthen Adventurer's Cloak
    },
    pois = {Entrance({65309350})} -- Entrance
}) -- The One Left

map.nodes[62816618] = Rare({
    id = 216046,
    quest = 82289, -- 85166
    note = L['tkaktath_note'],
    rewards = {
        Reputation({id = 2601, gain = 50, quest = 85166}),
        Reputation({id = 2605, gain = 50, quest = 85166}),
        Reputation({id = 2607, gain = 50, quest = 85166}),
        Transmog({item = 221240, type = L['1h_sword']}), -- Nerubian Stagshell Gouger
        Transmog({item = 221252, type = L['2h_sword']}), -- Nerubian Slayer's Claymore
        ns.reward.Item({item = 225952, quest = 83627})
    } -- starts the questchain to get the Siesbarg mount.
}) -- Tka'ktath

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

akl.nodes[62728795] = Treasure({
    quest = 82520,
    parent = map.id,
    requires = ns.requirement.Item(223870), -- Cache Key
    note = L['memory_cache_note'],
    rewards = {
        Achievement({id = 40828, criteria = 69615}),
        Reputation({id = 2601, gain = 50, quest = 82520}),
        Reputation({id = 2605, gain = 50, quest = 82520}),
        Reputation({id = 2607, gain = 50, quest = 82520}),
        Pet({item = 225544, id = 4599}) -- Mind Slurp
    },
    pois = {
        POI({points = {61498384, 62338363, 63478590, 65238877}, color = 'Red'})
    }
}) -- Memory Cache

map.nodes[67459072] = Treasure({
    quest = 82718,
    rewards = {
        Achievement({id = 40828, criteria = 69646}),
        Reputation({id = 2601, gain = 50, quest = 82718}),
        Reputation({id = 2605, gain = 50, quest = 82718}),
        Reputation({id = 2607, gain = 50, quest = 82718})
    }
}) -- Disturbed Soil

map.nodes[38783722] = Treasure({
    quest = 82722,
    rewards = {
        Achievement({id = 40828, criteria = 69650}),
        Reputation({id = 2601, gain = 50, quest = 82722}),
        Reputation({id = 2605, gain = 50, quest = 82722}),
        Reputation({id = 2607, gain = 50, quest = 82722})
    }
}) -- Missing Scout's Pack

cot.nodes[31642077] = Treasure({
    quest = 82720,
    parent = map.id,
    rewards = {
        Achievement({id = 40828, criteria = 69648}),
        Reputation({id = 2601, gain = 50, quest = 82720}),
        Reputation({id = 2605, gain = 50, quest = 82720}),
        Reputation({id = 2607, gain = 50, quest = 82720})
    }
}) -- Nerubian Offerings

map.nodes[49554370] = Treasure({
    quest = 82529,
    rewards = {
        Achievement({id = 40828, criteria = 69645}),
        Reputation({id = 2601, gain = 50, quest = 82529}),
        Reputation({id = 2605, gain = 50, quest = 82529}),
        Reputation({id = 2607, gain = 50, quest = 82529}),
        Pet({item = 221760, id = 4513}) -- Bonedrinker
    }
}) -- Nest Egg

map.nodes[54525081] = Treasure({
    quest = 82721,
    note = L['niffen_stash_note'],
    rewards = {
        Achievement({id = 40828, criteria = 69649}),
        Reputation({id = 2601, gain = 50, quest = 82721}),
        Reputation({id = 2605, gain = 50, quest = 82721}),
        Reputation({id = 2607, gain = 50, quest = 82721})
    }
}) -- Niffen Stash

map.nodes[67482754] = Treasure({
    quest = 82719,
    note = L['in_small_cave'],
    rewards = {
        Achievement({id = 40828, criteria = 69647}),
        Reputation({id = 2601, gain = 50, quest = 82719}),
        Reputation({id = 2605, gain = 50, quest = 82719}),
        Reputation({id = 2607, gain = 50, quest = 82719})
    },
    pois = {Entrance({65422765, 64712965})}
}) -- Silk-spun Supplies

cot.nodes[67397441] = Treasure({
    quest = 82727,
    parent = map.id,
    note = L['trapped_trove_note'],
    rewards = {
        Achievement({id = 40828, criteria = 69644}),
        Reputation({id = 2601, gain = 50, quest = 82727}),
        Reputation({id = 2605, gain = 50, quest = 82727}),
        Reputation({id = 2607, gain = 50, quest = 82727}),
        Pet({item = 222966, id = 4473}) -- Spinner
    }
}) -- Trapped Trove

map.nodes[78613320] = Treasure({
    quest = 82527,
    note = L['weaving_supplies_note'],
    rewards = {
        Achievement({id = 40828, criteria = 69643}),
        Reputation({id = 2601, gain = 50, quest = 82527}),
        Reputation({id = 2605, gain = 50, quest = 82527}),
        Reputation({id = 2607, gain = 50, quest = 82527}), --
        Toy({item = 225347}) -- Web-Vandal's Spinning Wheel
    },
    pois = {
        POI({74794285, color = 'Purple', label = '{item:223901}'}), -- Violet Silk Scrap
        POI({72663967, color = 'Red', label = '{item:223902}'}), -- Crimson Silk Scrap
        POI({74183770, color = 'Yellow', label = '{item:223903}'}) -- Gold Silk Scrap
    }
}) -- Weaving Supplies

map.nodes[34056102] = Treasure({
    quest = 82525,
    location = L['in_small_cave'],
    note = L['concealed_contraband_note'],
    rewards = {
        Achievement({id = 40828, criteria = 70381}),
        Reputation({id = 2601, gain = 50, quest = 82525}),
        Reputation({id = 2605, gain = 50, quest = 82525}),
        Reputation({id = 2607, gain = 50, quest = 82525})
    },
    pois = {Entrance({33756045})}
}) -- Concealed Contraband -- Web Cocoon

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

cotl.nodes[61263699] = ns.node.PetBattle({
    id = 223443,
    parent = {cot.id, map.id},
    rewards = {
        Achievement({id = 40153, criteria = 67138, oneline = true}), -- Battle on Khaz Algar
        ns.reward.Spacer(),
        Achievement({id = 40154, criteria = 67142, oneline = true}), -- Aquatic Battler of Khaz Algar
        Achievement({id = 40155, criteria = 67146, oneline = true}), -- Beast Battler of Khaz Algar
        Achievement({id = 40156, criteria = 67150, oneline = true}), -- Critter Battler of Khaz Algar
        Achievement({id = 40157, criteria = 67154, oneline = true}), -- Dragonkin Battler of Khaz Algar
        Achievement({id = 40158, criteria = 67158, oneline = true}), -- Elemental Battler of Khaz Algar
        Achievement({id = 40161, criteria = 67162, oneline = true}), -- Flying Battler of Khaz Algar
        Achievement({id = 40162, criteria = 67165, oneline = true}), -- Humanoid Battler of Khaz Algar
        Achievement({id = 40163, criteria = 67169, oneline = true}), -- Magic Battler of Khaz Algar
        Achievement({id = 40164, criteria = 67173, oneline = true}), -- Mechanical Battler of Khaz Algar
        Achievement({id = 40165, criteria = 67177, oneline = true}) -- Undead Battler of Khaz Algar
    }
}) -- Collector Dyna

map.nodes[53093158] = ns.node.PetBattle({
    id = 223406,
    rewards = {
        Achievement({id = 40153, criteria = 67134, oneline = true}) -- Battle on Khaz Algar
    }
}) -- Zaedu

-------------------------------------------------------------------------------
----------------------------- PROFESSION TREASURES ----------------------------
-------------------------------------------------------------------------------

cot.nodes[45321322] = PT.Alchemy({quest = 83846, id = 226271, parent = map.id}) -- Nerubian Mixing Salts
map.nodes[42835735] = PT.Alchemy({quest = 83847, id = 226272}) -- Dark Apothecary's Vial
cot.nodes[46522291] = PT.Blacksmithing({
    quest = 83854,
    id = 226282,
    parent = map.id
}) -- Nerubian Smith's Kit
map.nodes[52965126] = PT.Blacksmithing({quest = 83855, id = 226283}) -- Spiderling's Wire Brush
cot.nodes[61712201] = PT.Enchanting({
    quest = 83864,
    id = 226290,
    parent = map.id
}) -- Book of Dark Magic
map.nodes[57354404] = PT.Enchanting({quest = 83865, id = 226291}) -- Void Shard
map.nodes[56853859] = PT.Engineering({quest = 83872, id = 226298}) -- Puppeted Mechanical Spider
cot.nodes[63141118] = PT.Engineering({
    quest = 83873,
    id = 226299,
    parent = map.id
}) -- Emptied Venom Canister
cot.nodes[46771612] =
    PT.Herbalism({quest = 83881, id = 226307, parent = map.id}) -- Tunneler's Shovel
cot.nodes[54602088] =
    PT.Herbalism({quest = 83880, id = 226306, parent = map.id}) -- Web-Entangled Lotus
map.nodes[55834390] = PT.Inscription({quest = 83888, id = 226314}) -- Nerubian Texts
cot.nodes[50233085] = PT.Inscription({
    quest = 83889,
    id = 226315,
    parent = map.id
}) -- Venomancer's Ink Well
cot.nodes[47831954] = PT.Jewelcrafting({
    quest = 83896,
    id = 226322,
    parent = map.id
}) -- Ritual Caster's Crystal
map.nodes[56165865] = PT.Jewelcrafting({quest = 83897, id = 226323}) -- Nerubian Bench Blocks
cot.nodes[55042695] = PT.Leatherworking({
    quest = 83904,
    id = 226330,
    parent = map.id
}) -- Nerubian Tanning Mallet
map.nodes[59995401] = PT.Leatherworking({quest = 83905, id = 226331}) -- Curved Nerubian Skinning Knife
cot.nodes[46812169] = PT.Mining({quest = 83912, id = 226338, parent = map.id}) -- Heavy Spider Crusher
cotl.nodes[47954059] = PT.Mining({
    quest = 83913,
    id = 226339,
    parent = {map.id, cot.id}
}) -- Nerubian Mining Cart
cotl.nodes[44484947] = PT.Skinning({
    quest = 83920,
    id = 226346,
    parent = {map.id, cot.id}
}) -- Nerubian's Slicking Iron
map.nodes[56545524] = PT.Skinning({quest = 83921, id = 226347}) -- Carapace Shiner
map.nodes[53285313] = PT.Tailoring({quest = 83928, id = 226354}) -- Nerubian Quilt
cot.nodes[50321682] =
    PT.Tailoring({quest = 83929, id = 226355, parent = map.id}) -- Nerubian's Pincushion

-------------------------------------------------------------------------------
---------------------------- ACHIEVEMENT: BOOKWORM ----------------------------
-------------------------------------------------------------------------------

local Bookworm = Class('bookworm', Collectible, {
    icon = 4549129,
    group = ns.groups.BOOKWORM,
    requires = ns.requirement.Spell(456122), -- Polymorphic Translation: Nerubian
    note = L['nerubian_potion_note'] .. '\n\n' .. L['bookworm_note'],
    pois = {POI({47166941, label = '{npc:218192}', color = 'Red'})} -- Siesbarg
})

map.nodes[40103980] = Bookworm({
    location = L['bookworm_1_location'],
    rewards = {Achievement({id = 40629, criteria = 68983})}
}) -- Entomological Essay on Grubs, Volume 1

map.nodes[39794051] = Bookworm({
    location = L['in_small_cave'],
    rewards = {Achievement({id = 40629, criteria = 68989})}
}) -- Entomological Essay on Grubs, Volume 2

map.nodes[39094259] = Bookworm({
    location = L['in_small_cave'],
    rewards = {Achievement({id = 40629, criteria = 68990})}
}) -- Entomological Essay on Grubs, Volume 3

-------------------------------------------------------------------------------
--------------------------- AZJ-KAHET GLYPH HUNTER ----------------------------
-------------------------------------------------------------------------------

map.nodes[63421396] = SkyridingGlyph({
    rewards = {Achievement({id = 40705, criteria = 69265})}
}) -- Arathi's End

map.nodes[46692126] = SkyridingGlyph({
    rewards = {Achievement({id = 40705, criteria = 69266})}
}) -- Siegehold

map.nodes[25174058] = SkyridingGlyph({
    rewards = {Achievement({id = 40705, criteria = 69267})}
}) -- Ruptured Lake

map.nodes[42925715] = SkyridingGlyph({
    rewards = {Achievement({id = 40705, criteria = 69268})}
}) -- Eye of Ansurek

cot.nodes[13103377] = SkyridingGlyph({
    parent = map.id,
    rewards = {Achievement({id = 40705, criteria = 69269})}
}) -- Old Sacrificial Pit

cot.nodes[78377125] = SkyridingGlyph({
    parent = map.id,
    rewards = {Achievement({id = 40705, criteria = 69270})}
}) -- Deepwalker Pass

map.nodes[66258486] = SkyridingGlyph({
    rewards = {Achievement({id = 40705, criteria = 69271})}
}) -- The Maddening Deep

map.nodes[73198417] = SkyridingGlyph({
    rewards = {Achievement({id = 40705, criteria = 69272})}
}) -- Rak-Ush

map.nodes[57575733] = SkyridingGlyph({
    rewards = {Achievement({id = 40705, criteria = 69273})}
}) -- Silken Ward

map.nodes[70562516] = SkyridingGlyph({
    rewards = {Achievement({id = 40705, criteria = 69274})}
}) -- Trickling Abyss

map.nodes[65405178] = SkyridingGlyph({
    rewards = {Achievement({id = 40705, criteria = 69275})}
}) -- Untamed Valley

-------------------------------------------------------------------------------
----------------------- ACHIEVEMENT: ITSY BITSY SPIDER ------------------------
-------------------------------------------------------------------------------

local ItsyBitsySpider = Class('ItsyBitsySpider', Collectible, {
    icon = 5793405,
    group = ns.groups.ITSY_BITSY_SPIDER,
    note = L['itsy_bitsy_spider_note']
})

map.nodes[55022662] = ItsyBitsySpider({
    rewards = {Achievement({id = 40624, criteria = 68976})}
}) -- Ru'murh

cot.nodes[50311591] = ItsyBitsySpider({
    rewards = {Achievement({id = 40624, criteria = 68978})},
    pois = {
        Path({
            52151317, 51811238, 50831126, 49521115, 48471114, 47421333,
            47481445, 48221539, 48331588, 47571725, 46741772, 46511686,
            46591499, 47671521, 48741559, 50311591, 51601554, 52151317
        })
    },
    parent = {
        id = map.id,
        pois = {
            Path({
                49526962, 49406934, 49066895, 48606892, 48246891, 47876968,
                47897007, 48157039, 48197057, 47927104, 47637121, 47557091,
                47587025, 47967033, 48337046, 48887058, 49337045, 49526962
            })
        }
    }
}) -- Scampering Weave-Rat

map.nodes[55644395] = ItsyBitsySpider({
    rewards = {Achievement({id = 40624, criteria = 68973})},
    pois = {
        POI({
            63003300, 48405640, 48405660, 63003300, 45606000, 46205900,
            46605900, 56204820
        }) -- review - just copied from wowhead
    }
}) -- Spindle

map.nodes[55106876] = ItsyBitsySpider({
    rewards = {Achievement({id = 40624, criteria = 68977})},
    pois = {
        POI({31604740, 55607100, 60601760}), -- review - just copied from wowhead
        POI({
            points = {
                55106876, 65938810, 68705578, 43752660, 53395340, 28824288,
                57548187
            },
            color = 'Red'
        }) -- confirmed
    }
}) -- Thimble
-- npc:224887 npc:224889 npc:224893 npc:224895 npc:220568 npc:224892(226225114-cot) npc:224891(69898267 cot)

cot.nodes[39386540] = ItsyBitsySpider({
    rewards = {Achievement({id = 40624, criteria = 68972})},
    parent = map.id
}) -- Webster

map.nodes[56344316] = ItsyBitsySpider({
    rewards = {Achievement({id = 40624, criteria = 3236})}
}) -- Bobbin

-------------------------------------------------------------------------------
--------------------- ACHIEVEMENT: KHAZ ALGAR LORE HUNTER ---------------------
-------------------------------------------------------------------------------

-- cot.nodes[77557018] = LoreObject({
--     parent = map.id,
--     rewards = {
--         Achievement({id = 40762, criteria = 69385}),
--         Reputation({id = 2601, gain = 85}), Reputation({id = 2605, gain = 85}),
--         Reputation({id = 2607, gain = 85})
--     }
-- }) -- Forgotten Shadecaster

-- map.nodes[75443325] = LoreObject({
--     rewards = {
--         Achievement({id = 40762, criteria = 69387}),
--         Reputation({id = 2601, gain = 85}), Reputation({id = 2605, gain = 85}),
--         Reputation({id = 2607, gain = 85})
--     }
-- }) -- Kah'teht

-- map.nodes[54071889] = LoreObject({
--     rewards = {
--         Achievement({id = 40762, criteria = 69388}),
--         Reputation({id = 2601, gain = 85}), Reputation({id = 2605, gain = 85}),
--         Reputation({id = 2607, gain = 85})
--     }
-- }) -- Mad Nerubian

-- cot.nodes[08533058] = LoreObject({
--     parent = map.id,
--     rewards = {
--         Achievement({id = 40762, criteria = 69386}),
--         Reputation({id = 2601, gain = 85}), Reputation({id = 2605, gain = 85}),
--         Reputation({id = 2607, gain = 85})
--     }
-- }) -- Neglected Shadecaster

-- map.nodes[71126233] = LoreObject({
--     rewards = {
--         Achievement({id = 40762, criteria = 69384}),
--         Reputation({id = 2601, gain = 85}), Reputation({id = 2605, gain = 85}),
--         Reputation({id = 2607, gain = 85})
--     }
-- }) -- Weathered Shadecaster

-------------------------------------------------------------------------------
--------------------- ACHIEVEMENT: SMELLING HISTORY ---------------------------
-------------------------------------------------------------------------------

local SmellingHistory = Class('smelling_history', Collectible, {
    icon = 4549130,
    group = ns.groups.SMELLING_HISTORY,
    requires = ns.requirement.Spell(456122), -- Polymorphic Translation: Nerubian
    note = L['nerubian_potion_note'] .. '\n\n' .. L['smelling_history_note']
})

cot.nodes[45291254] = SmellingHistory({
    id = 218192,
    icon = 134713,
    location = L['in_building'],
    parent = map.id,
    rewards = {Achievement({id = 40542})}
}) -- Siesbarg

cot.nodes[27715460] = SmellingHistory({
    parent = map.id,
    location = L['smelling_history_1_location'],
    rewards = {Achievement({id = 40542, criteria = 68818})}
}) -- Strands of Memory

map.nodes[62963117] = SmellingHistory({
    location = L['smelling_history_2_location'],
    rewards = {Achievement({id = 40542, criteria = 68971})}
}) -- Ethos of War, Part 1

map.nodes[66693128] = SmellingHistory({
    location = L['smelling_history_3_location'],
    rewards = {Achievement({id = 40542, criteria = 68980})},
    pois = {Entrance({65422765, 64712965})}
}) -- Ethos of War, Part 2

map.nodes[48852400] = SmellingHistory({
    location = L['smelling_history_4_location'],
    rewards = {Achievement({id = 40542, criteria = 68981})}
}) -- Ethos of War, Part 3

map.nodes[43252555] = SmellingHistory({
    location = L['smelling_history_5_location'],
    rewards = {Achievement({id = 40542, criteria = 68982})}
}) -- Ethos of War, Part 4

cot.nodes[38263555] = SmellingHistory({
    parent = map.id,
    location = L['smelling_history_6_location'],
    rewards = {Achievement({id = 40542, criteria = 68984})},
    pois = {Entrance({40743385})}
}) -- Queen Xekatha

cot.nodes[37103275] = SmellingHistory({
    parent = map.id,
    location = L['smelling_history_7_location'],
    rewards = {Achievement({id = 40542, criteria = 68985})},
    pois = {Entrance({40743385})}
}) -- Queen Anub'izek

cot.nodes[38423227] = SmellingHistory({
    parent = map.id,
    location = L['smelling_history_8_location'],
    rewards = {Achievement({id = 40542, criteria = 68986})},
    pois = {Entrance({40743385})}
}) -- Queen Zaltra

cot.nodes[38203910] = SmellingHistory({
    parent = map.id,
    location = L['smelling_history_9_location'],
    rewards = {Achievement({id = 40542, criteria = 68987})},
    pois = {Entrance({40173874})}
}) -- Treatise on Forms: Sages

cot.nodes[38543774] = SmellingHistory({
    parent = map.id,
    location = L['smelling_history_10_location'],
    rewards = {Achievement({id = 40542, criteria = 68988})},
    pois = {Entrance({40173874})}
}) -- Treatise on Forms: Skitterlings

cot.nodes[23645107] = SmellingHistory({
    parent = map.id,
    location = L['smelling_history_11_location'],
    rewards = {Achievement({id = 40542, criteria = 69446})},
    pois = {Entrance({26115141})}
}) -- Treatise on Forms: Lords

cot.nodes[77984103] = SmellingHistory({
    parent = map.id,
    location = L['smelling_history_12_location'],
    rewards = {Achievement({id = 40542, criteria = 69447})}
}) -- Treatise on Forms: Ascended

-- Queen Neferess 36462490

-------------------------------------------------------------------------------
--------------------- ACHIEVEMENT: SKITTERSHAW SPIN ---------------------------
-------------------------------------------------------------------------------

local SkittershawSpin = Class('skittershaw_spin', Collectible, {
    icon = 879828,
    group = ns.groups.SKITTERSHAW_SPIN,
    note = L['skittershaw_spin_note']
})

cot.nodes[65255720] = SkittershawSpin({
    id = 224973,
    rewards = {Achievement({id = 40727, criteria = 0, oneline = true})},
    pois = {
        Path({
            65255720, 64115525, 64755380, 69504950, 71384995, 71444996,
            73505020, 75805200, 76465505, 77805880, 77886180, 75926357,
            76306680, 73306980, 70996716, 68546474, 68506430, 66006000, 65255720
        }), POI({
            points = {65255720, 71384995, 76445491, 75926358, 70996716},
            color = 'Red'
        })
    },
    parent = {
        id = map.id,
        pois = {
            Path({
                54098498, 53698430, 53918379, 55578229, 56238245, 56258245,
                56978254, 57778316, 58008423, 58468553, 58498658, 57818720,
                57948832, 56908937, 56098845, 55248761, 55228745, 54358595,
                54098498
            }), POI({
                points = {54098498, 56238245, 57998418, 57818720, 56098845},
                color = 'Red'
            })
        }
    }
})

-----------------------------------------------------------------------------------------------------
--------------------- ACHIEVEMENT: NO HARM EVER CAME FROM READING A BOOK  ---------------------------
-----------------------------------------------------------------------------------------------------

local NoHarmFromReading = Class('no_harm_from_reading', Collectible, {
    icon = 463284,
    group = ns.groups.NO_HARM_FROM_READING,
    rewards = {Achievement({id = 40632, criteria = 0, oneline = true})}
})

cotl.nodes[68195603] = NoHarmFromReading({
    label = '{achievement:40632}',
    note = L['no_harm_from_reading_note'],
    pois = {
        Entrance({points = {72035705}, color = 'Yellow'}), -- Cave entrance
        POI({points = {66735661}, color = 'Red'}) -- Spider Wall
    },
    parent = {
        {
            id = cot.id,
            pois = {
                Entrance({points = {72035705}, color = 'Yellow'}) -- Cave entrance
            }
        }, {
            id = map.id,
            pois = {
                Entrance({points = {56468493}, color = 'Yellow'}) -- Cave entrance
            }
        }
    }
})

map.nodes[24205274] = NoHarmFromReading({
    id = 227421,
    quest = 83744,
    questDeps = 83741
}) -- Another You 1

map.nodes[58692012] = NoHarmFromReading({
    id = 227421,
    quest = 83745,
    questDeps = 83741
}) -- Another You 2

map.nodes[78896056] = NoHarmFromReading({
    id = 227421,
    quest = 83746,
    questDeps = 83741
}) -- Another You 3

map.nodes[56874401] = NoHarmFromReading({
    id = 227421,
    note = L['another_you_4_note'],
    quest = 83747,
    questDeps = 83741,
    pois = {
        Path({
            points = {
                57414429, 57324406, 57164432, 56874401, 56604340, 56514327,
                56344326, 56264336, 56694303
            }
        })
    }
}) -- Another You 4

-------------------------------------------------------------------------------
-------------------------- ACHIEVEMENT: THE UNSEEMING -------------------------
-------------------------------------------------------------------------------

akl.nodes[62848495] = Collectible({
    icon = 1386549,
    label = '{achievement:40633}',
    note = L['the_unseeming_note'],
    group = ns.groups.THE_UNSEEMING,
    rewards = {Achievement({id = 40633})},
    parent = map.id
})

-------------------------------------------------------------------------------
--------------------- ACHIEVEMENT: YOU CAN'T HANG WITH US ---------------------
-------------------------------------------------------------------------------

cot.nodes[53622079] = Collectible({
    icon = 237431,
    label = '{achievement:40634}',
    note = L['you_cant_hang_with_us_note'],
    group = ns.groups.YOU_CANT_HANG_WITH_US,
    parent = {
        id = map.id,
        pois = {
            Path({Circle({origin = 50047228, radius = 3.5})}),
            Path({Circle({origin = 54397843, radius = 2.5})})
        }
    },
    rewards = {Achievement({id = 40634})},
    pois = {
        Path({Circle({origin = 53622079, radius = 10})}),
        Path({Circle({origin = 66123842, radius = 7.4})})
    }
})

-------------------------------------------------------------------------------
-------------------------------- DISTURBED DIRT -------------------------------
-------------------------------------------------------------------------------

map.nodes[49572863] = DisturbedEarth()
map.nodes[57202906] = DisturbedEarth()
map.nodes[60404091] = DisturbedEarth()
map.nodes[63143918] = DisturbedEarth()
map.nodes[64733653] = DisturbedEarth()
map.nodes[76594443] = DisturbedEarth()
map.nodes[77983656] = DisturbedEarth()
map.nodes[75473638] = DisturbedEarth()
map.nodes[71426732] = DisturbedEarth()
map.nodes[77167049] = DisturbedEarth()
map.nodes[75317142] = DisturbedEarth()
map.nodes[75487737] = DisturbedEarth()
map.nodes[70127943] = DisturbedEarth()
akl.nodes[65388188] = DisturbedEarth({parent = map.id})
map.nodes[59846504] = DisturbedEarth()
map.nodes[41826537] = DisturbedEarth()
map.nodes[40636088] = DisturbedEarth()
map.nodes[36845786] = DisturbedEarth()
map.nodes[36065877] = DisturbedEarth()
map.nodes[38085589] = DisturbedEarth()
map.nodes[38375464] = DisturbedEarth()
map.nodes[39835394] = DisturbedEarth()
map.nodes[38764920] = DisturbedEarth()
map.nodes[39834688] = DisturbedEarth()

-- Rumor Broker
-- CoT 47840965 - NPC 224188 Ghos'opp - triggers quest 82640
-- CoT 55012661 - 224193 Ru'murh - 82581
-- LCoT 55704782 - 224197 Ru'murh - 82644
-- CoT 54833455 - 224198 Ru'murh - No Quest
-- CoT 77845369 - 224196 Ru'murh - No Quest

-------------------------------------------------------------------------------
-------------------- ACHIEVEMENT: KHAZ ALGAR FLIGHT MASTER --------------------
-------------------------------------------------------------------------------

cot.nodes[54024434] = FlightMaster({
    parent = map.id,
    rewards = {Achievement({id = 40430, criteria = 68176})}
}) -- The Burrows

map.nodes[23155114] = FlightMaster({
    rewards = {Achievement({id = 40430, criteria = 68175})}
}) -- Wildcamp Or'lay

map.nodes[44476750] = FlightMaster({
    rewards = {Achievement({id = 40430, criteria = 68177})}
}) -- Wildcamp Ul'ar

map.nodes[56894700] = FlightMaster({
    rewards = {Achievement({id = 40430, criteria = 68174})}
}) -- Weaver's Lair

map.nodes[60001869] = FlightMaster({
    rewards = {Achievement({id = 40430, criteria = 68178})}
}) -- Faerin's Advance

map.nodes[76846444] = FlightMaster({
    rewards = {Achievement({id = 40430, criteria = 68179})}
}) -- Mmari

-------------------------------------------------------------------------------
------------------------ ACHIEVEMENT: BACK TO THE WALL ------------------------
-------------------------------------------------------------------------------

local ArathiPrisoner = Class('ArathiPrisoner', Collectible, {
    label = '{npc:222119}',
    icon = 'peg_yw',
    scale = 1.5,
    note = L['arathi_prisoner_note'],
    group = ns.groups.BACK_TO_THE_WALL,
    rewards = {
        Achievement({
            id = 40620,
            criteria = {
                id = 1,
                qty = true,
                suffix = L['arathi_prisoner_suffix']
            }
        })
    }
})

map.nodes[65901335] = ArathiPrisoner()
map.nodes[64951100] = ArathiPrisoner()
map.nodes[65101058] = ArathiPrisoner()
map.nodes[64241006] = ArathiPrisoner()
map.nodes[65080784] = ArathiPrisoner()
map.nodes[64880760] = ArathiPrisoner()
map.nodes[64720438] = ArathiPrisoner()
map.nodes[64740440] = ArathiPrisoner()
map.nodes[61690791] = ArathiPrisoner()
map.nodes[60280928] = ArathiPrisoner()
map.nodes[60270939] = ArathiPrisoner()
map.nodes[62000428] = ArathiPrisoner()
map.nodes[61210398] = ArathiPrisoner()
map.nodes[48465780] = ArathiPrisoner()
map.nodes[63060098] = ArathiPrisoner()
map.nodes[63800073] = ArathiPrisoner()
map.nodes[63880010] = ArathiPrisoner()

-------------------------------------------------------------------------------
---------------------- PET: BEAN (FRESHLY WEBBED KEBAB) -----------------------
-------------------------------------------------------------------------------

local KejPetVendor = Class('KejPetVendor', ns.node.Vendor, {
    note = L['kej_pet_vendor_note'],
    fgroup = 'kej_pet_vendor'
}) -- Kej Pet Vendor

cot.nodes[50472651] = KejPetVendor({
    id = 218198,
    rewards = {
        Pet({item = 221850, id = 4464, note = '{npc:222202}'}) -- Bean
    }
}) -- Pelefien

cot.nodes[49042650] = KejPetVendor({
    id = 218197,
    rewards = {
        Pet({item = 221850, id = 4464, note = '{npc:222202}'}) -- Bean
    }
}) -- Kurth

cot.nodes[49302664] = KejPetVendor({
    id = 218199,
    rewards = {
        Pet({item = 221850, id = 4464, note = '{npc:222202}'}) -- Bean
    }
}) -- Kram'an

cot.nodes[49752616] = KejPetVendor({
    id = 218200,
    rewards = {
        Pet({item = 221850, id = 4464, note = '{npc:222202}'}) -- Bean
    }
}) -- Yaggi

cot.nodes[44961666] = KejPetVendor({
    id = 218209,
    rewards = {
        Pet({item = 221850, id = 4464, note = '{npc:222202}'}), -- Bean
        Pet({item = 222973, id = 4492}), -- Fringe
        Pet({item = 222968, id = 4476}) -- Itchbite
    }
}) -- Tyro Uwe

cot.nodes[44201715] = KejPetVendor({
    id = 218207,
    rewards = {
        Pet({item = 222973, id = 4492}), -- Fringe
        Pet({item = 222968, id = 4476}) -- Itchbite
    }
}) -- Clutchmother Marntiq

cot.nodes[46282915] = KejPetVendor({
    id = 218224,
    rewards = {
        Pet({item = 222973, id = 4492}), -- Fringe
        Pet({item = 222968, id = 4476}) -- Itchbite
    }
}) -- "Calmest" Gobbu
