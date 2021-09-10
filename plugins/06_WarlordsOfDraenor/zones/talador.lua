-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Node = ns.node.Node
local PetBattle = ns.node.PetBattle
local Rare = ns.node.Rare

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

local map = Map({ id = 535, settings = true })

-- Workaround for Luacheck 331.
local maps = {}
local minimap = maps

-- Minimaps in Talador.
minimap['tomb_of_souls'] = Map({ id = 537, settings = true })

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

map.nodes[39885561] = Voidtalon
map.nodes[46265256] = Voidtalon
map.nodes[47164882] = Voidtalon
map.nodes[52144113] = Voidtalon
map.nodes[52252587] = Voidtalon
map.nodes[52683437] = Voidtalon
map.nodes[50963241] = Voidtalon

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

-- Yazheera the Incinerator
map.nodes[53802580] = Rare({
  id = 77529,
  quest = 34135,
  rewards = {
    -- Yazheera's Burning Bracers
    Transmog({ item = 112263, slot = L['mail'] }),
  },
})

-- Frenzied Golem
map.nodes[46205500] = Rare({
  id = 77614,
  quest = 34145,
  rewards = {
    -- Shard of Contempt
    Transmog({ item = 113288, slot = L['dagger'] }),
    -- Shard of Scorn
    Transmog({ item = 113287, slot = L['1h_sword'] }),

  },
})

-- Cro Fleshrender
map.nodes[37607040] = Rare({
  id = 77620,
  quest = 34165,
  rewards = {
    -- Fleshrender's Painbringer
    Transmog({ item = 116123, slot = L['1h_mace'] }),
  },
})

-- Hen-Mother Hami
map.nodes[75405080] = Rare({
  id = 77626,
  quest = 34167,
  rewards = {
    -- Hami-Down Cloak
    Transmog({ item = 112369, slot = L['cloak'] }),
  },
  pois = {
    Path({ 75405080, 76705070, 77005260, 78005100 }),
  },
})

-- Hammertooth
map.nodes[61404920] = Rare({
  id = 77715,
  quest = 34185,
  rewards = {
    -- Scaled Riverbeast Vest
    Transmog({ item = 116124, slot = L['mail'] }),
  },
  pois = {
    Path({
      61404920, 60604800, 61304650, 62704480,
      63904330, 65304330, 65304550, 64004530,
      63104590, 62304730, 61404920,
    }),
  },
})

-- Glimmerwing
map.nodes[30406500] = Rare({
  id = 77719,
  quest = 34189,
  rewards = {
    -- Breath of Talador
    Toy({ item = 116113 }),
  },
  pois = {
    Path({ 30406500, 31206350, 32306220, 33106330, 33006460, 32706600, 31306580, 30406500 }),
  },
})

-- Ra'kahn
map.nodes[59405960] = Rare({
  id = 77741,
  quest = 34196,
  note = L['in_cave'],
  rewards = {
    -- Ra'kahn's Bite
    Transmog({ item = 116112, slot = L['fist'] }),
  },
  pois = {
    POI({ 60305730 }),
  },
})

-- Wandering Vindicator
map.nodes[69603360] = Rare({
  id = 77776,
  quest = 34205,
  note = L['wandering_vindicator_note'],
  rewards = {
    -- Forgotten Vindicator's Blade
    Transmog({ item = 112261, slot = L['1h_sword'] }),
  },
})

-- Lo'marg Jawcrusher
map.nodes[49009200] = Rare({
  id = 77784,
  quest = 34208,
  rewards = {
    -- Tezzakel's Terrible Talisman
    Item({ item = 116070, note = L['neck'] }),
  },
})

-- Echo of Murmur
map.nodes[34005720] = Rare({
  id = 77828,
  quest = 34221,
  rewards = {
    -- Mournful Moan of Murmur
    Toy({ item = 113670 }),
  },
})

-- Klikixx
map.nodes[66808560] = Rare({
  id = 78872,
  quest = 34498,
  note = L['in_cave'],
  rewards = {
    -- Klikixx's Webspinner
    Toy({ item = 116125 }),
  },
  pois = {
    POI({ 61308410 }),
  },
})

-- No'losh
map.nodes[86002960] = Rare({
  id = 79334,
  quest = 34859,
  rewards = {
    -- Pulsating Brain of No'losh
    Item({ item = 116077, note = L['trinket'] }),
  },
})

-- Kurlosh Doomfang
map.nodes[37603760] = Rare({
  id = 82988,
  quest = 37348,
  rewards = {
    Achievement({ id = 9638, criteria = 26480 }),
    -- Kurlosh's Kidneyslicer
    Transmog({ item = 119394, slot = L['dagger'] }),
  },
})

