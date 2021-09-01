-- @todo: Shredder Mania achievement + note, trophy of glory note for quests, iron wings achievement,
-- @todo: mean and green achievement, burn it to the ground achievement, pillars of draenor achievement
-- @todo: picky palate achievement, garrison npc (sappy, rooter, peckers) (get quest id, same for pepe and plain sight chest)
-- @todo: groups for achievements

-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

local Node = ns.node.Node
local PetBattle = ns.node.PetBattle
local Rare = ns.node.Rare
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

local Path = ns.poi.Path
local POI = ns.poi.POI

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({ id=543, settings=true })
local nodes = map.nodes

-- Quests for Trophy of Glory.
local TrophyOfGloryQuests = {
    ['biolante'] = 36503,
    ['crater lord igneous'] = 35811,
    ['charl doomwing'] = 35815,
    ['khargax devourer'] = 35819,
    ['roardan sky terror'] = 35818,
    ['dessicus dead pools'] = 35810,
    ['erosian violent'] = 35807,
    ['fungal praetorian'] = 35814
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
        ['fungal praetorian'] = 35813
    }
end

-------------------------------------------------------------------------------
------------------------------------ NODES ------------------------------------
-------------------------------------------------------------------------------

local Voidtalon = Node({icon=1094600, label=L['edge_of_reality'], rewards={
    Mount({id=682, item=121815}) -- Voidtalon of the Dark Star
}})

nodes[51603880] = Voidtalon
nodes[54004500] = Voidtalon
nodes[56004000] = Voidtalon
nodes[43203420] = Voidtalon

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

local Poundfist = Rare({
    id=50985,
    note=L["poundfist_note"],
    rewards={
        Mount({item=116792, id=655}) -- Sunhide Gronnling
    }
}) -- Poundfist

nodes[41902500] = Poundfist
nodes[51604310] = Poundfist
nodes[45204660] = Poundfist
nodes[47405530] = Poundfist
nodes[43005570] = Poundfist

map.nodes[62905520] = Rare({
    id=75207,
    rewards={
        Achievement({id=9400, criteria=25568}),
        Item({item=116160, quest=TrophyOfGloryQuests['biolante']}), -- Writhing Green Tendril
    },
    pois={
        Path({62705420, 62505270, 62005220, 61505230, 61105340, 60605370, 60505490})
    }
}) -- Biolante

map.nodes[43806060] = Rare({
    id=81528,
    rewards={
        Achievement({id=9400, criteria=25570}),
        Item({item=113448, quest=TrophyOfGloryQuests['crater lord igneous']}), -- Chunk of Crater Lord
    }
}) -- Crater Lord Igneous

map.nodes[45205160] = Rare({
    id=81548,
    rewards={
        Achievement({id=9400, criteria=25574}),
        Item({item=113457, quest=TrophyOfGloryQuests['charl doomwing']}), -- Fang of the Doomwing
    },
    pois={
        Path({45404900, 46004680, 47804640})
    }
}) -- Charl Doomwing

map.nodes[53206880] = Rare({
    id=81537,
    rewards={
        Achievement({id=9400, criteria=25572}),
        Item({item=113460, quest=TrophyOfGloryQuests['khargax devourer']}), -- Shimmering Scale
    },
    pois={
        Path({53206880, 52706870, 52206770, 52406660, 53406590, 54006590, 54306710, 54006750, 53806820, 53206880})
    }
}) -- Khargax the Devourer

map.nodes[50806760] = Rare({
    id=77093,
    note=L["roardan_sky_terror_note"],
    rewards={
        Achievement({id=9400, criteria=25569}),
        Item({item=113458, quest=TrophyOfGloryQuests['roardan sky terror']}), -- Ebony Feather
    },
    pois={
        POI({61606200}),
        POI({53106300})
    }
}) -- Roardan the Sky Terror

map.nodes[38805120] = Rare({
    id=81529,
    rewards={
        Achievement({id=9400, criteria=25571}),
        Item({item=113447, quest=TrophyOfGloryQuests['dessicus dead pools']}), -- Globe of Dead Water
    }
}) -- Dessicus of the Dead Pools

map.nodes[51804160] = Rare({
    id=81540,
    rewards={
        Achievement({id=9400, criteria=25573}),
        Item({item=113444, quest=TrophyOfGloryQuests['erosian violent']}), -- Crystalized Steam
    }
}) -- Erosian the Violent

map.nodes[58006360] = Rare({
    id=80785,
    rewards={
        Achievement({id=9400, criteria=25575}),
        Item({item=113453, quest=TrophyOfGloryQuests['fungal praetorian']}), -- Precious Mushroom
    }
}) -- Fungal Praetorian

