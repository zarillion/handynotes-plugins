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
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

local POI = ns.poi.POI
local Path = ns.poi.Path

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({id = 542, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[25202420] = Rare({
    id = 86978,
    quest = 36943,
    rewards = {Item({item = 118696, note = L['ring']}), Currency({id = 824})}
}) -- Gaze

map.nodes[33005900] = Rare({
    id = 84951,
    quest = 36305,
    rewards = {Item({item = 116836})}
}) -- Gobblefin

map.nodes[33552187] = Rare({
    id = 84805,
    quest = 36265,
    rewards = {
        Transmog({item = 116858, slot = L['mail']}), Currency({id = 824})
    }
}) -- Stonespite

map.nodes[37183845] = Rare({
    id = 83746,
    quest = 37464,
    rewards = {
        Achievement({id = 9425}), -- So Grossly Incandescent
        Achievement({id = 9838, criteria = 27650}), -- What A Strange, Interdimensional Trip It's Been
        Mount({id = 634, item = 116771}), -- Solar Spirehawk
        Transmog({item = 120113, slot = L['mail']}), -- Talongrip Spurs
        Transmog({item = 115435, slot = L['mail']}), -- Leggings of Flowing Feathers
        Transmog({item = 120114, slot = L['plate']}), -- Wing-Forged Greatboots
        Transmog({item = 115433, slot = L['cloth']}), -- Solarflame Legwraps
        Transmog({item = 120111, slot = L['cloth']}), -- Featherflame Sandals
        Transmog({item = 120112, slot = L['leather']}), -- Phoenix-Rider Boots
        Transmog({item = 115434, slot = L['leather']}), -- Down-Lined Leggings
        Transmog({item = 115436, slot = L['plate']}) -- Phoenixfire Legplates
    }
}) -- Rukhmar

map.nodes[36295256] = Rare({
    id = 82247,
    quest = 36129,
    rewards = {Transmog({item = 116837, slot = L['polearm']})}
}) -- Nas Dunberlin

map.nodes[38322797] = Rare({
    id = 85504,
    quest = 36470,
    rewards = {Pet({item = 118107, id = 1540})}
}) -- Rotcap

map.nodes[46422848] = Rare({
    id = 84807,
    quest = 36267,
    rewards = {
        Transmog({item = 118198, slot = L['mail']}), Currency({id = 824})
    }
}) -- Durkath Steelmaw

map.nodes[46822324] = Rare({
    id = 80614,
    quest = 35599,
    rewards = {Item({item = 116839}), Currency({id = 824})}
}) -- Blade-Dancer Aeryx

map.nodes[51970728] = Rare({
    id = 83990,
    quest = 37394,
    rewards = {Transmog({item = 119407, slot = L['polearm']})}
}) -- Solar Magnifier

map.nodes[51963556] = Rare({
    id = 79938,
    quest = 36478,
    rewards = {Transmog({item = 118201, slot = L['shield']})}
}) -- Shadowbark

map.nodes[52905497] = Rare({
    id = 85520,
    quest = 36472,
    rewards = {Transmog({item = 116857, slot = L['staff']})}
}) -- Swarmleaf

map.nodes[53798872] = Rare({
    id = 84417,
    quest = 36396,
    rewards = {Transmog({item = 118206, slot = L['2h_mace']})}
}) -- Mutafen

map.nodes[54636320] = Rare({
    id = 84836,
    quest = 36278,
    rewards = {Item({item = 116838, note = L['neck']})}
}) -- Talonbreaker

map.nodes[54793699] = Rare({
    id = 84890,
    quest = 36297,
    rewards = {Transmog({item = 118200, slot = L['offhand']})}
}) -- Festerbloom

map.nodes[56469478] = Rare({
    id = 84955,
    quest = 36306,
    rewards = {Item({item = 118202, note = L['trinket']})}
}) -- Jiasska the Sporegorger

map.nodes[57277410] = Rare({
    id = 84775,
    quest = 36254,
    rewards = {Item({item = 116852, note = L['neck']})}
}) -- Tesska the Broken

map.nodes[58318444] = Rare({
    id = 84887,
    quest = 36291,
    rewards = {Transmog({item = 116907, slot = L['gun']})}
}) -- Betsi Boombasket

map.nodes[59014514] = Rare({
    id = 84912,
    quest = 36298,
    rewards = {
        Transmog({item = 116855, slot = L['1h_sword']}), Currency({id = 824})
    }
}) -- Sunderthorn

map.nodes[59281484] = Rare({
    id = 86724,
    quest = 36887,
    rewards = {Transmog({item = 118279, slot = L['cloth']})}
}) -- Hermit Palefur

map.nodes[59403740] = Rare({
    id = 84838,
    quest = 36279,
    rewards = {Item({item = 118199, note = L['trinket']})}
}) -- Poisonmaster Bortusk

map.nodes[62783737] = Rare({
    id = 84810,
    quest = 36268,
    rewards = {Transmog({item = 118735, slot = L['cloth']})}
}) -- Kalos the Bloodbathed

map.nodes[65246826] = Rare({
    id = 84856,
    quest = 36283,
    rewards = {Transmog({item = 118205, slot = L['leather']})},
    pois = {Path({64086471, 64296551, 64656578, 65206718, 65246826})}
}) -- Blightglow

map.nodes[64975412] = Rare({
    id = 84872,
    quest = 36288,
    rewards = {
        Transmog({item = 118204, slot = L['dagger']}), Currency({id = 824})
    }
}) -- Oskiira the Vengeful

map.nodes[68854890] = Rare({
    id = 84833,
    quest = 36276,
    rewards = {
        Transmog({item = 118203, slot = L['leather']}), Currency({id = 824})
    }
}) -- Sangrikrass

map.nodes[69005400] = Rare({id = 80372, quest = 37406}) -- Echidna

map.nodes[70402380] = Rare({
    id = 85037,
    quest = 37361,
    rewards = {Transmog({item = 119354, slot = L['cloth']})}
}) -- Kenos the Unraveler

map.nodes[72001980] = Rare({
    id = 85036,
    quest = 37360,
    rewards = {Transmog({item = 119373, slot = L['mail']})}
}) -- Formless Nightmare

map.nodes[72631934] = Rare({
    id = 85026,
    quest = 37358,
    rewards = {
        Transmog({item = 119410, slot = L['staff']}), Toy({item = 119178})
    }
}) -- Soul-Twister Torek

map.nodes[73223069] = Rare({
    id = 85078,
    quest = 37359,
    rewards = {Transmog({item = 119392, slot = L['1h_axe']})},
    pois = {
        Path({
            72993213, 73133174, 73123099, 73223069, 73373073, 73423117,
            73473151, 73833211, 74123244, 73973304, 74123244, 74533259,
            75113262, 74123244, 74493159
        })
    }
}) -- Voidreaver Urnae

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[29444162] = Treasure({
    label = L['egg_of_varasha_treasure'],
    quest = 35334,
    note = L['in_cave'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Pet({item = 118207, id = 1541})
    },
    pois = {POI({31194308})}
}) -- Egg of Varasha

map.nodes[34152752] = Treasure({
    label = L['sun_touched_cache_treasure'],
    quest = 36421,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Sun-Touched Cache

map.nodes[36293934] = Treasure({
    label = L['orcish_signaling_horn_treasure'],
    quest = 36402,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 120337, note = L['trinket']})
    }
}) -- Orcish Signaling Horn

map.nodes[36445779] = Treasure({
    label = L['ephials_dark_grimoire_treasure'],
    quest = 36418,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Transmog({item = 116914, slot = L['offhand']})
    }
}) -- Ephial's Dark Grimoire

