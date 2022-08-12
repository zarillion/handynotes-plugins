-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

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

local POI = ns.poi.POI

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({id = 539, settings = true})

local bloodThornCave = Map({id = 540})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[21602100] = Rare({
    id = 75482,
    quest = 33640,
    rewards = {Item({item = 108906})}
}) -- Veloss

map.nodes[27604360] = Rare({
    id = 86689,
    quest = 36880,
    rewards = {Item({item = 118734})}
}) -- Sneevel

map.nodes[29600620] = Rare({
    id = 81406,
    quest = 35281,
    rewards = {Item({item = 111666})}
}) -- Bahameye

map.nodes[29605080] = Rare({
    id = 85451,
    quest = 37357,
    rewards = {Item({item = 119369})}
}) -- Malgosh Shadowkeeper

map.nodes[31905720] = Rare({
    id = 85078,
    quest = 37359,
    rewards = {Item({item = 119392})}
}) -- Voidreaver Urnae

map.nodes[32203500] = Rare({
    id = 72362,
    quest = 33039,
    rewards = {Item({item = 109061})}
}) -- Ku'targ the Voidseer

map.nodes[32604140] = Rare({
    id = 83385,
    quest = 35847,
    rewards = {Item({item = 109074})}
}) -- Voidseer Kalurg

map.nodes[37203640] = Rare({
    id = 77140,
    quest = 33061,
    rewards = {Item({item = 109060})}
}) -- Amaukwa

map.nodes[37601460] = Rare({
    id = 72537,
    quest = 33055,
    rewards = {Item({item = 108907})}
}) -- Leaf-Reader Kurri

map.nodes[38607020] = Rare({
    id = 82362,
    quest = 35523,
    rewards = {Item({item = 113559})}
}) -- Morva Soultwister

map.nodes[40804440] = Rare({
    id = 74206,
    quest = 33043,
    rewards = {Item({item = 109078})}
}) -- Killmaw

map.nodes[41008300] = Rare({
    id = 82268,
    quest = 35448,
    rewards = {Item({item = 113548})}
}) -- Darkmaster Go'vid

map.nodes[42804100] = Rare({
    id = 75434,
    quest = 33038,
    rewards = {Item({item = 113553})}
}) -- Windfang Matriarch

map.nodes[43807740] = Rare({
    id = 81639,
    quest = 33383,
    rewards = {Item({item = 117551})}
}) -- Brambleking Fili

map.nodes[44005760] = Rare({
    id = 75071,
    quest = 33642,
    rewards = {Item({item = 119449})}
}) -- Mother Om'ra, hunter quest

map.nodes[44802080] = Rare({
    id = 77310,
    quest = 35906,
    rewards = {Item({item = 113561})}
}) -- Mad King Sporeon

map.nodes[48007760] = Rare({
    id = 85121,
    quest = 37355,
    rewards = {Item({item = 119360})}
}) -- Lady Temptessa

map.nodes[48208100] = Rare({
    id = 85029,
    quest = 37354,
    rewards = {Item({item = 119396})}
}) -- Shadowspeaker Niir

map.nodes[48604360] = Rare({
    id = 77085,
    quest = 33064,
    rewards = {Item({item = 109075})}
}) -- Dark Emanation

map.nodes[49604200] = Rare({
    id = 82411,
    quest = 35555,
    rewards = {Item({item = 113541})}
}) -- Darktalon

map.nodes[50207240] = Rare({
    id = 84925,
    quest = 37352,
    rewards = {Item({item = 119382})}
}) -- Quartermaster Hershak

map.nodes[50807880] = Rare({
    id = 86213,
    quest = 37356,
    rewards = {Item({item = 86213})}
}) -- Aqualir

map.nodes[51807920] = Rare({
    id = 85001,
    quest = 37353,
    rewards = {Item({item = 85001})}
}) -- Master Sergeant Milgra

map.nodes[53005060] = Rare({
    id = 72606,
    quest = 34068,
    rewards = {Item({item = 109077})}
}) -- Rockhoof

map.nodes[54607060] = Rare({
    id = 75492,
    quest = 33643,
    rewards = {Item({item = 108957})}
}) -- Venomshade

map.nodes[57404840] = Rare({
    id = 83553,
    quest = 35909,
    rewards = {Item({item = 113571})}
}) -- Insha'tar

