-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map
local Class = ns.Class

local Collectible = ns.node.Collectible
local PetBattle = ns.node.PetBattle
local Rare = ns.node.Rare
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Currency = ns.reward.Currency
local Follower = ns.reward.Follower
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Toy = ns.reward.Toy
local Pet = ns.reward.Pet
local Transmog = ns.reward.Transmog

local POI = ns.poi.POI
local Path = ns.poi.Path

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({id = 539, settings = true})

local bloodThornCave = Map({id = 540})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[21662106] = Rare({
    id = 75482,
    quest = 33640,
    rewards = {Item({item = 108906, note = L['ring']}), Currency({id = 824})}
}) -- Veloss

map.nodes[27494370] = Rare({
    id = 86689,
    quest = 36880,
    rewards = {
        Transmog({item = 118734, slot = L['cloth']}), Currency({id = 824})
    }
}) -- Sneevel

map.nodes[28730568] = Rare({
    id = 81406,
    quest = 35281,
    rewards = {Item({item = 111666})},
    pois = {Path({28730568, 29550607, 30110747, 30040843})}
}) -- Bahameye

map.nodes[29605080] = Rare({
    id = 85451,
    quest = 37357,
    rewards = {Transmog({item = 119369, slot = L['mail']})}
}) -- Malgosh Shadowkeeper

map.nodes[31905720] = Rare({
    id = 85078,
    quest = 37359,
    rewards = {Transmog({item = 119392, slot = L['1h_axe']})}
}) -- Voidreaver Urnae

map.nodes[32453507] = Rare({
    id = 72362,
    quest = 33039,
    rewards = {
        Transmog({item = 109061, slot = L['mail']}), Currency({id = 824})
    }
}) -- Ku'targ the Voidseer

map.nodes[32664137] = Rare({
    id = 83385,
    note = L['voidseer_kalurg_note'],
    quest = 35847,
    rewards = {
        Transmog({item = 109074, slot = L['cloth']}), Currency({id = 824})
    }
}) -- Voidseer Kalurg