map.nodes[36821715] = Treasure({
    label = L['outcasts_belongings_treasure'],
    quest = 36243,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    }
}) -- Outcast's Belongings

map.nodes[37154750] = Treasure({
    label = L['garrison_supplies_treasure'],
    quest = 36420,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Garrison Supplies

map.nodes[37455083] = Treasure({
    label = L['rooby_roos_ruby_rollar_treasure'],
    quest = 36657,
    note = L['rooby_roos_ruby_collar_note'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 116887, note = L['neck']})
    }
}) -- Rooby Roo's Ruby Rollar

map.nodes[37715632] = Treasure({
    label = L['admiral_taylors_coffer_treasure'],
    quest = 36462,
    note = L['admiral_taylors_coffer_note'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 116020})
    },
    pois = {POI({36195446})}
}) -- Admiral Taylor's Coffer

map.nodes[40605497] = Treasure({
    label = L['abandoned_mining_pick_treasure'],
    quest = 36458,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Transmog({item = 116913, slot = L['1h_axe']})
    }
}) -- Abandoned Mining Pick

map.nodes[41855042] = Treasure({
    label = L['garrison_workmans_hammer_treasure'],
    quest = 36451,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Transmog({item = 116918, slot = L['1h_mace']})
    }
}) -- Garrison Workman's Hammer

