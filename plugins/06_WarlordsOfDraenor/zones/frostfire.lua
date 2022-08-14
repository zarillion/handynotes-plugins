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
local Toy = ns.reward.Toy

local Path = ns.poi.Path
local POI = ns.poi.POI

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({id = 525, settings = true})

local bladespireCitadel = Map({id = 526})
local bladespireCourtyard = Map({id = 527})
local bladespireThrone = Map({id = 528})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

local Gorok = Rare({
    id = 50992,
    note = L['multiple_spawn_note'],
    rewards = {
        Mount({item = 116674, id = 627}) -- Great Greytusk
    }
}) -- Gorok

map.nodes[63407940] = Gorok
map.nodes[22806640] = Gorok
map.nodes[64805300] = Gorok
map.nodes[51805060] = Gorok
map.nodes[58001840] = Gorok

map.nodes[25405500] = Rare({
    id = 77513,
    quest = 34129,
    rewards = {Item({item = 112066})}
}) -- Coldstomp the Griever

map.nodes[26803160] = Rare({
    id = 77527,
    quest = 34133,
    rewards = {Item({item = 111475})}
}) -- The Beater

map.nodes[27405000] = Rare({
    id = 78867,
    quest = 34497,
    rewards = {Item({item = 111476}), Toy({item = 111476})}
}) -- Breathless

map.nodes[28206620] = Rare({
    id = 78606,
    quest = 34470,
    rewards = {Item({item = 111666})}
}) -- Pale Fishmonger

map.nodes[34002320] = Rare({
    id = 71721,
    quest = 32941,
    rewards = {Item({item = 101436})}
}) -- Canyon Icemother

map.nodes[36803400] = Rare({
    id = 76918,
    quest = 33938,
    rewards = {Item({item = 111576})}
}) -- Primalist Mur'og

map.nodes[38201600] = Rare({
    id = 82620,
    quest = 37383,
    rewards = {Item({item = 119399})}
}) -- Son of Goramal

map.nodes[38606300] = Rare({
    id = 80312,
    quest = 34865,
    rewards = {Item({item = 112077})}
}) -- Grutush the Pillager

map.nodes[40402780] = Rare({
    id = 79145,
    quest = 34559,
    rewards = {Item({item = 111477})}
}) -- Yaga the Scarred

map.nodes[40404700] = Rare({
    id = 72294,
    quest = 33014,
    rewards = {Item({item = 111490})}
}) -- Cindermaw

map.nodes[40601240] = Rare({id = 79104, quest = 34522}) -- Ug'lok the Frozen

map.nodes[41206820] = Rare({
    id = 80242,
    quest = 34843,
    rewards = {Item({item = 111953})}
}) -- Chillfang

map.nodes[43002100] = Rare({
    id = 82614,
    quest = 37387,
    rewards = {Item({item = 119356})}
}) -- Moltnoma

map.nodes[43600940] = Rare({
    id = 82618,
    quest = 37384,
    rewards = {Item({item = 119379}), Toy({item = 119163})}
}) -- Tor'goroth

map.nodes[45001500] = Rare({
    id = 82617,
    quest = 37385,
    rewards = {Item({item = 119362})}
}) -- Slogtusk the Corpse-Eater

map.nodes[47005520] = Rare({
    id = 80235,
    quest = 34839,
    rewards = {Item({item = 111955})}
}) -- Gurun

map.nodes[48202340] = Rare({
    id = 82616,
    quest = 37386,
    rewards = {Item({item = 119390})}
}) -- Jabberjaw

map.nodes[50201860] = Rare({
    id = 75120,
    quest = 33531,
    rewards = {Item({item = 112096})}
}) -- Clumsy Cragmaul Brute

map.nodes[50405240] = Rare({
    id = 80190,
    quest = 34825,
    rewards = {Item({item = 111948})}
}) -- Gruuk

map.nodes[54602220] = Rare({
    id = 71665,
    quest = 32918,
    rewards = {Item({item = 111530})}
}) -- Giant-Slayer Kul

map.nodes[54606940] = Rare({
    id = 76914,
    quest = 34131,
    rewards = {Item({item = 111484})}
}) -- Coldtusk

map.nodes[58603420] = Rare({id = 78151, quest = 34130}) -- Huntmaster Kuang

map.nodes[61602640] = Rare({
    id = 79678,
    quest = 34708,
    rewards = {Item({item = 112078})}
}) -- Jehil the Climber

map.nodes[66403140] = Rare({
    id = 74613,
    quest = 33843,
    rewards = {Item({item = 111533})}
}) -- Broodmother Reeg'ak

