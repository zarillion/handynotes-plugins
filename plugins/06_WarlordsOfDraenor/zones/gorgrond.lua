-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible
local NPC = ns.node.NPC
local PetBattle = ns.node.PetBattle
local Rare = ns.node.Rare
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog
local Follower = ns.reward.Follower

local Path = ns.poi.Path
local POI = ns.poi.POI

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({id = 543, settings = true})

-- Workaround for Luacheck 331.
local maps = {}
local minimap = maps

-- Minimaps in Gorgrond.
minimap['cragplume'] = Map({id = 549, settings = true})

-- Quests for Trophy of Glory.
local TrophyOfGloryQuests = {
    ['biolante'] = 36503,
    ['crater lord igneous'] = 35811,
    ['charl doomwing'] = 35815,
    ['khargax devourer'] = 35819,
    ['roardan sky terror'] = 35818,
    ['dessicus dead pools'] = 35810,
    ['erosian violent'] = 35807,
    ['fungal praetorian'] = 35814,
    ['outpost'] = 35151
}

if UnitFactionGroup('player') == 'Alliance' then
    TrophyOfGloryQuests = {
        ['biolante'] = 36502,
        ['crater lord igneous'] = 35812,
        ['charl doomwing'] = 35816,
        ['khargax devourer'] = 35820,
        ['roardan sky terror'] = 35817,
        ['dessicus dead pools'] = 35809,
        ['erosian violent'] = 35808,
        ['fungal praetorian'] = 35813,
        ['outpost'] = 35063
    }
end

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[62905520] = Rare({
    id = 75207,
    note = L['trophy_of_glory_note'],
    requires = ns.requirement.Quest(TrophyOfGloryQuests['outpost']),
    rewards = {
        Achievement({id = 9400, criteria = 25568}),
        Item({item = 116160, quest = TrophyOfGloryQuests['biolante']}) -- Writhing Green Tendril
    },
    pois = {
        Path({
            62705420, 62505270, 62005220, 61505230, 61105340, 60605370, 60505490
        })
    }
}) -- Biolante

map.nodes[43806060] = Rare({
    id = 81528,
    note = L['trophy_of_glory_note'],
    requires = ns.requirement.Quest(TrophyOfGloryQuests['outpost']),
    rewards = {
        Achievement({id = 9400, criteria = 25570}),
        Item({item = 113448, quest = TrophyOfGloryQuests['crater lord igneous']}) -- Chunk of Crater Lord
    }
}) -- Crater Lord Igneous

map.nodes[45205160] = Rare({
    id = 81548,
    note = L['trophy_of_glory_note'],
    requires = ns.requirement.Quest(TrophyOfGloryQuests['outpost']),
    rewards = {
        Achievement({id = 9400, criteria = 25574}),
        Item({item = 113457, quest = TrophyOfGloryQuests['charl doomwing']}) -- Fang of the Doomwing
    },
    pois = {Path({45404900, 46004680, 47804640})}
}) -- Charl Doomwing

map.nodes[53206880] = Rare({
    id = 81537,
    note = L['trophy_of_glory_note'],
    requires = ns.requirement.Quest(TrophyOfGloryQuests['outpost']),
    rewards = {
        Achievement({id = 9400, criteria = 25572}),
        Item({item = 113460, quest = TrophyOfGloryQuests['khargax devourer']}) -- Shimmering Scale
    },
    pois = {
        Path({
            53206880, 52706870, 52206770, 52406660, 53406590, 54006590,
            54306710, 54006750, 53806820, 53206880
        })
    }
}) -- Khargax the Devourer

map.nodes[50806760] = Rare({
    id = 77093,
    requires = ns.requirement.Quest(TrophyOfGloryQuests['outpost']),
    note = L['roardan_sky_terror_note'] .. '\n\n' .. L['trophy_of_glory_note'],
    rewards = {
        Achievement({id = 9400, criteria = 25569}),
        Item({item = 113458, quest = TrophyOfGloryQuests['roardan sky terror']}) -- Ebony Feather
    },
    pois = {POI({61606200}), POI({53106300})}
}) -- Roardan the Sky Terror