map.nodes[42172169] = Treasure({
    label = L['outcasts_belongings_treasure'],
    quest = 36447,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    }
}) -- Outcast's Belongings

map.nodes[44331204] = Treasure({
    label = L['rukhmars_image_treasure'],
    quest = 36377,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 118693})
    }
}) -- Rukhmar's Image

map.nodes[46913405] = Treasure({
    label = L['outcasts_pouch_treasure'],
    quest = 36446,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    }
}) -- Outcast's Pouch

map.nodes[47773612] = Treasure({
    label = L['lost_ring_treasure'],
    note = L['in_water'],
    quest = 36411,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 116911, note = L['ring']})
    }
}) -- Lost Ring

map.nodes[47933067] = Treasure({
    label = L['shattered_hand_lockbox_treasure'],
    quest = 36361,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 116920})
    }
}) -- Shattered Hand Lockbox

map.nodes[49223720] = Treasure({
    label = L['assassins_spear_treasure'],
    quest = 36445,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Transmog({item = 116835, slot = L['polearm']})
    }
}) -- Assassin's Spear

map.nodes[50332580] = Treasure({
    label = L['iron_horde_explosives_treasure'],
    quest = 36444,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 118691}), Currency({id = 824})
    }
}) -- Iron Horde Explosives

map.nodes[50502209] = Treasure({
    label = L['fractured_sunstone_treasure'],
    quest = 36246,
    note = L['fractured_sunstone_note'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 116919})
    }
}) -- Fractured Sunstone

map.nodes[50782874] = Treasure({
    label = L['lost_herb_satchel_treasure'],
    quest = 36247,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    }
}) -- Lost Herb Satchel

map.nodes[54363255] = Treasure({
    label = L['toxicfang_venom_treasure'],
    quest = 36364,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 118695}), Currency({id = 824})
    }
}) -- Toxicfang Venom

map.nodes[55539085] = Treasure({
    label = L['campaign_contributions_treasure'],
    quest = 36367,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    }
}) -- Campaign Contributions

map.nodes[56242878] = Treasure({
    label = L['shattered_hand_cache_treasure'],
    quest = 36362,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Shattered Hand Cache

map.nodes[58706024] = Treasure({
    label = L['ogron_plunder_treasure'],
    quest = 36340,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 116922})
    }
}) -- Ogron Plunder

map.nodes[59169063] = Treasure({
    label = L['sailor_zazzuks_180_proof_rum_treasure'],
    quest = 36366,
    note = L['sailor_zazzuks_180_proof_rum_note'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 116917})
    }
}) -- Sailor Zazzuk's 180-Proof Rum

