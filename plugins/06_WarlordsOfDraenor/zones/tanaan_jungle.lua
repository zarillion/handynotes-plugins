-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

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

local map = Map({ id = 534, settings = true })

-- Quest Requirements for Treasures (Tanaan Campaign).
local requiredQuests = {
    -- Garrison Campaign: The Bane of the Bleeding Hollow (Horde)
    ['bleeding hollow'] = 38453,
    -- The Cipher of Damnation (Horde)
    ['cipher of damnation'] = 38463,
}

if UnitFactionGroup('player') == 'Alliance' then
    requiredQuests = {
        -- Garrison Campaign: The Bane of the Bleeding Hollow (Alliance)
        ['bleeding hollow'] = 38560,
        -- The Cipher of Damnation (Alliance)
        ['cipher of damnation'] = 39394,
    }
end

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

-- Commander Org'mok
map.nodes[51004600] = Rare({
    id = 89675,
    quest = 38749,
    note = L['commander_orgmok_note'],
    rewards = {
        Achievement({ id = 10070, criteria = 28731 }),
        -- Org'mok's Riding Chaps
        Transmog({ item = 127313, slot = L['mail'] }),
    },
    pois = {
        Path({ 51004600, 50904750, 49704810, 48504680, 47404670, 47004540, 47804440, 49304450, 50304360, 50504470, 51004600 }),
    },
})

-- Sergeant Mor'grak
map.nodes[43003690] = Rare({
    id = 90024,
    quest = 37953,
    rewards = {
        Achievement({ id = 10070, criteria = 28339 }),
        -- Iron Cleated Warboots
        Transmog({ item = 127318, slot = L['plate'] }),
    },
})

-- Harbormaster Korak
map.nodes[39603260] = Rare({
    id = 90094,
    quest = 39046,
    rewards = {
        Achievement({ id = 10070, criteria = 28724 }),
        -- Korak's Reinforced Iron Tunic
        Transmog({ item = 127309, slot = L['mail'] }),
    },
})

-- Zoug the Heavy
map.nodes[37003300] = Rare({
    id = 90122,
    quest = 39045,
    rewards = {
        Achievement({ id = 10070, criteria = 28723 }),
        -- Equipment Blueprint: True Iron Rudder
        Item({ item = 128252, quest = 39360 }),
        -- Zoug's Lifting Belt
        Transmog({ item = 127308, slot = L['leather'] }),
    },
})

-- Imp-Master Valessa
map.nodes[31207220] = Rare({
    id = 90429,
    quest = 38026,
    rewards = {
        Achievement({ id = 10070, criteria = 28333 }),
        -- Sassy Imp
        Toy({ item = 127655 }),
    },
})

-- Ceraxas
map.nodes[30906800] = Rare({
    id = 90434,
    quest = 38031,
    note = L['in_cave'] .. ' ' .. L['ceraxas_note'],
    rewards = {
        Achievement({ id = 10070, criteria = 28336 }),
        -- Fel Pup
        Pet({ item = 129205, id = 1660 }),
    },
})

-- Jax'zor
map.nodes[26607520] = Rare({
    id = 90437,
    quest = 38030,
    note = L['in_cave'],
    rewards = {
        Achievement({ id = 10070, criteria = 28335 }),
        -- Fel Burnished Waistguard
        Transmog({ item = 127322, slot = L['plate'] }),
    },
    pois = {
        POI({ 29607060 }),
    },
})

-- Lady Oran
map.nodes[25607680] = Rare({
    id = 90438,
    quest = 38029,
    note = L['in_cave'],
    rewards = {
        Achievement({ id = 10070, criteria = 28334 }),
        -- Oran's Cuffs of Malice
        Transmog({ item = 127316, slot = L['mail'] }),
    },
    pois = {
        POI({ 29607060 }),
    },
})

-- Mistress Thavra
map.nodes[26107910] = Rare({
    id = 90442,
    quest = 38032,
    note = L['mistress_thavra_note'],
    rewards = {
        Achievement({ id = 10070, criteria = 28337 }),
        -- Shivan Shoulders of Scorn
        Transmog({ item = 127300, slot = L['cloth'] }),
    },
    pois = {
        POI({ 29607060 }),
    },
})

-- Cindral the Wildfire
map.nodes[44603760] = Rare({
    id = 90519,
    quest = 37990,
    note = L['in_cave'],
    rewards = {
        -- Equipment Blueprint: Ice Cutter
        Item({ item = 128255, quest = 39363 }),
        Achievement({ id = 10070, criteria = 28338 }),
    },
})

-- High Priest Ikzan
map.nodes[22003780] = Rare({
    id = 90777,
    quest = 38028,
    rewards = {
        -- Cursed Feather of Ikzan
        Toy({ item = 122117 }),
    },
    pois = {
        Path({ 22604000, 20804160, 20803760, 22003780, 22604000 }),
    },
})

-- Rasthe
map.nodes[17404280] = Rare({
    id = 90782,
    quest = 38034,
    rewards = {
        Achievement({ id = 10070, criteria = 28341 }),
    },
})

-- Bilkor the Thrower
map.nodes[23605200] = Rare({
    id = 90884,
    quest = 38262,
    rewards = {
        Achievement({ id = 10070, criteria = 28351 }),
        -- Battle-Scuffed Spaulders
        Transmog({ item = 127307, slot = L['leather'] }),
    },
})