map.nodes[49003300] = Rare({
    id=86562,
    quest=37363,
    rewards={
        Achievement({id=9655, criteria=26542}),
        Item({item=119230, note=L["neck"]}) -- Unpopped Pustule Pendant
    }
}) -- Maniacal Madgard

map.nodes[48202100] = Rare({
    id=86566,
    quest=37362,
    rewards={
        Achievement({id=9655, criteria=26543}),
        Transmog({item=119224, slot=L["polearm"]}) -- Foereaver Polearm
    }
}) -- Defector Dazgo

map.nodes[49802380] = Rare({
    id=86571,
    quest=37366,
    rewards={
        Achievement({id=9655, criteria=26544}),
        Transmog({item=119225, slot=L["leather"]}) -- Studded Gronn-Stitched Girdle
    }
}) -- Durp the Hated

map.nodes[47603080] = Rare({
    id=86574,
    quest=37367,
    rewards={
        Achievement({id=9655, criteria=26545}),
        Transmog({item=119226, slot=L["gun"]}) -- Blammo's Blammer
    }
}) -- Inventor Blammo

map.nodes[45802660] = Rare({
    id=86577,
    quest=37365,
    rewards={
        Achievement({id=9655, criteria=26548}),
        Transmog({item=119229, slot=L["mail"]}) -- Horgg's Bandolier
    }
}) -- Horgg

map.nodes[45803300] = Rare({
    id=86579,
    quest=37368,
    rewards={
        Achievement({id=9655, criteria=26550}),
        Transmog({item=119228, slot=L["cloth"]}) -- Ro'gor's Slippers of Silence
    }
}) -- Blademaster Ro'gor

map.nodes[46602300] = Rare({
    id=86582,
    quest=37364,
    rewards={
        Achievement({id=9655, criteria=26551}),
        Transmog({item=119227, slot=L["plate"]}) -- Morgo's Unstoppable Ramming Helm
    }
}) -- Morgo Kain

map.nodes[59603200] = Rare({
    id=88582,
    quest=37374,
    rewards={
        Achievement({id=9678, criteria=26593}),
        Transmog({item=119367, slot=L["mail"]}) -- Flayerscale Carapace Stompers
    }
}) -- Swift Onyx Flayer

map.nodes[61603920] = Rare({
    id=88586,
    quest=37376,
    rewards={
        Achievement({id=9678, criteria=26594}),
        Transmog({item=119391, slot=L["shield"]}) -- Etched Osteoderm Shield
    }
}) -- Mogamago

map.nodes[69204460] = Rare({
    id=86257,
    quest=37369,
    rewards={
        Achievement({id=9678, criteria=26595}),
        Toy({item=119432}), -- Botani Camouflage
        Transmog({item=119357, slot=L["cloth"]}) -- Grovetender's Cummerbund
    }
}) -- Basten

map.nodes[63403080] = Rare({
    id=86266,
    quest=37372,
    rewards={
        Achievement({id=9678, criteria=26596}),
        Transmog({item=119395, slot=L["dagger"]}) -- Hydratooth Dagger
    }
}) -- Venolasix

map.nodes[72604060] = Rare({
    id=82058,
    quest=37370,
    rewards={
        Achievement({id=9678, criteria=26598}),
        Transmog({item=119406, slot=L["polearm"]}) -- Depthroot's Forearm
    }
}) -- Depthroot

map.nodes[57803660] = Rare({
    id=88580,
    quest=37373,
    rewards={
        Achievement({id=9678, criteria=26599}),
        Transmog({item=119381, slot=L["plate"]}) -- Grash's Fireproof Handguards
    }
}) -- Firestarter Grash

map.nodes[59604300] = Rare({
    id=88583,
    quest=37375,
    rewards={
        Achievement({id=9678, criteria=26600}),
        Transmog({item=119414, slot=L["cloak"]}) -- Yal's Leafwrap Cloak
    }
}) -- Grove Warden Yal

map.nodes[54804620] = Rare({
    id=88672,
    quest=37377,
    rewards={
        Achievement({id=9678, criteria=26606}),
        Transmog({item=119412, slot=L["bow"]}) -- Bal'ra's Compound Bow
    }
}) -- Hunter Bal'ra

local Alkali = Rare({
    id=86268,
    quest=37371,
    note=L["multiple_spawn_note"],
    rewards={
        Achievement({id=9678, criteria=26597}),
        Transmog({item=119361, slot=L["leather"]}) -- Thorn-Knuckled Gloves
    }
}) -- Alkali