map.nodes[59638134] = Treasure({
    label = L['spray_o_matic_5000_xt_treasure'],
    quest = 36365,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Spray-O-Matic 5000 XT

map.nodes[60868460] = Treasure({
    label = L['shredder_parts_treasure'],
    quest = 36456,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Shredder Parts

map.nodes[63576737] = Treasure({
    label = L['mysterious_mushrooms_treasure'],
    quest = 36454,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    }
}) -- Mysterious Mushrooms

map.nodes[66475652] = Treasure({
    label = L['waterlogged_satchel_treasure'],
    quest = 36455,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    }
}) -- Waterlogged Satchel

map.nodes[68333893] = Treasure({
    label = L['sethekk_idol_treasure'],
    quest = 36375,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 118692})
    }
}) -- Sethekk Idol

map.nodes[68418897] = Treasure({
    label = L['coinbenders_payment_treasure'],
    note = L['coinbenders_payment_treasure_note'],
    quest = 36453,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    }
}) -- Coinbender's Payment

map.nodes[71634859] = Treasure({
    label = L['sethekk_ritual_brew_treasure'],
    quest = 36450,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 109223})
    }
}) -- Sethekk Ritual Brew

map.nodes[60878778] = Treasure({
    quest = 35481,
    label = L['nizzixs_chest_treasure'],
    note = L['nizzixs_chest_treasure_note'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Nizzix's Chest

map.nodes[57962229] = Treasure({
    quest = 36374,
    label = '{npc:85165}',
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 118694})
    }
}) -- Statue of Anzu

-------------------------------------------------------------------------------
---------------------------- ARCHAEOLOGY TREASURE -----------------------------
-------------------------------------------------------------------------------

local ArchaeologyTreasure = Class('ArchaeologyTreasure', Treasure, {
    icon = 'chest_bn',
    group = ns.groups.ARCHAEOLOGY_TREASURE,
    requires = ns.requirement.Profession(11, 794), -- Archaeology
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 829})
    }
})

map.nodes[33292727] = ArchaeologyTreasure({
    label = L['sun_touched_cache_treasure'],
    quest = 36422
}) -- Sun-Touched Cache

map.nodes[42691832] = ArchaeologyTreasure({
    label = L['misplaced_scrolls_treasure'],
    quest = 36244
}) -- Misplaced Scrolls

map.nodes[42961637] = ArchaeologyTreasure({
    label = L['relics_of_the_outcasts_treasure'],
    quest = 36245
}) -- Relics of the Outcasts

map.nodes[43162725] = ArchaeologyTreasure({
    label = L['relics_of_the_outcasts_treasure'],
    quest = 36355
}) -- Relics of the Outcasts

map.nodes[45944417] = ArchaeologyTreasure({
    label = L['relics_of_the_outcasts_treasure'],
    quest = 36354
}) -- Relics of the Outcasts

map.nodes[51894892] = ArchaeologyTreasure({
    label = L['relics_of_the_outcasts_treasure'],
    quest = 36360
}) -- Relics of the Outcasts

map.nodes[52474280] = ArchaeologyTreasure({
    label = L['misplaced_scroll_treasure'],
    quest = 36416
}) -- Misplaced Scroll

map.nodes[56304530] = ArchaeologyTreasure({
    label = L['smuggled_apexis_artifacts_treasure'],
    quest = 36433
}) -- Smuggled Apexis Artifacts

map.nodes[60215391] = ArchaeologyTreasure({
    label = L['relics_of_the_outcasts_treasure'],
    quest = 36359
}) -- Relics of the Outcasts

map.nodes[67383983] = ArchaeologyTreasure({
    label = L['relics_of_the_outcasts_treasure'],
    quest = 36356
}) -- Relics of the Outcasts

-------------------------------------------------------------------------------
-------------------- OFFERING TO THE RAVEN MOTHER TREASURE --------------------
-------------------------------------------------------------------------------

local OfferingToTheRavenMother = Class('OfferingToTheRavenMother', Treasure, {
    label = L['offering_to_the_raven_mother_treasure'],
    icon = 'chest_gn',
    group = ns.groups.OFFERING,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 118267})
    }
})