map.nodes[35992914] = Rare({
    id = 77140,
    quest = 33061,
    rewards = {
        Transmog({item = 109060, slot = L['mail']}), Currency({id = 824})
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

map.nodes[37681439] = Rare({
    id = 72537,
    quest = 33055,
    rewards = {Item({item = 108907}), Currency({id = 824})}
}) -- Leaf-Reader Kurri

map.nodes[38597044] = Rare({
    id = 82362,
    quest = 35523,
    rewards = {
        Transmog({item = 113559, slot = L['1h_mace']}), Currency({id = 824})
    }
}) -- Morva Soultwister

map.nodes[40794460] = Rare({
    id = 74206,
    quest = 33043,
    rewards = {
        Transmog({item = 109078, slot = L['dagger']}), Currency({id = 824})
    }
}) -- Killmaw

map.nodes[38938147] = Rare({
    id = 82268,
    quest = 35448,
    rewards = {Transmog({item = 113548, slot = L['staff']})},
    pois = {
        Path({
            38938147, 38868259, 38598371, 39238315, 39838315, 40618312,
            41418339, 42058379, 42238317, 41688308, 41648230, 41268198,
            40518174, 39728101, 39468065, 38988101, 38938147
        })
    }
}) -- Darkmaster Go'vid

map.nodes[42804100] = Rare({
    id = 75434,
    quest = 33038,
    rewards = {Transmog({item = 113553, slot = L['1h_sword']})}
}) -- Windfang Matriarch

map.nodes[43807740] = Rare({
    id = 81639,
    quest = 33383,
    rewards = {Transmog({item = 117551, slot = L['staff']})}
}) -- Brambleking Fili

map.nodes[43955767] = Rare({
    id = 75071,
    quest = 33642,
    rewards = {
        Item({item = 119449}), Item({item = 113527, note = L['trinket']})
    }
}) -- Mother Om'ra, hunter quest

map.nodes[45012085] = Rare({
    id = 77310,
    note = L['in_small_cave'],
    quest = 35906,
    rewards = {
        Transmog({item = 113561, slot = L['staff']}), Currency({id = 824})
    }
}) -- Mad King Sporeon

map.nodes[48007760] = Rare({
    id = 85121,
    quest = 37355,
    rewards = {Transmog({item = 119360, slot = L['leather']})}
}) -- Lady Temptessa

map.nodes[48228094] = Rare({
    id = 85029,
    quest = 37354,
    rewards = {Transmog({item = 119396, slot = L['dagger']})}
}) -- Shadowspeaker Niir

map.nodes[48494334] = Rare({
    id = 77085,
    note = L['in_cave'],
    quest = 33064,
    rewards = {
        Transmog({item = 109075, slot = L['fist']}), Currency({id = 824})
    },
    pois = {POI({46394509, 49924624})}
}) -- Dark Emanation

map.nodes[49634183] = Rare({
    id = 82411,
    quest = 35555,
    rewards = {
        Transmog({item = 113541, slot = L['cloak']}), Currency({id = 824})
    }
}) -- Darktalon

map.nodes[50207240] = Rare({
    id = 84925,
    quest = 37352,
    rewards = {Transmog({item = 119382, slot = L['plate']})}
}) -- Quartermaster Hershak

map.nodes[50987900] = Rare({
    id = 86213,
    quest = 37356,
    rewards = {Item({item = 119387, note = L['ring']})}
}) -- Aqualir

map.nodes[51997957] = Rare({
    id = 85001,
    quest = 37353,
    rewards = {Transmog({item = 119368, slot = L['mail']})}
}) -- Master Sergeant Milgra

map.nodes[52705084] = Rare({
    id = 72606,
    quest = 34068,
    rewards = {
        Transmog({item = 109077, slot = L['shield']}), Currency({id = 824})
    }
}) -- Rockhoof

map.nodes[54837029] = Rare({
    id = 75492,
    quest = 33643,
    rewards = {
        Transmog({item = 108957, slot = L['leather']}), Currency({id = 824})
    }
}) -- Venomshade

map.nodes[57394864] = Rare({
    id = 83553,
    quest = 35909,
    rewards = {
        Transmog({item = 113571, slot = L['cloth']}), Currency({id = 824})
    }
}) -- Insha'tar

map.nodes[61748905] = Rare({
    id = 85837,
    note = L['in_cave'],
    quest = 37411,
    rewards = {Transmog({item = 119411, slot = L['2h_sword']})},
    pois = {POI({60948721})}
}) -- Slivermaw

map.nodes[61666162] = Rare({
    id = 82207,
    quest = 35725,
    rewards = {
        Transmog({item = 113557, slot = L['leather']}), Currency({id = 123})
    }
}) -- Faebright

map.nodes[67906392] = Rare({
    id = 82676,
    quest = 35688,
    rewards = {Item({item = 113556, note = L['neck']}), Currency({id = 824})}
}) -- Enavra

map.nodes[67318465] = Rare({
    id = 85568,
    note = L['in_cave'],
    quest = 37410,
    rewards = {Transmog({item = 119400, slot = L['1h_mace']})},
    pois = {POI({66848664})}
}) -- Avalanche

bloodThornCave.nodes[31153439] = Rare({
    id = 76380,
    rewards = {Item({item = 113082, note = L['ring']})}
}) -- Gorum
map.nodes[21643292] = Rare({
    id = 76380,
    quest = 33664,
    note = L['in_cave'],
    rewards = {Item({item = 113082, note = L['ring']})},
    pois = {POI({24263314})}
}) -- Gorum

map.nodes[60738988] = Rare({
    id = 85555,
    quest = 37409,
    note = L['in_cave'],
    rewards = {Transmog({item = 119364, slot = L['leather']})},
    pois = {POI({59148978})}
}) -- Nagidna

map.nodes[37404894] = Rare({
    id = 79524,
    note = L['in_waterfall_cave'],
    quest = 35558,
    rewards = {Toy({item = 113631}), Currency({id = 824})},
    pois = {POI({38564921})}
}) -- Hypnocroak

map.nodes[48822268] = Rare({
    id = 82374,
    quest = 35553,
    rewards = {Toy({item = 113542}), Currency({id = 824})}
}) -- Rai'vosh

map.nodes[48306553] = Rare({
    id = 75435,
    quest = 33389,
    rewards = {Toy({item = 113570}), Currency({id = 824})}
}) -- Yggdrel

map.nodes[52891674] = Rare({
    id = 82326,
    quest = 35731,
    rewards = {Toy({item = 113540}), Currency({id = 824})}
}) -- Ba'ruun

map.nodes[60625807] = Rare({
    id = 82415,
    quest = 35732,
    rewards = {Toy({item = 113543}), Currency({id = 824})},
    pois = {
        Path({
            59635320, 59915515, 59155713, 59465822, 60625807, 61605771,
            62425845, 63375812, 63795732, 63705617, 63705491, 63395372,
            63305227, 63175084, 62764998, 61544987, 60725093, 59945255, 59635320
        })
    }
}) -- Shinri

map.nodes[46027164] = Rare({
    id = 84911,
    rewards = {
        Achievement({id = 9437}), Pet({item = 119431, id = 1601}),
        Item({item = 119377, note = L['neck']})
    }
}) -- Demidos

local Pathrunner = Rare({
    id = 50883,
    note = L['multiple_spawn_note'],
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

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[20383065] = Treasure({
    label = L['demonic_cache_treasure'],
    quest = 33575,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 108904, note = L['neck']})
    }
}) -- Demonic Cache

map.nodes[22903383] = Treasure({
    label = L['rotting_basket_treasure'],
    note = L['in_cave'],
    quest = 33572,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 113373})
    },
    pois = {POI({24263314})}
}) -- Rotting Basket

