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
local Currency = ns.reward.Currency
local Follower = ns.reward.Follower
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Quest = ns.reward.Quest
local Title = ns.reward.Title
local Toy = ns.reward.Toy

local Path = ns.poi.Path
local POI = ns.poi.POI

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
    rewards = {Pet({item = 129218, id = 1765})} -- Glittering Arcane Crystal
}) -- Guk

map.nodes[25973472] = Rare({
    id = 98198,
    quest = 40075,
    rewards = {Pet({item = 129216, id = 1764})} -- Vibrating Arcane Crystal
}) -- Rukdug

map.nodes[28162964] = Rare({
    id = 98199,
    quest = 40073,
    rewards = {Pet({item = 129217, id = 1766})} -- Warm Arcane Crystal
}) -- Pugg

map.nodes[34607700] = Rare({
    id = 79725,
    quest = 34727,
    rewards = {Item({item = 116809}), Toy({item = 118244})}
}) -- Captain Ironbeard

map.nodes[42207860] = Rare({
    id = 80122,
    quest = 34725,
    note = L['in_cave'],
    rewards = {Item({item = 116798}), Currency({id = 824})}
}) -- Gaz'orda

map.nodes[42804920] = Rare({
    id = 83409,
    quest = 35875,
    rewards = {Item({item = 116765})}
}) -- Ophiis

map.nodes[45801520] = Rare({
    id = 84435,
    quest = 36229,
    rewards = {Item({item = 118690})}
}) -- Mr. Pinchy Sr.

map.nodes[47607080] = Rare({
    id = 83401,
    quest = 35865,
    rewards = {Pet({item = 116815, id = 1524})}
}) -- Netherspawn

map.nodes[52009000] = Rare({id = 80370, quest = 37408}) -- Lernaea

map.nodes[52205580] = Rare({
    id = 82764,
    quest = 35715,
    rewards = {Item({item = 118246})}
}) -- Gar'lua

map.nodes[54806120] = Rare({
    id = 83634,
    quest = 35931,
    rewards = {Item({item = 116797})}
}) -- Scout Pokhar

map.nodes[58008400] = Rare({
    id = 83526,
    quest = 35900,
    rewards = {Item({item = 118688})}
}) -- Ru'klaa

map.nodes[58201800] = Rare({
    id = 88208,
    quest = 37637,
    rewards = {Item({item = 120317})}
}) -- Pit Beast

map.nodes[61804720] = Rare({
    id = 83542,
    quest = 35912,
    rewards = {Item({item = 116834})}
}) -- Sean Whitesea

map.nodes[61806900] = Rare({
    id = 83680,
    quest = 35943,
    rewards = {Item({item = 116800})}
}) -- Outrider Duretha

map.nodes[65003900] = Rare({
    id = 83591,
    quest = 35920,
    rewards = {Item({item = 116814})}
}) -- Tura'aka

map.nodes[66605660] = Rare({
    id = 82778,
    quest = 35717,
    rewards = {Item({item = 116824})}
}) -- Gnarlhoof the Rabid

map.nodes[66805120] = Rare({
    id = 82758,
    quest = 35714,
    rewards = {Item({item = 116795})}
}) -- Greatfeather

map.nodes[70004180] = Rare({
    id = 83483,
    quest = 35893,
    rewards = {Item({item = 116807})}
}) -- Flinthide

map.nodes[70602940] = Rare({
    id = 83428,
    quest = 35877,
    rewards = {Item({item = 116808})}
}) -- Windcaller Korast

map.nodes[73605780] = Rare({
    id = 82755,
    quest = 35712,
    rewards = {Item({item = 118243})}
}) -- Redclaw the Feral

map.nodes[74801180] = Rare({
    id = 82975,
    quest = 35836,
    note = L['fangler_note'],
    rewards = {Item({item = 116836})},
    pois = {POI({75301090})}
}) -- Fangler

map.nodes[75606500] = Rare({
    id = 80057,
    quest = 36128,
    rewards = {Item({item = 116806})}
}) -- Soulfang

