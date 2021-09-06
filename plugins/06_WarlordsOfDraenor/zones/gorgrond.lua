-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible
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

local map = Map({ id = 543, settings = true })

-- Workaround for Luacheck 331.
local maps = {}
local minimap = maps

-- Minimaps in Gorgrond.
minimap['cragplume'] = Map({ id = 549, settings = true })

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
  ['outpost'] = 35151,
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
    ['outpost'] = 35063,
  }
end

-------------------------------------------------------------------------------
------------------------------------ NODES ------------------------------------
-------------------------------------------------------------------------------

local Voidtalon = Node({
  icon = 1094600,
  label = L['edge_of_reality'],
  note = L['edge_of_reality_note'],
  rewards = {
    -- Voidtalon of the Dark Star
    Mount({ id = 682, item = 121815 }),
  },
})

map.nodes[51583863] = Voidtalon
map.nodes[54004580] = Voidtalon
map.nodes[56004065] = Voidtalon
map.nodes[43213420] = Voidtalon

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

-- Biolante
map.nodes[62905520] = Rare({
  id = 75207,
  note = L['trophy_of_glory_note'],
  requires = ns.requirement.Quest(TrophyOfGloryQuests['outpost']),
  rewards = {
    Achievement({ id = 9400, criteria = 25568 }),
    -- Writhing Green Tendril
    Item({ item = 116160, quest = TrophyOfGloryQuests['biolante'] }),
  },
  pois = {
    Path({ 62705420, 62505270, 62005220, 61505230, 61105340, 60605370, 60505490 })
  },
})

-- Crater Lord Igneous
map.nodes[43806060] = Rare({
  id = 81528,
  note = L['trophy_of_glory_note'],
  requires = ns.requirement.Quest(TrophyOfGloryQuests['outpost']),
  rewards = {
    Achievement({ id = 9400, criteria = 25570 }),
    -- Chunk of Crater Lord
    Item({ item = 113448, quest = TrophyOfGloryQuests['crater lord igneous'] }),
  },
})

-- Charl Doomwing
map.nodes[45205160] = Rare({
  id = 81548,
  note = L['trophy_of_glory_note'],
  requires = ns.requirement.Quest(TrophyOfGloryQuests['outpost']),
  rewards = {
    Achievement({ id = 9400, criteria = 25574 }),
    -- Fang of the Doomwing
    Item({ item = 113457, quest = TrophyOfGloryQuests['charl doomwing'] }),
  },
  pois = {
    Path({ 45404900, 46004680, 47804640 })
  },
})

-- Khargax the Devourer
map.nodes[53206880] = Rare({
  id = 81537,
  note = L['trophy_of_glory_note'],
  requires = ns.requirement.Quest(TrophyOfGloryQuests['outpost']),
  rewards = {
    Achievement({ id = 9400, criteria = 25572 }),
    -- Shimmering Scale
    Item({ item = 113460, quest = TrophyOfGloryQuests['khargax devourer'] }),
  },
  pois = {
    Path({ 53206880, 52706870, 52206770, 52406660, 53406590, 54006590, 54306710, 54006750, 53806820, 53206880 })
  },
})

-- Roardan the Sky Terror
map.nodes[50806760] = Rare({
  id = 77093,
  requires = ns.requirement.Quest(TrophyOfGloryQuests['outpost']),
  note = L['roardan_sky_terror_note'] .. "\n\n" .. L['trophy_of_glory_note'],
  rewards = {
    Achievement({ id = 9400, criteria = 25569 }),
    -- Ebony Feather
    Item({ item = 113458, quest = TrophyOfGloryQuests['roardan sky terror'] }),
  },
  pois = {
    POI({ 61606200 }),
    POI({ 53106300 })
  },
})

-- Dessicus of the Dead Pools
map.nodes[38805120] = Rare({
  id = 81529,
  note = L['trophy_of_glory_note'],
  requires = ns.requirement.Quest(TrophyOfGloryQuests['outpost']),
  rewards = {
    Achievement({ id = 9400, criteria = 25571 }),
    -- Globe of Dead Water
    Item({ item = 113447, quest = TrophyOfGloryQuests['dessicus dead pools'] }),
  },
})