map.nodes[48355261] = OfferingToTheRavenMother({quest = 36405}) -- Offering to the Raven Mother
map.nodes[48915470] = OfferingToTheRavenMother({quest = 36406}) -- Offering to the Raven Mother
map.nodes[51886465] = OfferingToTheRavenMother({quest = 36407}) -- Offering to the Raven Mother
map.nodes[53315552] = OfferingToTheRavenMother({quest = 36403}) -- Offering to the Raven Mother
map.nodes[60986387] = OfferingToTheRavenMother({quest = 36410}) -- Offering to the Raven Mother

-------------------------------------------------------------------------------
------------------------- SHRINE OF TEROKK TREASURES --------------------------
-------------------------------------------------------------------------------

local ElixirOfShadowSight = Class('ElixirOfShadowSight', Treasure, {
    label = L['elixir_of_shadow_sight_treasure'],
    icon = 'chest_pk',
    group = ns.groups.SHRINES_OF_TEROKK,
    rewards = {Item({item = 115463})}
})

map.nodes[43901501] = ElixirOfShadowSight({
    quest = 36395,
    note = L['elixir_pre_note'] .. '\n\n' .. L['elixir_01_note']
}) -- Elixir of Shadow Sight

map.nodes[43822463] = ElixirOfShadowSight({
    quest = 36397,
    note = L['elixir_pre_note'] .. '\n\n' .. L['elixir_02_note']
}) -- Elixir of Shadow Sight

map.nodes[69154333] = ElixirOfShadowSight({
    quest = 36398,
    note = L['elixir_pre_note'] .. '\n\n' .. L['elixir_03_note']
}) -- Elixir of Shadow Sight

map.nodes[48976256] = ElixirOfShadowSight({
    quest = 36399,
    note = L['in_small_cave'] .. '\n\n' .. L['elixir_pre_note'] .. '\n\n' ..
        L['elixir_04_note']
}) -- Elixir of Shadow Sight

map.nodes[55662209] = ElixirOfShadowSight({
    quest = 36400,
    note = L['elixir_pre_note'] .. '\n\n' .. L['elixir_05_note']
}) -- Elixir of Shadow Sight

map.nodes[53148451] = ElixirOfShadowSight({
    quest = 36401,
    note = L['in_water'] .. '\n\n' .. L['elixir_pre_note'] .. '\n\n' ..
        L['elixir_06_note']
}) -- Elixir of Shadow Sight

local GiftOfAnzu = Class('GiftOfAnzu', Treasure, {
    label = L['gift_of_anzu_treasure'],
    requires = ns.requirement.Item(115463), -- Elixir of Shadow Sight
    icon = 'chest_pk',
    group = ns.groups.SHRINES_OF_TEROKK
})

map.nodes[42392667] = GiftOfAnzu({
    quest = 36388,
    rewards = {Transmog({item = 118242, slot = L['wand']})}
}) -- Gift of Anzu
map.nodes[46864048] = GiftOfAnzu({
    quest = 36389,
    rewards = {Transmog({item = 118238, slot = L['polearm']})}
}) -- Gift of Anzu
map.nodes[48604451] = GiftOfAnzu({
    quest = 36386,
    rewards = {Transmog({item = 118237, slot = L['crossbow']})}
}) -- Gift of Anzu
map.nodes[52031965] = GiftOfAnzu({
    quest = 36392,
    rewards = {Transmog({item = 118239, slot = L['staff']})}
}) -- Gift of Anzu
map.nodes[57027896] = GiftOfAnzu({
    quest = 36390,
    rewards = {Transmog({item = 118241, slot = L['1h_sword']})}
}) -- Gift of Anzu
map.nodes[61105536] = GiftOfAnzu({
    quest = 36381,
    rewards = {Transmog({item = 118240, slot = L['1h_sword']})}
}) -- Gift of Anzu

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[46404520] = PetBattle({
    id = 87123,
    rewards = {Achievement({id = 9724, criteria = 27014})}
}) -- Vesharr