-- Lady Demlash
map.nodes[33603780] = Rare({
  id = 82942,
  quest = 37346,
  rewards = {
    Achievement({ id = 9638, criteria = 26478 }),
    -- Demlash's Dashing Robe
    Transmog({ item = 119352, slot = L['cloth'] }),
  },
})

-- Talonpriest Zorkra
map.nodes[53809100] = Rare({
  id = 79485,
  quest = 34668,
  rewards = {
    -- Zorkra's Hood
    Transmog({ item = 116110, slot = L['cloth'] }),
  },
})

-- Felbark
map.nodes[50208620] = Rare({
  id = 80204,
  quest = 35018,
  rewards = {
    -- Felbark's Shin
    Transmog({ item = 112373, slot = L['shield'] }),
  },
  pois = {
    Path({ 50208620, 49408570, 49308440, 49108310, 50408310, 51208360, 51708430, 50908570, 50208620 }),
  },
})

-- Gennadian
map.nodes[67408060] = Rare({
  id = 80471,
  quest = 34929,
  rewards = {
    -- Scales of Gennadian
    Item({ item = 116075, note = L['trinket'] }),
  },
})

-- Underseer Bloodmane
map.nodes[63602080] = Rare({
  id = 80524,
  quest = 34945,
  rewards = {
    -- Prize's Horn-Ring
    Item({ item = 112475, note = L['ring'] }),
  },
})

-- Xothear, the Destroyer
map.nodes[37601460] = Rare({
  id = 82922,
  quest = 37343,
  rewards = {
    Achievement({ id = 9633, criteria = 26580 }),
    -- Mantle of the Destroyer
    Transmog({ item = 119371, slot = L['mail'] }),
  },
})

-- Felfire Consort
map.nodes[47603280] = Rare({
  id = 82992,
  quest = 37341,
  rewards = {
    Achievement({ id = 9633, criteria = 26468 }),
    -- Consort's Promise Ring
    Item({ item = 119386, note = L['ring'] }),
  },
})

-- Matron of Sin
map.nodes[38804960] = Rare({
  id = 82998,
  quest = 37349,
  rewards = {
    Achievement({ id = 9638, criteria = 26481 }),
    -- Matron's Supple Gloves
    Transmog({ item = 119353, slot = L['cloth'] }),
  },
})

-- Haakun the All-Consuming
map.nodes[48002520] = Rare({
  id = 83008,
  quest = 37312,
  rewards = {
    Achievement({ id = 9633, criteria = 26467 }),
    -- Sargerei Soulbiter
    Transmog({ item = 119403, slot = L['1h_sword'] }),
  },
})

-- Gug'tol
map.nodes[47603900] = Rare({
  id = 83019,
  quest = 37340,
  rewards = {
    Achievement({ id = 9633, criteria = 26466 }),
    -- Gug'tol's Imp Imperator
    Transmog({ item = 119402, slot = L['1h_sword'] }),
  },
})

-- Grrbrrgle
map.nodes[22207420] = Rare({
  id = 85572,
  quest = 36919,
  rewards = {
    -- Mrglrgirdle
    Transmog({ item = 120436, slot = L['leather'] }),
  },
})

-- Steeltusk
map.nodes[68003500] = Rare({
  id = 86549,
  quest = 36858,
  rewards = {
    -- Steeltusk's Steel Tusk
    Transmog({ item = 117562, slot = L['polearm'] }),
  },
})

-- Avatar of Socrethar
map.nodes[46203140] = Rare({
  id = 88043,
  quest = 37338,
  rewards = {
    Achievement({ id = 9633, criteria = 26469 }),
    -- Socrethar's Stone
    Transmog({ item = 119378, slot = L['offhand'] }),
  },
  pois = {
    Path({ 46203140, 45803420, 45003470, 45403660, 46203550, 48003510, 48303370 }),
  },
})

-- Legion Vanguard
map.nodes[38002060] = Rare({
  id = 88494,
  quest = 37342,
  note = L['legion_vanguard_note'],
  rewards = {
    Achievement({ id = 9633, criteria = 26579 }),
    -- Vanguard's Linebreaking Bracer
    Transmog({ item = 119385, slot = L['plate'] }),
  },
})