-- Erosian the Violent
map.nodes[51804160] = Rare({
  id = 81540,
  note = L['trophy_of_glory_note'],
  requires = ns.requirement.Quest(TrophyOfGloryQuests['outpost']),
  rewards = {
    Achievement({ id = 9400, criteria = 25573 }),
    -- Crystalized Steam
    Item({ item = 113444, quest = TrophyOfGloryQuests['erosian violent'] }),
  },
})

-- Fungal Praetorian
map.nodes[58006360] = Rare({
  id = 80785,
  note = L['trophy_of_glory_note'],
  requires = ns.requirement.Quest(TrophyOfGloryQuests['outpost']),
  rewards = {
    Achievement({ id = 9400, criteria = 25575 }),
    -- Precious Mushroom
    Item({ item = 113453, quest = TrophyOfGloryQuests['fungal praetorian'] }),
  },
})

-- Maniacal Madgard
map.nodes[49003300] = Rare({
  id = 86562,
  quest = 37363,
  rewards = {
    Achievement({ id = 9655, criteria = 26542 }),
    -- Unpopped Pustule Pendant
    Item({ item = 119230, note = L['neck'] }),
  },
})

-- Defector Dazgo
map.nodes[48202100] = Rare({
  id = 86566,
  quest = 37362,
  rewards = {
    Achievement({ id = 9655, criteria = 26543 }),
    -- Foereaver Polearm
    Transmog({ item = 119224, slot = L['polearm'] }),
  },
})

-- Durp the Hated
map.nodes[49802380] = Rare({
  id = 86571,
  quest = 37366,
  rewards = {
    Achievement({ id = 9655, criteria = 26544 }),
    -- Studded Gronn-Stitched Girdle
    Transmog({ item = 119225, slot = L['leather'] }),
  },
})

-- Inventor Blammo
map.nodes[47603080] = Rare({
  id = 86574,
  quest = 37367,
  rewards = {
    Achievement({ id = 9655, criteria = 26545 }),
    -- Blammo's Blammer
    Transmog({ item = 119226, slot = L['gun'] }),
  },
})

-- Horgg
map.nodes[45802660] = Rare({
  id = 86577,
  quest = 37365,
  rewards = {
    Achievement({ id = 9655, criteria = 26548 }),
    -- Horgg's Bandolier
    Transmog({ item = 119229, slot = L['mail'] }),
  },
})

-- Blademaster Ro'gor
map.nodes[45803300] = Rare({
  id = 86579,
  quest = 37368,
  rewards = {
    Achievement({ id = 9655, criteria = 26550 }),
    -- Ro'gor's Slippers of Silence
    Transmog({ item = 119228, slot = L['cloth'] }),
  },
})

-- Morgo Kain
map.nodes[46602300] = Rare({
  id = 86582,
  quest = 37364,
  rewards = {
    Achievement({ id = 9655, criteria = 26551 }),
    -- Morgo's Unstoppable Ramming Helm
    Transmog({ item = 119227, slot = L['plate'] }),
  },
})

-- Swift Onyx Flayer
map.nodes[59603200] = Rare({
  id = 88582,
  quest = 37374,
  rewards = {
    Achievement({ id = 9678, criteria = 26593 }),
    -- Flayerscale Carapace Stompers
    Transmog({ item = 119367, slot = L['mail'] }),
  },
})

-- Mogamago
map.nodes[61603920] = Rare({
  id = 88586,
  quest = 37376,
  rewards = {
    Achievement({ id = 9678, criteria = 26594 }),
    -- Etched Osteoderm Shield
    Transmog({ item = 119391, slot = L['shield'] }),
  },
})

-- Basten (Protectors of the Grove)
map.nodes[69204460] = Rare({
  id = 86257,
  quest = 37369,
  rewards = {
    Achievement({ id = 9678, criteria = 26595 }),
    -- Botani Camouflage
    Toy({ item = 119432 }),
    -- Grovetender's Cummerbund
    Transmog({ item = 119357, slot = L['cloth'] }),
  },
})

-- Venolasix
map.nodes[63403080] = Rare({
  id = 86266,
  quest = 37372,
  rewards = {
    Achievement({ id = 9678, criteria = 26596 }),
    -- Hydratooth Dagger
    Transmog({ item = 119395, slot = L['dagger'] }),
  },
})