map.nodes[67407820] = Rare({
    id = 78621,
    quest = 34477,
    rewards = {Item({item = 112086})}
}) -- Cyclonic Fury

map.nodes[68801940] = Rare({
    id = 87348,
    quest = 37382,
    rewards = {Item({item = 119415})}
}) -- Hoarfrost

map.nodes[70002700] = Rare({
    id = 87351,
    quest = 37381,
    rewards = {Item({item = 119376})}
}) -- Mother of Goren

map.nodes[70003600] = Rare({
    id = 72364,
    quest = 33562,
    rewards = {Item({item = 111545})}
}) -- Gorg'ak the Lava Guzzler

map.nodes[70603900] = Rare({
    id = 87356,
    quest = 37379,
    rewards = {Item({item = 119416})}
}) -- Vrok the Ancient

map.nodes[71404680] = Rare({
    id = 74971,
    quest = 33504,
    rewards = {Item({item = 107661})}
}) -- Firefury Giant

map.nodes[72203300] = Rare({
    id = 78265,
    quest = 34361,
    rewards = {Item({item = 111534})}
}) -- The Bone Crawler

map.nodes[72203600] = Rare({
    id = 87352,
    quest = 37380,
    note = L['gibblette_the_cowardly_note'],
    rewards = {Item({item = 119349}), Toy({item = 119180})}
}) -- Gibblette the Cowardly

map.nodes[72402420] = Rare({
    id = 87357,
    quest = 37378,
    rewards = {Item({item = 119416})}
}) -- Valkor

map.nodes[76406340] = Rare({
    id = 77526,
    quest = 34132,
    rewards = {Item({item = 112094})}
}) -- Scout Goreseeker

map.nodes[83604720] = Rare({
    id = 87622,
    quest = 37402,
    rewards = {Item({item = 119366})}
}) -- Ogom the Mangler

map.nodes[85005220] = Rare({id = 87600, quest = 37556}) -- Jaluk the Pacifist

map.nodes[86604880] = Rare({
    id = 84392,
    quest = 37401,
    rewards = {Item({item = 119359})}
}) -- Ragore Driftstalker

map.nodes[86605180] = Rare({
    id = 84376,
    quest = 37403,
    rewards = {Item({item = 119374})}
}) -- Earthshaker Holar

map.nodes[87004640] = Rare({
    id = 84374,
    quest = 37404,
    rewards = {Item({item = 119372})}
}) -- Kaga the Ironbender

map.nodes[88605740] = Rare({
    id = 84378,
    quest = 37525,
    rewards = {Item({item = 119365})}
}) -- Ak'ox the Slaughterer

map.nodes[13205060] = Rare({
    id = 81001,
    rewards = {
        Mount({item = 116794, id = 657}) -- Garn Nighthowl
    }
}) -- Nok-Karosh

map.nodes[62604220] = Rare({
    id = 72156,
    note = L['borrok_the_devourer_note'],
    rewards = {Item({item = 112110})}
}) -- Borrok the Devourer

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[09804540] = Treasure({
    label = L['sealed_jug_treasure'],
    quest = 34641,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 111407})
    }
}) -- Sealed Jug

map.nodes[16104980] = Treasure({
    label = L['supply_dump_treasure'],
    quest = 33942,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Supply Dump

map.nodes[19201200] = Treasure({
    label = L['lucky_coin_treasure'],
    quest = 34642,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 111408})
    }
}) -- Lucky Coin

map.nodes[21605070] = Treasure({
    label = L['pale_loot_sack_treasure'],
    quest = 34931,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Pale Loot Sack

map.nodes[24001300] = Treasure({
    label = L['snow_covered_strongbox_treasure'],
    quest = 34647,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Snow-Covered Strongbox

map.nodes[25502040] = Treasure({
    label = L['gnawed_bone_treasure'],
    quest = 34648,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 111415})
    }
}) -- Gnawed Bone

map.nodes[26503640] = Treasure({
    label = L['gorrthoggs_personal_reserve_treasure'],
    quest = 35367,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Gorr'thogg's Personal Reserve

map.nodes[26603520] = Treasure({
    label = L['ogre_booty_treasure'],
    quest = 35347,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Ogre Booty

map.nodes[26703940] = Treasure({
    label = L['doorogs_secret_stash_treasure'],
    quest = 35370,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 113189})
    }
}) -- Doorog's Secret Stash

map.nodes[27173763] = Treasure({
    label = L['ogre_booty_treasure'],
    quest = 35373,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    }
}) -- Ogre Booty

map.nodes[27283876] = Treasure({
    label = L['ogre_booty_treasure'],
    quest = 35570,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    }
}) -- Ogre Booty