map.nodes[38805120] = Rare({
    id = 81529,
    note = L['trophy_of_glory_note'],
    requires = ns.requirement.Quest(TrophyOfGloryQuests['outpost']),
    rewards = {
        Achievement({id = 9400, criteria = 25571}),
        Item({item = 113447, quest = TrophyOfGloryQuests['dessicus dead pools']}) -- Globe of Dead Water
    }
}) -- Dessicus of the Dead Pools

map.nodes[51804160] = Rare({
    id = 81540,
    note = L['trophy_of_glory_note'],
    requires = ns.requirement.Quest(TrophyOfGloryQuests['outpost']),
    rewards = {
        Achievement({id = 9400, criteria = 25573}),
        Item({item = 113444, quest = TrophyOfGloryQuests['erosian violent']}) -- Crystalized Steam
    }
}) -- Erosian the Violent

map.nodes[58006360] = Rare({
    id = 80785,
    note = L['trophy_of_glory_note'],
    requires = ns.requirement.Quest(TrophyOfGloryQuests['outpost']),
    rewards = {
        Achievement({id = 9400, criteria = 25575}),
        Item({item = 113453, quest = TrophyOfGloryQuests['fungal praetorian']}) -- Precious Mushroom
    }
}) -- Fungal Praetorian

map.nodes[49003300] = Rare({
    id = 86562,
    quest = 37363,
    rewards = {
        Achievement({id = 9655, criteria = 26542}),
        Item({item = 119230, note = L['neck']}) -- Unpopped Pustule Pendant
    }
}) -- Maniacal Madgard

map.nodes[48202100] = Rare({
    id = 86566,
    quest = 37362,
    rewards = {
        Achievement({id = 9655, criteria = 26543}),
        Transmog({item = 119224, slot = L['polearm']}) -- Foereaver Polearm
    }
}) -- Defector Dazgo

map.nodes[49802380] = Rare({
    id = 86571,
    quest = 37366,
    rewards = {
        Achievement({id = 9655, criteria = 26544}),
        Transmog({item = 119225, slot = L['leather']}) -- Studded Gronn-Stitched Girdle
    }
}) -- Durp the Hated

map.nodes[47603080] = Rare({
    id = 86574,
    quest = 37367,
    rewards = {
        Achievement({id = 9655, criteria = 26545}),
        Transmog({item = 119226, slot = L['gun']}) -- Blammo's Blammer
    }
}) -- Inventor Blammo

map.nodes[45802660] = Rare({
    id = 86577,
    quest = 37365,
    rewards = {
        Achievement({id = 9655, criteria = 26548}),
        Transmog({item = 119229, slot = L['mail']}) -- Horgg's Bandolier
    }
}) -- Horgg

map.nodes[45803300] = Rare({
    id = 86579,
    quest = 37368,
    rewards = {
        Achievement({id = 9655, criteria = 26550}),
        Transmog({item = 119228, slot = L['cloth']}) -- Ro'gor's Slippers of Silence
    }
}) -- Blademaster Ro'gor

map.nodes[46602300] = Rare({
    id = 86582,
    quest = 37364,
    rewards = {
        Achievement({id = 9655, criteria = 26551}),
        Transmog({item = 119227, slot = L['plate']}) -- Morgo's Unstoppable Ramming Helm
    }
}) -- Morgo Kain

map.nodes[59603200] = Rare({
    id = 88582,
    quest = 37374,
    rewards = {
        Achievement({id = 9678, criteria = 26593}),
        Transmog({item = 119367, slot = L['mail']}) -- Flayerscale Carapace Stompers
    }
}) -- Swift Onyx Flayer