map.nodes[61408880] = Rare({
    id = 85837,
    quest = 37411,
    rewards = {Item({item = 119411})}
}) -- Slivermaw

map.nodes[61606180] = Rare({
    id = 82207,
    quest = 35725,
    rewards = {Item({item = 113557})}
}) -- Faebright

map.nodes[67806380] = Rare({
    id = 82676,
    quest = 35688,
    rewards = {Item({item = 113556})}
}) -- Enavra

map.nodes[68208480] = Rare({
    id = 85568,
    quest = 37410,
    rewards = {Item({item = 119400})}
}) -- Avalanche

map.nodes[29603380] = Rare({
    id = 76380,
    quest = 33664,
    note = L['gorum_note'],
    rewards = {Item({item = 113082})},
    pois = {POI({25003300})}
}) -- Gorum

map.nodes[58408680] = Rare({
    id = 85555,
    quest = 37409,
    note = L['nagidna_note'],
    rewards = {Item({item = 119364})},
    pois = {POI({59008900})}
}) -- Nagidna

map.nodes[37404880] = Rare({
    id = 79524,
    quest = 35558,
    rewards = {Toy({item = 113631})}
}) -- Hypnocroak

map.nodes[48602260] = Rare({
    id = 82374,
    quest = 35553,
    rewards = {Toy({item = 113542})}
}) -- Rai'vosh

map.nodes[48806640] = Rare({
    id = 75435,
    quest = 33389,
    rewards = {Toy({item = 113570})}
}) -- Yggdrel

map.nodes[52801680] = Rare({
    id = 82326,
    quest = 35731,
    rewards = {Toy({item = 113540})}
}) -- Ba'ruun

map.nodes[61005520] = Rare({
    id = 82415,
    quest = 35732,
    rewards = {Toy({item = 113543})}
}) -- Shinri

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

map.nodes[20303060] = Treasure({
    label = L['demonic_cache_treasure'],
    quest = 33575,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 108904})
    }
}) -- Demonic Cache

map.nodes[22803390] = Treasure({
    label = L['rotting_basket_treasure'],
    quest = 33572,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 113373})
    }
}) -- Rotting Basket

map.nodes[26500570] = Treasure({
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
    quest = 35280,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Stolen Treasure

map.nodes[28303930] = Treasure({
    label = L['shadowmoon_treasure_treasure'],
    quest = 33883,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Shadowmoon Treasure

map.nodes[29803750] = Treasure({
    label = L['dusty_lockbox_treasure'],
    quest = 36879
}) -- Dusty Lockbox

map.nodes[30004530] = Treasure({
    label = L['shadowmoon_sacrificial_dagger_treasure'],
    quest = 35919,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 113563})
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

map.nodes[31303910] = Treasure({
    label = L['ronokks_belongings_treasure'],
    quest = 33886,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 109081})
    }
}) -- Ronokk's Belongings

map.nodes[33503970] = Treasure({
    label = L['reusable_mana_potion_treasure'],
    quest = 33569,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 113545})
    }
}) -- Reusable mana potion

map.nodes[34204350] = Treasure({
    label = L['veemas_herb_bag_treasure'],
    quest = 33866,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 109124})
    }
}) -- Veema's Herb Bag

map.nodes[34404620] = Treasure({
    label = L['giant_moonwillow_cone_treasure'],
    quest = 33891,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 108901})
    }
}) -- Giant Moonwillow Cone

map.nodes[35904090] = Treasure({
    label = L['uzkos_knickknacks_treasure'],
    quest = 33540,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 113546})
    }
}) -- Uzko's Knickknacks

map.nodes[36704450] = Treasure({
    label = L['rovos_dagger_treasure'],
    quest = 33573,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 113378})
    }
}) -- Rovo's Dagger

map.nodes[36804140] = Treasure({
    label = L['beloveds_offering_treasure'],
    quest = 33046,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 113547})
    }
}) -- Beloved's Offering

map.nodes[37202310] = Treasure({
    label = L['bubbling_cauldron_treasure'],
    quest = 33613,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 108945})
    }
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

map.nodes[37505930] = Treasure({
    label = L['iron_horde_tribute_treasure'],
    quest = 33567,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 108903})
    }
}) -- Iron Horde Tribute

