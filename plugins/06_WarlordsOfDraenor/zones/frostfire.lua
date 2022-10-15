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

local Quest = ns.requirement.Quest

local Achievement = ns.reward.Achievement
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog
local Currency = ns.reward.Currency

local POI = ns.poi.POI
local Path = ns.poi.Path

local wod_treasures = Achievement({
    id = 9728,
    criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
})

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({id = 525, settings = true})
local map526 = Map({id = 526, settings = true})
local map527 = Map({id = 527, settings = true})
local map528 = Map({id = 528, settings = true})
local map590 = Map({id = 590, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

local Gorok = Rare({
    id = 50992,
    fgroup = 'garok',
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

map.nodes[13205060] = Rare({
    id = 81001,
    rewards = {
        Mount({item = 116794, id = 657}) -- Garn Nighthowl
    }
}) -- Nok-Karosh

map.nodes[76556355] = Rare({
    id = 77526,
    rewards = {
        Transmog({item = 112094, slot = L['leather']}) -- Goreseeker's Goresplattered Garb
    }
}) -- Scout Goreseeker

map.nodes[66562556] = Rare({
    id = 87352,
    note = L['in_cave'],
    rewards = {
        Transmog({item = 119349, slot = L['cloak']}), -- Craven Coward's Cloak
        Toy({item = 119180}) -- Goren "Log" Roller
    },
    pois = {POI({66982507})}
}) -- Gibblette the Cowardly

map.nodes[36953382] = Rare({
    id = 76918,
    rewards = {
        Transmog({item = 111576, slot = L['cloth']}) -- Ritual Leggings of Mur'og
    }
}) -- Primalist Mur'og

map.nodes[40562758] = Rare({
    id = 79145,
    rewards = {
        Transmog({item = 111477, slot = L['leather']}) -- Yaga's Trophy Belt
    }
}) -- Yaga the Scarred

map.nodes[38636291] = Rare({
    id = 80312,
    note = L['in_cave'],
    rewards = {
        Transmog({item = 112077, slot = L['mail']}) -- Grutush's Fur-Padded Pantaloons
    },
    pois = {POI({38226348})}
}) -- Grutush the Pillager

map.nodes[27265001] = Rare({
    id = 78867,
    rewards = {
        Toy({item = 111476}) -- Stolen Breath
    }
}) -- Breathless

map.nodes[26035567] = Rare({id = 77513}) -- Coldstomp the Griever

map.nodes[26923196] = Rare({
    id = 77527,
    note = L['in_cave'],
    rewards = {
        Transmog({item = 111475, slot = L['2h_mace']}) -- Beater's Beat Stick
    },
    pois = {POI({27133079})}
}) -- The Beater

map.nodes[38241610] = Rare({
    id = 82620,
    rewards = {
        Transmog({item = 119399, slot = L['1h_mace']}) -- Cudgel of the Son of Goramal
    }
}) -- Son of Goramal

map.nodes[42452173] = Rare({
    id = 82614,
    rewards = {Transmog({item = 119356, slot = L['cloth']})} -- Moltonoma's Magma Mantle
}) -- Moltnoma

map.nodes[40351209] = Rare({id = 79104}) -- Ug'lok the Frozen

map.nodes[43480885] = Rare({
    id = 82618,
    rewards = {
        Transmog({item = 119379, slot = L['offhand']}), -- Tor'goroth's Soul Prism
        Toy({item = 119163}) -- Soul Inhaler
    }
}) -- Tor'goroth

map.nodes[44581524] = Rare({
    id = 82617,
    note = L['in_cave'],
    rewards = {
        Transmog({item = 119362, slot = L['leather']}) -- Frostboar Leather Helmet
    },
    pois = {POI({45811420})}
}) -- Slogtusk the Corpse-Eater

map.nodes[54712238] = Rare({id = 71665}) -- 71665

map.nodes[61762660] = Rare({
    id = 79678,
    rewards = {
        Transmog({item = 112078, slot = L['leather']}) -- Jehil's Climbin' Boots
    }
}) -- Jehil the Climber

map.nodes[58213643] = Rare({
    id = 78151,
    rewards = {Currency({id = 824})},
    pois = {Path({56813838, 57653743, 58213643, 58583524, 58783383, 58733269})}
}) -- Huntmaster Kuang

map.nodes[65753131] = Rare({
    id = 74613,
    note = L['in_cave'],
    rewards = {Currency({id = 824})},
    pois = {POI({64323227})}
}) -- Broodmother Reeg'ak

map.nodes[71014735] = Rare({
    id = 74971,
    rewards = {
        Transmog({item = 107661, slot = L['offhand']}), Currency({id = 824}) -- Smoldering Lavacore Orb
    }
}) -- Firefury Giant

map.nodes[88625732] = Rare({
    id = 84378,
    rewards = {
        Transmog({item = 119365, slot = L['leather']}) -- Bloodied Tourniquet Belt
    }
}) -- Ak'ox the Slaughterer

map.nodes[67037867] = Rare({
    id = 78621,
    rewards = {
        Transmog({item = 112086, slot = L['cloth']}) -- Windburnt Pauldrons
    }
}) -- Cyclonic Fury

map.nodes[54286918] = Rare({
    id = 76914,
    rewards = {
        Transmog({item = 111484, slot = L['1h_sword']}), -- Cold Tusk
        Currency({id = 824})
    },
    pois = {Path({54196788, 54286918, 54707037})}
}) -- Coldtusk

map590.nodes[56458698] = Rare({
    id = 96323,
    rewards = {
        Toy({item = 128794}) -- Sack of Spectral Spiders
    }
}) -- Arachnis

map.nodes[41386831] = Rare({
    id = 80242,
    rewards = {
        Transmog({item = 111953, slot = L['leather']}) -- Bat-Leather Breeches
    }
}) -- Chillfang

map.nodes[47145539] = Rare({
    id = 80235,
    note = L['in_cave'],
    rewards = {
        Transmog({item = 111955, slot = L['cloak']}), -- Skog's Drape
        Currency({id = 824})
    },
    pois = {POI({46015745})}
}) -- Gurun

map.nodes[50395275] = Rare({id = 80190}) -- Gruuk

map.nodes[40664708] = Rare({
    id = 72294,
    rewards = {
        Transmog({item = 111490, slot = L['dagger']}), -- Cindermaw's Blazing Talon
        Currency({id = 824})
    }
}) -- Cindermaw

map.nodes[72423308] = Rare({
    id = 78265,
    rewards = {
        Transmog({item = 111534, slot = L['plate']}) -- The Bone Crawler's Carapace
    }
}) -- The Bone Crawler

map.nodes[48562415] = Rare({
    id = 82616,
    rewards = {
        Transmog({item = 119390, slot = L['shield']}) -- Rockworm Carapace Shield
    }
}) -- Jabberjaw

map.nodes[68091986] = Rare({id = 87348}) -- Hoarfrost

map.nodes[72472279] = Rare({id = 87351}) -- Mother of Goren

map.nodes[70962760] = Rare({
    id = 72364,
    rewards = {
        Transmog({item = 111545, slot = L['fist']}) -- Smoldering Fist of Gorg'ak
    }
}) -- Gorg'ak the Lava Guzzler

map.nodes[70623916] = Rare({id = 87356}) -- Vrok the Ancient

map.nodes[33872295] = Rare({id = 71721, rewards = {Currency({id = 824})}}) -- Canyon Icemother

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[56717186] = Treasure({
    quest = 36863,
    label = '{spell:169964}',
    rewards = {wod_treasures}
}) -- Iron Horde Munitions

map.nodes[64386583] = Treasure {
    quest = 33505,
    label = L['wiggling_egg'],
    note = L['wiggling_egg_note'],
    rewards = {wod_treasures, Pet({item = 117564, id = 1471})}
} -- Wiggling Egg

map.nodes[68916910] = Treasure {
    quest = 33017,
    label = '{npc:74082}',
    rewards = {wod_treasures, Currency({id = 824})}
} -- Iron Horde Supplies

map.nodes[68124586] = Treasure({
    quest = 33947,
    label = L['grimfrost_treasure'],
    note = L['top_of_tower'],
    rewards = {wod_treasures, Currency({id = 824})}
}) -- Grimfrost Treasure

map.nodes[66722641] = Treasure({
    quest = 33948,
    label = L['goren_leftovers'],
    note = L['in_cave'],
    rewards = {wod_treasures, Currency({id = 824})},
    pois = {POI({66982507})}
}) -- Goren Leftovers

map.nodes[64722574] = Treasure({
    quest = 33946,
    label = L['survivalists_cache'],
    rewards = {wod_treasures, Currency({id = 824})}
}) -- Survivalist's Cache

map.nodes[63401471] = Treasure({
    quest = 33525,
    label = L['orc_couple'],
    note = L['orc_couple_note'],
    rewards = {wod_treasures},
    pois = {POI {54853545}}
}) -- Orc Couple

map.nodes[42663175] = Treasure({
    quest = 33940,
    label = L['cragleapers_cache'],
    rewards = {
        wod_treasures, Transmog({item = 112187, slot = L['mail']}) -- Crag-Leaping Boots
    }
}) -- Crag-Leaper's Cache

map.nodes[38323781] = Treasure({
    quest = 33502,
    label = L['carved_obsidian_idol'],
    rewards = {wod_treasures}
}) -- Carved Obsidian Idol

map.nodes[60884261] = Treasure({
    quest = 33511,
    label = L['devourers_gutstone'],
    note = L['devourers_gutstone_note'],
    rewards = {
        wod_treasures, Transmog({item = 112110, slot = L['shield']}) -- Carapace Shield of the Devourer
    }
}) -- Devourer's Gutstone

map.nodes[57175216] = Treasure({
    quest = 34476,
    label = '{npc:78630}',
    rewards = {wod_treasures}
}) -- Frozen Treasure

map.nodes[43675562] = Treasure({
    quest = 34841,
    label = L['forgotten_supplies'],
    rewards = {wod_treasures, Currency({id = 824})}
}) -- Forgotten Supplies

map.nodes[37265915] = Treasure({
    quest = 34967,
    label = L['raided_loot'],
    rewards = {wod_treasures, Currency({id = 824})}
}) -- Raided Loot

map.nodes[30475088] = Treasure({
    quest = {34967, 33439, 33440, 33438, 33497},
    label = L['time_warped_tower'],
    note = L['time_warped_tower_note'],
    rewards = {wod_treasures}
}) -- Time-Warped Tower

map.nodes[24184859] = Treasure({
    quest = 34507,
    label = L['frozen_frostwolf_axe'],
    note = L['in_cave'],
    rewards = {
        wod_treasures, Transmog({item = 110689, slot = L['1h_axe']}) -- Icebound Frost-Singer Axe
    },
    pois = {POI({25245128})}
}) -- Frozen Frostwolf Axe

map.nodes[21685076] = Treasure({
    quest = 34931,
    label = L['pale_loot_sack'],
    note = L['in_cave'],
    rewards = {wod_treasures, Currency({id = 824})},
    pois = {POI({19485064})}
}) -- Pale Loot Sack

map.nodes[16124972] = Treasure({
    quest = 33942,
    label = L['supply_dump'],
    rewards = {wod_treasures, Currency({id = 824})}
}) -- Supply Dump

map.nodes[09834534] = Treasure({
    quest = 34641,
    label = L['sealed_jug'],
    rewards = {wod_treasures}
}) -- Sealed Jug

map.nodes[27654280] = Treasure({
    quest = 33500,
    label = L['slaves_stash'],
    rewards = {wod_treasures, Currency({id = 824})}
}) -- Slave's Stash

map526.nodes[44706450] = Treasure({
    quest = 35570,
    label = L['ogre_booty'],
    note = L['ogre_booty_002'],
    requires = Quest(33657),
    rewards = {wod_treasures},
    parent = 525
}) -- Ogre Booty

map526.nodes[48976779] = Treasure({
    quest = 35369,
    label = L['ogre_booty'],
    note = L['ogre_booty_003'],
    requires = Quest(33657),
    rewards = {wod_treasures},
    parent = 525
}) -- Ogre Booty

map526.nodes[53172786] = Treasure({
    quest = 35368,
    label = L['ogre_booty'],
    note = L['ogre_booty_010'],
    requires = Quest(33657),
    rewards = {wod_treasures},
    parent = 525
}) -- Ogre Booty

map527.nodes[51351790] = Treasure({
    quest = 35567,
    label = L['ogre_booty'],
    requires = Quest(33657),
    rewards = {wod_treasures, Currency({id = 824})},
    parent = 525
}) -- Ogre Booty

map527.nodes[46251563] = Treasure({
    quest = 35371,
    label = L['ogre_booty'],
    requires = Quest(33657),
    rewards = {wod_treasures},
    parent = 525
}) -- Ogre Booty

map527.nodes[76726217] = Treasure({
    quest = 35568,
    label = L['ogre_booty'],
    requires = Quest(33657),
    rewards = {wod_treasures, Currency({id = 824})},
    parent = 525
}) -- Ogre Booty

map527.nodes[37096987] = Treasure({
    quest = 35370,
    label = L['ogre_booty'],
    requires = Quest(33657),
    rewards = {wod_treasures},
    parent = 525
}) -- Ogre Booty

map527.nodes[70556776] = Treasure({
    quest = 35569,
    label = L['ogre_booty'],
    requires = Quest(33657),
    rewards = {wod_treasures, Currency({id = 824})},
    parent = 525
}) -- Ogre Booty

map527.nodes[36412881] = Treasure({
    quest = 35347,
    label = L['ogre_booty'],
    requires = Quest(33657),
    rewards = {wod_treasures, Currency({id = 824})},
    parent = 525
}) -- Ogre Booty

map527.nodes[52115206] = Treasure({ -- 52195515
    quest = 35373,
    label = L['ogre_booty'],
    note = L['ogre_booty_006'],
    requires = Quest(33657),
    rewards = {wod_treasures},
    parent = 525
}) -- Ogre Booty

map528.nodes[31336662] = Treasure({ -- 52195515
    quest = 35373,
    label = L['ogre_booty'],
    requires = Quest(33657),
    rewards = {wod_treasures},
    parent = 525
}) -- Ogre Booty

map.nodes[24232712] = Treasure({
    quest = 33501,
    label = L['spectators_chest'],
    rewards = {wod_treasures}
}) -- Spectator's Chest

map.nodes[23172495] = Treasure({
    quest = 33916,
    label = '{item:108735}',
    rewards = {
        wod_treasures, Toy({item = 108735}) -- Arena Master's War Horn
    }
}) -- Arena Master's War Horn

map.nodes[25502045] = Treasure({
    quest = 34648,
    label = '{item:5369}',
    rewards = {
        wod_treasures, Transmog({item = 111415, slot = L['dagger']}) -- Gnawbone Knife
    }
}) -- Gnawed Bone

map.nodes[23971291] = Treasure({
    quest = 34647,
    label = L['snow_covered_strongbox'],
    note = L['in_cave'],
    rewards = {wod_treasures},
    pois = {POI({23391204})}
}) -- Snow-Covered Strongbox

map.nodes[21740962] = Treasure({
    quest = 33926,
    label = L['lagoon_pool'],
    note = L['lagoon_pool_note'],
    rewards = {
        wod_treasures, Toy({item = 108739}) -- Pretty Draenor Pearl
    }
}) -- Lagoon Pool

map.nodes[19211201] = Treasure({
    quest = 34642,
    label = L['lucky_coin'],
    rewards = {wod_treasures}
}) -- Lucky Coin

map.nodes[39661718] = Treasure({
    quest = 33532,
    label = L['ogre_cache'],
    rewards = {wod_treasures}
}) -- Ogre Cache

map.nodes[42161930] = Treasure({
    quest = 34520,
    label = '{item:120341}',
    rewards = {wod_treasures}
}) -- Burning Pearl

map.nodes[34202347] = Treasure({
    quest = 32803,
    label = L['thunderlord_cache'],
    rewards = {
        wod_treasures, Transmog({item = 107658, slot = L['polearm']}) -- Thunderlord Longspear
    }
}) -- Thunderlord Cache

map.nodes[50161868] = Treasure({
    quest = 33531,
    label = '{npc:75120}',
    rewards = {
        wod_treasures, Transmog({item = 112096, slot = L['mail']}) -- Dented Ogre Skullcap
    }
}) -- Clumsy Cragmaul Brute

map590.nodes[38086286] = Treasure({
    quest = 34936,
    faction = 'Horde',
    label = L['senas_stash'],
    note = L['in_water_cave'],
    rewards = {wod_treasures, Currency({id = 824})},
    pois = {POI({31196910})},
    parent = 525
}) -- Lady Sena's Materials Stash

map590.nodes[74565692] = Treasure({
    quest = 34937,
    faction = 'Horde',
    label = L['senas_other_stash'],
    rewards = {wod_treasures, Currency({id = 824})},
    parent = 525
}) -- Lady Sena's Other Materials Stash

map.nodes[36253226] = Treasure({
    quest = 34649,
    label = L['smoldering_true_iron_deposit'],
    note = L['Requires'] .. ' {spell:2575}',
    rewards = {wod_treasures}
}) -- Smoldering True Iron Deposit

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
    fgroup = 'TatteredJournalPage',
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

local FrozenSlave = Slave({label = L['frozen_slave_label'], icon = 'peg_bl'})

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

local follower_dagg = Collectible({
    icon = 1033590,
    label = '{npc:79488}',
    note = L['follower_dagg'],
    faction = 'Horde',
    rewards = {ns.reward.Follower({id = 32})},
    pois = {POI {65896084, 39572808}}
})

map.nodes[65896084] = follower_dagg
map.nodes[39572808] = follower_dagg

map.nodes[68001892] = Collectible({
    icon = 1033590,
    label = '{item:110469}',
    quest = 34464,
    note = L['follower_image_of_archmage_vargoth'],
    rewards = {ns.reward.Follower({id = 190})}
}) -- Image of Archmage Vargoth

map.nodes[65053951] = Collectible({
    icon = 1033590,
    label = '{npc:74977}',
    note = L['complete_quest'],
    faction = 'Horde',
    quest = 33838,
    rewards = {ns.reward.Follower({id = 179})}
}) -- Weaponsmith Na'Shra

map.nodes[52634042] = Collectible({
    icon = 1033590,
    label = '{npc:78208}',
    note = L['complete_quest'],
    faction = 'Horde',
    quest = 34731,
    rewards = {ns.reward.Follower({id = 180})}
}) -- Shadow Hunter Rala

map.nodes[59453179] = Collectible({
    icon = 1033590,
    label = '{npc:79229}',
    note = L['complete_quest'],
    faction = 'Horde',
    quest = 35341,
    rewards = {ns.reward.Follower({id = 183})}
}) -- Gronnstalker Rokash

map.nodes[65177799] = ns.node.Squirrel({
    id = 88985,
    rewards = {Achievement({id = 14728, criteria = 8})} -- To All the Squirrels Through Time and Space
}) -- Frostfur Rat

map.nodes[66277641] = ns.node.Squirrel({
    id = 88441,
    rewards = {Achievement({id = 14728, criteria = 9})} -- To All the Squirrels Through Time and Space
}) -- Icespine Hatchling

map.nodes[64747906] = ns.node.Squirrel({
    id = 88427,
    rewards = {Achievement({id = 14728, criteria = 10})} -- To All the Squirrels Through Time and Space
}) -- Twilight Wasp