map.nodes[27603382] = Treasure({
    label = L['ogre_booty_treasure'],
    quest = 35371,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    }
}) -- Ogre Booty

map.nodes[27604280] = Treasure({
    label = L['slaves_stash_treasure'],
    quest = 33500,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 43696})
    }
}) -- Slave's Stash

map.nodes[28093409] = Treasure({
    label = L['ogre_booty_treasure'],
    quest = 35567,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Ogre Booty

map.nodes[28093409] = Treasure({
    label = L['ogre_booty_treasure'],
    quest = 35568,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Ogre Booty

map.nodes[28093409] = Treasure({
    label = L['ogre_booty_treasure'],
    quest = 35569,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Ogre Booty

map.nodes[28293440] = Treasure({
    label = L['ogre_booty_treasure'],
    quest = 35368,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    }
}) -- Ogre Booty

map.nodes[28293440] = Treasure({
    label = L['ogre_booty_treasure'],
    quest = 35369,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    }
}) -- Ogre Booty

map.nodes[34202350] = Treasure({
    label = L['thunderlord_cache_treasure'],
    quest = 32803,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Thunderlord Cache

map.nodes[37205920] = Treasure({
    label = L['raided_loot_treasure'],
    quest = 34967,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Raided Loot

map.nodes[40902010] = Treasure({
    label = L['envoys_satchel_treasure'],
    quest = 34473,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 110536})
    }
}) -- Envoy's Satchel

map.nodes[42401970] = Treasure({
    label = L['burning_pearl_treasure'],
    quest = 34520,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 120341})
    }
}) -- Burning Pearl

map.nodes[42703170] = Treasure({
    label = L['crag_leapers_cache_treasure'],
    quest = 33940,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 112187})
    }
}) -- Crag-Leaper's Cache

map.nodes[43705550] = Treasure({
    label = L['forgotten_supplies_treasure'],
    quest = 34841,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Forgotten Supplies

map.nodes[51002280] = Treasure({
    label = L['glowing_obsidian_shard_treasure'],
    quest = 34521,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Glowing Obsidian Shard

map.nodes[56707180] = Treasure({
    label = L['iron_horde_munitions_treasure'],
    quest = 36863,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Iron Horde Munitions

map.nodes[57105210] = Treasure({
    label = L['frozen_orc_skeleton_treasure'],
    quest = 34476,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 111554})
    }
}) -- Frozen Orc Skeleton

map.nodes[64702570] = Treasure({
    label = L['survivalists_cache_treasure'],
    quest = 33946,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Survivalist's Cache

map.nodes[66702640] = Treasure({
    label = L['goren_leftovers_treasure'],
    quest = 33948,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Goren Leftovers

map.nodes[68204580] = Treasure({
    label = L['grimfrost_treasure_treasure'],
    quest = 33947,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Grimfrost Treasure

map.nodes[69006910] = Treasure({
    label = L['iron_horde_supplies_treasure'],
    quest = 33017,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Iron Horde Supplies

map.nodes[74505620] = Treasure({
    label = L['lady_senas_other_materials_stash_treasure'],
    quest = 34937,
    faction = 'Horde',
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Lady Sena's Other Materials Stash

map.nodes[21900960] = Treasure({
    label = L['lagoon_pool_treasure'],
    quest = 33926,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Toy({item = 108739})
    }
}) -- Lagoon Pool

map.nodes[23102500] = Treasure({
    label = L['arena_masters_war_horn_treasure'],
    quest = 33916,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Toy({item = 108735})
    }
}) -- Arena Master's War Horn

map.nodes[24202720] = Treasure({
    label = L['spectators_chest_treasure'],
    quest = 33501,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 63293})
    },
    pois = {POI({25003000})}
}) -- Spectator's Chest

map.nodes[24204860] = Treasure({
    label = L['frozen_frostwolf_axe_treasure'],
    quest = 34507,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 110689})
    },
    pois = {POI({25005100})}
}) -- Frozen Frostwolf Axe

map.nodes[30305120] = Treasure({
    label = L['time_warped_tower_treasure'],
    quest = 33438,
    note = L['time_warped_tower_note'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 107662})
    }
}) -- Time-Warped Tower

map.nodes[38403780] = Treasure({
    label = L['obsidian_petroglyph_treasure'],
    quest = 33502,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 112087})
    }
}) -- Obsidian Petroglyph