-- Rogond the Tracker
map.nodes[20404960] = Rare({
    id = 90885,
    quest = 38263,
    rewards = {
        Achievement({ id = 10070, criteria = 28352 }),
        -- Rogond's Tracking Shoulderguards
        Transmog({ item = 127314, slot = L['mail'] }),
    },
})

-- Dorg the Bloody
map.nodes[25204630] = Rare({
    id = 90887,
    quest = 38265,
    note = L['dorg_the_bloody_note'],
    rewards = {
        Achievement({ id = 10070, criteria = 28353 }),
        -- Bloody Aberration Strap
        Transmog({ item = 127301, slot = L['cloth'] }),
    },
    pois = {
        Path({ 25204630, 23904730, 23504870, 21504910, 21005110, 21405280 }),
    },
})

-- Drivnul
map.nodes[25604620] = Rare({
    id = 90888,
    quest = 38264,
    rewards = {
        Achievement({ id = 10070, criteria = 28354 }),
        -- Blood Infused Leggings
        Transmog({ item = 127298, slot = L['cloth'] }),
    },
})

-- Putre'thar
map.nodes[57002300] = Rare({
    id = 91009,
    quest = 38457,
    rewards = {
        Achievement({ id = 10070, criteria = 28727 }),
    },
})

-- Zeter'el
map.nodes[48402860] = Rare({
    id = 91087,
    quest = 38207,
    rewards = {
        Achievement({ id = 10070, criteria = 28331 }),
        -- Felfire Lit Greatsword
        Transmog({ item = 127340, slot = L['2h_sword'] }),
    },
})

-- Bramblefell
map.nodes[40706980] = Rare({
    id = 91093,
    quest = 38209,
    rewards = {
        Achievement({ id = 10070, criteria = 28330 }),
        -- Felflame Campfire
        Toy({ item = 127652 }),
    },
})

-- Felspark
map.nodes[52802560] = Rare({
    id = 91098,
    quest = 38211,
    rewards = {
        Achievement({ id = 10070, criteria = 28332 }),
        -- Fel Singed Wraps
        Transmog({ item = 127656, slot = L['cloth'] }),
    },
})

-- Commander Krag'goth
map.nodes[15005420] = Rare({
    id = 91232,
    quest = 38746,
    note = L['commander_kraggoth_note'],
    rewards = {
        Achievement({ id = 10070, criteria = 28346 }),
        -- Krag'goth's Iron Gauntlets
        Transmog({ item = 127319, slot = L['plate'] }),
    },
})

-- Tho'gar Gorefist
map.nodes[13405680] = Rare({
    id = 91243,
    quest = 38747,
    rewards = {
        Achievement({ id = 10070, criteria = 28347 }),
        -- Sabatons of Radiating Ire
        Transmog({ item = 127310, slot = L['mail'] }),
    },
})

-- Podlord Wakkawam
map.nodes[16804940] = Rare({
    id = 91374,
    quest = 38282,
    note = L['in_cave'],
    rewards = {
        Achievement({ id = 10070, criteria = 28329 }),
        -- Rod of the One True Podlord
        Transmog({ item = 127336, slot = L['staff'] }),
    },
    pois = {
        POI({ 17005040 }), -- Entrance
    },
})

-- Grand Warlock Nethekurse
map.nodes[47504230] = Rare({
    id = 91695,
    quest = 38400,
    note = L['grand_warlock_netherkurse_note'],
    rewards = {
        Achievement({ id = 10070, criteria = 28343 }),
        -- Nethekurse's Robe of Contempt
        Transmog({ item = 127299, slot = L['cloth'] }),
    },
    pois = {
        Path({ 46204080, 47303980, 48104120, 47504230, 47604330, 46904400, 46104260, 46204080 }),
    },
})

-- Executor Riloth
map.nodes[49803620] = Rare({
    id = 91727,
    quest = 38411,
    rewards = {
        Achievement({ id = 10070, criteria = 28380 }),
        -- Bracers of Endless Suffering
        Transmog({ item = 127323, slot = L['plate'] }),
    },
})

-- Argosh the Destroyer
map.nodes[52604020] = Rare({
    id = 91871,
    quest = 38430,
    rewards = {
        Achievement({ id = 10070, criteria = 28722 }),
        -- Fel Destroyer Crossbow
        Transmog({ item = 127326, slot = L['crossbow'] }),
    },
})

-- Relgor
map.nodes[26205440] = Rare({
    id = 92197,
    quest = 38496,
    rewards = {
        Achievement({ id = 10070, criteria = 28356 }),
        -- Relgor's Master Glaive
        Transmog({ item = 127335, slot = L['polearm'] }),
    },
})

map.nodes[53602140] = Rare({
    id = 92274,
    quest = 38557,
    rewards = {
        Achievement({ id = 10070, criteria = 28342 }),
        -- Selora's Crown of Thorns
        Transmog({ item = 127297, slot = L['cloth'] }),
    },
}) -- Painmistress Selora

-- Xanzith the Everlasting
map.nodes[60002100] = Rare({
    id = 92408,
    quest = 38579,
    rewards = {
        Achievement({ id = 10070, criteria = 28728 }),
        -- Equipment Blueprint: High Intensity Fog Lights
        Item({ item = 128232, quest = 39356 }),
        -- Eye of the Beholder
        Transmog({ item = 127658, slot = L['offhand'] }),
    },
})