-- Depthroot
map.nodes[72604060] = Rare({
  id = 82058,
  quest = 37370,
  rewards = {
    Achievement({ id = 9678, criteria = 26598 }),
    -- Depthroot's Forearm
    Transmog({ item = 119406, slot = L['polearm'] }),
  },
})

-- Firestarter Grash
map.nodes[57803660] = Rare({
  id = 88580,
  quest = 37373,
  rewards = {
    Achievement({ id = 9678, criteria = 26599 }),
    -- Grash's Fireproof Handguards
    Transmog({ item = 119381, slot = L['plate'] }),
  },
})

-- Grove Warden Yal
map.nodes[59604300] = Rare({
  id = 88583,
  quest = 37375,
  rewards = {
    Achievement({ id = 9678, criteria = 26600 }),
    -- Yal's Leafwrap Cloak
    Transmog({ item = 119414, slot = L['cloak'] }),
  },
})

-- Hunter Bal'ra
map.nodes[54804620] = Rare({
  id = 88672,
  quest = 37377,
  rewards = {
    Achievement({ id = 9678, criteria = 26606 }),
    -- Bal'ra's Compound Bow
    Transmog({ item = 119412, slot = L['bow'] }),
  },
})

-- Mother Araneae
map.nodes[53407820] = Rare({
  id = 76473,
  quest = 34726,
  rewards = {
    -- Broodmother's Kiss
    Transmog({ item = 118208, slot = L['dagger'] }),
  },
})

-- Stomper Kreego
map.nodes[38206620] = Rare({
  id = 79629,
  quest = 35910,
  rewards = {
    -- Ogre Brewing Kit
    Toy({ item = 118224 }),
  },
})

-- Sulfurious
map.nodes[40606020] = Rare({
  id = 80725,
  quest = 36394,
  rewards = {
    -- Bubble Wand
    Toy({ item = 114227 }),
  },
})

-- Glut
map.nodes[46005080] = Rare({
  id = 80868,
  quest = 36204,
  rewards = {
    -- Resonant Hidecrystal of the Gorger
    Item({ item = 118229, note = L['trinket'] }),
  },
})

-- Gelgor of the Blue Flame
map.nodes[41804560] = Rare({
  id = 81038,
  quest = 36391,
  rewards = {
    -- Smoldering Cerulean Stone
    Item({ item = 118230, note = L['trinket'] }),
  },
})

-- Bashiok
map.nodes[40007900] = Rare({
  id = 82085,
  quest = 35335,
  rewards = {
    -- Spirit of Bashiok
    Toy({ item = 118222 }),
  },
})

-- Char the Burning
map.nodes[53604460] = Rare({
  id = 82311,
  quest = 35503,
  rewards = {
    -- Char's Smoldering Fist
    Transmog({ item = 118212, slot = L['2h_mace'] }),
  },
})

-- Hive Queen Skrikka
map.nodes[52207020] = Rare({
  id = 83522,
  quest = 35908,
  rewards = {
    -- Skrikka's Mandible
    Transmog({ item = 118209, slot = L['1h_axe'] }),
  },
})

-- Mandrakor
map.nodes[50605320] = Rare({
  id = 84406,
  quest = 36178,
  rewards = {
    -- Doom Bloom
    Pet({ item = 118709, id = 1564 }),
  },
})

-- Greldrok the Cunning
map.nodes[46804300] = Rare({
  id = 84431,
  quest = 36186,
  rewards = {
    -- Greldrok's Facesmasher
    Transmog({ item = 118210, slot = L['1h_mace'] }),
  },
})

-- Fossilwood the Petrified
map.nodes[57406860] = Rare({
  id = 85250,
  quest = 36387,
  rewards = {
    -- Petrification Stone
    Toy({ item = 118221 }),
  },
})

-- Stompalupagus
map.nodes[54407140] = Rare({
  id = 86520,
  quest = 36837,
  rewards = {
    -- Smashalupagus
    Transmog({ item = 118228, slot = L['2h_mace'] }),
  },
})