map.nodes[61603920] = Rare({
    id = 88586,
    quest = 37376,
    rewards = {
        Achievement({id = 9678, criteria = 26594}),
        Transmog({item = 119391, slot = L['shield']}) -- Etched Osteoderm Shield
    }
}) -- Mogamago

map.nodes[69204460] = Rare({
    id = 86257,
    quest = 37369,
    rewards = {
        Achievement({id = 9678, criteria = 26595}), Toy({item = 119432}), -- Botani Camouflage
        Transmog({item = 119357, slot = L['cloth']}) -- Grovetender's Cummerbund
    }
}) -- Basten (Protectors of the Grove)

map.nodes[63403080] = Rare({
    id = 86266,
    quest = 37372,
    rewards = {
        Achievement({id = 9678, criteria = 26596}),
        Transmog({item = 119395, slot = L['dagger']}) -- Hydratooth Dagger
    }
}) -- Venolasix

map.nodes[72604060] = Rare({
    id = 82058,
    quest = 37370,
    rewards = {
        Achievement({id = 9678, criteria = 26598}),
        Transmog({item = 119406, slot = L['polearm']}) -- Depthroot's Forearm
    }
}) -- Depthroot

map.nodes[57803660] = Rare({
    id = 88580,
    quest = 37373,
    rewards = {
        Achievement({id = 9678, criteria = 26599}),
        Transmog({item = 119381, slot = L['plate']}) -- Grash's Fireproof Handguards
    }
}) -- Firestarter Grash

map.nodes[59604300] = Rare({
    id = 88583,
    quest = 37375,
    rewards = {
        Achievement({id = 9678, criteria = 26600}),
        Transmog({item = 119414, slot = L['cloak']}) -- Yal's Leafwrap Cloak
    }
}) -- Grove Warden Yal

map.nodes[54804620] = Rare({
    id = 88672,
    quest = 37377,
    rewards = {
        Achievement({id = 9678, criteria = 26606}),
        Transmog({item = 119412, slot = L['bow']}) -- Bal'ra's Compound Bow
    }
}) -- Hunter Bal'ra

map.nodes[53407820] = Rare({
    id = 76473,
    quest = 34726,
    rewards = {
        Transmog({item = 118208, slot = L['dagger']}) -- Broodmother's Kiss
    }
}) -- Mother Araneae

map.nodes[38206620] = Rare({
    id = 79629,
    quest = 35910,
    rewards = {
        Toy({item = 118224}) -- Ogre Brewing Kit
    }
}) -- Stomper Kreego

map.nodes[40606020] = Rare({
    id = 80725,
    quest = 36394,
    rewards = {
        Toy({item = 114227}) -- Bubble Wand
    }
}) -- Sulfurious

map.nodes[46005080] = Rare({
    id = 80868,
    quest = 36204,
    rewards = {
        Item({item = 118229, note = L['trinket']}) -- Resonant Hidecrystal of the Gorger
    }
}) -- Glut

map.nodes[41804560] = Rare({
    id = 81038,
    quest = 36391,
    rewards = {
        Item({item = 118230, note = L['trinket']}) -- Smoldering Cerulean Stone
    }
}) -- Gelgor of the Blue Flame

map.nodes[40007900] = Rare({
    id = 82085,
    quest = 35335,
    rewards = {
        Toy({item = 118222}) -- Spirit of Bashiok
    }
}) -- Bashiok

map.nodes[53604460] = Rare({
    id = 82311,
    quest = 35503,
    rewards = {
        Transmog({item = 118212, slot = L['2h_mace']}) -- Char's Smoldering Fist
    }
}) -- Char the Burning

map.nodes[52207020] = Rare({
    id = 83522,
    quest = 35908,
    rewards = {
        Transmog({item = 118209, slot = L['1h_axe']}) -- Skrikka's Mandible
    }
}) -- Hive Queen Skrikka