-- Overlord Ma'gruth
map.nodes[52401920] = Rare({
    id = 92411,
    quest = 38580,
    note = L['overlord_magruth_note'],
    rewards = {
        Achievement({ id = 10070, criteria = 28729 }),
        -- Mo'gruth's Discarded Parade Helm
        Transmog({ item = 127320, slot = L['plate'] }),
    },
})

-- Broodlord Ixkor
map.nodes[57606720] = Rare({
    id = 92429,
    quest = 38589,
    rewards = {
        Achievement({ id = 10070, criteria = 28357 }),
    },
})

-- Varyx the Damned
map.nodes[27403260] = Rare({
    id = 92451,
    quest = 37937,
    rewards = {
        Achievement({ id = 10070, criteria = 28340 }),
    },
})

-- The Blackfang
map.nodes[48807300] = Rare({
    id = 92465,
    quest = 38597,
    note = L['in_cave'],
    rewards = {
        Achievement({ id = 10070, criteria = 28361 }),
        -- The Black Fang
        Transmog({ item = 127330, slot = L['fist'] }),
    },
    pois = {
        POI({ 49907440 }),
    },
})

-- Soulslicer
map.nodes[62607220] = Rare({
    id = 92495,
    quest = 38600,
    rewards = {
        Achievement({ id = 10070, criteria = 28358 }),
        -- Glowing Felskull Belt
        Transmog({ item = 127315, slot = L['mail'] }),
    },
})

-- Gloomtalon
map.nodes[63208000] = Rare({
    id = 92508,
    quest = 38604,
    note = L['in_cave'],
    rewards = {
        Achievement({ id = 10070, criteria = 28359 }),
        -- Gloomtalon's Spare Kilt
        Transmog({ item = 127306, slot = L['leather'] }),
    },
    pois = {
        POI({ 62207910 }),
    },
})

-- Krell the Serene
map.nodes[52008360] = Rare({
    id = 92517,
    quest = 38605,
    rewards = {
        Achievement({ id = 10070, criteria = 28360 }),
    },
})

-- Belgork
map.nodes[34904710] = Rare({
    id = 92552,
    quest = 38609,
    note = L['in_cave'] .. ' ' .. L['belgork_thromma_note'],
    rewards = {
        Achievement({ id = 10070, criteria = 28363 }),
        -- Equipment Blueprint: Bilge Pump
        Item({ item = 126950, quest = 38932 }),
        -- Belgork's Bastion
        Transmog({ item = 127650, slot = L['shield'] }),
    },
    pois = {
        POI({ 32104900, 38604420 }),
    },
})

-- Thromma the Gutslicer
map.nodes[34004440] = Rare({
    id = 92574,
    quest = 38620,
    note = L['in_cave'] .. ' ' .. L['belgork_thromma_note'],
    rewards = {
        Achievement({ id = 10070, criteria = 28362 }),
        -- Thromma's Gutslicer
        Transmog({ item = 127327, slot = L['dagger'] }),
    },
    pois = {
        POI({ 32104900, 38604420 }),
    },
})

-- Sylissa
map.nodes[41007880] = Rare({
    id = 92606,
    quest = 38628,
    rewards = {
        Achievement({ id = 10070, criteria = 28364 }),
        -- Serpentine Gloves
        Transmog({ item = 127311, slot = L['mail'] }),
    },
})

-- Rendrak
map.nodes[41807590] = Rare({
    id = 92627,
    quest = 38631,
    note = L['rendrak_note'],
    rewards = {
        Achievement({ id = 10070, criteria = 28365 }),
    },
})

-- The Night Haunter
map.nodes[39407590] = Rare({
    id = 92636,
    quest = 38632,
    note = L['the_night_haunter_note'],
    rewards = {
        Achievement({ id = 10070, criteria = 28366 }),
    },
    pois = {
        -- The Night Haunter
        POI({
            38507890, 38407230, 42407760, 40607290, 41206890, 38807510,
            42407740, 40607750, 38007930, 38807520, 44307220, 38307210,
        }),
    },
})

-- Felsmith Damorka
map.nodes[45804700] = Rare({
    id = 92647,
    quest = 38634,
    rewards = {
        Achievement({ id = 10070, criteria = 28726 }),
        -- Equipment Blueprint: Felsmoke Launchers
        Item({ item = 128258, quest = 39366 }),
        -- Chemical Resistant Apron
        Transmog({ item = 127302, slot = L['leather'] }),
    },
})

-- Bleeding Hollow Horror
map.nodes[50807440] = Rare({
    id = 92657,
    quest = 38696,
    note = L['in_cave'],
    rewards = {
        Achievement({ id = 10070, criteria = 28376 }),
    },
    pois = {
        POI({ 44507750 }),
    },
})

-- The Goreclaw
map.nodes[34407260] = Rare({
    id = 92694,
    quest = 38654,
    note = L['in_cave'],
    rewards = {
        Achievement({ id = 10070, criteria = 28367 }),
        -- Frayed Hunting Cowl
        Transmog({ item = 127305, slot = L['leather'] }),
    },
    pois = {
        POI({ 36307220 }),
    },
})