map.nodes[26530568] = Treasure({
    label = L['fantastic_fish_treasure'],
    quest = 34174,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Fantastic Fish

map.nodes[27100260] = Treasure({
    label = L['stolen_treasure_treasure'],
    note = L['in_cave'],
    quest = 35280,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    },
    pois = {POI({27740447})}
}) -- Stolen Treasure

map.nodes[28233924] = Treasure({
    label = L['shadowmoon_treasure_treasure'],
    quest = 33883,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Shadowmoon Treasure

map.nodes[29853749] = Treasure({
    label = L['dusty_lockbox_treasure'],
    quest = 36879,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    }
}) -- Dusty Lockbox

map.nodes[29994536] = Treasure({
    label = L['shadowmoon_sacrificial_dagger_treasure'],
    quest = 35919,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Transmog({item = 113563, slot = L['dagger']})
    }
}) -- Shadowmoon Sacrificial Dagger

map.nodes[30301990] = Treasure({
    label = L['lunarfall_egg_treasure'],
    quest = 35530,
    note = L['lunarfall_egg_note'],
    faction = 'Alliance',
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Lunarfall Egg

map.nodes[31263912] = Treasure({
    label = L['ronokks_belongings_treasure'],
    quest = 33886,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Transmog({item = 109081, slot = L['cloak']})
    }
}) -- Ronokk's Belongings

map.nodes[33493966] = Treasure({
    label = L['carved_drinking_horn_treasure'],
    quest = 33569,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 113545})
    }
}) -- Carved Drinking Horn

map.nodes[34184347] = Treasure({
    label = L['veemas_herb_bag_treasure'],
    quest = 33866,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 109124})
    }
}) -- Veema's Herb Bag