map.nodes[77006400] = Rare({
    id = 82826,
    quest = 35735,
    note = L['in_cave'] .. ' ' .. L['berserk_t_300_series_mark_ii_note'],
    rewards = {Item({item = 116823})}
}) -- Berserk T-300 Series Mark II

map.nodes[80603040] = Rare({
    id = 83603,
    quest = 35923,
    rewards = {Item({item = 118245})}
}) -- Hunter Blacktooth

map.nodes[81206000] = Rare({
    id = 83643,
    quest = 35932,
    rewards = {Item({item = 116796})}
}) -- Malroc Stonesunder

map.nodes[81406040] = Rare({id = 81330, rewards = {Toy({item = 120276})}}) -- Warleader Tome

map.nodes[82607620] = Rare({
    id = 79024,
    quest = 34645,
    rewards = {Item({item = 116805})}
}) -- Warmaster Blugthol

map.nodes[84603660] = Rare({
    id = 84263,
    quest = 36159,
    rewards = {Item({item = 118689})}
}) -- Graveltooth

map.nodes[84605340] = Rare({
    id = 82899,
    quest = 35778,
    rewards = {Item({item = 116832})}
}) -- Ancient Blademaster

map.nodes[86007160] = Rare({
    id = 82912,
    quest = 35784,
    rewards = {Item({item = 118687})}
}) -- Grizzlemaw

map.nodes[87005500] = Rare({
    id = 78161,
    quest = 34862,
    rewards = {Item({item = 116799})}
}) -- Hyperious

map.nodes[89004120] = Rare({
    id = 82486,
    quest = 35623,
    rewards = {Item({item = 118679})}
}) -- Explorer Nozzand

map.nodes[93202820] = Rare({
    id = 83509,
    quest = 35898,
    rewards = {Item({item = 116916})}
}) -- Gorepetal

local Lukhok = Rare({
    id = 50981,
    note = L['multiple_spawn_note'],
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
    rewards = {
        Mount({item = 116659, id = 612}) -- Bloodhoof Bull
    }
}) -- Nakk the Thunderer

map.nodes[62801540] = Nakk
map.nodes[64601960] = Nakk
map.nodes[55003500] = Nakk
map.nodes[50003440] = Nakk

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[37707060] = Treasure({
    label = L['treasure_of_kullkrosh_treasure'],
    quest = 34760,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Treasure of Kull'krosh

map.nodes[38305880] = Treasure({
    label = L['goldtoes_plunder_treasure'],
    quest = 36109,
    note = L['goldtoes_plunder_note'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 114054})
    }
}) -- Goldtoe's Plunder

map.nodes[43305750] = Treasure({
    label = L['genedar_debris_treasure'],
    quest = 35987,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Genedar Debris

map.nodes[44606750] = Treasure({
    label = L['genedar_debris_treasure'],
    quest = 36002,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Genedar Debris

map.nodes[45605200] = Treasure({
    label = L['adventurers_pack_treasure'],
    quest = 35969,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    }
}) -- Adventurer's Pack

map.nodes[45806630] = Treasure({
    label = L['fragment_of_oshugun_treasure'],
    quest = 36020,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 117981})
    }
}) -- Fragment of Oshu'gun