-- Akrrilo
map.nodes[53908080] = Rare({
    id = 92766,
    quest = 39399,
    requires = ns.requirement.Item(124093),
    note = L['akrrilo_note'],
    rewards = {
        Achievement({ id = 10070, criteria = 28373 }),
    },
    pois = {
        -- Vendor
        POI({ 55207480 }),
    },
})

-- Rendarr
map.nodes[54408130] = Rare({
    id = 92817,
    quest = 39400,
    requires = ns.requirement.Item(124094),
    note = L['rendarr_note'],
    rewards = {
        Achievement({ id = 10070, criteria = 28374 }),
    },
    pois = {
        -- Vendor
        POI({ 55207480 }),
    },
})

-- Eyepiercer
map.nodes[54408040] = Rare({
    id = 92819,
    quest = 39379,
    requires = ns.requirement.Item(124095),
    note = L['eyepiercer_note'],
    rewards = {
        Achievement({ id = 10070, criteria = 28375 }),
    },
    pois = {
        -- Vendor
        POI({ 55207480 }),
    },
})

-- Steelsnout
map.nodes[65603680] = Rare({
    id = 92887,
    quest = 38700,
    rewards = {
        Achievement({ id = 10070, criteria = 28344 }),
    },
})

-- Gorabosh
map.nodes[33203580] = Rare({
    id = 92941,
    quest = 38709,
    rewards = {
        Achievement({ id = 10070, criteria = 28368 }),
        -- Cave Keeper Wraps
        Transmog({ item = 127304, slot = L['leather'] }),
    },
})

-- The Iron Houndmaster
map.nodes[12605690] = Rare({
    id = 92977,
    quest = 38751,
    note = L['the_iron_houndmaster_note'],
    rewards = {
        Achievement({ id = 10070, criteria = 28350 }),
        -- Iron Houndmaster's Pauldrons
        Transmog({ item = 127321, slot = L['plate'] }),
    },
})

-- Szirek the Twisted
map.nodes[15705750] = Rare({
    id = 93001,
    quest = 38752,
    note = L['szirek_the_twisted_note'],
    rewards = {
        Achievement({ id = 10070, criteria = 28349 }),
        -- Twisted Taboo Handwraps
        Transmog({ item = 127296, slot = L['cloth'] }),
    },
})

-- Magwia
map.nodes[52206520] = Rare({
    id = 93002,
    quest = 38726,
    rewards = {
        Achievement({ id = 10070, criteria = 28345 }),
        -- Riverbeast Molar Club
        Transmog({ item = 127332, slot = L['1h_mace'] }),
    },
})

-- Driss Vile
map.nodes[20005380] = Rare({
    id = 93028,
    quest = 38736,
    note = L['driss_vile_note'],
    rewards = {
        Achievement({ id = 10070, criteria = 28369 }),
        -- Double-Scoped Long Rifle
        Transmog({ item = 127331, slot = L['gun'] }),
    },
})

-- Grannok
map.nodes[16005920] = Rare({
    id = 93057,
    quest = 38750,
    note = L['grannok_note'],
    rewards = {
        Achievement({ id = 10070, criteria = 28348 }),
    },
})

-- Captain Ironbeard
map.nodes[35607990] = Rare({
    id = 93076,
    quest = 38756,
    note = L['in_cave'],
    rewards = {
        Achievement({ id = 10070, criteria = 28370 }),
        -- Equipment Blueprint: Ghostly Spyglass
        Item({ item = 128257, quest = 39365 }),
        -- Ghostly Iron Buccaneer's Hat
        Toy({ item = 127659 }),
    },
    pois = {
        POI({ 37507600 }),
    },
})

-- Glub'glok
map.nodes[34607800] = Rare({
    id = 93125,
    quest = 38764,
    note = L['in_cave'],
    rewards = {
        Achievement({ id = 10070, criteria = 28371 }),
        -- Murktide's Coveted Chestplate
        Transmog({ item = 127317, slot = L['plate'] }),
    },
    pois = {
        POI({ 37507600 }),
    },
})

-- Felbore
map.nodes[28805100] = Rare({
    id = 93168,
    quest = 38775,
    note = L['in_cave'],
    rewards = {
        Achievement({ id = 10070, criteria = 28372 }),
    },
    pois = {
        POI({ 31005330 }),
    },
})

-- Shadowthrash
map.nodes[49606100] = Rare({
    id = 93236,
    quest = 38812,
    rewards = {
        Achievement({ id = 10070, criteria = 28725 }),
        -- Warpscaled Wristwraps
        Transmog({ item = 127665, slot = L['leather'] }),
    },
})

-- Captain Grok'mar
map.nodes[48605720] = Rare({
    id = 93264,
    quest = 38820,
    rewards = {
        Achievement({ id = 10070, criteria = 28730 }),
        -- Grokmar's Greaves of Fortification
        Transmog({ item = 127664, slot = L['plate'] }),
    },
})

-- Kris'kar the Unredeemed
map.nodes[39606820] = Rare({
    id = 93279,
    quest = 38825,
    note = L['in_cave'],
    rewards = {
        Achievement({ id = 10070, criteria = 28377 }),
        -- Wingblade of Reckoning
        Transmog({ item = 127653, slot = L['1h_sword'] }),
    },
    pois = {
        POI({ 42306880 }),
    },
})