map.nodes[50605320] = Rare({
    id = 84406,
    quest = 36178,
    note = L['in_cave'],
    rewards = {
        Pet({item = 118709, id = 1564}) -- Doom Bloom
    },
    pois = {POI({49435338})}
}) -- Mandrakor

map.nodes[46804300] = Rare({
    id = 84431,
    quest = 36186,
    rewards = {
        Transmog({item = 118210, slot = L['1h_mace']}) -- Greldrok's Facesmasher
    }
}) -- Greldrok the Cunning

map.nodes[57406860] = Rare({
    id = 85250,
    quest = 36387,
    rewards = {
        Toy({item = 118221}) -- Petrification Stone
    }
}) -- Fossilwood the Petrified

map.nodes[54407140] = Rare({
    id = 86520,
    quest = 36837,
    rewards = {
        Transmog({item = 118228, slot = L['2h_mace']}) -- Smashalupagus
    }
}) -- Stompalupagus

map.nodes[44609220] = Rare({
    id = 86137,
    quest = 36656,
    rewards = {
        Transmog({item = 118223, slot = L['fist']}) -- Sunclaw
    }
}) -- Sunclaw

map.nodes[39407460] = Rare({
    id = 85907,
    quest = 36597,
    note = L['in_cave'],
    rewards = {
        Transmog({item = 118232, slot = L['mail']}) -- Scaled Riverbeast Spaulders
    },
    pois = {POI({39707630})}
}) -- Berthora

map.nodes[37608140] = Rare({
    id = 85970,
    quest = 36600,
    rewards = {
        Transmog({item = 118231, slot = L['dagger']}) -- Riptar's Clever Claw
    }
}) -- Riptar

map.nodes[47804160] = Rare({
    id = 85264,
    quest = 36393,
    rewards = {
        Item({item = 118211, note = L['trinket']}) -- Rolkor's Rage
    }
}) -- Rolkor

map.nodes[64006180] = Rare({
    id = 86410,
    quest = 36794,
    rewards = {
        Transmog({item = 118213, slot = L['leather']}) -- Slimy Sea Serpent Skin Sabatons
    }
}) -- Sylldros

local Poundfist = Rare({
    id = 50985,
    fgroup = 'poundfist',
    note = L['poundfist_note'],
    rewards = {
        Mount({item = 116792, id = 655}) -- Sunhide Gronnling
    }
})

map.nodes[41902500] = Poundfist
map.nodes[51604310] = Poundfist
map.nodes[45204660] = Poundfist
map.nodes[47405530] = Poundfist
map.nodes[43005570] = Poundfist

local Alkali = Rare({
    id = 86268,
    quest = 37371,
    fgroup = 'alkali',
    note = L['multiple_spawn_note'],
    rewards = {
        Achievement({id = 9678, criteria = 26597}),
        Transmog({item = 119361, slot = L['leather']}) -- Thorn-Knuckled Gloves
    }
})

map.nodes[56204080] = Alkali
map.nodes[58604120] = Alkali
map.nodes[71404040] = Alkali

local Gnarljaw = Class('Gnarljaw', Rare, {
    id = 78269,
    quest = 37413,
    rewards = {
        Transmog({item = 119397, slot = L['fist']}) -- Gnarled Goren Jaw
    }
})

minimap['cragplume'].nodes[55103550] = Gnarljaw()

map.nodes[53005350] = Gnarljaw({note = L['in_cave'], pois = {POI({54105580})}})

local KingSlime = Class('KingSlime', Rare, {
    id = 78260,
    quest = 37412,
    rewards = {
        Transmog({item = 119351, slot = L['cloak']}) -- Slime Coated Kingscloak
    }
})

minimap['cragplume'].nodes[41707491] = KingSlime()

map.nodes[52205581] = KingSlime({note = L['in_cave'], pois = {POI({54105580})}})

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[40407660] = Treasure({
    quest = 36621,
    label = L['explorer_canister_treasure'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        }), Item({item = 118710}) -- Exploratron 2000 Spare Parts
    }
}) -- Explorer Canister

