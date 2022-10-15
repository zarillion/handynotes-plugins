-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map
local Class = ns.Class

local Collectible = ns.node.Collectible
local PetBattle = ns.node.PetBattle
local Treasure = ns.node.Treasure
local Rare = ns.node.Rare

local Achievement = ns.reward.Achievement
local Transmog = ns.reward.Transmog
local Currency = ns.reward.Currency
local Mount = ns.reward.Mount
local Item = ns.reward.Item
local Toy = ns.reward.Toy
local Pet = ns.reward.Pet

local Path = ns.poi.Path
local POI = ns.poi.POI

local wod_treasures = Achievement({
    id = 9728,
    criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
})
-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({id = 539, settings = true})
local map540 = Map({id = 540, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

local Pathrunner = Rare({
    id = 50883,
    note = L['multiple_spawn_note'],
    fgroup = 'Pathrunner',
    rewards = {
        Mount({item = 116773, id = 636}) -- Swift Breezestrider
    }
})

map.nodes[39603660] = Pathrunner
map.nodes[43003220] = Pathrunner
map.nodes[44604380] = Pathrunner
map.nodes[45806820] = Pathrunner
map.nodes[54003040] = Pathrunner
map.nodes[56205240] = Pathrunner

map.nodes[27494370] = Rare({
    id = 86689,
    rewards = {
        Transmog({item = 118734, slot = L['cloth']}), -- Sneevel's Loincloth
        Currency({id = 824})
    }
}) -- Sneevel

map.nodes[32453507] = Rare({
    id = 72362,
    rewards = {
        Transmog({item = 109061, slot = L['mail']}), -- Ku'targ's Merciless Grips
        Currency({id = 824})
    }
}) -- Ku'targ the Voidseer

map540.nodes[31153439] = Rare({
    id = 76380,
    rewards = {
        Item({item = 113082, slot = L['ring']}) -- Precious Bloodthorn Loop
    }
}) -- Gorum
map.nodes[21643292] = Rare({
    id = 76380,
    note = L['in_cave'],
    rewards = {
        Item({item = 113082}) -- Precious Bloodthorn Loop
    },
    pois = {POI({24263314})}
}) -- Gorum

map.nodes[21662106] = Rare({
    id = 75482,
    rewards = {
        Item({item = 108906, slot = L['ring']}), -- Sporebat Larval Pod
        Currency({id = 824})
    }
}) -- Veloss

map.nodes[28730568] = Rare({
    id = 81406,
    rewards = {Currency({id = 824})},
    pois = {Path({28730568, 29550607, 30110747, 30040843})}
}) -- Bahameye

map.nodes[37681439] = Rare({
    id = 72537,
    rewards = {
        Item({item = 108907}), -- Mushroom of Destiny
        Currency({id = 824})
    }
}) -- Leaf-Reader Kurri

map.nodes[35992914] = Rare({
    id = 77140,
    rewards = {
        Transmog({item = 109060, slot = L['mail']}), -- Rylak-Scale Vest
        Currency({id = 824})
    },
    pois = {
        Path({
            35992914, 34272852, 33222808, 30952862, 29402989, 29163115,
            30283205, 31923288, 33183372, 35363513, 36793606, 37983666,
            39043671, 39953626, 41093492, 41493360, 41563187, 41023063,
            39892992, 38552971, 35992914
        })
    }
}) -- Amaukwa

map.nodes[45012085] = Rare({
    id = 77310,
    note = L['in_small_cave'],
    rewards = {
        Transmog({item = 113561, slot = L['staff']}), -- Staff of the Mad Bramble King
        Currency({id = 824})
    }
}) -- Mad "King" Sporeon

map.nodes[48822268] = Rare({
    id = 82374,
    rewards = {
        Toy({item = 113542}), -- Whispers of Rai'Vosh
        Currency({id = 824})
    }
}) -- Rai'Vosh

map.nodes[52891674] = Rare({
    id = 82326,
    rewards = {
        Toy({item = 113540}), -- Ba'ruun's Bountiful Bloom
        Currency({id = 824})
    }
}) -- Ba'ruun

map.nodes[67906392] = Rare({
    id = 82676,
    rewards = {
        Item({item = 113556, slot = L['neck']}), -- Varandi Family Crest
        Currency({id = 824})
    }
}) -- Enavra

map.nodes[60625807] = Rare({
    id = 82415,
    rewards = {
        Toy({item = 113543}), -- Spirit of Shinri
        Currency({id = 824})
    },
    pois = {
        Path({
            59635320, 59915515, 59155713, 59465822, 60625807, 61605771,
            62425845, 63375812, 63795732, 63705617, 63705491, 63395372,
            63305227, 63175084, 62764998, 61544987, 60725093, 59945255, 59635320
        })
    }
}) -- Shinri

map.nodes[57394864] = Rare({
    id = 83553,
    rewards = {
        Transmog({item = 113571, slot = L['cloth']}), -- Boots of the Shadowborn
        Currency({id = 824})
    }
}) -- Insha'tar

map.nodes[52705084] = Rare({
    id = 72606,
    rewards = {
        Transmog({item = 109077, slot = L['shield']}), -- Rockhoof's Crest
        Currency({id = 824})
    }
}) -- Rockhoof

map.nodes[48494334] = Rare({
    id = 77085,
    note = L['in_cave'],
    rewards = {
        Transmog({item = 109075, slot = L['fist']}), -- Abberant's Paw
        Currency({id = 824})
    },
    pois = {POI({46394509, 49924624})}
}) -- Dark Emanation

map.nodes[49634183] = Rare({
    id = 82411,
    rewards = {
        Transmog({item = 113541, slot = L['cloak']}), -- Darktalon's Drape
        Currency({id = 824})
    }
}) -- Darktalon

map.nodes[40794460] = Rare({
    id = 74206,
    rewards = {
        Transmog({item = 109078, slot = L['dagger']}), -- Killmaw's Canine,
        Currency({id = 824})
    }
}) -- Killmaw

map.nodes[37404894] = Rare({
    id = 79524,
    note = L['in_waterfall_cave'],
    rewards = {
        Toy({item = 113631}), -- Hypnosis Goggles
        Currency({id = 824})
    },
    pois = {POI({38564921})}
}) -- Hypnocroak

map.nodes[32664137] = Rare({
    id = 83385,
    note = L['voidseer_kalurg_note'],
    rewards = {
        Transmog({item = 109074, slot = L['cloth']}), -- Fine Void-Chain Cinch
        Currency({id = 824})
    }
}) -- Voidseer Kalurg

map.nodes[43955767] = Rare({
    id = 75071,
    rewards = {
        Item({item = 119449}), -- Shadowberry
        Item({item = 113527, slot = L['trinket']}) -- Legacy of Om'ra
    }
}) -- Mother Om'ra

map.nodes[38597044] = Rare({
    id = 82362,
    rewards = {
        Transmog({item = 113559, slot = L['1h_mace']}), -- Void Prophecy Cudgel
        Currency({id = 824})
    }
}) -- Morva Soultwister

map.nodes[38938147] = Rare({
    id = 82268,
    rewards = {
        Transmog({item = 113548, slot = L['staff']}) -- Darktide Summoner Staff
    },
    pois = {
        Path({
            38938147, 38868259, 38598371, 39238315, 39838315, 40618312,
            41418339, 42058379, 42238317, 41688308, 41648230, 41268198,
            40518174, 39728101, 39468065, 38988101, 38938147
        })
    }
}) -- Darkmaster Go'vid

map.nodes[48228094] = Rare({
    id = 85029,
    rewards = {
        Transmog({item = 119396, slot = L['dagger']}) -- Shadowspeaker's Shard
    }
}) -- Shadowspeaker Niir

map.nodes[50987900] = Rare({
    id = 86213,
    rewards = {
        Item({item = 119387}) -- Loop of Drowned Souls
    }
}) -- Aqualir

map.nodes[46027164] = Rare({
    id = 84911,
    rewards = {
        Achievement({id = 9437}), -- A Demidos of Reality
        Pet({item = 119431, id = 1601}), -- Servant of Demidos
        Item({item = 119377, slot = L['neck']}) -- Void-Touched Diamond Necklace
    }
}) -- Demidos

map.nodes[48306553] = Rare({
    id = 75435,
    rewards = {
        Toy({item = 113570}), -- Ancient's Bloom
        Currency({id = 824})
    }
}) -- Yggdrel

map.nodes[61666162] = Rare({
    id = 82207,
    rewards = {
        Transmog({item = 113557, slot = L['leather']}), -- Dragonrider's Tinkered Leggings
        Currency({id = 123})
    }
}) -- Faebright

map.nodes[54837029] = Rare({
    id = 75492,
    rewards = {
        Transmog({item = 108957, slot = L['leather']}), -- Venomshade Skin Boots
        Currency({id = 824})
    }
}) -- Venomshade

map.nodes[61748905] = Rare({
    id = 85837,
    note = L['in_cave'],
    rewards = {
        Transmog({item = 119411, slot = L['2h_sword']}) -- Massive Rockworm Fang
    },
    pois = {POI({60948721})}
}) -- Slivermaw

map.nodes[60738988] = Rare({
    id = 85555,
    note = L['in_cave'],
    rewards = {
        Transmog({item = 119364, slot = L['leather']}) -- Hydraskin Shoulderguards
    },
    pois = {POI({59148978})}
}) -- Nagidna

map.nodes[67318465] = Rare({
    id = 85568,
    note = L['in_cave'],
    rewards = {
        Transmog({item = 119400, slot = L['1h_mace']}) -- Rugged Crystal Cudgel
    },
    pois = {POI({66848664})}
}) -- Avalanche

map.nodes[51997957] = Rare({
    id = 85001,
    rewards = {
        Transmog({item = 119368, slot = L['mail']}) -- Milgra's Mighty Mitts
    }
}) -- Master Sergeant Milgra

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[34414617] = Treasure({
    quest = 33891,
    label = L['giant_moonwillow_cone'],
    rewards = {
        wod_treasures, Transmog({item = 108901, slot = L['wand']}) -- Moonwillow Wand
    }
}) -- Giant Moonwillow Cone

map.nodes[29994536] = Treasure({
    quest = 35919,
    label = '{item:113563}',
    rewards = {
        wod_treasures, Transmog({item = 113563, slot = L['dagger']}) -- Shadowmoon Sacrificial Dagger
    }
}) -- Shadowmoon Sacrificial Dagger

map.nodes[28233924] = Treasure({
    quest = 33883,
    label = L['shadowmoon_treasure'],
    rewards = {wod_treasures, Currency({id = 824})}
}) -- Shadowmoon Treasure

map.nodes[29853749] = Treasure({
    quest = 36879,
    label = L['dusty_lockbox'],
    rewards = {wod_treasures}
}) -- Dusty Lockbox

map540.nodes[56444916] = Treasure({
    quest = 33572,
    label = L['rotting_basket'],
    rewards = {wod_treasures}
}) -- Rotting Basket
map.nodes[22903383] = Treasure({
    quest = 33572,
    label = L['rotting_basket'],
    note = L['in_cave'],
    rewards = {wod_treasures},
    pois = {POI({24263314})}
}) -- Rotting Basket

map.nodes[26530568] = Treasure({
    quest = 34174,
    label = L['fantastic_fish'],
    rewards = {wod_treasures, Currency({id = 824})}
}) -- Fantastic Fish

map.nodes[24070248] = Treasure({
    quest = 35280,
    label = L['stolen_treasure'],
    note = L['in_cave'],
    rewards = {wod_treasures, Currency({id = 824})},
    pois = {POI({27740447})}
}) -- Stolen Treasure

map.nodes[37182313] = Treasure({
    quest = 33613,
    label = L['bubbling_cauldron'],
    note = L['in_cave'],
    rewards = {
        wod_treasures, Transmog({item = 108945, slot = L['offhand']}) -- Void-Boiled Squirrel
    },
    pois = {POI({37792233})}
}) -- Bubbling Cauldron

map.nodes[37182602] = Treasure({
    quest = 35677,
    label = L['bubbling_cauldron'],
    note = L['in_cave'],
    rewards = {
        wod_treasures, Transmog({item = 108945, slot = L['offhand']}) -- Void-Boiled Squirrel
    },
    pois = {POI({37792233})}
}) -- Bubbling Cauldron

map.nodes[41422798] = Treasure({
    quest = 33869,
    label = '{item:108902}',
    rewards = {
        wod_treasures, Item({item = 108902, slot = L['trinket']}) -- Armored Elekk Tusk
    }
}) -- Armored Elekk Tusk

map.nodes[45812457] = Treasure({
    quest = 33570,
    label = L['shadowmoon_exile_treasure'],
    note = L['in_cave'],
    rewards = {wod_treasures},
    pois = {POI({46292724})}
}) -- Shadowmoon Exile Treasure

map.nodes[52882487] = Treasure({
    quest = 37254,
    label = L['mushroom_covered_chest'],
    note = L['in_water'],
    rewards = {wod_treasures, Currency({id = 824})}
}) -- Mushroom-Covered Chest

map.nodes[55821998] = Treasure({
    quest = 35600,
    label = L['strange_spore_treasure'],
    rewards = {
        wod_treasures, Pet({item = 118104, id = 1538}) -- Umbrafen Spore
    }
}) -- Strange Spore

map.nodes[58882193] = Treasure({
    quest = 35603,
    label = L['mikkals_chest'],
    rewards = {
        wod_treasures, Item({item = 113215}) -- Empty Paint Jar
    }
}) -- Mikkal's Chest

map.nodes[66973347] = Treasure({
    quest = 36507,
    label = L['orc_skeleton'],
    rewards = {
        wod_treasures, Item({item = 116875, slot = L['finger']}) -- Rusty Iron Band
    }
}) -- Orc Skeleton

map.nodes[84564477] = Treasure({
    quest = 33885,
    label = L['cargo_of_the_raven_queen'],
    rewards = {wod_treasures, Currency({id = 824})}
}) -- Cargo of the Raven Queen

map.nodes[57924531] = Treasure({
    quest = 33568,
    label = '{npc:80470}',
    rewards = {
        wod_treasures, Item({item = 113271}) -- Giant Kaliri Egg
    }
}) -- Kaliri Egg

map.nodes[54924501] = Treasure({
    quest = 35581,
    label = L['alchemists_satchel'],
    rewards = {wod_treasures}
}) -- Alchemist's Satchel

map.nodes[52834838] = Treasure({
    quest = 35584,
    label = L['ancestral_greataxe'],
    rewards = {
        wod_treasures, Transmog({item = 113560, slot = L['2h_axe']}) -- Ancestral Shadowmoon Greataxe
    }
}) -- Ancestral Greataxe

map.nodes[48724753] = Treasure({
    quest = 35798,
    label = '{item:140383}',
    note = L['in_cave'],
    rewards = {wod_treasures},
    pois = {POI({46394509, 49924624})}
}) -- Glowing Cave Mushroom

map.nodes[47154603] = Treasure({
    quest = 33564,
    label = L['hanging_satchel'],
    rewards = {
        wod_treasures, Transmog({item = 108900, slot = L['leather']}), -- Cragsman Gloves
        Item({item = 107640}) -- Potion of Slow Fall
    }
}) -- Hanging Satchel

map.nodes[51753549] = Treasure({
    quest = 33037,
    label = L['false_bottomed_jar'],
    rewards = {wod_treasures}
}) -- False-Bottomed Jar

map.nodes[49397358] = Treasure({
    quest = 33867,
    label = L['astrologers_box'],
    rewards = {
        wod_treasures, Toy({item = 109739}) -- Star Chart
    }
}) -- Astrologer's Box

map.nodes[36674446] = Treasure({
    quest = 33573,
    label = '{item:113378}',
    rewards = {
        wod_treasures, Transmog({item = 113378, slot = L['dagger']}) -- Rovo's Dagger
    },
    pois = {POI({36554341})}
}) -- Rovo's Dagger

map.nodes[37764426] = Treasure({
    quest = 33584,
    label = '{item:113531}',
    rewards = {
        wod_treasures, Item({item = 113531}) -- Ashes of A'kumbo
    },
    pois = {POI({37474325})}
}) -- Ashes of A'kumbo

map.nodes[38494305] = Treasure({
    quest = 33614,
    label = L['grekas_urn'],
    rewards = {
        wod_treasures, Item({item = 113408, slot = L['trinket']}) -- Greka's Dentures
    },
    pois = {POI({38094234})}
}) -- Greka's Urn

map.nodes[36794141] = Treasure({
    quest = 33046,
    label = L['beloveds_offering'],
    rewards = {
        wod_treasures, Transmog({item = 113547, slot = L['offhand']}) -- Bouquet of Dried Flowers
    },
    pois = {POI({37134160})}
}) -- Beloved's Offering

map.nodes[35874087] = Treasure({
    quest = 33540,
    label = L['uzkos_knickknacks'],
    rewards = {
        wod_treasures, Transmog({item = 113546, slot = L['leather']}) -- Uzko's Dusty Boots
    },
    pois = {POI({36094173})}
}) -- Uzko's Knickknacks

map.nodes[34184347] = Treasure({
    quest = 33866,
    label = L['veemas_herb_bag'],
    rewards = {wod_treasures},
    pois = {POI({33534271})}
}) -- Veema's Herb Bag

map.nodes[33493966] = Treasure({
    quest = 33569,
    label = '{item:113545}',
    rewards = {
        wod_treasures, Item({item = 113545}) -- Carved Drinking Horn
    },
    pois = {POI({33524010})}
}) -- Carved Drinking Horn

map.nodes[31263912] = Treasure({
    quest = 33886,
    label = L['ronokks-belongings'],
    rewards = {
        wod_treasures, Transmog({item = 109081, slot = L['cloak']}) -- Ronokk's Greatcloak
    },
    pois = {POI({31814010})}
}) -- Ronokk's Belongings

map.nodes[20383065] = Treasure({
    quest = 33575,
    label = L['demonic_cache'],
    rewards = {
        wod_treasures, Item({item = 108904, slot = L['neck']}) -- Fingers of the Void
    }
}) -- Demonic Cache

map.nodes[37515925] = Treasure({
    quest = 33567,
    label = L['iron_horde_tribute'],
    rewards = {
        wod_treasures, Item({item = 108903, slot = L['trinket']}) -- Tiny Iron Star
    },
    pois = {POI({37125961})}
}) -- Iron Horde Tribute

local peaceful_offering = Class('peaceful_offering', Treasure, {
    label = L['peaceful_offering'],
    rewards = {
        wod_treasures, Item({item = 107650, note = '~4g'}) -- Shadowmoon Offering
    }
}) -- Peaceful Offering
map.nodes[44495914] = peaceful_offering({quest = 33612})
map.nodes[45216049] = peaceful_offering({quest = 33610})
map.nodes[43756062] = peaceful_offering({quest = 33611})
map.nodes[44486357] = peaceful_offering({quest = 33384})

map.nodes[42096123] = Treasure({
    quest = 33041,
    label = L['iron_horde_cargo_shipment'],
    rewards = {wod_treasures, Currency({id = 824})}
}) -- Iron Horde Cargo Shipment

map.nodes[39198391] = Treasure({
    quest = 33566,
    label = L['waterlogged_chest'],
    rewards = {
        wod_treasures, Transmog({item = 113372, slot = L['fist']}) -- Darktide Pincer
    }
}) -- Waterlogged Chest

map.nodes[51147912] = Treasure({
    quest = 33574,
    label = L['vindicators_cache'],
    rewards = {
        wod_treasures, Toy({item = 113375}) -- Vindicator's Armor Polish Kit
    }
}) -- Vindicator's Cache

map.nodes[61696793] = Treasure({
    quest = 34743,
    label = '{item:111636}',
    rewards = {
        wod_treasures, Item({item = 111636, note = '~23g'}) -- The Crystal Blade of Torvath
    }
}) -- The Crystal Blade of Torvath

map.nodes[55297486] = Treasure({
    quest = 35580,
    label = L['swamplighter_hive'],
    rewards = {
        Toy({item = 117550}) -- Angry Beehive
    }
}) -- Swamplighter Hive

map.nodes[67048417] = Treasure({
    quest = 33565,
    label = L['scaly_rylak_egg'],
    note = L['in_cave'],
    rewards = {
        wod_treasures, Item({item = 44722}) -- Aged Yolk
    },
    pois = {POI({66848664})}
}) -- Scaly Rylak Egg

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[50003120] = PetBattle({
    id = 87124,
    rewards = {Achievement({id = 9724, criteria = 27012})}
}) -- Ashlei

-------------------------------------------------------------------------------
------------------------- YOU HAVE BEEN RYLAKINATED! --------------------------
-------------------------------------------------------------------------------

local DarkwingAdolescent = Collectible({
    id = 85357,
    icon = 'peg_rd',
    scale = 1.5,
    group = ns.groups.YOU_HAVE_BEEN_RYLAKINATED,
    rewards = {Achievement({id = 9481})}, -- You Have Been Rylakinated!
    requires = ns.requirement.Item(116978), -- Rylakinator 3000 Power Cell
    note = L['you_have_been_rylakinated_note']
})

map.nodes[64638909] = DarkwingAdolescent
map.nodes[63298531] = DarkwingAdolescent
map.nodes[61958302] = DarkwingAdolescent
map.nodes[61088329] = DarkwingAdolescent
map.nodes[60488325] = DarkwingAdolescent
map.nodes[60088444] = DarkwingAdolescent
map.nodes[59248497] = DarkwingAdolescent
map.nodes[58288479] = DarkwingAdolescent
map.nodes[57968605] = DarkwingAdolescent
map.nodes[57368697] = DarkwingAdolescent
map.nodes[57188886] = DarkwingAdolescent
map.nodes[56558895] = DarkwingAdolescent
map.nodes[56088993] = DarkwingAdolescent

-------------------------------------------------------------------------------
---------------------------------- VOIDTALON ----------------------------------
-------------------------------------------------------------------------------

local Voidtalon = Collectible({
    icon = 1094600,
    label = L['edge_of_reality'],
    note = L['edge_of_reality_note'],
    rewards = {
        Mount({id = 682, item = 121815}) -- Voidtalon of the Dark Star
    }
})

map.nodes[41907567] = Voidtalon
map.nodes[43627138] = Voidtalon
map.nodes[48787017] = Voidtalon
map.nodes[50337153] = Voidtalon
map.nodes[51687490] = Voidtalon
map.nodes[46647018] = Voidtalon
