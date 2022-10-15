-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible
local PetBattle = ns.node.PetBattle
local Rare = ns.node.Rare
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Item = ns.reward.Item
local Toy = ns.reward.Toy
local Title = ns.reward.Title
local Currency = ns.reward.Currency
local Transmog = ns.reward.Transmog

local Quest = ns.requirement.Quest

local Path = ns.poi.Path
local POI = ns.poi.POI

local wod_treasures = Achievement({
    id = 9728,
    criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
})

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({id = 550, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[23783861] = Rare({
    id = 98200,
    quest = 40074,
    rewards = {
        Pet({item = 129218, id = 1765}) -- Glittering Arcane Crystal
    }
}) -- Guk

local Lukhok = Rare({
    id = 50981,
    note = L['multiple_spawn_note'],
    fgroup = 'lukhok',
    rewards = {
        Mount({item = 116661, id = 614}) -- Mottled Meadowstomper
    }
})

map.nodes[66604400] = Lukhok
map.nodes[76203180] = Lukhok
map.nodes[72805360] = Lukhok
map.nodes[79205600] = Lukhok
map.nodes[84606360] = Lukhok
map.nodes[86806560] = Lukhok

local Nakk = Rare({
    id = 50990,
    note = L['multiple_spawn_note'],
    fgroup = 'nakk',
    rewards = {
        Mount({item = 116659, id = 612}) -- Bloodhoof Bull
    }
}) -- Nakk the Thunderer

map.nodes[62801540] = Nakk
map.nodes[64601960] = Nakk
map.nodes[55003500] = Nakk
map.nodes[50003440] = Nakk

map.nodes[28162964] = Rare({
    id = 98199,
    quest = 40073,
    rewards = {
        Pet({item = 129217, id = 1766}) -- Warm Arcane Crystal
    }
}) -- Pugg

map.nodes[25973472] = Rare({
    id = 98198,
    quest = 40075,
    rewards = {
        Pet({item = 129216, id = 1764}) -- Vibrating Arcane Crystal
    }
}) -- Rukdug

map.nodes[48152204] = Rare({
    id = 86771,
    rewards = {
        Item({item = 118658}) -- Gagrog's Skull
    }
}) -- Gagrog the Brutal

map.nodes[45641508] = Rare({id = 84435, rewards = {Currency({id = 824})}}) -- Mr. Pinchy Sr.

map.nodes[64893911] = Rare({
    id = 83591,
    rewards = {
        Transmog({item = 116814, slot = L['cloak']}), -- Tura'aka's Clipped Wing
        Currency({id = 824})
    }
}) -- Tura'aka

map.nodes[41485043] = Rare({
    id = 83409,
    rewards = {
        Transmog({item = 116765, slot = L['cloth']}), -- Positive Pantaloons
        Currency({id = 824})
    },
    pois = {Path({39094983, 40174996, 41485043, 42614986, 43554883, 45294753})}
}) -- Ophiis

map.nodes[41544466] = Rare({
    id = 86835,
    rewards = {
        Item({item = 118661}) -- Xelganak's Stinger
    }
}) -- Xelganak

map.nodes[34055148] = Rare({
    id = 87666,
    rewards = {
        Item({item = 118659}) -- Mu'gra's Head
    }
}) -- Mu'gra

map.nodes[37233899] = Rare({
    id = 88951,
    rewards = {
        Item({item = 120172}) -- Gräuelklaues Klaue
    }
}) -- Vileclaw

map.nodes[52455577] = Rare({id = 82764, rewards = {Currency({id = 824})}}) -- Gar'lua

map.nodes[54686137] = Rare({
    id = 83634,
    rewards = {
        Transmog({item = 116797, slot = L['1h_axe']}), -- Pokhar's Eighth Axe
        Currency({id = 824})
    }
}) -- Scout Pokhar

map.nodes[47587036] = Rare({
    id = 83401,
    rewards = {
        Pet({item = 116815, id = 1524}), -- Netherspawn, Spawn of Netherspawn
        Currency({id = 824})
    }
}) -- Netherspawn

map.nodes[34317690] = Rare({
    id = 79725,
    rewards = {
        Toy({item = 118244}), -- Iron Buccaneer's Hat
        Transmog({item = 116809, slot = L['gun']}) -- Ironbeard's Blunderbuss
    }
}) -- Captain Ironbeard

map.nodes[43857771] = Rare({
    id = 80122,
    note = L['in_cave'],
    rewards = {Currency({id = 824})},
    pois = {POI({42247854})}
}) -- Gaz'orda

map.nodes[58008396] = Rare({
    id = 83526,
    rewards = {
        Transmog({item = 118688, slot = L['plate']}), -- Carapace Shell Shoulders
        Currency({id = 824})
    }
}) -- Ru'klaa

map.nodes[61776899] = Rare({
    id = 83680,
    rewards = {
        Transmog({item = 116800, slot = L['leather']}), -- Duretha's Trail Boots
        Currency({id = 824})
    }
}) -- Outrider Duretha

map.nodes[66695635] = Rare({id = 82778, rewards = {Currency({id = 824})}}) -- Gnarlhoof the Rabid

map.nodes[66685132] = Rare({
    id = 82758,
    rewards = {
        Transmog({item = 116795, slot = L['cloth']}) -- Greatfeather's Down Robe
    }
}) -- Greatfeather

map.nodes[60243866] = Rare({
    id = 86729,
    quest = 37222,
    rewards = {
        Item({item = 118657}) -- Direhoof's Hide
    }
}) -- Direhoof

map.nodes[70532931] = Rare({
    id = 83428,
    rewards = {
        Transmog({item = 116808, slot = L['staff']}), -- Whirlwind's Harvest
        Currency({id = 824})
    }
}) -- Windcaller Korast

map.nodes[80573060] = Rare({
    id = 83603,
    rewards = {
        Transmog({item = 118245, slot = L['2h_mace']}), -- Hunter Blacktooth's Ribcruncher
        Currency({id = 824})
    }
}) -- Hunter Blacktooth

map.nodes[84043681] = Rare({
    id = 84263,
    note = L['graveltooth_note'],
    rewards = {
        Transmog({item = 118689, slot = L['leather']}) -- Graveltooth's Manacles
    }
}) -- Graveltooth

map.nodes[93092838] = Rare({
    id = 83509,
    note = L['gorepetal_note'],
    rewards = {
        Transmog({item = 116916, slot = L['leather']}), -- Gorepetal's Gentle Grasp
        Currency({id = 824})
    },
    pois = {POI({94122635})}
}) -- Gorepetal

map.nodes[73585798] = Rare({
    id = 82755,
    note = L['in_cave'],
    rewards = {
        Transmog({item = 118243, slot = L['fist']}), -- Redclaw's Gutripper
        Currency({id = 824})
    }
}) -- Redclaw the Feral

map.nodes[75536536] = Rare({
    id = 80057,
    rewards = {
        Transmog({item = 116806, slot = L['1h_sword']}) -- Soul Fang
    }
}) -- Soulfang

map.nodes[82667639] = Rare({
    id = 79024,
    rewards = {
        Transmog({item = 116805, slot = L['plate']}) -- Blug'thol's Bloody Bracers
    }
}) -- Warmaster Blugthol

map.nodes[89467282] = Rare({
    id = 82912,
    rewards = {
        Transmog({item = 118687, slot = L['cloak']}) -- Grizzled Wolfskin Cloak
    }
}) -- Grizzlemaw

map.nodes[81115985] = Rare({
    id = 83643,
    rewards = {
        Transmog({item = 116796, slot = L['staff']}), -- Malroc's Staff of Command
        Currency({id = 824})
    }
}) -- Malroc Stonesunder

map.nodes[81376037] = Rare({
    id = 81330,
    quest = 37546,
    rewards = {
        Toy({item = 120276}) -- Outrider's Bridle Chain
    }
}) -- Warleader Tome

map.nodes[69814192] = Rare({
    id = 83483,
    rewards = {
        Transmog({item = 116807, slot = L['shield']}) -- Flinthide's Impenetrable Crest
    }
}) -- Flinthide

map.nodes[60924770] = Rare({
    id = 83542,
    note = L['sean-whitesea_note'],
    rewards = {
        Transmog({item = 116834, slot = L['leather']}) -- Whitesea's Waistwrap
    }
}) -- Sean Whitesea

map.nodes[58191863] = Rare({
    id = 88208,
    rewards = {
        Transmog({item = 120317, slot = L['cloak']}) -- Pristine Hide of the Pit Beast
    }
}) -- Pit Beast

map.nodes[39581321] = Rare({
    id = 87837,
    rewards = {
        Achievement({id = 9571, criteria = 26319}),
        Transmog({item = 119370, slot = L['mail']}) -- Rattlekilt
    }
}) -- Bonebreaker

-------------------------------------------------------------------------------
----------------------------- History of Violence -----------------------------
-------------------------------------------------------------------------------

local history_of_violence = Collectible({
    icon = 132334,
    label = '{achievement:9610}',
    scale = 0.7,
    fgroup = 'history_of_violence',
    requires = {Quest(36694)},
    rewards = {
        Achievement({id = 9610, criteria = {26399, 26400, 26404}}) -- History of Violence
    }
})

map.nodes[37631575] = history_of_violence
map.nodes[35501590] = history_of_violence
map.nodes[36542032] = history_of_violence
map.nodes[36502030] = history_of_violence
map.nodes[38201360] = history_of_violence
map.nodes[37502040] = history_of_violence
map.nodes[36611700] = history_of_violence
map.nodes[40722491] = history_of_violence
map.nodes[39501670] = history_of_violence
map.nodes[36501680] = history_of_violence
map.nodes[37801810] = history_of_violence
map.nodes[37831809] = history_of_violence
map.nodes[38801644] = history_of_violence
map.nodes[35422254] = history_of_violence
map.nodes[40701520] = history_of_violence
map.nodes[39761449] = history_of_violence
map.nodes[38102444] = history_of_violence
map.nodes[37592323] = history_of_violence
map.nodes[35402270] = history_of_violence
map.nodes[37421606] = history_of_violence
map.nodes[41281212] = Collectible({
    icon = 132334,
    scale = 0.7,
    fgroup = 'history_of_violence',
    requires = {Quest(36694)},
    rewards = {
        Achievement({id = 9610, criteria = 26397}) -- History of Violence
    }
})

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[88901824] = Treasure({
    quest = 35660,
    label = L['fungus_covered_chest'],
    rewards = {wod_treasures, Currency({id = 824})}
}) -- Fungus-Covered Chest

map.nodes[87602027] = Treasure({
    quest = 35662,
    label = L['steamwheedle_supplies'],
    rewards = {wod_treasures, Currency({id = 824})}
}) -- Steamwheedle Supplies

map.nodes[77835194] = Treasure({
    quest = 35591,
    label = L['steamwheedle_supplies'],
    rewards = {wod_treasures, Currency({id = 824})}
}) -- Steamwheedle Supplies

map.nodes[88264262] = Treasure({
    quest = 35616,
    label = L['steamwheedle_supplies'],
    rewards = {wod_treasures, Currency({id = 824})}
}) -- Steamwheedle Supplies

map.nodes[81461307] = Treasure({
    quest = 35953,
    label = L['adventurers_staff'],
    rewards = {
        wod_treasures, Transmog({item = 116640, slot = L['staff']}) -- Howling Staff
    }
}) -- Adventurer's Staff

map.nodes[78901556] = Treasure({
    quest = 36036,
    label = L['elemental_shackles'],
    rewards = {wod_treasures}
}) -- Elemental Shackles

map.nodes[77071662] = Treasure({
    quest = 36174,
    label = L['bounty_of_the_elements'],
    note = L['in_cave'] .. '\n\n' .. L['bounty_of_the_elements_note'],
    rewards = {wod_treasures, Currency({id = 824})}
}) -- Bounty of the Elements

map.nodes[75321089] = Treasure({
    quest = 35836,
    label = L['abandoned_fishing_rod'],
    note = L['abandoned_fishing_rod_note'],
    rewards = {
        Currency({id = 824}), Item({item = 116836, note = '~37g'}) -- Tangle of Fishing Hooks
    }
}) -- Abandoned Fishing Rod

map.nodes[73071080] = Treasure({
    quest = 35951,
    label = L['pile_of_dirt'],
    rewards = {wod_treasures, Currency({id = 824})}
}) -- A Pile of Dirt

map.nodes[73921406] = Treasure({
    quest = 35955,
    label = L['adventurers_sack'],
    rewards = {wod_treasures, Currency({id = 824})}
}) -- Adventurer's Sack

map.nodes[70541385] = Treasure({
    quest = 35643,
    label = L['mountain_climbers_pack'],
    rewards = {wod_treasures, Currency({id = 824})}
}) -- Mountain Climber's Pack

map.nodes[70601861] = Treasure({
    quest = 35646,
    label = L['steamwheedle_supplies'],
    rewards = {wod_treasures, Currency({id = 824})}
}) -- Steamwheedle Supplies

map.nodes[50128228] = Treasure({
    quest = 35577,
    label = L['steamwheedle_supplies'],
    rewards = {wod_treasures, Currency({id = 824})}
}) -- Steamwheedle Supplies

map.nodes[52678008] = Treasure({
    quest = 35583,
    label = L['steamwheedle_supplies'],
    rewards = {wod_treasures, Currency({id = 824})}
}) -- Steamwheedle Supplies

map.nodes[73052154] = Treasure({
    quest = 35692,
    label = L['freshwater_clam'],
    rewards = {
        wod_treasures, Item({item = 118233, note = '~45g'}) -- Enormous Nagrand Pearl
    }
}) -- Freshwater Clam

map.nodes[66961949] = Treasure({
    quest = 35954,
    label = L['elemental_offering'],
    rewards = {
        wod_treasures, Item({item = 118234, note = '~16g'}) -- Smoldering Offerings
    }
}) -- Elemental Offering

map.nodes[64591760] = Treasure({
    quest = 35648,
    label = L['steamwheedle_supplies'],
    rewards = {wod_treasures, Currency({id = 824})}
}) -- Steamwheedle Supplies

map.nodes[64773573] = Treasure({
    quest = 36071,
    label = L['watertight_bag'],
    rewards = {
        wod_treasures, Item({item = 118235, note = L['bag']}) -- Ogre Diving Cap
    }
}) -- Watertight Bag

map.nodes[52414439] = Treasure({
    quest = 36073,
    label = L['warsong_helm'],
    rewards = {
        wod_treasures, Transmog({item = 118250, slot = L['mail']}) -- Riverwashed Warsong Helm
    }
}) -- Warsong Helm

map.nodes[45635201] = Treasure({
    quest = 35969,
    label = L['adventurers_pack'],
    rewards = {wod_treasures}
}) -- Adventurer's Pack

map.nodes[82265659] = Treasure({
    quest = 35765,
    label = L['adventurers_pack'],
    rewards = {wod_treasures}
}) -- Adventurer's Pack

map.nodes[38345873] = Treasure({
    quest = 36109,
    label = L['goldtoes_plunder'],
    note = L['goldtoes_plunder_note'],
    rewards = {wod_treasures}
}) -- Goldtoe's Plunder

map.nodes[43225755] = Treasure({
    quest = 35987,
    label = L['genedar_debris'],
    rewards = {wod_treasures, Currency({id = 824})}
}) -- Genedar Debris

map.nodes[48076011] = Treasure({
    quest = 35999,
    label = L['genedar_debris'],
    rewards = {wod_treasures, Currency({id = 824})}
}) -- Genedar Debris

map.nodes[44696757] = Treasure({
    quest = 36002,
    label = L['genedar_debris'],
    rewards = {wod_treasures, Currency({id = 824})}
}) -- Genedar Debris

map.nodes[48587277] = Treasure({
    quest = 36008,
    label = L['genedar_debris'],
    rewards = {wod_treasures, Currency({id = 824})}
}) -- Genedar Debris

map.nodes[55356820] = Treasure({
    quest = 36011,
    label = L['genedar_debris'],
    rewards = {wod_treasures, Currency({id = 824})}
}) -- Genedar Debris

map.nodes[51716028] = Treasure({
    quest = 35695,
    label = L['warsong_cache'],
    rewards = {wod_treasures, Currency({id = 824})}
}) -- Warsong Cache

Map({id = 553, settings = true}).nodes[66035760] = Treasure({
    quest = 36088,
    label = L['adventurers_pouch'],
    rewards = {wod_treasures}
}) -- Adventurer's Pouch - Inside the Cave

map.nodes[53416425] = Treasure({
    quest = 36088,
    label = L['adventurers_pouch'],
    note = L['in_cave'],
    rewards = {wod_treasures},
    pois = {POI({56486189})}
}) -- Adventurer's Pouch

map.nodes[50026648] = Treasure({
    quest = 35579,
    label = L['voidinfused_crystal'],
    rewards = {
        wod_treasures, Transmog({item = 118264, slot = L['2h_sword']}) -- Serrated Void Crystal
    }
}) -- Void-Infused Crystal

map.nodes[45866629] = Treasure({
    quest = 36020,
    label = '{item:117981}',
    rewards = {
        wod_treasures, Transmog({item = 117981, slot = L['offhand']}) -- Fragment of Oshu'gun
    }
}) -- Fragment of Oshu'gun

map.nodes[40346864] = Treasure({
    quest = 37435,
    label = L['spirit_coffer'],
    note = L['in_cave'],
    rewards = {wod_treasures, Currency({id = 824})},
    pois = {POI({41756824})}
}) -- Spirit Coffer

map.nodes[37717065] = Treasure({
    quest = 34760,
    label = L['treasure_of_kullkrosh'],
    note = L['treasure_of_kullkrosh_note'],
    rewards = {wod_treasures}
}) -- Treasure of Kull'krosh

map.nodes[47207423] = Treasure({
    quest = 35576,
    label = L['goblin_pack'],
    rewards = {wod_treasures, Currency({id = 824})}
}) -- Goblin Pack

map.nodes[72986214] = Treasure({
    quest = 35590,
    label = L['goblin_pack'],
    rewards = {wod_treasures, Currency({id = 824})}
}) -- Goblin Pack

map.nodes[56577295] = Treasure({
    quest = 36050,
    label = L['adventurers_pouch'],
    rewards = {wod_treasures}
}) -- Adventurer's Pouch

map.nodes[57796205] = Treasure({
    quest = 36115,
    label = L['pale_elixir'],
    rewards = {wod_treasures}
}) -- Pale Elixir

map.nodes[58265952] = Treasure({
    quest = 36021,
    label = '{item:116688}',
    note = L['tree_branches'],
    rewards = {
        wod_treasures, Transmog({item = 116688, slot = L['1h_axe']}) -- Pokhar's Thirteenth Axe
    }
}) -- Pokkar's Thirteenth Axe

map.nodes[58275249] = Treasure({
    quest = 35694,
    label = '{item:118266}',
    note = L['tree_branches'],
    rewards = {
        wod_treasures, Item({item = 118266, note = '100g'}) -- Golden Kaliri Egg

    }
}) -- Golden Kaliri Egg

map.nodes[61765747] = Treasure({
    quest = 36082,
    label = L['lost_pendant'],
    note = L['tree_branches'],
    rewards = {wod_treasures}
}) -- Lost Pendant

map.nodes[62546707] = Treasure({
    quest = 36116,
    label = L['bag_of_herbs'],
    rewards = {wod_treasures}
}) -- Bag of Herbs

map.nodes[64706582] = Treasure({
    quest = 36046,
    label = L['telaar_defender_shield'],
    rewards = {
        wod_treasures, Transmog({item = 1234, slot = L['dagger']}) -- Name
    }
}) -- Telaar Defender Shield

map.nodes[67655972] = Treasure({
    quest = 35759,
    label = L['abandoned_cargo'],
    rewards = {wod_treasures}
}) -- Abandoned Cargo

map.nodes[67384909] = Treasure({
    quest = 36039,
    label = L['highmaul_sledge'],
    rewards = {wod_treasures}
}) -- Highmaul Sledge

map.nodes[77312807] = Treasure({
    quest = 35986,
    label = L['bonecarved_dagger'],
    rewards = {
        wod_treasures, Transmog({item = 116760, slot = L['dagger']}) -- Saberon-Fang Shanker
    }
}) -- Bone-Carved Dagger

map.nodes[81083726] = Treasure({
    quest = 35661,
    label = '{item:118262}',
    rewards = {
        wod_treasures, Item({item = 118262}) -- Brilliant Dreampetal
    }
}) -- Brilliant Dreampetal

map.nodes[89073313] = Treasure({
    quest = 36857,
    label = L['smugglers_cache'],
    note = L['smugglers_cache_note'],
    rewards = {wod_treasures, Item({item = 118262})}
}) -- Smuggler's Cache

map.nodes[87624498] = Treasure({
    quest = 35622,
    label = L['hidden_stash'],
    note = L['tree_branches'],
    rewards = {wod_treasures, Currency({id = 824})}
}) -- Hidden Stash

map.nodes[85415347] = Treasure({
    quest = 35696,
    label = L['burning_blade_cache'],
    rewards = {wod_treasures}
}) -- Burning Blade Cache

map.nodes[75374710] = Treasure({
    quest = 36074,
    label = L['gamblers_purse'],
    rewards = {
        wod_treasures, Item({item = 118236}) -- Counterfeit Coin
    }
}) -- Gambler's Purse

map.nodes[69945239] = Treasure({
    quest = 35597,
    label = L['adventurers_pack'],
    note = L['tree_branches'],
    rewards = {wod_treasures}
}) -- Adventurer's Pack

map.nodes[72716092] = Treasure({
    quest = 36035,
    label = L['polished-saberon-skull'],
    rewards = {wod_treasures}
}) -- Polished Saberon Skull

map.nodes[75156494] = Treasure({
    quest = 36102,
    label = L['saberon-stash'],
    rewards = {wod_treasures}
}) -- Saberon Stash

map.nodes[75236563] = Treasure({
    quest = 36099,
    label = L['important_exploration_supplies'],
    note = L['in_cave'],
    rewards = {
        wod_treasures, Item({item = 61986}) -- Tol Barad Coconut Rum
    },
    pois = {POI({74926591})}
}) -- important-exploration-supplies

map.nodes[73047036] = Treasure({
    quest = 35678,
    label = L['warsong_lockbox'],
    rewards = {wod_treasures, Currency({id = 824})}
}) -- Warsong Lockbox

map.nodes[73067554] = Treasure({
    quest = 35673,
    label = L['appropriated_warsong_supplies'],
    rewards = {wod_treasures, Currency({id = 824})}
}) -- Appropriated Warsong Supplies

map.nodes[76066988] = Treasure({
    quest = 35682,
    label = L['warsong-spear'],
    rewards = {
        wod_treasures, Item({item = 118678, note = '~75g'}) -- Ceremonial Warsong Spear
    }
}) -- Warsong Spear

map.nodes[80967980] = Treasure({
    quest = 36049,
    label = L['ogre_beads'],
    rewards = {wod_treasures}
}) -- Ogre Beads

map.nodes[87107287] = Treasure({
    quest = 36051,
    label = L['grizzlemaws_bonepile'],
    rewards = {
        wod_treasures, Item({item = 118054}) -- Discarded Bone
    }
}) -- Grizzlemaw's Bonepile

map.nodes[89406588] = Treasure({
    quest = 35976,
    label = L['warsong_supplies'],
    rewards = {wod_treasures, Currency({id = 824})}
}) -- Warsong Supplies

map.nodes[80656054] = Treasure({
    quest = 35593,
    label = L['warsong_spoils'],
    rewards = {wod_treasures, Currency({id = 824})}
}) -- Warsong Spoils

map.nodes[75826201] = Treasure({
    quest = 36077,
    label = L['adventurers_mace'],
    rewards = {wod_treasures}
}) -- Adventurer's Mace

map.nodes[35475724] = Treasure({
    quest = 36846,
    label = L['spirits_gift'],
    note = L['spirits_gift_note'],
    rewards = {wod_treasures, Currency({id = 824})}
}) -- Spirit's Gift

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[56200980] = PetBattle({
    id = 87110,
    rewards = {Achievement({id = 9724, criteria = 27015})}
}) -- Tarr the Terrible

-------------------------------------------------------------------------------
---------------------- STEAMWHEEDLE PRESERVATION SOCIETY ----------------------
-------------------------------------------------------------------------------

local highmaulPath = Path({
    31823445, 30463435, 30533354, 30813284, 29733211, 29083146, 28263070,
    27202986, 26512966, 26062999, 25343116, 24653239, 23913279, 23463428,
    23143550, 22523464, 23163561, 23173629, 23803760, 23683573, 23953635,
    24813806, 23953635, 24813806, 25043850, 25493882, 25323992, 25814103,
    25323992, 25323996, 25503881, 25613779, 25803737, 25873663, 25473883,
    25963904, 26733922, 26833981, 27004030, 26884094, 27014025, 27414030,
    27523975, 27983981, 27533982, 27383938, 27093895, 27313847, 27443798,
    28073840, 27453787, 28413603, 30793888, 30843999, 30283979, 29873941,
    29633897, 29483844, 29433787, 29563787, 29463743, 29723723, 30023706,
    30333704, 30603714, 30873737, 31123764, 31273793, 31413828, 30973904,
    28243575, 28613531, 29823447, 30213431, 30793434, 31643441
})

map.nodes[50304130] = Collectible({
    id = 87393,
    icon = 463874,
    note = L['steamwheedle_note'] .. '\n\n' .. L['highmaul_farm_path'],
    group = ns.groups.STEAMWHEEDLE,
    rewards = {
        Achievement({id = 9472}), -- Steamwheedle Preservation Society
        Title({id = 284, pattern = '{title} {player}'}) -- "Conservationist" %s
    },
    pois = {Path({50304130, 31823445}), highmaulPath}
}) -- Sallee Silverclamp

-------------------------------------------------------------------------------
---------------------------- FINDING YOUR WAYSTONES ---------------------------
-------------------------------------------------------------------------------

map.nodes[31823445] = Collectible({
    label = L['finding_your_waystones_label'],
    icon = 528693,
    note = L['finding_your_waystones_note'] .. '\n\n' .. L['highmaul_farm_path'],
    group = ns.groups.FINDING_YOUR_WAYSTONES,
    rewards = {
        Achievement({
            id = 9497,
            criteria = {id = 1, qty = true, suffix = L['ogre_waystones']}
        }) -- Finding Your Waystone
    },
    pois = {highmaulPath}
}) -- Finding Your Waystones

-------------------------------------------------------------------------------
------------------------------- SONG OF SILENCE -------------------------------
-------------------------------------------------------------------------------

map.nodes[42093684] = Collectible({
    id = 87361,
    icon = 'peg_rd',
    scale = 1.5,
    group = ns.groups.SONG_OF_SILENCE,
    note = L['signal_horn_note'],
    rewards = {
        Achievement({
            id = 9541,
            criteria = {
                26142, -- Krahl Deadeye
                26143 -- Gortag Steelgrip
            }
        })
    },
    pois = {POI({43003560, 43203440, 43603520, 44203560, 44803580})}
})

map.nodes[45923476] = Collectible({
    id = 86959,
    icon = 'peg_rd',
    scale = 1.5,
    group = ns.groups.SONG_OF_SILENCE,
    rewards = {Achievement({id = 9541, criteria = 26140})}
}) -- Karosh Blackwind

map.nodes[43103640] = Collectible({
    id = 87234,
    icon = 'peg_rd',
    scale = 1.5,
    group = ns.groups.SONG_OF_SILENCE,
    rewards = {Achievement({id = 9541, criteria = 26141})}
}) -- Brutag Grimblade

-------------------------------------------------------------------------------
------------------------------- BURIED TREASURES ------------------------------
-------------------------------------------------------------------------------

map.nodes[41703750] = Collectible({
    id = 87522,
    icon = 'peg_yw',
    scale = 1.5,
    group = ns.groups.BURIED_TREASURES,
    note = L['garroshs_shackles'],
    rewards = {Achievement({id = 9548, criteria = 26145})}
}) -- Garrosh's Shackles

map.nodes[45503680] = Collectible({
    id = 87524,
    icon = 'peg_yw',
    scale = 1.5,
    group = ns.groups.BURIED_TREASURES,
    note = L['warsong_relics'],
    rewards = {Achievement({id = 9548, criteria = 26146})},
    pois = {POI({43003649, 45503680, 42703840})}
}) -- Warsong Relics

map.nodes[42303450] = Collectible({
    id = 87526,
    icon = 'peg_yw',
    scale = 1.5,
    group = ns.groups.BURIED_TREASURES,
    note = L['stolen_draenei_tome'],
    rewards = {Achievement({id = 9548, criteria = 26148})},
    pois = {POI({45303380, 45103820})}
}) -- Stolen Draenei Tome

map.nodes[46203420] = Collectible({
    id = 87530,
    icon = 'peg_yw',
    scale = 1.5,
    group = ns.groups.BURIED_TREASURES,
    note = L['dirt_mound'],
    rewards = {
        Achievement({
            id = 9548,
            criteria = {
                26147, -- Warsong Remains
                26149, -- Wolf Pup Remains
                26150 -- Gnarled Bone
            }
        })
    },
    pois = {POI({45603700, 43603880, 42603760, 42203760, 43203660, 44003420})}
})

-------------------------------------------------------------------------------
-------------------- ADVANCED HUSBANDRY / THE STABLE MASTER -------------------
-------------------------------------------------------------------------------

local StablesTarget = Class('StablesTarget', Collectible, {
    icon = 'peg_bl',
    scale = 1.5,
    group = ns.groups.THE_STABLE_MASTER,
    requires = {
        ns.requirement.Item(118469), -- Black Claw of Sethe
        ns.requirement.Item(118470) -- Garn-Tooth Necklace
    },
    getters = {
        note = function(self)
            local stableMaster = '{npc:86973}' -- Keegan Firebeard
            if ns.faction == 'Horde' then
                stableMaster = '{npc:86979}' -- Tormak the Scarred
            end
            return string.gsub(L['stable_master_note'], '{stablemaster}',
                stableMaster)
        end,
        rewards = function(self)
            return {
                Achievement({
                    id = 9539,
                    criteria = self.criteriaID,
                    faction = 'Alliance'
                }), -- Advanced Husbandry (Alliance)
                Achievement({
                    id = 9705,
                    criteria = self.criteriaID,
                    faction = 'Horde'
                }), -- Advanced Husbandry (Horde)
                Achievement({
                    id = 9540,
                    criteria = self.criteriaID,
                    faction = 'Alliance'
                }), -- The Stable Master (Alliance)
                Achievement({
                    id = 9706,
                    criteria = self.criteriaID,
                    faction = 'Horde'
                }), -- The Stable Master (Alliance)
                Mount({item = 116668, id = 621}), -- Armored Frostboar
                Mount({item = 116781, id = 644}), -- Armored Frostwolf
                Title({id = 277, pattern = '{title} {player}'}) -- Stable Master %s
            }
        end
    }
})

map.nodes[63008000] = StablesTarget({id = 87107, criteriaID = 1}) -- Maimclaw

map.nodes[79007100] = StablesTarget({id = 87095, criteriaID = 2}) -- Gorian Beast-Lasher

map.nodes[43006900] = StablesTarget({id = 87089, criteriaID = 3}) -- Moth of Wrath

map.nodes[90002300] = StablesTarget({id = 87102, criteriaID = 4}) -- Thundercall

map.nodes[53007700] = StablesTarget({id = 87090, criteriaID = 5}) -- Ironbore

map.nodes[69003400] = StablesTarget({id = 87105, criteriaID = 6}) -- Karak

-------------------------------------------------------------------------------
------------------------------- MAKING THE CUT --------------------------------
-------------------------------------------------------------------------------

map.nodes[58201200] = Collectible({
    id = 88210,
    icon = 'peg_rd',
    scale = 1.5,
    group = ns.groups.MAKING_THE_CUT,
    note = L['making_the_cut_note'],
    rewards = {
        Achievement({id = 9617}) -- Making the Cut
    },
    pois = {POI({55401780, 58401600, 58601460, 59601700})}
})

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

map.nodes[40534764] = Voidtalon
map.nodes[44033082] = Voidtalon
map.nodes[57262656] = Voidtalon

map.nodes[80185036] = Treasure({
    quest = 39265,
    icon = 1044996,
    label = L['viking_pepe'],
    rewards = {
        Achievement({id = 10053, criteria = 28184}), -- I Found Pepe!
        Item({item = 127865}) -- A Tiny Viking Helmet
    }
}) -- Viking Pepe

-- follower
map.nodes[46371604] = Collectible({
    icon = 1033590,
    label = '{item:110471}',
    quest = 34464,
    note = L['follower_archmage_vargoth_note'],
    rewards = {ns.reward.Follower({id = 190})}
}) -- Image of Archmage Vargoth - Mysterious Staff

map.nodes[38354934] = Collectible({
    icon = 'chest_nv',
    quest = 36711,
    label = '{item:114245}',
    fgroup = 'abugar',
    note = L['abugar_note'],
    rewards = {ns.reward.Follower({id = 209}), Item({item = 114245})}
}) -- Abu'Gar's Favorite Lure

map.nodes[65826115] = Collectible({
    icon = 'chest_nv',
    quest = 36711,
    label = '{item:114242}',
    fgroup = 'abugar',
    note = L['abugar_note'],
    rewards = {ns.reward.Follower({id = 209}), Item({item = 114242})}
}) -- Abu'Gar's Vitality

map.nodes[85423874] = Collectible({
    icon = 'chest_nv',
    quest = 36711,
    label = '{item:114243}',
    fgroup = 'abugar',
    note = L['abugar_note'],
    rewards = {ns.reward.Follower({id = 209}), Item({item = 114243})}
}) -- Abu'Gar's Finest Reel

map.nodes[67185601] = Collectible({
    icon = 1033590,
    quest = 36711,
    id = 82746,
    label = '{npc:82746}',
    fgroup = 'abugar',
    note = L['abugar_note'],
    rewards = {ns.reward.Follower({id = 209})}
}) -- Abu'Gar

map.nodes[40287611] = Collectible({
    icon = 1033590,
    id = 35596,
    label = '{npc:80083}',
    note = L['follower_goldmane_note'],
    rewards = {ns.reward.Follower({id = 170})}
}) -- Goldmane the Skinner