-- Orumo the Observer
map.nodes[31404760] = Rare({
  id = 87668,
  quest = 37344,
  note = L['orumo_the_observer_note'],
  rewards = {
    Achievement({ id = 9638, criteria = 26476 }),
    -- Chained Orb of Omniscience
    Item({ item = 119375, note = L['neck'] }),
    -- Eye of Observation
    Pet({ item = 119170, id = 1576 }),

  },
})

-- Shadowflame Terrorwalker
map.nodes[41004200] = Rare({
  id = 82930,
  quest = 37347,
  rewards = {
    Achievement({ id = 9638, criteria = 26479 }),
    -- Searing Shadowflame Axe
    Transmog({ item = 119393, slot = L['1h_axe'] }),
  },
})

-- Lord Korinak
map.nodes[31002680] = Rare({
  id = 82920,
  quest = 37345,
  rewards = {
    Achievement({ id = 9638, criteria = 26477 }),
    -- Doomlord's Seal of Command
    Item({ item = 119388, note = L['ring'] }),
  },
})

-- Vigilant Paarthos
map.nodes[37604320] = Rare({
  id = 88436,
  quest = 37350,
  rewards = {
    Achievement({ id = 9638, criteria = 26582 }),
    -- Shoulderplates of the Vigilant
    Transmog({ item = 119383, slot = L['plate'] }),
  },
})

-- Bombadier Gu'gok
map.nodes[43203740] = Rare({
  id = 87597,
  quest = 37339,
  rewards = {
    Achievement({ id = 9633, criteria = 26465 }),
    -- Gu'gok's Rangefinder
    Transmog({ item = 119413, slot = L['crossbow'] }),
  },
  pois = {
    Path({ 43203740, 43103840, 43803910, 44203980, 44504070, 45103890, 44603750, 43803680, 43203740 }),
  },
})

-- Taladorantula
map.nodes[59008740] = Rare({
  id = 77634,
  quest = 34171,
  note = L['taladorantula_note'],
  rewards = {
    -- Taladorantula Terrorfang
    Transmog({ item = 116126, slot = L['1h_sword'] }),
  },
})

-- Kharazos the Triumphant
map.nodes[56606320] = Rare({
  id = 78710,
  quest = 35220,
  note = L['kharazos_galzomar_sikthiss_note'],
  rewards = {
    -- Burning Legion Missive
    Toy({ item = 116122 }),
  },
  pois = {
    Path({ 56606320, 56606490, 56706730 }),
  },
})

-- Galzomar
map.nodes[56606490] = Rare({
  id = 78713,
  quest = 34483,
  note = L['kharazos_galzomar_sikthiss_note'],
  rewards = {
    -- Burning Legion Missive
    Toy({ item = 116122 }),
  },
  pois = {
    Path({ 56606320, 56606490, 56706730 }),
  },
})

-- Sikthiss, Maiden of Slaughter
map.nodes[56706730] = Rare({
  id = 78715,
  quest = 35219,
  note = L['kharazos_galzomar_sikthiss_note'],
  rewards = {
    -- Burning Legion Missive
    Toy({ item = 116122 }),
  },
  pois = {
    Path({ 56606320, 56606490, 56706730 }),
  },
})

-- Sargerei War Council
map.nodes[43402700] = Rare({
  id = 88071,
  quest = 37337,
  rewards = {
    Achievement({ id = 9633, criteria = 26470 }),
    -- Sargerei Councilor's Drape
    Transmog({ item = 119350, slot = L['cloak'] }),
  },
  pois = {
    Path({
      43402700, 44402580, 45802580, 46002700,
      47302780, 47202920, 47403090, 46403050,
      45303010, 43603020, 43402700,
    }),
  },
})

local Shirzir = Class('Shirzir', Rare, {
  id = 79543,
  quest = 34671,
  rewards = {
    -- Shirzir's Sticky Slippers
    Transmog({ item = 112370, slot = L['leather'] }),
  },
})

minimap['tomb_of_souls'].nodes[67602310] = Shirzir()

map.nodes[43005400] = Shirzir({
  note = L['shirzir_note'],
  pois = {
    POI({ 41205990 }),
  },
})

local Silthide = Rare({
  id = 51015,
  note = L['multiple_spawn_note'],
  rewards = {
    -- Sapphire Riverbeast
    Mount({ item = 116767, id = 630 }),
  },
})

map.nodes[78905540] = Silthide
map.nodes[67406000] = Silthide
map.nodes[61803220] = Silthide
map.nodes[62004500] = Silthide
map.nodes[55608060] = Silthide

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

-- Taralune
map.nodes[49008040] = PetBattle({
  id = 87125,
  rewards = {
    Achievement({ id = 9724, criteria = 27016 }),
  },
})