map.nodes[34414617] = Treasure({
    label = L['giant_moonwillow_cone_treasure'],
    quest = 33891,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Transmog({item = 108901, slot = L['wand']})
    }
}) -- Giant Moonwillow Cone

map.nodes[35874087] = Treasure({
    label = L['uzkos_knickknacks_treasure'],
    quest = 33540,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Transmog({item = 113546, slot = L['leather']})
    }
}) -- Uzko's Knickknacks

map.nodes[36674446] = Treasure({
    label = L['rovos_dagger_treasure'],
    quest = 33573,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Transmog({item = 113378, slot = L['dagger']})
    }
}) -- Rovo's Dagger

map.nodes[36794141] = Treasure({
    label = L['beloveds_offering_treasure'],
    quest = 33046,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Transmog({item = 113547, slot = L['offhand']})
    }
}) -- Beloved's Offering

map.nodes[37182313] = Treasure({
    label = L['bubbling_cauldron_treasure'],
    note = L['in_cave'],
    quest = 33613,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Transmog({item = 108945, slot = L['offhand']})
    },
    pois = {POI({37792233})}
}) -- Bubbling Cauldron

map.nodes[37202610] = Treasure({
    label = L['sunken_fishing_boat_treasure'],
    quest = 35677,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 110506})
    }
}) -- Sunken Fishing Boat

map.nodes[37515925] = Treasure({
    label = L['iron_horde_tribute_treasure'],
    quest = 33567,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 108903, note = L['trinket']})
    },
    pois = {POI({37125961})}
}) -- Iron Horde Tribute

map.nodes[38494305] = Treasure({
    label = L['grekas_urn_treasure'],
    quest = 33614,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 113408, note = L['trinket']})
    }
}) -- Greka's Urn

map.nodes[39198391] = Treasure({
    label = L['waterlogged_chest_treasure'],
    quest = 33566,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Transmog({item = 113372, slot = L['fist']})
    }
}) -- Waterlogged Chest

map.nodes[41422798] = Treasure({
    label = L['armored_elekk_tusk_treasure'],
    quest = 33869,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 108902, note = L['trinket']})
    }
}) -- Armored Elekk Tusk

map.nodes[42096123] = Treasure({
    label = L['iron_horde_cargo_shipment_treasure'],
    quest = 33041,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Iron Horde Cargo Shipment

local peaceful_offering_treasure = Class('peaceful_offering_treasure', Treasure,
    {
        label = L['peaceful_offering_treasure'],
        rewards = {wod_treasures, Item({item = 107650})}
    }) -- Peaceful Offering
map.nodes[44495914] = peaceful_offering_treasure({quest = 33612})
map.nodes[45216049] = peaceful_offering_treasure({quest = 33610})
map.nodes[43756062] = peaceful_offering_treasure({quest = 33611})
map.nodes[44486357] = peaceful_offering_treasure({quest = 33384})

map.nodes[45812457] = Treasure({
    label = L['shadowmoon_exile_treasure_treasure'],
    quest = 33570,
    note = L['shadowmoon_exile_treasure_note'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    },
    pois = {POI({46292724})}
}) -- Shadowmoon Exile Treasure

map.nodes[47154603] = Treasure({
    label = L['hanging_satchel_treasure'],
    quest = 33564,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Transmog({item = 108900, slot = L['leather']}),
        Item({item = 107640})
    }
}) -- Hanging Satchel

map.nodes[48724753] = Treasure({
    label = L['glowing_cave_mushroom_treasure'],
    note = L['in_cave'],
    quest = 35798,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 109130})
    },
    pois = {POI({46394509, 49924624})}
}) -- Glowing Cave Mushroom

map.nodes[49397358] = Treasure({
    label = L['astrologers_box_treasure'],
    quest = 33867,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Toy({item = 109739})
    }
}) -- Astrologer's Box

map.nodes[51147912] = Treasure({
    label = L['vindicators_cache_treasure'],
    quest = 33574,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Toy({item = 113375})
    }
}) -- Vindicator's Cache