map.nodes[47207430] = Treasure({
    label = L['goblin_pack_treasure'],
    quest = 35576,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Goblin Pack

map.nodes[48006010] = Treasure({
    label = L['genedar_debris_treasure'],
    quest = 35999,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Genedar Debris

map.nodes[48607270] = Treasure({
    label = L['genedar_debris_treasure'],
    quest = 36008,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Genedar Debris

map.nodes[50006650] = Treasure({
    label = L['void_infused_crystal_treasure'],
    quest = 35579,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 118264})
    }
}) -- Void-Infused Crystal

map.nodes[50108220] = Treasure({
    label = L['steamwheedle_supplies_treasure'],
    quest = 35577,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Steamwheedle Supplies

map.nodes[51706030] = Treasure({
    label = L['warsong_cache_treasure'],
    quest = 35695,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Warsong Cache

map.nodes[52404440] = Treasure({
    label = L['warsong_helm_treasure'],
    quest = 36073,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 118250})
    }
}) -- Warsong Helm

map.nodes[52708010] = Treasure({
    label = L['steamwheedle_supplies_treasure'],
    quest = 35583,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Steamwheedle Supplies

map.nodes[53406430] = Treasure({
    label = L['adventurers_pouch_treasure'],
    quest = 36088,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    }
}) -- Adventurer's Pouch

map.nodes[55306820] = Treasure({
    label = L['genedar_debris_treasure'],
    quest = 36011,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Genedar Debris

map.nodes[56607290] = Treasure({
    label = L['adventurers_pouch_treasure'],
    quest = 36050,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Adventurer's Pouch

map.nodes[57806220] = Treasure({
    label = L['pale_elixir_treasure'],
    quest = 36115,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 118278})
    }
}) -- Pale Elixir

map.nodes[58205260] = Treasure({
    label = L['golden_kaliri_egg_treasure'],
    quest = 35694,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 118266})
    }
}) -- Golden Kaliri Egg

map.nodes[58305940] = Treasure({
    label = L['pokkars_thirteenth_axe_treasure'],
    quest = 36021,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 116688})
    }
}) -- Pokkar's Thirteenth Axe

map.nodes[61805740] = Treasure({
    label = L['lost_pendant_treasure'],
    quest = 36082,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    }
}) -- Lost Pendant

map.nodes[62506710] = Treasure({
    label = L['bag_of_herbs_treasure'],
    quest = 36116,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    }
}) -- Bag of Herbs

map.nodes[64601760] = Treasure({
    label = L['steamwheedle_supplies_treasure'],
    quest = 35648,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Steamwheedle Supplies

map.nodes[64703580] = Treasure({
    label = L['watertight_bag_treasure'],
    quest = 36071,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 118235})
    }
}) -- Watertight Bag

map.nodes[64706580] = Treasure({
    label = L['telaar_defender_shield_treasure'],
    quest = 36046,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 118253})
    }
}) -- Telaar Defender Shield

map.nodes[66901950] = Treasure({
    label = L['elemental_offering_treasure'],
    quest = 35954,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 118234})
    }
}) -- Elemental Offering

map.nodes[67404900] = Treasure({
    label = L['highmaul_sledge_treasure'],
    quest = 36039,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 118252})
    }
}) -- Highmaul Sledge

map.nodes[67605980] = Treasure({
    label = L['abandoned_cargo_treasure'],
    quest = 35759,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    }
}) -- Abandoned Cargo

map.nodes[69905240] = Treasure({
    label = L['adventurers_pack_treasure'],
    quest = 35597,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    }
}) -- Adventurer's Pack

map.nodes[70501390] = Treasure({
    label = L['mountain_climbers_pack_treasure'],
    quest = 35643,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Mountain Climber's Pack

map.nodes[70601860] = Treasure({
    label = L['steamwheedle_supplies_treasure'],
    quest = 35646,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Steamwheedle Supplies

map.nodes[72706100] = Treasure({
    label = L['polished_saberon_skull_treasure'],
    quest = 36035,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 118254})
    }
}) -- Polished Saberon Skull

map.nodes[73001090] = Treasure({
    label = L['a_pile_of_dirt_treasure'],
    quest = 35951,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- A Pile of Dirt

map.nodes[73006220] = Treasure({
    label = L['goblin_pack_treasure'],
    quest = 35590,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Goblin Pack

map.nodes[73007040] = Treasure({
    label = L['warsong_lockbox_treasure'],
    quest = 35678,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Warsong Lockbox

map.nodes[73102160] = Treasure({
    label = L['freshwater_clam_treasure'],
    quest = 35692,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 118233})
    }
}) -- Freshwater Clam

map.nodes[73107550] = Treasure({
    label = L['appropriated_warsong_supplies_treasure'],
    quest = 35673,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Appropriated Warsong Supplies

map.nodes[73901410] = Treasure({
    label = L['adventurers_sack_treasure'],
    quest = 35955,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    }
}) -- Adventurer's Sack

map.nodes[75206500] = Treasure({
    label = L['saberon_stash_treasure'],
    quest = 36102,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    }
}) -- Saberon Stash

map.nodes[75306570] = Treasure({
    label = L['important_exploration_supplies_treasure'],
    quest = 36099,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 61986})
    }
}) -- Important Exploration Supplies

map.nodes[75404710] = Treasure({
    label = L['gamblers_purse_treasure'],
    quest = 36074,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 118236})
    }
}) -- Gambler's Purse