-- Terrorfist
map.nodes[13405960] = Rare({
    id = 95044,
    quest = 39288,
    note = L['terrorfist_note'],
    rewards = {
        Achievement({ id = 10061, criteria = 28221 }),
        -- Medallion of the Legion
        Item({ item = 128315 }),
        -- Rattling Iron Cage
        Item({ item = 128025 }),
        -- Tundra Icehoof
        Mount({ item = 116658, id = 611 }),
        -- Armored Razorback
        Mount({ item = 116669, id = 622 }),
        -- Warsong Direfang
        Mount({ item = 116780, id = 643 }),
    },
    pois = {
        Path({ 13405960, 13806020, 14206060, 14406180, 14606280, 15206360, 15806380 }),
    },
})

-- Deathtalon
map.nodes[23004020] = Rare({
    id = 95053,
    quest = 39287,
    note = L['deathtalon_note'],
    rewards = {
        Achievement({ id = 10061, criteria = 28220 }),
        -- Medallion of the Legion
        Item({ item = 128315 }),
        -- Rattling Iron Cage
        Item({ item = 128025 }),
        -- Tundra Icehoof
        Mount({ item = 116658, id = 611 }),
        -- Armored Razorback
        Mount({ item = 116669, id = 622 }),
        -- Warsong Direfang
        Mount({ item = 116780, id = 643 }),
    },
})

-- Vengeance
map.nodes[32607400] = Rare({
    id = 95054,
    quest = 39290,
    note = L['vengeance_note'],
    rewards = {
        Achievement({ id = 10061, criteria = 28219 }),
        -- Medallion of the Legion
        Item({ item = 128315 }),
        -- Rattling Iron Cage
        Item({ item = 128025 }),
        -- Tundra Icehoof
        Mount({ item = 116658, id = 611 }),
        -- Armored Razorback
        Mount({ item = 116669, id = 622 }),
        -- Warsong Direfang
        Mount({ item = 116780, id = 643 }),
    },
})

-- Doomroller
map.nodes[47005260] = Rare({
    id = 95056,
    quest = 39289,
    note = L['doomroller_note'],
    rewards = {
        Achievement({ id = 10061, criteria = 28218 }),
        -- Medallion of the Legion
        Item({ item = 128315 }),
        -- Rattling Iron Cage
        Item({ item = 128025 }),
        -- Tundra Icehoof
        Mount({ item = 116658, id = 611 }),
        -- Armored Razorback
        Mount({ item = 116669, id = 622 }),
        -- Warsong Direfang
        Mount({ item = 116780, id = 643 }),
    },
})

-- Xemirkol
map.nodes[69603820] = Rare({
    id = 96235,
    requires = {
        -- Jungle Stalker
        ns.requirement.Achievement(10070),
        -- Order of the Awakened (Exalted)
        ns.requirement.Reputation(1849, 8),
    },
    note = L['xemirkol_note'],
    rewards = {
        Achievement({ id = 10334 }),
    },
    pois = {
        -- Vendor Horde
        POI({ 60404660 }),
        -- Vendor Alliance
        POI({ 57805940 }),
    },
})

-- Drakum
map.nodes[83604360] = Rare({
    id = 98283,
    quest = 40105,
    note = L['iron_armada_note'],
    rewards = {
        -- Crashin' Thrashin' Roller Controller
        Toy({ item = 108631 }),
    },
})

-- Gondar
map.nodes[80605640] = Rare({
    id = 98284,
    quest = 40106,
    note = L['iron_armada_note'],
    rewards = {
        -- Crashin' Thrashin' Cannon Controller
        Toy({ item = 108633 }),
    },
})

-- Smashum Grabb
map.nodes[88005580] = Rare({
    id = 98285,
    quest = 40104,
    note = L['iron_armada_note'],
    rewards = {
        -- Crashin' Thrashin' Mortar Controller
        Toy({ item = 108634 }),
    },
})

local BloodhunterZulk = Rare({
    id = 90936,
    quest = 38266,
    note = L['multiple_spawn_note'],
    rewards = {
        Achievement({ id = 10070, criteria = 28355 }),
        -- Zulk's Sneaky Slippers
        Transmog({ item = 127303, slot = L['leather'] }),
    },
})

map.nodes[24505000] = BloodhunterZulk
map.nodes[21005240] = BloodhunterZulk
map.nodes[22805300] = BloodhunterZulk
map.nodes[22005160] = BloodhunterZulk
map.nodes[23804980] = BloodhunterZulk
map.nodes[23605200] = BloodhunterZulk

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

-- Strange Sapphire
map.nodes[36304340] = Treasure({
    quest = 37956,
    label = L['strange_sapphire_treasure'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
        -- Splendid Skettis Sapphire
        Item({ item = 127397, note = L['trinket'] }),
    },
})

-- Weathered Axe
map.nodes[15904970] = Treasure({
    quest = 38208,
    label = L['weathered_axe_treasure'],
    note = L['in_cave'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
        -- Weathered Memento Axe
        Transmog({ item = 127324, slot = L['1h_axe'] }),
    },
    pois = {
        POI({ 17105080 }),
    },
})

-- Stolen Captain's Chest
map.nodes[17005290] = Treasure({
    quest = 38283,
    label = L['stolen_captains_chest_treasure'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
    },
})