map.nodes[51753549] = Treasure({
    label = L['false_bottomed_jar_treasure'],
    quest = 33037,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    }
}) -- False-Bottomed Jar

map.nodes[52834838] = Treasure({
    label = L['ancestral_greataxe_treasure'],
    quest = 35584,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Transmog({item = 113560, slot = L['2h_axe']})
    }
}) -- Ancestral Greataxe

map.nodes[52882487] = Treasure({
    label = L['mushroom_covered_chest_treasure'],
    note = L['in_water'],
    quest = 37254,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Mushroom-Covered Chest

map.nodes[54924501] = Treasure({
    label = L['alchemists_satchel_treasure'],
    quest = 35581,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 109124})
    }
}) -- Alchemist's Satchel

map.nodes[55297486] = Treasure({
    label = L['swamplighter_hive_treasure'],
    quest = 35580,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Toy({item = 117550})
    }
}) -- Swamplighter Hive

map.nodes[55821998] = Treasure({
    label = L['strange_spore_treasure'],
    quest = 35600,
    rewards = {Pet({item = 118104, id = 1538})}
}) -- Strange Spore

map.nodes[57924531] = Treasure({
    label = L['kaliri_egg_treasure'],
    quest = 33568,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 113271}), Currency({id = 824})
    }
}) -- Kaliri Egg

map.nodes[58882193] = Treasure({
    label = L['mikkals_chest_treasure'],
    quest = 35603,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 113215})
    }
}) -- Mikkal's Chest

map.nodes[66973347] = Treasure({
    label = L['orc_skeleton_treasure'],
    quest = 36507,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 116875, note = L['ring']})
    }
}) -- Orc Skeleton

map.nodes[67048417] = Treasure({
    label = L['scaly_rylak_egg_treasure'],
    note = L['in_cave'],
    quest = 33565,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 44722})
    },
    pois = {POI({66848664})}
}) -- Scaly Rylak Egg

map.nodes[84564477] = Treasure({
    label = L['cargo_of_the_raven_queen_treasure'],
    quest = 33885,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Cargo of the Raven Queen

bloodThornCave.nodes[56444916] = Treasure({
    label = L['rotting_basket_treasure'],
    quest = 33572,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 113373})
    }
}) -- Rotting Basket

map.nodes[37764426] = Treasure({
    quest = 33584,
    label = '{item:113531}',
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 113531})
    },
    pois = {POI({37474325})}
}) -- Ashes of A'kumbo

map.nodes[61696793] = Treasure({
    quest = 34743,
    label = '{item:111636}',
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 111636})
    }
}) -- The Crystal Blade of Torvath

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

-------------------------------------------------------------------------------
---------------------------------- FOLLOWERS ----------------------------------
-------------------------------------------------------------------------------

map.nodes[42804040] = Collectible({
    id = 74741,
    icon = 135972,
    note = L['artificer_romuul_follower_note'],
    faction = 'Alliance',
    rewards = {Follower({id = 179, icon = 135972})}
}) -- Artificer Romuul

-------------------------------------------------------------------------------
---------------------------------- SQUIRRELS ----------------------------------
-------------------------------------------------------------------------------

map.nodes[43872998] = ns.node.Squirrel({
    id = 88417,
    rewards = {Achievement({id = 14728, criteria = 1})}
}) -- Royal Moth

map.nodes[66443013] = ns.node.Squirrel({
    id = 88976,
    rewards = {Achievement({id = 14728, criteria = 2})}
}) -- Moonshell Crab

map.nodes[44234859] = ns.node.Squirrel({
    id = 75475,
    rewards = {Achievement({id = 14728, criteria = 3})}
}) -- Moon Snake

map.nodes[48968232] = ns.node.Squirrel({
    id = 85005,
    rewards = {Achievement({id = 14728, criteria = 4})}
}) -- Mossbite Skitterer