map.nodes[39701710] = Treasure({
    label = L['cragmaul_cache_treasure'],
    quest = 33532,
    note = L['cragmaul_cache_note'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 120945}), Currency({id = 823})
    }
}) -- Cragmaul Cache

map.nodes[54803540] = Treasure({
    label = L['young_orc_traveler_treasure'],
    quest = 33525,
    note = L['young_orc_traveler_note'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 107273})
    },
    pois = {POI({54803540})}
}) -- Young Orc Traveler

map.nodes[63401480] = Treasure({
    label = L['young_orc_woman_treasure'],
    quest = 33525,
    note = L['young_orc_woman_note'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 107272})
    },
    pois = {POI({63401480})}
}) -- Young Orc Woman

map.nodes[64406580] = Treasure({
    label = L['wiggling_egg_treasure'],
    quest = 33505,
    note = L['wiggling_egg_note'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Pet({item = 117564, id = 1471})
    }
}) -- Wiggling Egg

local BladeSpireTreasure = Class('BladeSpireTreasure', Treasure, {
    getters = {
        requirement = function(self)
            if (ns.faction == 'Horde') then
                return ns.requirement.Quest(33657) -- Moving In
            else
                return nil
            end
        end,
        rewards = function(self)
            local rewards = {
                Achievement({
                    id = 9728,
                    criteria = {
                        id = 1,
                        qty = true,
                        suffix = L['treasures_discovered']
                    }
                })
            }
            if (self.currencyID ~= nil) then
                table.insert(rewards, Currency({id = self.currencyID}))
            end
            if (self.itemID ~= nil) then
                table.insert(rewards, Item({item = self.itemID}))
            end
            return rewards
        end
    }
})

bladespireCitadel.nodes[44806480] = BladeSpireTreasure({
    label = L['ogre_booty_treasure'],
    quest = 35570
}) -- Ogre Booty

bladespireCitadel.nodes[48506720] = BladeSpireTreasure({
    label = L['ogre_booty_treasure'],
    quest = 35369,
    note = L['up_some_crates_note']
}) -- Ogre Booty

bladespireCitadel.nodes[53702880] = BladeSpireTreasure({
    label = L['ogre_booty_treasure'],
    quest = 35368,
    note = L['up_some_crates_note']
}) -- Ogre Booty

bladespireCourtyard.nodes[36502900] = BladeSpireTreasure({
    label = L['ogre_booty_treasure'],
    quest = 35347,
    currencyID = 824
}) -- Ogre Booty

bladespireCourtyard.nodes[37806900] = BladeSpireTreasure({
    label = L['doorogs_secret_stash_treasure'],
    quest = 35370,
    note = 'On the second floor outside',
    itemID = 113189
}) -- Doorog's Secret Stash

bladespireCourtyard.nodes[46401640] = BladeSpireTreasure({
    label = L['ogre_booty_treasure'],
    quest = 35371,
    note = L['up_some_crates_note']
}) -- Ogre Booty

bladespireCourtyard.nodes[51101770] = BladeSpireTreasure({
    label = L['ogre_booty_treasure'],
    quest = 35567,
    currencyID = 824
}) -- Ogre Booty

bladespireCourtyard.nodes[52605300] = BladeSpireTreasure({
    label = L['ogre_booty_treasure'],
    quest = 35373,
    note = L['up_some_crates_note']
}) -- Ogre Booty

bladespireCourtyard.nodes[70806800] = BladeSpireTreasure({
    label = L['ogre_booty_treasure'],
    quest = 35569,
    note = L['in_the_vault_note'],
    currencyID = 824
}) -- Ogre Booty

bladespireCourtyard.nodes[76606330] = BladeSpireTreasure({
    label = L['ogre_booty_treasure'],
    quest = 35568,
    note = L['in_the_vault_note'],
    currencyID = 824
}) -- Ogre Booty

bladespireThrone.nodes[31706640] = BladeSpireTreasure({
    label = L['gorrthoggs_personal_reserve_treasure'],
    quest = 35367,
    itemID = 113108
}) -- Gorr'thogg's Personal Reserve

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[68606460] = PetBattle({
    id = 87122,
    rewards = {Achievement({id = 9724, criteria = 27013})}
}) -- Gargra

-------------------------------------------------------------------------------
----------------------------- WRITING IN THE SNOW -----------------------------
-------------------------------------------------------------------------------