map.nodes[42408350] = Treasure({
    quest = 36625,
    label = L['discarded_pack_treasure'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        })
    }
}) -- Discarded Pack

map.nodes[43109290] = Treasure({
    quest = 34241,
    label = L['ockbars_pack_treasure'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        })
    }
}) -- Ockbar's Pack

map.nodes[48109340] = Treasure({
    quest = 36604,
    label = L['stashed_emergency_rucksack_treasure'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        })
    }
}) -- Stashed Emergency Rucksack

map.nodes[53008000] = Treasure({
    quest = 34940,
    label = L['strange_looking_dagger_treasure'],
    note = L['in_cave'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        }), Transmog({item = 118718, slot = L['dagger']}) -- Pale Bloodthief Dagger
    },
    pois = {POI({51307760})}
}) -- Strange Looking Dagger

map.nodes[53107450] = Treasure({
    quest = 36654,
    label = L['remains_of_balik_orecrusher_treasure'],
    note = L['in_cave'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        })
    },
    pois = {
        POI({51407440}) -- Entrance
    }
}) -- Remains of Balik Orecrusher

map.nodes[52506690] = Treasure({
    quest = 36509,
    label = L['odd_skull_treasure'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        }), Transmog({item = 118717, slot = L['offhand']}) -- Beastskull Vessel
    }
}) -- Odd Skull

map.nodes[39006810] = Treasure({
    quest = 36631,
    label = L['sashas_secret_stash_treasure'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        })
    }
}) -- Sasha's Secret Stash

map.nodes[59506370] = Treasure({
    quest = 36628,
    label = L['vindicators_hammer_treasure'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        }), Transmog({item = 118712, slot = L['2h_mace']}) -- Huurand's Huge Hammer
    }
}) -- Vindicator's Hammer

map.nodes[57805600] = Treasure({
    quest = 36605,
    label = L['remains_if_balldir_deeprock_treasure'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        })
    }
}) -- Remains of Balldir Deeprock

map.nodes[41705290] = Treasure({
    quest = 36506,
    label = L['brokors_sack_treasure'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        }), Transmog({item = 118702, slot = L['staff']}) -- Brokor's Walking Stick
    }
}) -- Brokor's Sack

map.nodes[45704970] = Treasure({
    quest = 36610,
    label = L['suntouched_spear_treasure'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        })
    }
}) -- Suntouched Spear

map.nodes[48904730] = Treasure({
    quest = 36203,
    label = L['warm_goren_egg_treasure'],
    note = L['warm_goren_egg_note'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        }), Item({item = 118705}), -- Warm Goren Egg
        Toy({item = 118716}) -- Goren Garb
    }
}) -- Warm Goren Egg

map.nodes[49304360] = Treasure({
    quest = 36596,
    label = L['weapons_cache_treasure'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        }), Item({item = 107645}) -- Iron Horde Weapon Cache
    }
}) -- Weapons Cache

map.nodes[46204290] = Treasure({
    quest = 36521,
    label = L['petrified_rylak_egg_treasure'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        })
    }
}) -- Petrified Rylak Egg

map.nodes[45004260] = Treasure({
    quest = 36634,
    label = L['snipers_crossbow_trerasure'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        }), Transmog({item = 118713, slot = L['crossbow']}) -- Iron Lookout's Arbalest
    }
}) -- Sniper's Crossbow

map.nodes[43704250] = Treasure({
    quest = 36618,
    label = L['iron_supply_chest_treasure'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        })
    }
}) -- Iron Supply Chest

map.nodes[46906870] = Treasure({
    quest = 35056,
    label = L['horned_skull_treasure'],
    note = L['in_cave'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        })
    },
    pois = {POI({43504800})}
}) -- Horned Skull