-- Sunclaw
map.nodes[44609220] = Rare({
  id = 86137,
  quest = 36656,
  rewards = {
    -- Sunclaw
    Transmog({ item = 118223, slot = L['fist'] }),
  },
})

-- Berthora
map.nodes[39407460] = Rare({
  id = 85907,
  quest = 36597,
  note = L['in_cave'],
  rewards = {
    -- Scaled Riverbeast Spaulders
    Transmog({ item = 118232, slot = L['mail'] }),
  },
  pois = {
    POI({ 39707630 }),
  },
})

-- Riptar
map.nodes[37608140] = Rare({
  id = 85970,
  quest = 36600,
  rewards = {
    -- Riptar's Clever Claw
    Transmog({ item = 118231, slot = L['dagger'] }),
  },
})

-- Rolkor
map.nodes[47804160] = Rare({
  id = 85264,
  quest = 36393,
  rewards = {
    -- Rolkor's Rage
    Item({ item = 118211, note = L['trinket'] }),
  },
})

-- Sylldros
map.nodes[64006180] = Rare({
  id = 86410,
  quest = 36794,
  rewards = {
    -- Slimy Sea Serpent Skin Sabatons
    Transmog({ item = 118213, slot = L['leather'] }),
  },
})

local Poundfist = Rare({
  id = 50985,
  note = L['poundfist_note'],
  rewards = {
    -- Sunhide Gronnling
    Mount({ item = 116792, id = 655 }),
  },
})

map.nodes[41902500] = Poundfist
map.nodes[51604310] = Poundfist
map.nodes[45204660] = Poundfist
map.nodes[47405530] = Poundfist
map.nodes[43005570] = Poundfist

local Alkali = Rare({
  id = 86268,
  quest = 37371,
  note = L['multiple_spawn_note'],
  rewards = {
    Achievement({ id = 9678, criteria = 26597 }),
    -- Thorn-Knuckled Gloves
    Transmog({ item = 119361, slot = L['leather'] }),
  },
})

map.nodes[56204080] = Alkali
map.nodes[58604120] = Alkali
map.nodes[71404040] = Alkali

local Gnarljaw = Class('Gnarljaw', Rare, {
  id = 78269,
  quest = 37413,
  rewards = {
    -- Gnarled Goren Jaw
    Transmog({ item = 119397, slot = L['fist'] }),
  },
})

minimap['cragplume'].nodes[55103550] = Gnarljaw()

map.nodes[53005350] = Gnarljaw({
  note = L['in_cave'],
  pois = {
    POI({ 54105580 }),
  },
})

local KingSlime = Class('KingSlime', Rare, {
  id = 78260,
  quest = 37412,
  rewards = {
    -- Slime Coated Kingscloak
    Transmog({ item = 119351, slot = L['cloak'] }),
  },
})

minimap['cragplume'].nodes[41707491] = KingSlime()

map.nodes[52205581] = KingSlime({
  note = L['in_cave'],
  pois = {
    POI({ 54105580 }),
  },
})

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

-- Explorer Canister
map.nodes[40407660] = Treasure({
  quest = 36621,
  label = L['explorer_canister_treasure'],
  rewards = {
    Achievement({ id = 9728, criteria = {
      { id = 1, qty = true, suffix = L['treasures_discovered'] },
    } }),
    -- Exploratron 2000 Spare Parts
    Item({ item = 118710 }),
  },
})

-- Discarded Pack
map.nodes[42408350] = Treasure({
  quest = 36625,
  label = L['discarded_pack_treasure'],
  rewards = {
    Achievement({ id = 9728, criteria = {
      { id = 1, qty = true, suffix = L['treasures_discovered'] },
    } })
  },
})

-- Ockbar's Pack
map.nodes[43109290] = Treasure({
  quest = 34241,
  label = L['ockbars_pack_treasure'],
  rewards = {
    Achievement({ id = 9728, criteria = {
      { id = 1, qty = true, suffix = L['treasures_discovered'] },
    } })
  },
})

-- Stashed Emergency Rucksack
map.nodes[48109340] = Treasure({
  quest = 36604,
  label = L['stashed_emergency_rucksack_treasure'],
  rewards = {
    Achievement({ id = 9728, criteria = {
      { id = 1, qty = true, suffix = L['treasures_discovered'] },
    } })
  },
})