nodes[56204080] = Alkali
nodes[58604120] = Alkali
nodes[71404040] = Alkali

map.nodes[53407820] = Rare({
    id=76473,
    quest=34726,
    rewards={
        Transmog({item=118208, slot=L["dagger"]}) -- Broodmother's Kiss
    }
}) -- Mother Araneae

-- @todo check location
map.nodes[53305390] = Rare({
    id=78269,
    quest=37413,
    note=L["in_cave"],
    rewards={
        Transmog({item=119397, slot=L["fist"]}) -- Gnarled Goren Jaw
    },
    pois={
        POI({54105580}) -- Entrance
    }
}) -- Gnarljaw

map.nodes[38206620] = Rare({
    id=79629,
    quest=35910,
    rewards={
        Toy({item=118224}) -- Ogre Brewing Kit
    }
}) -- Stomper Kreego

map.nodes[40606020] = Rare({
    id=80725,
    quest=36394,
    rewards={
        Toy({item=114227}) -- Bubble Wand
    }
}) -- Sulfurious

map.nodes[46005080] = Rare({
    id=80868,
    quest=36204,
    rewards={
        Item({item=118229, note=L["trinket"]}) -- Resonant Hidecrystal of the Gorger
    }
}) -- Glut

map.nodes[41804560] = Rare({
    id=81038,
    quest=36391,
    rewards={
        Item({item=118230, note=L["trinket"]}) -- Smoldering Cerulean Stone
    }
}) -- Gelgor of the Blue Flame

map.nodes[40007900] = Rare({
    id=82085,
    quest=35335,
    rewards={
        Toy({item=118222}) -- Spirit of Bashiok
    }
}) -- Bashiok

map.nodes[53604460] = Rare({
    id=82311,
    quest=35503,
    rewards={
        Transmog({item=118212, slot=L["2h_mace"]}) -- Char's Smoldering Fist
    }
}) -- Char the Burning

map.nodes[52207020] = Rare({
    id=83522,
    quest=35908,
    rewards={
        Transmog({item=118209, slot=L["1h_axe"]}) -- Skrikka's Mandible
    }
}) -- Hive Queen Skrikka

map.nodes[50605320] = Rare({
    id=84406,
    quest=36178,
    rewards={
        Pet({item=118709, id=1564}) -- Doom Bloom
    }
}) -- Mandrakor

map.nodes[46804300] = Rare({
    id=84431,
    quest=36186,
    rewards={
        Transmog({item=118210, slot=L["1h_mace"]}) -- Greldrok's Facesmasher
    }
}) -- Greldrok the Cunning

map.nodes[57406860] = Rare({
    id=85250,
    quest=36387,
    rewards={
        Toy({item=118221}) -- Petrification Stone
    }
}) -- Fossilwood the Petrified

map.nodes[54407140] = Rare({
    id=86520,
    quest=36837,
    rewards={
        Transmog({item=118228, slot=L["2h_mace"]}) -- Smashalupagus
    }
}) -- Stompalupagus

map.nodes[44609220] = Rare({
    id=86137,
    quest=36656,
    rewards={
        Transmog({item=118223, slot=L["fist"]}) -- Sunclaw
    }
}) -- Sunclaw

map.nodes[39407460] = Rare({
    id=85907,
    quest=nil,
    note=L["in_cave"],
    rewards={
        Transmog({item=118232, slot=L["mail"]}) -- Scaled Riverbeast Spaulders
    },
    pois={
        POI({39707630}) -- Entrance
    }
}) -- Berthora

-- @todo check loc
map.nodes[52205580] = Rare({
    id=78260,
    quest=nil,
    note=L["in_cave"],
    rewards={
        Transmog({item=119351, slot=L["cloak"]}) -- Slime Coated Kingscloak
    },
    pois={
        POI({54005590}) -- Entrance
    }
}) -- King Slime

map.nodes[37608140] = Rare({
    id=85970,
    quest=36600,
    rewards={
        Transmog({item=118231, slot=L["dagger"]}) -- Riptar's Clever Claw
    }
}) -- Riptar

map.nodes[47804160] = Rare({
    id=85264,
    quest=36393,
    rewards={
        Item({item=118211, note=L["trinket"]}) -- Rolkor's Rage
    }
}) -- Rolkor