-- The Blade of Kra'nak
map.nodes[19304090] = Treasure({
    quest = 38320,
    label = L['the_blade_of_kranak_treasure'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
        -- Guardian Swiftblade of Kra'nak
        Transmog({ item = 127338, slot = L['1h_sword'] }),
    },
})

-- Jewel of Hellfire
map.nodes[28702330] = Treasure({
    quest = 38334,
    label = L['jewel_of_hellfire_treasure'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
        -- Jewel of Hellfire
        Toy({ item = 127668 }),
    },
})

-- Tome of Secrets
map.nodes[32407050] = Treasure({
    quest = 38426,
    label = L['tome_of_secrets_treasure'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
        -- Accursed Tome of the Sargerei
        Toy({ item = 127670 }),
    },
})

-- Forgotten Sack
map.nodes[56906510] = Treasure({
    quest = 38591,
    label = L['forgotten_sack_treasure'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
    },
})

-- Lodged Hunting Spear
map.nodes[54806930] = Treasure({
    quest = 38593,
    label = L['lodged_hunting_spear_treasure'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
        -- Ravager Hunting Spear
        Transmog({ item = 127334, slot = L['polearm'] }),
    },
})

-- Blackfang Island Cache
map.nodes[61207570] = Treasure({
    quest = 38601,
    label = L['blackfang_island_cache_treasure'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
    },
})

-- Crystallized Fel Spike
map.nodes[62007080] = Treasure({
    quest = 38602,
    label = L['crystallized_fel_spike_treasure'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
        -- Fel Shard
        Item({ item = 128217, note = L['trinket'] }),
    },
})

-- Polished Crystal
map.nodes[30507200] = Treasure({
    quest = 38629,
    label = L['polished_crystal_treasure'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
        -- Polished Crystal
        Item({ item = 127389 }),
    },
})

-- Snake Charmer's Flute
map.nodes[40607980] = Treasure({
    quest = 38638,
    label = L['snake_charmers_flute_treasure'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
        -- Ogra'mal Snake Charming Flute
        Transmog({ item = 127333, slot = L['2h_mace'] }),
    },
})

-- The Perfect Blossom
map.nodes[40807550] = Treasure({
    quest = 38639,
    label = L['the_perfect_blossom_treasure'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
        -- The Perfect Blossom
        Toy({ item = 127766 }),
    },
})

-- Pale Removal Equipment
map.nodes[37104620] = Treasure({
    quest = 38640,
    label = L['pale_removal_equipment_treasure'],
    note = L['in_cave'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
    },
    pois = {
        POI({ 38604420 }),
    },
})

-- Forgotten Champion's Blade
map.nodes[41507340] = Treasure({
    quest = 38657,
    label = L['forgotten_champions_blade_treasure'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
        -- Forgotten Champion's Blade
        Transmog({ item = 127339, slot = L['2h_sword'] }),
    },
})

-- Bleeding Hollow Warchest
map.nodes[20004780] = Treasure({
    quest = 38678,
    label = L['bleeding_hollow_warchest_treasure'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
    },
})

-- Jewel of the Fallen Star
map.nodes[58502540] = Treasure({
    quest = 38679,
    label = L['jewel_of_the_fallen_star_treasure'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
    },
})

-- Censer of Torment
map.nodes[62502060] = Treasure({
    quest = 38682,
    label = L['censer_of_torment_treasure'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
        -- Tormented Skull
        Item({ item = 127401, note = L['trinket'] }),
    },
})

-- Looted Bleeding Hollow Treasure
map.nodes[26804420] = Treasure({
    quest = 38683,
    label = L['looted_bleeding_hollow_treasure_treasure'],
    requires = ns.requirement.Quest(requiredQuests['bleeding hollow']),
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
        -- Throbbing Blood Orb
        Toy({ item = 127709 }),
    },
})

-- Rune Etched Femur
map.nodes[51802430] = Treasure({
    quest = 38686,
    label = L['rune_etched_femur_treasure'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
        -- Rune-Etched Femur
        Transmog({ item = 127341, slot = L['wand'] }),
    },
})

-- Strange Fruit
map.nodes[64504210] = Treasure({
    quest = 38701,
    label = L['strange_fruit_treasure'],
    note = L['strange_fruit_note'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
        -- Strange Fruit
        Item({ item = 127396 }),
        -- Podling Camouflage
        Toy({ item = 127394 }),
    },
})

-- Discarded Helm
map.nodes[50008120] = Treasure({
    quest = 38702,
    label = L['discarded_helm_treasure'],
    note = L['in_cave'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
        -- Fallen Adventurer's Helm
        Transmog({ item = 127312, slot = L['mail'] }),
    },
    pois = {
        POI({ 51207960 }),
    },
})

-- Scout's Belongings
map.nodes[50007970] = Treasure({
    quest = 38703,
    label = L['scouts_belongings_treasure'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
        -- Scout's Spy Cloak
        Transmog({ item = 127354, slot = L['cloak'] }),
    },
})

-- Forgotten Iron Horde Supplies
map.nodes[69705600] = Treasure({
    quest = 38704,
    label = L['forgotten_iron_horde_supplies_treasure'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
    },
})