-- Strange Looking Dagger
map.nodes[53008000] = Treasure({
  quest = 34940,
  label = L['strange_looking_dagger_treasure'],
  note = L['in_cave'],
  rewards = {
    Achievement({ id = 9728, criteria = {
      { id = 1, qty = true, suffix = L['treasures_discovered'] },
    } }),
    -- Pale Bloodthief Dagger
    Transmog({ item = 118718, slot = L['dagger'] }),
  },
  pois = {
    POI({ 51307760 }),
  },
})

-- Remains of Balik Orecrusher
map.nodes[53107450] = Treasure({
  quest = 36654,
  label = L['remains_of_balik_orecrusher_treasure'],
  note = L['in_cave'],
  rewards = {
    Achievement({ id = 9728, criteria = {
      { id = 1, qty = true, suffix = L['treasures_discovered'] },
    } })
  },
  pois = {
    POI({ 51407440 }), -- Entrance
  },
})

-- Odd Skull
map.nodes[52506690] = Treasure({
  quest = 36509,
  label = L['odd_skull_treasure'],
  rewards = {
    Achievement({ id = 9728, criteria = {
      { id = 1, qty = true, suffix = L['treasures_discovered'] },
    } }),
    -- Beastskull Vessel
    Transmog({ item = 118717, slot = L['offhand'] }),
  },
})

-- Sasha's Secret Stash
map.nodes[39006810] = Treasure({
  quest = 36631,
  label = L['sashas_secret_stash_treasure'],
  rewards = {
    Achievement({ id = 9728, criteria = {
      { id = 1, qty = true, suffix = L['treasures_discovered'] },
    } })
  },
})

-- Vindicator's Hammer
map.nodes[59506370] = Treasure({
  quest = 36628,
  label = L['vindicators_hammer_treasure'],
  rewards = {
    Achievement({ id = 9728, criteria = {
      { id = 1, qty = true, suffix = L['treasures_discovered'] },
    } }),
    -- Huurand's Huge Hammer
    Transmog({ item = 118712, slot = L['2h_mace'] }),
  },
})

-- Remains of Balldir Deeprock
map.nodes[57805600] = Treasure({
  quest = 36605,
  label = L['remains_if_balldir_deeprock_treasure'],
  rewards = {
    Achievement({ id = 9728, criteria = {
      { id = 1, qty = true, suffix = L['treasures_discovered'] },
    } })
  },
})

-- Brokor's Sack
map.nodes[41705290] = Treasure({
  quest = 36506,
  label = L['brokors_sack_treasure'],
  rewards = {
    Achievement({ id = 9728, criteria = {
      { id = 1, qty = true, suffix = L['treasures_discovered'] },
    } }),
    -- Brokor's Walking Stick
    Transmog({ item = 118702, slot = L['staff'] }),
  },
})

-- Suntouched Spear
map.nodes[45704970] = Treasure({
  quest = 36610,
  label = L['suntouched_spear_treasure'],
  rewards = {
    Achievement({ id = 9728, criteria = {
      { id = 1, qty = true, suffix = L['treasures_discovered'] },
    } })
  },
})

-- Warm Goren Egg
map.nodes[48904730] = Treasure({
  quest = 36203,
  label = L['warm_goren_egg_treasure'],
  note = L['warm_goren_egg_note'],
  rewards = {
    Achievement({ id = 9728, criteria = {
      { id = 1, qty = true, suffix = L['treasures_discovered'] },
    } }),
    -- Warm Goren Egg
    Item({ item = 118705 }),
    -- Goren Garb
    Toy({ item = 118716 }),
  },
})

-- Weapons Cache
map.nodes[49304360] = Treasure({
  quest = 36596,
  label = L['weapons_cache_treasure'],
  rewards = {
    Achievement({ id = 9728, criteria = {
      { id = 1, qty = true, suffix = L['treasures_discovered'] },
    } }),
    -- Iron Horde Weapon Cache
    Item({ item = 107645 }),
  },
})

-- Petrified Rylak Egg
map.nodes[46204290] = Treasure({
  quest = 36521,
  label = L['petrified_rylak_egg_treasure'],
  rewards = {
    Achievement({ id = 9728, criteria = {
      { id = 1, qty = true, suffix = L['treasures_discovered'] },
    } })
  },
})