map.nodes[75806200] = Treasure({
    label = L['adventurers_mace_treasure'],
    quest = 36077,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    }
}) -- Adventurer's Mace

map.nodes[76107000] = Treasure({
    label = L['warsong_spear_treasure'],
    quest = 35682,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 118678})
    }
}) -- Warsong Spear

map.nodes[77101660] = Treasure({
    label = L['bounty_of_the_elements_treasure'],
    quest = 36174,
    note = L['in_cave'] .. ' ' .. L['bounty_of_the_elements_note'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Bounty of the Elements

map.nodes[77302820] = Treasure({
    label = L['bone_carved_dagger_treasure'],
    quest = 35986,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 116760})
    }
}) -- Bone-Carved Dagger

map.nodes[77805190] = Treasure({
    label = L['steamwheedle_supplies_treasure'],
    quest = 35591,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Steamwheedle Supplies

map.nodes[78901550] = Treasure({
    label = L['elemental_shackles_treasure'],
    quest = 36036,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 118251})
    }
}) -- Elemental Shackles

map.nodes[80606060] = Treasure({
    label = L['warsong_spoils_treasure'],
    quest = 35593,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Warsong Spoils

map.nodes[81007980] = Treasure({
    label = L['ogre_beads_treasure'],
    quest = 36049,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 118255})
    }
}) -- Ogre Beads

map.nodes[81103720] = Treasure({
    label = L['brilliant_dreampetal_treasure'],
    quest = 35661,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 118262})
    }
}) -- Brilliant Dreampetal

map.nodes[81501300] = Treasure({
    label = L['adventurers_staff_treasure'],
    quest = 35953,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 116640})
    }
}) -- Adventurer's Staff

map.nodes[82305660] = Treasure({
    label = L['adventurers_pack_treasure'],
    quest = 35765,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    }
}) -- Adventurer's Pack

map.nodes[85405340] = Treasure({
    label = L['burning_blade_cache_treasure'],
    quest = 35696,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    }
}) -- Burning Blade Cache

map.nodes[87107290] = Treasure({
    label = L['grizzlemaws_bonepile_treasure'],
    quest = 36051,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 118054})
    }
}) -- Grizzlemaw's Bonepile