-------------------------------------------------------------------------------
-------------------------------- I FOUND PEPE! --------------------------------
-------------------------------------------------------------------------------

map.nodes[54128361] = Collectible({
    label = L['pirate_pepe_treasure'],
    note = L['pirate_pepe_note'],
    icon = 1044996,
    quest = 39268,
    group = ns.groups.PEPE,
    rewards = {
        Achievement({id = 10053, criteria = 28185}), Item({item = 127870})
    }
}) -- Pirate Pepe

-------------------------------------------------------------------------------
------------------------- WOULD YOU LIKE A PAMPHLET? --------------------------
-------------------------------------------------------------------------------

local ForbiddenTome = Collectible({
    id = 85992,
    icon = 'peg_bl',
    scale = 1.5,
    group = ns.groups.WOULD_YOU_LIKE_A_PAMPLET,
    note = L['forbidden_tome_note'],
    rewards = {Achievement({id = 9432})} -- Would You Like A Pamplet?
})

map.nodes[74623122] = ForbiddenTome
map.nodes[74272773] = ForbiddenTome
map.nodes[71702790] = ForbiddenTome
map.nodes[70512415] = ForbiddenTome
map.nodes[71202285] = ForbiddenTome

-------------------------------------------------------------------------------
----------------------------- KING OF THE MONSTERS ----------------------------
-------------------------------------------------------------------------------

local KingOfTheMonstersRare = Class('KingOfTheMonstersRare', Collectible, {
    icon = 'peg_rd',
    scale = 1.5,
    group = ns.groups.KING_OF_THE_MONSTERS
})

map.nodes[73404500] = KingOfTheMonstersRare({
    id = 86621,
    rewards = {Achievement({id = 9601, criteria = 26368})}
}) -- Morphed Sentient

map.nodes[71203380] = KingOfTheMonstersRare({
    id = 87027,
    rewards = {
        Achievement({id = 9601, criteria = 27428}), Item({item = 119363})
    }
}) -- Shadow Hulk

map.nodes[71404500] = KingOfTheMonstersRare({
    id = 87029,
    rewards = {
        Achievement({id = 9601, criteria = 27429}), Item({item = 119401})
    }
}) -- Giga Sentinel

map.nodes[73803820] = KingOfTheMonstersRare({
    id = 87026,
    rewards = {
        Achievement({id = 9601, criteria = 27427}), Item({item = 119398})
    }
}) -- Mecha Plunderer

map.nodes[74404280] = KingOfTheMonstersRare({
    id = 87019,
    rewards = {
        Achievement({id = 9601, criteria = 27426}), Item({item = 119404})
    }
}) -- Glutonous Giant

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

map.nodes[36431830] = Voidtalon
map.nodes[46822021] = Voidtalon
map.nodes[50430631] = Voidtalon
map.nodes[60901122] = Voidtalon

-------------------------------------------------------------------------------
---------------------------------- FOLLOWERS ----------------------------------
-------------------------------------------------------------------------------

map.nodes[54206295] = Collectible({
    id = 87561,
    icon = 136042,
    note = L['in_cave'] .. ' ' .. L['leorajh_follower_note'],
    rewards = {Follower({id = 219, icon = 136042})},
    pois = {POI({54966513})}
}) -- Leorajh

-------------------------------------------------------------------------------
---------------------------------- SQUIRRELS ----------------------------------
-------------------------------------------------------------------------------

map.nodes[53152983] = ns.node.Squirrel({
    id = 88462,
    rewards = {Achievement({id = 14728, criteria = 13})}
}) -- Thicket Skitterer

map.nodes[50502940] = ns.node.Squirrel({
    id = 83674,
    rewards = {Achievement({id = 14728, criteria = 14})}
}) -- Mud Jumper