local TatteredJournalPage = Collectible({
    id = 82833,
    icon = 133680,
    group = ns.groups.WRITING_IN_THE_SNOW,
    note = L['multiple_spawn_note'],
    rewards = {
        Achievement({id = 9531, faction = 'Horde'}), -- Writing in the Snow
        Achievement({id = 9530, faction = 'Alliance'}) -- Writing in the Snow
    }
})

map.nodes[40011102] = TatteredJournalPage
map.nodes[40041171] = TatteredJournalPage
map.nodes[44301471] = TatteredJournalPage
map.nodes[44841402] = TatteredJournalPage
map.nodes[44851401] = TatteredJournalPage
map.nodes[46011701] = TatteredJournalPage
map.nodes[46411589] = TatteredJournalPage
map.nodes[47891895] = TatteredJournalPage
map.nodes[48541459] = TatteredJournalPage

-------------------------------------------------------------------------------
------------------------------ BREAKER OF CHAINS ------------------------------
-------------------------------------------------------------------------------

local Slave = Class('Slave', Collectible, {
    scale = 1.1,
    group = ns.groups.BREAKER_OF_CHAINS,
    rewards = {
        Achievement({
            id = 9533,
            criteria = ({id = 1, qty = true, suffix = L['slaves_freed']}) -- Breaker of Chains
        })
    }
})

local FrozenSlave = Slave({label = '{npc:82680}', icon = 'peg_bl'})

map.nodes[37801840] = FrozenSlave
map.nodes[37801860] = FrozenSlave
map.nodes[40001360] = FrozenSlave
map.nodes[40402120] = FrozenSlave
map.nodes[40801940] = FrozenSlave
map.nodes[40801960] = FrozenSlave
map.nodes[41002120] = FrozenSlave
map.nodes[43202020] = FrozenSlave
map.nodes[43402160] = FrozenSlave

local PrisonerCage = Slave({
    label = L['prisoner_cage_label'],
    icon = 'peg_yw',
    requires = ns.requirement.Quest(35637)
})

map.nodes[47361305] = PrisonerCage
map.nodes[50211534] = PrisonerCage
map.nodes[49861564] = PrisonerCage
map.nodes[38141875] = PrisonerCage
map.nodes[46211211] = PrisonerCage
map.nodes[44210905] = PrisonerCage
map.nodes[42720941] = PrisonerCage
map.nodes[41331249] = PrisonerCage
map.nodes[40901168] = PrisonerCage
map.nodes[39931658] = PrisonerCage
map.nodes[37491793] = PrisonerCage

-------------------------------------------------------------------------------
------------------------- DELECTABLE OGRE DELICACIES --------------------------
-------------------------------------------------------------------------------

local Delicacy = Collectible({
    label = L['delectable_ogre_delicacies_label'],
    note = L['delectable_ogre_delicacies_note'],
    icon = 'peg_gn',
    scale = 1.5,
    group = ns.groups.DELECTABLE_OGRE_DELICACIES,
    requires = ns.requirement.Quest(35637),
    rewards = {
        Achievement({id = 9534}) -- Delectable Ogre Delicacies
    }
})

map.nodes[44211505] = Delicacy
map.nodes[39521979] = Delicacy
map.nodes[48491561] = Delicacy
map.nodes[39931260] = Delicacy
map.nodes[41131370] = Delicacy
map.nodes[49771390] = Delicacy
map.nodes[45281156] = Delicacy
map.nodes[38231920] = Delicacy
map.nodes[37691664] = Delicacy

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

map.nodes[51101986] = Voidtalon
map.nodes[52401818] = Voidtalon
map.nodes[53801732] = Voidtalon
map.nodes[48002740] = Voidtalon

-------------------------------------------------------------------------------
---------------------------------- FOLLOWERS ----------------------------------
-------------------------------------------------------------------------------

map.nodes[52004000] = Collectible({
    id = 79601,
    icon = 132355,
    note = L['weaponsmith_na_shra_follower_note'],
    faction = 'Horde',
    rewards = {Follower({id = 179, icon = 132355})}
}) -- Weaponsmith Na'Shra

map.nodes[65906080] = Collectible({
    id = 79607,
    icon = 132320,
    note = L['dagg_follower_note'],
    rewards = {Follower({id = 32, icon = 132320})},
    pois = {POI({39602800}), Path({65906080, 39602800})}
}) -- Dagg

map.nodes[68001900] = Collectible({
    label = '{quest:34464}', -- Mysterious Boots
    icon = 135932,
    note = L['image_of_archmage_vargoth_follower_note'],
    rewards = {Quest({id = 34464}), Follower({id = 190, icon = 135932})}
}) -- Image of Archmage Vargoth