map.nodes[64006180] = Rare({
    id=86410,
    quest=36794,
    rewards={
        Transmog({item=118213, slot=L["leather"]}) -- Slimy Sea Serpent Skin Sabatons
    }
}) -- Sylldros

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[40407660] = Treasure({
    quest=36621,
    label=L["explorer_canister_treasure"],
    rewards={
        Achievement({id=9728, criteria={
            {id=1, qty=true, suffix=L["treasures_discovered"]}
        }}),
        Item({item=118710}) -- Exploratron 2000 Spare Parts
    }
}) -- Explorer Canister

map.nodes[42408350] = Treasure({
    quest=36625,
    label=L["discarded_pack_treasure"],
    rewards={
        Achievement({id=9728, criteria={
            {id=1, qty=true, suffix=L["treasures_discovered"]}
        }})
    }
}) -- Discarded Pack

map.nodes[43109290] = Treasure({
    quest=34241,
    label=L["ockbars_pack_treasure"],
    rewards={
        Achievement({id=9728, criteria={
            {id=1, qty=true, suffix=L["treasures_discovered"]}
        }})
    }
}) -- Ockbar's Pack

map.nodes[48109340] = Treasure({
    quest=36604,
    label=L["stashed_emergency_rucksack_treasure"],
    rewards={
        Achievement({id=9728, criteria={
            {id=1, qty=true, suffix=L["treasures_discovered"]}
        }})
    }
}) -- Stashed Emergency Rucksack

map.nodes[53008000] = Treasure({
    quest=34940,
    label=L["strange_looking_dagger_treasure"],
    note=L["in_cave"],
    rewards={
        Achievement({id=9728, criteria={
            {id=1, qty=true, suffix=L["treasures_discovered"]}
        }}),
        Transmog({item=118718, slot=L["dagger"]}) -- Pale Bloodthief Dagger
    },
    pois={
        POI({51307760}) -- Entrance
    }
}) -- Strange Looking Dagger

map.nodes[53107450] = Treasure({
    quest=36654,
    label=L["remains_of_balik_orecrusher_treasure"],
    note=L["in_cave"],
    rewards={
        Achievement({id=9728, criteria={
            {id=1, qty=true, suffix=L["treasures_discovered"]}
        }})
    },
    pois={
        POI({51407440}) -- Entrance
    }
}) -- Remains of Balik Orecrusher

map.nodes[52506690] = Treasure({
    quest=36509,
    label=L["odd_skull_treasure"],
    rewards={
        Achievement({id=9728, criteria={
            {id=1, qty=true, suffix=L["treasures_discovered"]}
        }}),
        Transmog({item=118717, slot=L["offhand"]}) -- Beastskull Vessel
    }
}) -- Odd Skull

map.nodes[39006810] = Treasure({
    quest=36631,
    label=L["sashas_secret_stash_treasure"],
    rewards={
        Achievement({id=9728, criteria={
            {id=1, qty=true, suffix=L["treasures_discovered"]}
        }})
    }
}) -- Sasha's Secret Stash

map.nodes[59506370] = Treasure({
    quest=36628,
    label=L["vindicators_hammer_treasure"],
    rewards={
        Achievement({id=9728, criteria={
            {id=1, qty=true, suffix=L["treasures_discovered"]}
        }}),
        Transmog({item=118712, slot=L["2h_mace"]}) -- Huurand's Huge Hammer
    }
}) -- Vindicator's Hammer

map.nodes[57805600] = Treasure({
    quest=36605,
    label=L["remains_if_balldir_deeprock_treasure"],
    rewards={
        Achievement({id=9728, criteria={
            {id=1, qty=true, suffix=L["treasures_discovered"]}
        }})
    }
}) -- Remains of Balldir Deeprock

map.nodes[41705290] = Treasure({
    quest=36506,
    label=L["brokors_sack_treasure"],
    rewards={
        Achievement({id=9728, criteria={
            {id=1, qty=true, suffix=L["treasures_discovered"]}
        }}),
        Transmog({item=118702, slot=L["staff"]}) -- Brokor's Walking Stick
    }
}) -- Brokor's Sack

map.nodes[45704970] = Treasure({
    quest=36610,
    label=L["suntouched_spear_treasure"],
    rewards={
        Achievement({id=9728, criteria={
            {id=1, qty=true, suffix=L["treasures_discovered"]}
        }})
    }
}) -- Suntouched Spear

map.nodes[48904730] = Treasure({
    quest=36203,
    label=L["warm_goren_egg_treasure"],
    note=L["warm_goren_egg_note"],
    rewards={
        Achievement({id=9728, criteria={
            {id=1, qty=true, suffix=L["treasures_discovered"]}
        }}),
        Item({item=118705}), -- Warm Goren Egg
        Toy({item=118716}) -- Goren Garb
    }
}) -- Warm Goren Egg