map.nodes[87504500] = Treasure({
    label = L['hidden_stash_treasure'],
    quest = 35622,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Hidden Stash

map.nodes[87602030] = Treasure({
    label = L['steamwheedle_supplies_treasure'],
    quest = 35662,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Steamwheedle Supplies

map.nodes[88204260] = Treasure({
    label = L['steamwheedle_supplies_treasure'],
    quest = 35616,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Steamwheedle Supplies

map.nodes[88901820] = Treasure({
    label = L['fungus_covered_chest_treasure'],
    quest = 35660,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Fungus-Covered Chest

map.nodes[89103310] = Treasure({
    label = L['smugglers_cache_treasure'],
    quest = 36857,
    note = L['in_cave'] .. ' ' .. L['smugglers_cache_note'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Smuggler's Cache

map.nodes[89406580] = Treasure({
    label = L['warsong_supplies_treasure'],
    quest = 35976,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Warsong Supplies

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[56200980] = PetBattle({
    id = 87110,
    rewards = {Achievement({id = 9724, criteria = 27015})}
}) -- Tarr the Terrible

-------------------------------------------------------------------------------
-------------------------------- I FOUND PEPE! --------------------------------
-------------------------------------------------------------------------------

map.nodes[80105040] = Collectible({
    label = L['viking_pepe_treasure'],
    note = L['viking_pepe_note'],
    icon = 1044996,
    quest = 39265,
    group = ns.groups.PEPE,
    rewards = {
        Achievement({id = 10053, criteria = 28184}), Item({item = 127865})
    }
}) -- Viking Pepe

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

local SteamwheedleRare = Class('SteamwheedleRare', Rare,
    {group = ns.groups.STEAMWHEEDLE})

map.nodes[62601680] = SteamwheedleRare({
    id = 86732,
    quest = 37211,
    rewards = {Item({item = 118655})}
}) -- Bergruu

map.nodes[64203040] = SteamwheedleRare({
    id = 86743,
    quest = 37221,
    rewards = {Item({item = 118656})}
}) -- Dekorhan

map.nodes[60802780] = SteamwheedleRare({
    id = 86750,
    quest = 37225,
    rewards = {Item({item = 118660})}
}) -- Thek'talon

map.nodes[48202220] = SteamwheedleRare({
    id = 86771,
    quest = 37223,
    rewards = {Item({item = 118658})}
}) -- Gagrog the Brutal

map.nodes[41004400] = SteamwheedleRare({
    id = 86835,
    quest = 37226,
    rewards = {Item({item = 118661})}
}) -- Xelganak

map.nodes[51001600] = SteamwheedleRare({
    id = 86774,
    quest = 37210,
    rewards = {Item({item = 118654})}
}) -- Aogexon

map.nodes[60003800] = SteamwheedleRare({
    id = 86729,
    quest = 37222,
    rewards = {Item({item = 118657})}
}) -- Direhoof

map.nodes[34005100] = SteamwheedleRare({
    id = 87666,
    quest = 37224,
    rewards = {Item({item = 118659})}
}) -- Mu'gra

map.nodes[37003800] = SteamwheedleRare({
    id = 88951,
    quest = 37520,
    rewards = {Item({item = 120172})}
}) -- Vileclaw

-------------------------------------------------------------------------------
----------------------------- BROKE BACK PRECIPICE ----------------------------
-------------------------------------------------------------------------------

local BrokeBackPrecipiceRare = Class('BrokeBackPrecipiceRare', Collectible {
    icon = 'peg_rd',
    scale = 1.5,
    group = ns.groups.BROKE_BACK_PRECIPICE
})

map.nodes[38001960] = BrokeBackPrecipiceRare({
    id = 87846,
    rewards = {Achievement({id = 9571, criteria = nil}), Item({item = 119389})}
}) -- Pit Slayer

map.nodes[38602240] = BrokeBackPrecipiceRare({
    id = 87788,
    rewards = {Achievement({id = 9571, criteria = nil}), Item({item = 119405})}
}) -- Durg Spinecrusher

map.nodes[40001600] = BrokeBackPrecipiceRare({
    id = 87837,
    rewards = {Achievement({id = 9571, criteria = nil}), Item({item = 119370})}
}) -- Bonebreaker

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

map.nodes[45603480] = Collectible({
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

-------------------------------------------------------------------------------
---------------------------------- FOLLOWERS ----------------------------------
-------------------------------------------------------------------------------

map.nodes[40307610] = Collectible({
    id = 82453,
    icon = 236270,
    note = L['goldmane_follower_note'],
    rewards = {Follower({id = 170, icon = 236270})}
}) -- Goldmane the Skinner

map.nodes[46401600] = Collectible({
    label = '{quest:34466}', -- Mysterious Staff
    icon = 135932,
    note = L['image_of_archmage_vargoth_follower_note'],
    rewards = {Quest({id = 34466}), Follower({id = 190, icon = 135932})}
}) -- Image of Archmage Vargoth

map.nodes[67205600] = Collectible({
    id = 86293,
    icon = 135770,
    note = L['abugar_follower_note'],
    requires = {
        ns.requirement.Item(114245), -- Abu'gar's Favorite Lure
        ns.requirement.Item(114242), -- Abu'gar's Vitality
        ns.requirement.Item(114243) -- Abu'gar's Finest Reel
    },
    rewards = {Follower({id = 209, icon = 135770})},
    pois = {
        POI({38404940, 65906120, 85403870}), Path({67205600, 38404940}),
        Path({67205600, 65906120}), Path({67205600, 85403870})
    }
}) -- Abu'gar