map.nodes[41807810] = Treasure({
    quest = 36658,
    label = L['evermorn_supply_cache_treasure'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        })
    }
}) -- Evermorn Supply Cache

map.nodes[46105000] = Treasure({
    quest = 36651,
    label = L['harvestable_precious_crystal_treasure'],
    note = L['in_cave'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        })
    },
    pois = {POI({44505080})}
}) -- Harvestable Precious Crystal

map.nodes[40007230] = Treasure({
    quest = 36170,
    label = L['femur_of_improbability_treasure'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        })
    }
}) -- Femur of Improbability

map.nodes[44207420] = Treasure({
    quest = 35709,
    label = L['laughing_skull_cache_treasure'],
    note = L['laughing_skull_note'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        })
    }
}) -- Laughing Skull Cache

map.nodes[44007060] = Treasure({
    quest = 36118,
    label = L['pile_of_rubble_treasure'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        })
    }
}) -- Pile of Rubble

map.nodes[57106530] = Treasure({
    quest = 37249,
    label = L['strange_spore_treasure'],
    rewards = {
        Pet({item = 118106, id = 1537}) -- Crimson Spore
    }
}) -- Strange Spore

map.nodes[47504130] = Treasure({
    quest = 39267,
    label = L['ninja_pepe_treasure'],
    note = L['ninja_pepe_note'],
    rewards = {
        Achievement({id = 10053, criteria = 28182}), Item({item = 127867}) -- A Tiny Ninja Shroud
    }
}) -- Ninja Pepe

local AttackPlans = Collectible({
    group = ns.groups.ATTACK_PLANS,
    icon = 'chest_pp',
    label = L['attack_plans_treasure'],
    note = L['multiple_spawn_note'],
    fgroup= 'attackplans',
    rewards = {Achievement({id = 9656})}
}) -- In Plain Sight Achievement

map.nodes[45802720] = AttackPlans
map.nodes[48202700] = AttackPlans
map.nodes[45202520] = AttackPlans
map.nodes[49002400] = AttackPlans

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[51007060] = PetBattle({
    id = 83837,
    rewards = {Achievement({id = 9724, criteria = 27011})}
}) -- Cymre Brightblade

-------------------------------------------------------------------------------
------------------------------- ANCIENT NO MORE -------------------------------
-------------------------------------------------------------------------------

local AncientRare = Class('AncientRare', Collectible, {
    scale = 1.5,
    icon = 'peg_yw',
    group = ns.groups.ANCIENT_NO_MORE
})

map.nodes[59603180] = AncientRare({
    id = 88582,
    rewards = {Achievement({id = 9678, criteria = 26593})}
}) -- Swift Onyx Flayer

map.nodes[61603920] = AncientRare({
    id = 88586,
    rewards = {Achievement({id = 9678, criteria = 26594})}
}) -- Mogamago

map.nodes[69404440] = AncientRare({
    sublabel = L['protectors_of_the_grove_sublabel'],
    rewards = {Achievement({id = 9678, criteria = 26595})}
}) -- Protectors of the Grove

map.nodes[63403060] = AncientRare({
    id = 86266,
    rewards = {Achievement({id = 9678, criteria = 26596})}
}) -- Venolasix

map.nodes[56204080] = AncientRare({
    id = 86268,
    rewards = {Achievement({id = 9678, criteria = 26597})},
    pois = {POI({58604140, 71404040})}
}) -- Alkali

map.nodes[72204080] = AncientRare({
    id = 82058,
    rewards = {Achievement({id = 9678, criteria = 26598})}
}) -- Depthroot

map.nodes[57803660] = AncientRare({
    id = 88580,
    rewards = {Achievement({id = 9678, criteria = 26599})},
    pois = {POI({72803580})}
}) -- Firestarter Grash

map.nodes[59604300] = AncientRare({
    id = 88583,
    rewards = {Achievement({id = 9678, criteria = 26600})}
}) -- Grove Warden Yal