map.nodes[38504300] = Treasure({
    label = L['grekas_urn_treasure'],
    quest = 33614,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 113408})
    }
}) -- Greka's Urn

map.nodes[39208380] = Treasure({
    label = L['waterlogged_chest_treasure'],
    quest = 33566,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 113372})
    }
}) -- Waterlogged Chest

map.nodes[41502790] = Treasure({
    label = L['armored_elekk_tusk_treasure'],
    quest = 33869,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 108902})
    }
}) -- Armored Elekk Tusk

map.nodes[42106130] = Treasure({
    label = L['iron_horde_cargo_shipment_treasure'],
    quest = 33041,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Iron Horde Cargo Shipment

map.nodes[43806060] = Treasure({
    label = L['peaceful_offering_treasure'],
    quest = 33611,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 107650})
    }
}) -- Peaceful Offering

map.nodes[44505920] = Treasure({
    label = L['peaceful_offering_treasure'],
    quest = 33612,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 107650})
    }
}) -- Peaceful Offering

map.nodes[44506350] = Treasure({
    label = L['peaceful_offering_treasure'],
    quest = 33384,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 107650})
    }
}) -- Peaceful Offering

map.nodes[45206050] = Treasure({
    label = L['peaceful_offering_treasure'],
    quest = 33610,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 107650})
    }
}) -- Peaceful Offering

map.nodes[45802460] = Treasure({
    label = L['shadowmoon_exile_treasure_treasure'],
    quest = 33570,
    note = L['shadowmoon_exile_treasure_note'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Shadowmoon Exile Treasure

map.nodes[47104610] = Treasure({
    label = L['hanging_satchel_treasure'],
    quest = 33564,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 108900})
    }
}) -- Hanging Satchel

map.nodes[48704750] = Treasure({
    label = L['glowing_cave_mushroom_treasure'],
    quest = 35798,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 109130})
    }
}) -- Glowing Cave Mushroom

map.nodes[49303750] = Treasure({
    label = L['astrologers_box_treasure'],
    quest = 33867,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Toy({item = 109739})
    }
}) -- Astrologer's Box

map.nodes[51107910] = Treasure({
    label = L['vindicators_cache_treasure'],
    quest = 33574,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Toy({item = 113375})
    }
}) -- Vindicator's Cache

map.nodes[51803550] = Treasure({
    label = L['false_bottomed_jar_treasure'],
    quest = 33037
}) -- False-Bottomed Jar

map.nodes[52804840] = Treasure({
    label = L['ancestral_greataxe_treasure'],
    quest = 35584,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 113560})
    }
}) -- Ancestral Greataxe

map.nodes[52902490] = Treasure({
    label = L['mushroom_covered_chest_treasure'],
    quest = 37254,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Mushroom-Covered Chest

map.nodes[55004500] = Treasure({
    label = L['alchemists_satchel_treasure'],
    quest = 35581,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 109124})
    }
}) -- Alchemist's Satchel

map.nodes[55307480] = Treasure({
    label = L['swamplighter_hive_treasure'],
    quest = 35580,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Toy({item = 117550})
    }
}) -- Swamplighter Hive

map.nodes[55801990] = Treasure({
    label = L['strange_spore_treasure'],
    quest = 35600,
    rewards = {Toy({item = 118104, id = 1538})}
}) -- Strange Spore

map.nodes[57904530] = Treasure({
    label = L['kaliri_egg_treasure'],
    quest = 33568,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Kaliri Egg

map.nodes[58902200] = Treasure({
    label = L['mikkals_chest_treasure'],
    quest = 35603,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 113215})
    }
}) -- Mikkal's Chest

map.nodes[66903350] = Treasure({
    label = L['orc_skeleton_treasure'],
    quest = 36507,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 116875})
    }
}) -- Orc Skeleton

map.nodes[67108430] = Treasure({
    label = L['scaly_rylak_egg_treasure'],
    quest = 33565,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 44722})
    }
}) -- Scaly Rylak Egg

map.nodes[84504470] = Treasure({
    label = L['cargo_of_the_raven_queen_treasure'],
    quest = 33885,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Cargo of the Raven Queen

bloodThornCave.nodes[55544974] = Treasure({
    label = L['rotting_basket_treasure'],
    quest = 33572,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 113373})
    }
}) -- Rotting Basket

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