-- Crystallized Essence of the Elements
map.nodes[48007040] = Treasure({
    quest = 38705,
    label = L['crystallized_essence_of_the_elements_treasure'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
        -- Element-Infused Knuckles
        Transmog({ item = 127329, slot = L['fist'] }),
    },
})

-- Overgrown Relic
map.nodes[50906490] = Treasure({
    quest = 38731,
    label = L['overgrown_relic_treasure'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
        -- Luminous Relic Ring
        Item({ item = 127412, note = L['ring'] }),
    },
})

-- Jeweled Arakkoa Effigy
map.nodes[31503110] = Treasure({
    quest = 38732,
    label = L['jeweled_arakkoa_effigy_treasure'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
        -- Jeweled Arakkoa Effigy
        Item({ item = 127413 }),
    },
})

-- 'Borrowed' Enchanted Spyglass
map.nodes[25305020] = Treasure({
    quest = 38735,
    label = L['borrowed_enchanted_spyglass_treasure'],
    note = L['tower_chest_note'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
        -- Smokeglass Lens Spyglass
        Item({ item = 128222, note = L['trinket'] }),
    },
})

-- Mysterious Corrupted Obelisk
map.nodes[46307270] = Treasure({
    quest = 38739,
    label = L['mysterious_corrupted_obelist_treasure'],
    note = L['in_cave'],
    requires = ns.requirement.Quest(requiredQuests['cipher of damnation']),
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
        -- Corrupted Primal Obelisk
        Item({ item = 128320 }),
    },
    pois = {
        POI({ 47307070 }),
    },
})

-- Forgotten Shard of the Cipher
map.nodes[63302810] = Treasure({
    quest = 38740,
    label = L['forgotten_shard_of_the_cipher_treasure'],
    requires = ns.requirement.Quest(requiredQuests['cipher of damnation']),
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
        -- Shard of Cyrukh
        Pet({ item = 128309, id = 1690 }),
    },
})

-- Looted Bleeding Hollow Treasure
map.nodes[26506290] = Treasure({
    quest = 38741,
    label = L['looted_bleeding_hollow_treasure_treasure'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
    },
})

-- Skull of the Mad Chief
map.nodes[34703470] = Treasure({
    quest = 38742,
    label = L['skull_of_the_mad_chief_treasure'],
    note = L['in_cave'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
        -- Skull of the Mad Chief
        Toy({ item = 127669 }),
    },
    pois = {
        POI({ 32503730 }),
    },
})

-- Axe of the Weeping Wolf
map.nodes[15505440] = Treasure({
    quest = 38754,
    label = L['axe_of_the_weeping_wolf_treasure'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
        -- Axe of the Weeping Wolf
        Transmog({ item = 127325, slot = L['2h_axe'] }),
    },
})

-- Spoils of War
map.nodes[17305700] = Treasure({
    quest = 38755,
    label = L['spoils_of_war_treasure'],
    note = L['spoils_of_war_note'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
    },
})

-- The Eye of Grannok
map.nodes[16005940] = Treasure({
    quest = 38757,
    label = L['the_eye_of_grannok_treasure'],
    note = L['the_eye_of_grannok_note'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
        -- Grannok's Lidless Eye
        Item({ item = 128220, note = L['trinket'] }),
    },
    pois = {
        POI({ 16405860 }),
    },
})

-- Ironbeard's Treasure
map.nodes[35907860] = Treasure({
    quest = 38758,
    label = L['ironbeards_treasure_treasure'],
    note = L['in_cave'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
    },
    pois = {
        POI({ 37607590 }),
    },
})

-- Stashed Iron Sea Booty
map.nodes[33907810] = Treasure({
    quest = 38760,
    label = L['stashed_iron_sea_booty_treasure'],
    note = L['in_cave'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
    },
    pois = {
        POI({ 37607590 }),
    },
})

-- Stashed Iron Sea Booty
map.nodes[35007720] = Treasure({
    quest = 38761,
    label = L['stashed_iron_sea_booty_treasure'],
    note = L['in_cave'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
    },
    pois = {
        POI({ 37607590 }),
    },
})

-- Stashed Iron Sea Booty
map.nodes[34507830] = Treasure({
    quest = 38762,
    label = L['stashed_iron_sea_booty_treasure'],
    note = L['in_cave'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
    },
    pois = {
        POI({ 37607590 }),
    },
})

-- Book of Zyzzix
map.nodes[46903670] = Treasure({
    quest = 38771,
    label = L['book_of_zyzzix_treasure'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
        -- Resonating Tome of Zyzzix
        Transmog({ item = 127347, slot = L['offhand'] }),
    },
})

-- Fel-Drenched Satchel
map.nodes[46904440] = Treasure({
    quest = 38773,
    label = L['fel_drenched_satchel_treasure'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
        -- Fel-Proof Goggles
        Transmog({ item = 128218, slot = L['cosmetic'] }),
    },
})

-- Sacrificial Blade
map.nodes[46804210] = Treasure({
    quest = 38776,
    label = L['sacrificial_blade_treasure'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
        -- Feltwisted Sacrificial Blade
        Transmog({ item = 127328, slot = L['dagger'] }),
    },
})

-- Stashed Bleeding Hollow Loot
map.nodes[73604320] = Treasure({
    quest = 38779,
    label = L['stashed_bleeding_hollow_loot_treasure'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
    },
})