map.nodes[49304360] = Treasure({
    quest=36596,
    label=L["weapons_cache_treasure"],
    rewards={
        Achievement({id=9728, criteria={
            {id=1, qty=true, suffix=L["treasures_discovered"]}
        }}),
        Item({item=107645}) -- Iron Horde Weapon Cache
    }
}) -- Weapons Cache

map.nodes[46204290] = Treasure({
    quest=36521,
    label=L["petrified_rylak_egg_treasure"],
    rewards={
        Achievement({id=9728, criteria={
            {id=1, qty=true, suffix=L["treasures_discovered"]}
        }})
    }
}) -- Petrified Rylak Egg

map.nodes[45004260] = Treasure({
    quest=36634,
    label=L["snipers_crossbow_trerasure"],
    rewards={
        Achievement({id=9728, criteria={
            {id=1, qty=true, suffix=L["treasures_discovered"]}
        }}),
        Transmog({item=118713, slot=L["crossbow"]}) -- Iron Lookout's Arbalest
    }
}) -- Sniper's Crossbow

map.nodes[43704250] = Treasure({
    quest=36618,
    label=L["iron_supply_chest_treasure"],
    rewards={
        Achievement({id=9728, criteria={
            {id=1, qty=true, suffix=L["treasures_discovered"]}
        }})
    }
}) -- Iron Supply Chest

map.nodes[46906870] = Treasure({
    quest=35056,
    label=L["horned_skull_treasure"],
    note=L["in_cave"],
    rewards={
        Achievement({id=9728, criteria={
            {id=1, qty=true, suffix=L["treasures_discovered"]}
        }})
    },
    pois={
        POI({43504800}) -- Entrance
    }
}) -- Horned Skull

map.nodes[41807810] = Treasure({
    quest=36658,
    label=L["evermorn_supply_cache_treasure"],
    rewards={
        Achievement({id=9728, criteria={
            {id=1, qty=true, suffix=L["treasures_discovered"]}
        }})
    }
}) -- Evermorn Supply Cache

map.nodes[46105000] = Treasure({
    quest=36651,
    label=L["harvestable_precious_crystal_treasure"],
    note=L["in_cave"],
    rewards={
        Achievement({id=9728, criteria={
            {id=1, qty=true, suffix=L["treasures_discovered"]}
        }})
    },
    pois={
        POI({44505080}) -- Entrance
    }
}) -- Harvestable Precious Crystal

map.nodes[40007230] = Treasure({
    quest=36170,
    label=L["femur_of_improbability_treasure"],
    rewards={
        Achievement({id=9728, criteria={
            {id=1, qty=true, suffix=L["treasures_discovered"]}
        }})
    }
}) -- Femur of Improbability

map.nodes[44207420] = Treasure({
    quest=35709,
    label=L["laughing_skull_cache_treasure"],
    note=L["laughing_skull_note"],
    rewards={
        Achievement({id=9728, criteria={
            {id=1, qty=true, suffix=L["treasures_discovered"]}
        }})
    }
}) -- Laughing Skull Cache

map.nodes[44007060] = Treasure({
    quest=36118,
    label=L["pile_of_rubble_treasure"],
    rewards={
        Achievement({id=9728, criteria={
            {id=1, qty=true, suffix=L["treasures_discovered"]}
        }})
    }
}) -- Pile of Rubble

map.nodes[57106530] = Treasure({
    quest=37249,
    label=L["strange_spore_treasure"],
    rewards={
        Pet({item=118106, id=1537}) -- Crimson Spore
    }
}) -- Strange Spore

map.nodes[47504130] = Treasure({
    group=ns.groups.PEPE,
    label=L["ninja_pepe_treasure"],
    note=L["ninja_pepe_note"],
    rewards={
        Achievement({id=10053, criteria=28182}),
        Item({item=127867}) -- A Tiny Ninja Shroud
    }
}) -- Ninja Pepe

-- @todo get id
local AttackPlans = Treasure({
    group=ns.groups.ATTACK_PLANS,
    icon='chest_pp',
    label=L["attack_plans_treasure"],
    note=L["multiple_spawn_note"],
    rewards={
        Achievement({id=9656})
    }
})

map.nodes[45802720] = AttackPlans
map.nodes[48202700] = AttackPlans
map.nodes[45202520] = AttackPlans
map.nodes[49002400] = AttackPlans

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[51007060] = PetBattle({
    id=83837,
    rewards={
        Achievement({id=9724, criteria=27011})
    }
}) -- Cymre Brightblade