map.nodes[55004600] = AncientRare({
    id = 88672,
    rewards = {Achievement({id = 9678, criteria = 26606})}
}) -- Hunter Bal'ra

-------------------------------------------------------------------------------
------------------------------- FIGHT THE POWER -------------------------------
-------------------------------------------------------------------------------

local PowerRare = Class('PowerRare', Collectible, {
    scale = 1.5,
    icon = 'peg_rd',
    group = ns.groups.FIGHT_THE_POWER
})

map.nodes[49203300] = PowerRare({
    id = 86562,
    rewards = {Achievement({id = 9655, criteria = 26542})}
}) -- Maniacal Madgard

map.nodes[48202100] = PowerRare({
    id = 86566,
    rewards = {Achievement({id = 9655, criteria = 26543})}
}) -- Defector Dazgo

map.nodes[49802380] = PowerRare({
    id = 86571,
    rewards = {Achievement({id = 9655, criteria = 26544})}
}) -- Durp the Hated

map.nodes[47803080] = PowerRare({
    id = 86574,
    rewards = {Achievement({id = 9655, criteria = 26545})}
}) -- Inventor Blammo

map.nodes[45802680] = PowerRare({
    id = 86577,
    rewards = {Achievement({id = 9655, criteria = 26548})},
    pois = {POI({46002920, 45602540})}
}) -- Horgg

map.nodes[47003280] = PowerRare({
    id = 86579,
    rewards = {Achievement({id = 9655, criteria = 26550})},
    pois = {POI({45803360, 43603440})}
}) -- Blademaster Ro'gor

map.nodes[46002340] = PowerRare({
    id = 86582,
    rewards = {Achievement({id = 9655, criteria = 26551})}
}) -- Morgo Kain

-------------------------------------------------------------------------------
----------------------------- PROVE YOUR STRENGTH -----------------------------
-------------------------------------------------------------------------------

local FactionRepresentative = Class('FactionRepresentative', NPC, {
    icon = 874578,
    group = ns.groups.PROVE_YOUR_STRENGTH,
    note = L['prove_your_strength_note'],
    rewards = {
        Achievement({id = 9402, criteria = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}})
    }
})

map.nodes[46206960] = FactionRepresentative({id = 76688, faction = 'Horde'}) -- Limbflayer

map.nodes[52805980] = FactionRepresentative({id = 81076, faction = 'Alliance'}) -- Rangari Jonaa

map.nodes[43808100] = Collectible({
    label = '{item:114030}',
    icon = 133749,
    note = string.format(L['prove_your_strength_drop_double'], '{npc:81630}',
        '{npc:81005}') .. '\n\n' .. L['prove_your_strength_note'],
    group = ns.groups.PROVE_YOUR_STRENGTH,
    rewards = {Achievement({id = 9402, criteria = 1})}
}) -- Ancient Branch

map.nodes[51006880] = Collectible({
    label = '{item:114036}',
    icon = 615303,
    note = string.format(L['prove_your_strength_drop_single'], '{npc:85694}') ..
        '\n\n' .. L['prove_your_strength_note'],
    group = ns.groups.PROVE_YOUR_STRENGTH,
    rewards = {Achievement({id = 9402, criteria = 2})}
}) -- Basilisk Scale

map.nodes[43807840] = Collectible({
    label = '{item:114025}',
    icon = 959803,
    note = string.format(L['prove_your_strength_drop_double'], '{npc:80696}',
        '{npc:81575}') .. '\n\n' .. L['prove_your_strength_note'],
    group = ns.groups.PROVE_YOUR_STRENGTH,
    rewards = {Achievement({id = 9402, criteria = 3})}
}) -- Botani Bloom

map.nodes[43206200] = Collectible({
    label = '{item:114038}',
    icon = 615303,
    note = string.format(L['prove_your_strength_drop_double'], '{npc:83458}',
        '{npc:81685}') .. '\n\n' .. L['prove_your_strength_note'],
    group = ns.groups.PROVE_YOUR_STRENGTH,
    rewards = {Achievement({id = 9402, criteria = 4})}
}) -- Elemental Crystal