-- Brazier of Awakening
map.nodes[37808080] = Treasure({
    quest = 38788,
    label = L['brazier_of_awakening_treasure'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
        -- Brazier of Awakening
        Item({ item = 127770 }),
    },
})

-- Bleeding Hollow Mushroom Stash
map.nodes[49907680] = Treasure({
    quest = 38809,
    label = L['bleeding_hollow_mushroom_stash_treasure'],
    note = L['in_cave'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
        -- Bottomless Stygana Mushroom Brew
        Toy({ item = 128223 }),
    },
    pois = {
        POI({ 44607750 }),
    },
})

-- Looted Mystical Staff
map.nodes[48607530] = Treasure({
    quest = 38814,
    label = L['looted_mystical_staff_treasure'],
    note = L['in_cave'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
        -- Emanating Staff of Shadow
        Transmog({ item = 127337, slot = L['staff'] }),
    },
    pois = {
        POI({ 44607750 }),
    },
})

-- The Commander's Shield
map.nodes[43203830] = Treasure({
    quest = 38821,
    label = L['the_commanders_shield_treasure'],
    note = L['the_commanders_shield_note'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
        -- Commander's Citadel Shield
        Transmog({ item = 127348, slot = L['shield'] }),
    },
    pois = {
        POI({ 42203780 }),
    },
})

-- Dazzling Rod
map.nodes[42903530] = Treasure({
    quest = 38822,
    label = L['dazzling_rod_treasure'],
    note = L['tower_chest_note'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
        -- Dazzling Rod
        Toy({ item = 127859 }),
    },
    pois = {
        POI({ 43003580 }),
    },
})

-- Partially Mined Apexis Crystal
map.nodes[28903460] = Treasure({
    quest = 38863,
    label = L['partially_mined_apexis_crystal_treasure'],
    note = L['in_cave'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
    },
    pois = {
        POI({ 29203460 }),
    },
})

-- Fel-Tainted Apexis Formation
map.nodes[51603250] = Treasure({
    quest = 39075,
    label = L['fel_tainted_apexis_formation_treasure'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
    },
})

-- Bejeweled Egg
map.nodes[65908500] = Treasure({
    quest = 39469,
    label = L['bejeweled_egg_treasure'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
    },
})

-- Dead Man's Chest
map.nodes[55009070] = Treasure({
    quest = 39470,
    label = L['dead_mans_chest_treasure'],
    rewards = {
        Achievement({ id = 10262, criteria = {
            { id = 1, qty = true, suffix = L['treasures_discovered'] },
        } }),
    },
})

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

-- Felsworn Sentry
map.nodes[26103160] = PetBattle({
    id = 94601,
    rewards = {
        Achievement({ id = 10052, criteria = 28796 }),
    },
})

-- Corrupted Thundertail
map.nodes[53106520] = PetBattle({
    id = 94637,
    rewards = {
        Achievement({ id = 10052, criteria = 28797 }),
    },
})

-- Chaos Pup
map.nodes[25107620] = PetBattle({
    id = 94638,
    note = L['in_cave'],
    rewards = {
        Achievement({ id = 10052, criteria = 28798 }),
    },
    pois = {
        POI({ 29607060 }),
    },
})

-- Cursed Spirit
map.nodes[31403810] = PetBattle({
    id = 94639,
    rewards = {
        Achievement({ id = 10052, criteria = 28799 }),
    },
})

-- Felfly
map.nodes[55908080] = PetBattle({
    id = 94640,
    rewards = {
        Achievement({ id = 10052, criteria = 28800 }),
    },
})

-- Tainted Maulclaw
map.nodes[43208450] = PetBattle({
    id = 94641,
    rewards = {
        Achievement({ id = 10052, criteria = 28801 }),
    },
})

-- Direflame
map.nodes[57703740] = PetBattle({
    id = 94642,
    rewards = {
        Achievement({ id = 10052, criteria = 28802 }),
    },
})

-- Mirecroak
map.nodes[42307180] = PetBattle({
    id = 94643,
    rewards = {
        Achievement({ id = 10052, criteria = 28803 }),
    },
})

-- Dark Gazer
map.nodes[54002990] = PetBattle({
    id = 94644,
    rewards = {
        Achievement({ id = 10052, criteria = 28804 }),
    },
})

-- Bleakclaw
map.nodes[16004480] = PetBattle({
    id = 94645,
    rewards = {
        Achievement({ id = 10052, criteria = 28805 }),
    },
})

-- Vile Blood of Draenor
map.nodes[44004570] = PetBattle({
    id = 94646,
    rewards = {
        Achievement({ id = 10052, criteria = 28806 }),
    },
})

-- Dreadwalker
map.nodes[46405300] = PetBattle({
    id = 94647,
    rewards = {
        Achievement({ id = 10052, criteria = 28807 }),
    },
})

-- Netherfist
map.nodes[48003500] = PetBattle({
    id = 94648,
    rewards = {
        Achievement({ id = 10052, criteria = 28810 }),
    },
})

-- Skrillix
map.nodes[48503130] = PetBattle({
    id = 94649,
    rewards = {
        Achievement({ id = 10052, criteria = 28808 }),
    },
})

-- Defiled Earth
map.nodes[75403740] = PetBattle({
    id = 94650,
    rewards = {
        Achievement({ id = 10052, criteria = 28809 }),
    },
})
