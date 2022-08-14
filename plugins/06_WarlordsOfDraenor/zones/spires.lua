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

local POI = ns.poi.POI

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
    rewards = {Item({item = 118696}), Currency({id = 824})}
}) -- Gaze

map.nodes[29404140] = Rare({
    id = 82050,
    quest = 35334,
    rewards = {Pet({item = 118207, id = 1541})}
}) -- Varasha

map.nodes[33005900] = Rare({
    id = 84951,
    quest = 36305,
    rewards = {Item({item = 116836})}
}) -- Gobblefin

map.nodes[33402200] = Rare({
    id = 84805,
    quest = 36265,
    rewards = {Item({item = 116858})}
}) -- Stonespite

map.nodes[36003900] = Rare({
    id = 83746,
    quest = 37464,
    rewards = {Mount({item = 116771, id = 634})}
}) -- Rukhmar

map.nodes[36405240] = Rare({
    id = 82247,
    quest = 36129,
    rewards = {Item({item = 116837})}
}) -- Nas Dunberlin

map.nodes[38402780] = Rare({
    id = 85504,
    quest = 36470,
    rewards = {Pet({item = 118107, id = 1540})}
}) -- Rotcap

map.nodes[46402860] = Rare({
    id = 84807,
    quest = 36267,
    rewards = {Item({item = 118198})}
}) -- Durkath Steelmaw

map.nodes[46802300] = Rare({
    id = 80614,
    quest = 35599,
    rewards = {Item({item = 116839})}
}) -- Blade-Dancer Aeryx

map.nodes[51800720] = Rare({
    id = 83990,
    quest = 37394,
    rewards = {Item({item = 119407})}
}) -- Solar Magnifier

map.nodes[52003540] = Rare({
    id = 79938,
    quest = 36478,
    rewards = {Item({item = 118201})}
}) -- Shadowbark

map.nodes[52805480] = Rare({
    id = 85520,
    quest = 36472,
    rewards = {Item({item = 116857})}
}) -- Swarmleaf

map.nodes[53208900] = Rare({
    id = 84417,
    quest = 36396,
    rewards = {Item({item = 118206})}
}) -- Mutafen

map.nodes[54606320] = Rare({
    id = 84836,
    quest = 36278,
    rewards = {Item({item = 116838})}
}) -- Talonbreaker

map.nodes[54803960] = Rare({
    id = 84890,
    quest = 36297,
    rewards = {Item({item = 118200})}
}) -- Festerbloom

map.nodes[56609460] = Rare({
    id = 84955,
    quest = 36306,
    rewards = {Item({item = 118202})}
}) -- Jiasska the Sporegorger

map.nodes[57407400] = Rare({
    id = 84775,
    quest = 36254,
    rewards = {Item({item = 116852})}
}) -- Tesska the Broken

map.nodes[58208460] = Rare({
    id = 84887,
    quest = 36291,
    rewards = {Item({item = 116907})}
}) -- Betsi Boombasket

map.nodes[58604520] = Rare({
    id = 84912,
    quest = 36298,
    rewards = {Item({item = 116855})}
}) -- Sunderthorn

map.nodes[59201500] = Rare({
    id = 86724,
    quest = 36887,
    rewards = {Item({item = 118279})}
}) -- Hermit Palefur

map.nodes[59403740] = Rare({
    id = 84838,
    quest = 36279,
    rewards = {Item({item = 118199})}
}) -- Poisonmaster Bortusk

map.nodes[62603740] = Rare({
    id = 84810,
    quest = 36268,
    rewards = {Item({item = 118735})}
}) -- Kalos the Bloodbathed

map.nodes[64006480] = Rare({
    id = 84856,
    quest = 36283,
    rewards = {Item({item = 118205})}
}) -- Blightglow

map.nodes[66005500] = Rare({
    id = 84872,
    quest = 36288,
    rewards = {Item({item = 118204})}
}) -- Oskiira the Vengeful

map.nodes[69004880] = Rare({
    id = 84833,
    quest = 36276,
    rewards = {Item({item = 118203})}
}) -- Sangrikrass