-- Sniper's Crossbow
map.nodes[45004260] = Treasure({
  quest = 36634,
  label = L['snipers_crossbow_trerasure'],
  rewards = {
    Achievement({ id = 9728, criteria = {
      { id = 1, qty = true, suffix = L['treasures_discovered'] },
    } }),
    -- Iron Lookout's Arbalest
    Transmog({ item = 118713, slot = L['crossbow'] }),
  },
})

-- Iron Supply Chest
map.nodes[43704250] = Treasure({
  quest = 36618,
  label = L['iron_supply_chest_treasure'],
  rewards = {
    Achievement({ id = 9728, criteria = {
      { id = 1, qty = true, suffix = L['treasures_discovered'] },
    } })
  },
})

-- Horned Skull
map.nodes[46906870] = Treasure({
  quest = 35056,
  label = L['horned_skull_treasure'],
  note = L['in_cave'],
  rewards = {
    Achievement({ id = 9728, criteria = {
      { id = 1, qty = true, suffix = L['treasures_discovered'] },
    } })
  },
  pois = {
    POI({ 43504800 }),
  },
})

-- Evermorn Supply Cache
map.nodes[41807810] = Treasure({
  quest = 36658,
  label = L['evermorn_supply_cache_treasure'],
  rewards = {
    Achievement({ id = 9728, criteria = {
      { id = 1, qty = true, suffix = L['treasures_discovered'] },
    } }),
  },
})

-- Harvestable Precious Crystal
map.nodes[46105000] = Treasure({
  quest = 36651,
  label = L['harvestable_precious_crystal_treasure'],
  note = L['in_cave'],
  rewards = {
    Achievement({ id = 9728, criteria = {
      { id = 1, qty = true, suffix = L['treasures_discovered'] },
    } }),
  },
  pois = {
    POI({ 44505080 }),
  },
})

-- Femur of Improbability
map.nodes[40007230] = Treasure({
  quest = 36170,
  label = L['femur_of_improbability_treasure'],
  rewards = {
    Achievement({ id = 9728, criteria = {
      { id = 1, qty = true, suffix = L['treasures_discovered'] },
    } }),
  },
})

-- Laughing Skull Cache
map.nodes[44207420] = Treasure({
  quest = 35709,
  label = L['laughing_skull_cache_treasure'],
  note = L['laughing_skull_note'],
  rewards = {
    Achievement({ id = 9728, criteria = {
      { id = 1, qty = true, suffix = L['treasures_discovered'] },
    } }),
  },
})

-- Pile of Rubble
map.nodes[44007060] = Treasure({
  quest = 36118,
  label = L['pile_of_rubble_treasure'],
  rewards = {
    Achievement({ id = 9728, criteria = {
      { id = 1, qty = true, suffix = L['treasures_discovered'] },
    } }),
  },
})

-- Strange Spore
map.nodes[57106530] = Treasure({
  quest = 37249,
  label = L['strange_spore_treasure'],
  rewards = {
    -- Crimson Spore
    Pet({ item = 118106, id = 1537 }),
  },
})

-- Ninja Pepe
map.nodes[47504130] = Treasure({
  quest = 39267,
  label = L['ninja_pepe_treasure'],
  note = L['ninja_pepe_note'],
  rewards = {
    Achievement({ id = 10053, criteria = 28182 }),
    -- A Tiny Ninja Shroud
    Item({ item = 127867 }),
  },
})

-- In Plain Sight Achievement
local AttackPlans = Collectible({
  group = ns.groups.ATTACK_PLANS,
  icon = 'chest_pp',
  label = L['attack_plans_treasure'],
  note = L['multiple_spawn_note'],
  rewards = {
    Achievement({ id = 9656 }),
  },
})

map.nodes[45802720] = AttackPlans
map.nodes[48202700] = AttackPlans
map.nodes[45202520] = AttackPlans
map.nodes[49002400] = AttackPlans

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

-- Cymre Brightblade
map.nodes[51007060] = PetBattle({
  id = 83837,
  rewards = {
    Achievement({ id = 9724, criteria = 27011 }),
  },
})