map.nodes[43806480] = Collectible({
    label = '{item:113590}',
    icon = 133725,
    note = string.format(L['prove_your_strength_drop_single'], '{npc:80690}') ..
        '\n\n' .. L['prove_your_strength_note'],
    group = ns.groups.PROVE_YOUR_STRENGTH,
    rewards = {Achievement({id = 9402, criteria = 5})}
}) -- Acid-Stained Goren Tooth

map.nodes[46604660] = Collectible({
    label = '{item:114023}',
    icon = 237299,
    note = string.format(L['prove_your_strength_drop_single'], '{npc:80689}') ..
        '\n\n' .. L['prove_your_strength_note'],
    group = ns.groups.PROVE_YOUR_STRENGTH,
    rewards = {Achievement({id = 9402, criteria = 6})}
}) -- Gronn Eye

map.nodes[45806560] = Collectible({
    label = '{item:114021}',
    icon = 134319,
    note = string.format(L['prove_your_strength_drop_single'], '{npc:80685}') ..
        '\n\n' .. L['prove_your_strength_note'],
    group = ns.groups.PROVE_YOUR_STRENGTH,
    rewards = {Achievement({id = 9402, criteria = 7})}
}) -- Gronnling Scale

map.nodes[43004740] = Collectible({
    label = '{item:114019}',
    icon = 133725,
    note = string.format(L['prove_your_strength_drop_single'], '{npc:81240}') ..
        '\n\n' .. L['prove_your_strength_note'],
    group = ns.groups.PROVE_YOUR_STRENGTH,
    rewards = {Achievement({id = 9402, criteria = 8})}
}) -- Worn Ogron Horn

map.nodes[48207280] = Collectible({
    label = '{item:114027}',
    icon = 136104,
    note = string.format(L['prove_your_strength_drop_single'], '{npc:81617}') ..
        '\n\n' .. L['prove_your_strength_note'],
    group = ns.groups.PROVE_YOUR_STRENGTH,
    rewards = {Achievement({id = 9402, criteria = 9})}
}) -- Orc Thorn

map.nodes[45608060] = Collectible({
    label = '{item:114032}',
    icon = 615303,
    note = string.format(L['prove_your_strength_drop_double'], '{npc:81561}',
        '{npc:85779}') .. '\n\n' .. L['prove_your_strength_note'],
    group = ns.groups.PROVE_YOUR_STRENGTH,
    rewards = {Achievement({id = 9402, criteria = 10})}
}) -- Ravager Claw

map.nodes[52606760] = Collectible({
    label = '{item:114034}',
    icon = 615303,
    note = string.format(L['prove_your_strength_drop_double'], '{npc:85807}',
        '{npc:85695}') .. '\n\n' .. L['prove_your_strength_note'],
    group = ns.groups.PROVE_YOUR_STRENGTH,
    rewards = {Achievement({id = 9402, criteria = 11})}
}) -- Wasp Stinger

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

map.nodes[51583863] = Voidtalon
map.nodes[54004580] = Voidtalon
map.nodes[56004065] = Voidtalon
map.nodes[43213420] = Voidtalon

map.nodes[44948687] = Collectible({
    icon = 1033590,
    label = '{npc:83820}',
    rewards = {Follower({id = 193})}
}) -- Tormmok

map.nodes[41299144] = Collectible({
    icon = 1033590,
    label = '{npc:78030}',
    rewards = {Follower({id = 189})}
}) -- Blook

map.nodes[39703990] = Collectible({
    icon = 1033590,
    label = '{item:110459}',
    quest = 34463,
    note = L['follower_image_of_archmage_vargoth'],
    rewards = {Follower({id = 190})}
}) -- Image of Archmage Vargoth