map.nodes[69005400] = Rare({id = 80372, quest = 37406}) -- Echidna

map.nodes[70402380] = Rare({
    id = 85037,
    quest = 37361,
    rewards = {Item({item = 119354})}
}) -- Kenos the Unraveler

map.nodes[72001980] = Rare({
    id = 85036,
    quest = 37360,
    rewards = {Item({item = 119373})}
}) -- Formless Nightmare

map.nodes[72401940] = Rare({
    id = 85026,
    quest = 37358,
    rewards = {Toy({item = 119178})}
}) -- Soul-Twister Torek

map.nodes[73003180] = Rare({
    id = 85078,
    quest = 37359,
    rewards = {Item({item = 119392})}
}) -- Voidreaver Urnae

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[29504170] = Treasure({
    label = L['egg_of_varasha_treasure'],
    quest = 35334,
    note = L['in_cave'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Pet({item = 118207, id = 1541})
    }
}) -- Egg of Varasha

map.nodes[34102750] = Treasure({
    label = L['sun_touched_cache_treasure'],
    quest = 36421,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Sun-Touched Cache

map.nodes[36303940] = Treasure({
    label = L['orcish_signaling_horn_treasure'],
    quest = 36402,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 120337})
    }
}) -- Orcish Signaling Horn

map.nodes[36505790] = Treasure({
    label = L['ephials_dark_grimoire_treasure'],
    quest = 36418,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 116914})
    }
}) -- Ephial's Dark Grimoire

map.nodes[36801720] = Treasure({
    label = L['outcasts_belongings_treasure'],
    quest = 36243,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    }
}) -- Outcast's Belongings

map.nodes[37204740] = Treasure({
    label = L['garrison_supplies_treasure'],
    quest = 36420,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Garrison Supplies

map.nodes[37305070] = Treasure({
    label = L['rooby_roos_ruby_rollar_treasure'],
    quest = 36657,
    note = L['rooby_roos_ruby_collar_note'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 116887})
    }
}) -- Rooby Roo's Ruby Rollar

map.nodes[37705640] = Treasure({
    label = L['admiral_taylors_coffer_treasure'],
    quest = 36462,
    note = L['admiral_taylors_coffer_note'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 116020})
    },
    pois = {POI({36205440})}
}) -- Admiral Taylor's Coffer

map.nodes[40605500] = Treasure({
    label = L['abandoned_mining_pick_treasure'],
    quest = 36458,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 116913})
    }
}) -- Abandoned Mining Pick

map.nodes[41805050] = Treasure({
    label = L['garrison_workmans_hammer_treasure'],
    quest = 36451,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 116918})
    }
}) -- Garrison Workman's Hammer

map.nodes[42102170] = Treasure({
    label = L['outcasts_belongings_treasure'],
    quest = 36447,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    }
}) -- Outcast's Belongings

map.nodes[44401200] = Treasure({
    label = L['rukhmars_image_treasure'],
    quest = 36377,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 118693})
    }
}) -- Rukhmar's Image

map.nodes[46903400] = Treasure({
    label = L['outcasts_pouch_treasure'],
    quest = 36446,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    }
}) -- Outcast's Pouch

map.nodes[47803610] = Treasure({
    label = L['lost_ring_treasure'],
    quest = 36411,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 116911})
    }
}) -- Lost Ring

map.nodes[47903070] = Treasure({
    label = L['shattered_hand_lockbox_treasure'],
    quest = 36361,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 116920})
    }
}) -- Shattered Hand Lockbox

map.nodes[49203730] = Treasure({
    label = L['assassins_spear_treasure'],
    quest = 36445,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 116835})
    }
}) -- Assassin's Spear

map.nodes[50402580] = Treasure({
    label = L['iron_horde_explosives_treasure'],
    quest = 36444,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 118691})
    }
}) -- Iron Horde Explosives

map.nodes[50502210] = Treasure({
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

map.nodes[50702880] = Treasure({
    label = L['lost_herb_satchel_treasure'],
    quest = 36247,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    }
}) -- Lost Herb Satchel

map.nodes[54403240] = Treasure({
    label = L['toxicfang_venom_treasure'],
    quest = 36364,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 118695}), Currency({id = 824})
    }
}) -- Toxicfang Venom

map.nodes[55509080] = Treasure({
    label = L['campaign_contributions_treasure'],
    quest = 36366,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    }
}) -- Campaign Contributions

map.nodes[56202880] = Treasure({
    label = L['shattered_hand_cache_treasure'],
    quest = 36362,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Shattered Hand Cache

map.nodes[58706030] = Treasure({
    label = L['ogron_plunder_treasure'],
    quest = 36340,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 116922})
    }
}) -- Ogron Plunder

map.nodes[59109060] = Treasure({
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

map.nodes[59708130] = Treasure({
    label = L['spray_o_matic_5000_xt_treasure'],
    quest = 36365,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Spray-O-Matic 5000 XT

map.nodes[60908460] = Treasure({
    label = L['shredder_parts_treasure'],
    quest = 36456,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Shredder Parts

map.nodes[63606740] = Treasure({
    label = L['mysterious_mushrooms_treasure'],
    quest = 36454,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    }
}) -- Mysterious Mushrooms

map.nodes[66505650] = Treasure({
    label = L['waterlogged_satchel_treasure'],
    quest = 36455,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    }
}) -- Waterlogged Satchel

map.nodes[68203880] = Treasure({
    label = L['sethekk_idol_treasure'],
    quest = 36375,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 118692})
    }
}) -- Sethekk Idol

map.nodes[68408900] = Treasure({
    label = L['coinbenders_payment_treasure'],
    quest = 36453,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    }
}) -- Coinbender's Payment

map.nodes[71604850] = Treasure({
    label = L['sethekk_ritual_brew_treasure'],
    quest = 36450,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 109223})
    }
}) -- Sethekk Ritual Brew

map.nodes[43802470] = Treasure({
    label = L['elixir_of_shadow_sight_treasure'],
    note = L['elixir_of_shadow_sight_note'],
    quest = 36397,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 115463})
    }
}) -- Elixer of Shadow Sight

map.nodes[43901500] = Treasure({
    label = L['elixir_of_shadow_sight_treasure'],
    note = L['elixir_of_shadow_sight_note'],
    quest = 36395,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 115463})
    }
}) -- Elixer of Shadow Sight

map.nodes[48906250] = Treasure({
    label = L['elixir_of_shadow_sight_treasure'],
    note = L['elixir_of_shadow_sight_note'],
    quest = 36399,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 115463})
    }
}) -- Elixer of Shadow Sight

map.nodes[55602200] = Treasure({
    label = L['elixir_of_shadow_sight_treasure'],
    note = L['elixir_of_shadow_sight_note'],
    quest = 36400,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 115463})
    }
}) -- Elixer of Shadow Sight

map.nodes[69204330] = Treasure({
    label = L['elixir_of_shadow_sight_treasure'],
    note = L['elixir_of_shadow_sight_note'],
    quest = 36398,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 115463})
    }
}) -- Elixer of Shadow Sight

map.nodes[42402670] = Treasure({
    label = L['gift_of_anzu_treasure'],
    requires = ns.requirement.Item(115463), -- Elixir of Shadow Sight
    quest = 36388,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 118242})
    }
}) -- Gift of Anzu

map.nodes[46904050] = Treasure({
    label = L['gift_of_anzu_treasure'],
    requires = ns.requirement.Item(115463), -- Elixir of Shadow Sight
    quest = 36389,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 118238})
    }
}) -- Gift of Anzu

map.nodes[48604450] = Treasure({
    label = L['gift_of_anzu_treasure'],
    requires = ns.requirement.Item(115463), -- Elixir of Shadow Sight
    quest = 36386,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 118237})
    }
}) -- Gift of Anzu

map.nodes[52001960] = Treasure({
    label = L['gift_of_anzu_treasure'],
    requires = ns.requirement.Item(115463), -- Elixir of Shadow Sight
    quest = 36392,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 118239})
    }
}) -- Gift of Anzu

map.nodes[57007900] = Treasure({
    label = L['gift_of_anzu_treasure'],
    requires = ns.requirement.Item(115463), -- Elixir of Shadow Sight
    quest = 36390,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 118241})
    }
}) -- Gift of Anzu

map.nodes[61105550] = Treasure({
    label = L['gift_of_anzu_treasure'],
    requires = ns.requirement.Item(115463), -- Elixir of Shadow Sight
    quest = 36381,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 118240})
    }
}) -- Gift of Anzu

map.nodes[48305260] = Treasure({
    label = L['offering_to_the_raven_mother_treasure'],
    quest = 36405,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 118267})
    }
}) -- Offering to the Raven Mother

map.nodes[48905470] = Treasure({
    label = L['offering_to_the_raven_mother_treasure'],
    quest = 36406,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 118267})
    }
}) -- Offering to the Raven Mother

map.nodes[51906460] = Treasure({
    label = L['offering_to_the_raven_mother_treasure'],
    quest = 36407,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 118267})
    }
}) -- Offering to the Raven Mother

map.nodes[53305560] = Treasure({
    label = L['offering_to_the_raven_mother_treasure'],
    quest = 36403,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 118267})
    }
}) -- Offering to the Raven Mother

map.nodes[61006380] = Treasure({
    label = L['offering_to_the_raven_mother_treasure'],
    quest = 36410,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 118267})
    }
}) -- Offering to the Raven Mother

map.nodes[33302730] = Treasure({
    label = L['sun_touched_cache_treasure'],
    quest = 36422,
    requires = ns.requirement.Profession(11), -- Archaeology
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 829})
    }
}) -- Sun-Touched Cache

map.nodes[42701830] = Treasure({
    label = L['misplaced_scrolls_treasure'],
    quest = 36244,
    requires = ns.requirement.Profession(11), -- Archaeology
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 829})
    }
}) -- Misplaced Scrolls

map.nodes[43001640] = Treasure({
    label = L['relics_of_the_outcasts_treasure'],
    quest = 36245,
    requires = ns.requirement.Profession(11), -- Archaeology
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 829})
    }
}) -- Relics of the Outcasts

map.nodes[43202720] = Treasure({
    label = L['relics_of_the_outcasts_treasure'],
    quest = 36355,
    requires = ns.requirement.Profession(11), -- Archaeology
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 829})
    }
}) -- Relics of the Outcasts

map.nodes[46004410] = Treasure({
    label = L['relics_of_the_outcasts_treasure'],
    quest = 36354,
    requires = ns.requirement.Profession(11), -- Archaeology
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 829})
    }
}) -- Relics of the Outcasts

map.nodes[51904890] = Treasure({
    label = L['relics_of_the_outcasts_treasure'],
    quest = 36360,
    requires = ns.requirement.Profession(11), -- Archaeology
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 829})
    }
}) -- Relics of the Outcasts

map.nodes[52404280] = Treasure({
    label = L['misplaced_scroll_treasure'],
    quest = 36416,
    requires = ns.requirement.Profession(11), -- Archaeology
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 829})
    }
}) -- Misplaced Scroll

map.nodes[56304530] = Treasure({
    label = L['smuggled_apexis_artifacts_treasure'],
    quest = 36433,
    requires = ns.requirement.Profession(11), -- Archaeology
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 829})
    }
}) -- Smuggled Apexis Artifacts

map.nodes[60205390] = Treasure({
    label = L['relics_of_the_outcasts_treasure'],
    quest = 36359,
    requires = ns.requirement.Profession(11), -- Archaeology
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 829})
    }
}) -- Relics of the Outcasts

map.nodes[67403980] = Treasure({
    label = L['relics_of_the_outcasts_treasure'],
    quest = 36356,
    requires = ns.requirement.Profession(11), -- Archaeology
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 829})
    }
}) -- Relics of the Outcasts

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

map.nodes[54108360] = Collectible({
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

map.nodes[55306850] = Collectible({
    id = 87561,
    icon = 136042,
    note = L['in_cave'] .. ' ' .. L['leorajh_follower_note'],
    rewards = {Follower({id = 219, icon = 136042})}
}) -- Leorajh
