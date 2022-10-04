-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Treasure = ns.node.Treasure
local Rare = ns.node.Rare

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Section = ns.reward.Section
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

local POI = ns.poi.POI

-------------------------------------------------------------------------------

local map = Map({id = 830, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[33307620] = Rare({
    id = 122912,
    quest = 48562,
    rewards = {Achievement({id = 12078, criteria = 37644})}
}) -- Commander Sathrenael

map.nodes[38305980] = Rare({
    id = 122911,
    quest = 48563,
    rewards = {
        Achievement({id = 12078, criteria = 37643}),
        Transmog({item = 153299, slot = L['1h_sword']}), -- Militant Exarch's Shortsword
        Transmog({item = 152946, slot = L['plate']}), -- World-Defiler's Casque
        Transmog({item = 152944, slot = L['plate']}), -- World-Defiler's Shoulderplates
        Transmog({item = 152949, slot = L['plate']}), -- World-Defiler's Cuirass
        Transmog({item = 152943, slot = L['plate']}), -- World-Defiler's Girdle
        Transmog({item = 152945, slot = L['plate']}), -- World-Defiler's Tuille
        Transmog({item = 152948, slot = L['plate']}), -- World-Defiler's Sabatons
        Transmog({item = 152942, slot = L['plate']}), -- World-Defiler's Wristguards
        Transmog({item = 152947, slot = L['plate']}) -- World-Defiler's Gauntlets
    }
}) -- Commander Vecaya

map.nodes[44000700] = Rare({
    id = 125824,
    quest = 48561,
    rewards = {
        Achievement({id = 12078, criteria = 37646}),
        Transmog({item = 153316, slot = L['2h_sword']}), -- Praetor's Ornamental Edge
        Transmog({item = 152946, slot = L['plate']}), -- World-Defiler's Casque
        Transmog({item = 152944, slot = L['plate']}), -- World-Defiler's Shoulderplates
        Transmog({item = 152949, slot = L['plate']}), -- World-Defiler's Cuirass
        Transmog({item = 152943, slot = L['plate']}), -- World-Defiler's Girdle
        Transmog({item = 152945, slot = L['plate']}), -- World-Defiler's Tuille
        Transmog({item = 152948, slot = L['plate']}), -- World-Defiler's Sabatons
        Transmog({item = 152942, slot = L['plate']}), -- World-Defiler's Wristguards
        Transmog({item = 152947, slot = L['plate']}) -- World-Defiler's Gauntlets
    },
    pois = {POI({50201710})}
}) -- Khazaduum

map.nodes[42406990] = Rare({
    id = 125820,
    quest = 48666,
    rewards = {Achievement({id = 12078, criteria = 37650})}
}) -- Imp Mother Laglath

map.nodes[45305890] = Rare({
    id = 124775,
    quest = 48564,
    rewards = {
        Achievement({id = 12078, criteria = 37642}),
        Transmog({item = 153255, slot = L['1h_mace']}), -- Isolon Anchorite's Cudgel
        Transmog({item = 152946, slot = L['plate']}), -- World-Defiler's Casque
        Transmog({item = 152944, slot = L['plate']}), -- World-Defiler's Shoulderplates
        Transmog({item = 152949, slot = L['plate']}), -- World-Defiler's Cuirass
        Transmog({item = 152943, slot = L['plate']}), -- World-Defiler's Girdle
        Transmog({item = 152945, slot = L['plate']}), -- World-Defiler's Tuille
        Transmog({item = 152948, slot = L['plate']}), -- World-Defiler's Sabatons
        Transmog({item = 152942, slot = L['plate']}), -- World-Defiler's Wristguards
        Transmog({item = 152947, slot = L['plate']}) -- World-Defiler's Gauntlets
    }
}) -- Commander Endaxis

map.nodes[52803110] = Rare({
    id = 123464,
    quest = 48565,
    rewards = {
        Achievement({id = 12078, criteria = 37641}), Toy({item = 153124}) -- Spire of Spite
    }
}) -- Sister Subversia

map.nodes[54708120] = Rare({
    id = 123689,
    quest = 48628,
    rewards = {
        Achievement({id = 12078, criteria = 37655}),
        Transmog({item = 153329, slot = L['dagger']}), -- Mystic Wakener's Blade
        Transmog({item = 152946, slot = L['plate']}), -- World-Defiler's Casque
        Transmog({item = 152944, slot = L['plate']}), -- World-Defiler's Shoulderplates
        Transmog({item = 152949, slot = L['plate']}), -- World-Defiler's Cuirass
        Transmog({item = 152943, slot = L['plate']}), -- World-Defiler's Girdle
        Transmog({item = 152945, slot = L['plate']}), -- World-Defiler's Tuille
        Transmog({item = 152948, slot = L['plate']}), -- World-Defiler's Sabatons
        Transmog({item = 152942, slot = L['plate']}), -- World-Defiler's Wristguards
        Transmog({item = 152947, slot = L['plate']}) -- World-Defiler's Gauntlets
    }
}) -- Talestra the Vile

map.nodes[58407610] = Rare({
    id = 120393,
    quest = 48627,
    rewards = {Achievement({id = 12078, criteria = 37659})}
}) -- Siegemaster Voraan

map.nodes[60901960] = Rare({
    id = 125388,
    quest = 48629,
    rewards = {
        Achievement({id = 12078, criteria = 37652}), Item({item = 153114}) -- Nathrezim Tome of Manipulation
    }
}) -- Vagath the Betrayed

map.nodes[69405740] = Rare({
    id = 124804,
    quest = 48664,
    rewards = {
        Achievement({id = 12078, criteria = 37653}),
        Transmog({item = 153263, slot = L['1h_axe']}), -- Enclave Aspirant's Cleaver
        Transmog({item = 152946, slot = L['plate']}), -- World-Defiler's Casque
        Transmog({item = 152944, slot = L['plate']}), -- World-Defiler's Shoulderplates
        Transmog({item = 152949, slot = L['plate']}), -- World-Defiler's Cuirass
        Transmog({item = 152943, slot = L['plate']}), -- World-Defiler's Girdle
        Transmog({item = 152945, slot = L['plate']}), -- World-Defiler's Tuille
        Transmog({item = 152948, slot = L['plate']}), -- World-Defiler's Sabatons
        Transmog({item = 152942, slot = L['plate']}), -- World-Defiler's Wristguards
        Transmog({item = 152947, slot = L['plate']}) -- World-Defiler's Gauntlets
    },
    pois = {POI({69305940})}
}) -- Tereck the Selector

map.nodes[70108140] = Rare({
    id = 125479,
    quest = 48665,
    rewards = {Achievement({id = 12078, criteria = 37651})}
}) -- Tar Spitter

map.nodes[70503370] = Rare({
    id = 126419,
    quest = 48667,
    note = L['drops_fel_spotted_egg'],
    rewards = {
        Achievement({id = 12078, criteria = 37645}),
        Section(L['fel_spotted_egg_contains']),
        Mount({item = 152840, id = 976}), -- Scintillating Mana Ray
        Mount({item = 152841, id = 975}), -- Felglow Mana Ray
        Mount({item = 152842, id = 974}), -- Vibrant Mana Ray
        Mount({item = 152843, id = 906}), -- Darkspore Mana Ray
        Pet({item = 153054, id = 2118}), -- Docile Skyfin
        Pet({item = 153055, id = 2119}) -- Fel-Afflicted Skyfin
    }
}) -- Naroua

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[51307620] = Treasure({
    quest = 48884,
    requires = ns.requirement.Quest(47994), -- Forming a Bond (Lightforged Warframe)
    note = L['lightforged_warframe_treasure_note'],
    rewards = {
        Achievement({id = 12074, criteria = 37592}),
        Transmog({item = 153304, slot = L['1h_axe']}) -- Oronaar Miner's Dredger
    }
}) -- Krokul Emergency Cache

map.nodes[48505890] = Treasure({
    quest = 48886,
    requires = ns.requirement.Quest(47287), -- The Vindicaar Matrix Core (Light's Judgement)
    note = L['lights_judgement_treasure_note'],
    rewards = {Achievement({id = 12074, criteria = 37594})}
}) -- Lost Krokul Chest

map.nodes[62803760] = Treasure({
    quest = 48885,
    requires = ns.requirement.Quest(47287), -- The Vindicaar Matrix Core (Light's Judgement)
    note = L['lights_judgement_treasure_note'],
    rewards = {Achievement({id = 12074, criteria = 37593})}
}) -- Legion Tower Chest

map.nodes[55907410] = Treasure({
    quest = 49156,
    requires = ns.requirement.Quest(48107), -- The Sigil of Awakening (Shroud of Arcane Echoes)
    note = L['shroud_of_arcane_echoes_treasures_note'],
    rewards = {
        Achievement({id = 12074, criteria = 37959}),
        Transmog({item = 153283, slot = L['cloth']}) -- Augari Wakener's Vestments
    }
}) -- Precious Augari Keepsakes

map.nodes[75106980] = Treasure({
    quest = 49154,
    requires = ns.requirement.Quest(48107), -- The Sigil of Awakening (Shroud of Arcane Echoes)
    note = L['shroud_of_arcane_echoes_treasures_note'],
    rewards = {
        Achievement({id = 12074, criteria = 37958}),
        Transmog({item = 153284, slot = L['cloth']}) -- Augari Wakener's Treads
    }
}) -- Long-Lost Augari Treasure

-------------------------------------------------------------------------------
------------------------------ DAILY CHESTS -----------------------------------
-------------------------------------------------------------------------------

local EWSupplies = Class('EWSupplies', Treasure, {
    group = ns.groups.EREDAR_WAR_SUPPLIES,
    label = L['eredar_war_supplies'],
    note = L['eredar_war_supplies_note'],
    rewards = {
        Transmog({item = 152946, slot = L['plate']}), -- World-Defiler's Casque
        Transmog({item = 152944, slot = L['plate']}), -- World-Defiler's Shoulderplates
        Transmog({item = 152949, slot = L['plate']}), -- World-Defiler's Cuirass
        Transmog({item = 152943, slot = L['plate']}), -- World-Defiler's Girdle
        Transmog({item = 152945, slot = L['plate']}), -- World-Defiler's Tuille
        Transmog({item = 152948, slot = L['plate']}), -- World-Defiler's Sabatons
        Transmog({item = 152942, slot = L['plate']}), -- World-Defiler's Wristguards
        Transmog({item = 152947, slot = L['plate']}) -- World-Defiler's Gauntlets
    }
})

local EWS1 = EWSupplies({quest = 48339, icon = 'chest_pp'}) -- object ID 272771
local EWS2 = EWSupplies({quest = 47999, icon = 'chest_yw'}) -- object ID 272456
local EWS3 = EWSupplies({quest = 48000, icon = 'chest_bl'}) -- object ID 273222
local EWS4 = EWSupplies({quest = 47753, icon = 'chest_rd'}) -- object ID 271849
local EWS5 = EWSupplies({quest = 47752, icon = 'chest_gn'}) -- object ID 272455
local EWS6 = EWSupplies({quest = 48336, icon = 'chest_tl'}) -- object ID 272770
local EWS7 = EWSupplies({quest = 47997, icon = 'chest_pk'}) -- object ID 271850

map.nodes[73503450] = EWS1
map.nodes[70503080] = EWS1
map.nodes[66003520] = EWS1
map.nodes[68503880] = EWS1
map.nodes[63104250] = EWS1
map.nodes[61306650] = EWS1
map.nodes[53906770] = EWS1
map.nodes[52906270] = EWS1
map.nodes[50106670] = EWS1
map.nodes[46206190] = EWS1
map.nodes[50106670] = EWS1
map.nodes[45805850] = EWS1
map.nodes[43605550] = EWS1
map.nodes[43505090] = EWS1
map.nodes[46504910] = EWS1
map.nodes[44904350] = EWS1
map.nodes[47604200] = EWS1
map.nodes[46303630] = EWS2
map.nodes[47702890] = EWS2
map.nodes[49103350] = EWS2
map.nodes[49803670] = EWS2
map.nodes[51103210] = EWS2
map.nodes[52003670] = EWS2
map.nodes[53903050] = EWS2
map.nodes[55903680] = EWS2
map.nodes[57503270] = EWS2
map.nodes[58303630] = EWS2
map.nodes[59703950] = EWS2
map.nodes[59604420] = EWS2
map.nodes[62504160] = EWS2
map.nodes[62803800] = EWS2
map.nodes[61503590] = EWS2
map.nodes[59503280] = EWS2
map.nodes[62303210] = EWS2
map.nodes[60802870] = EWS2
map.nodes[57702620] = EWS2
map.nodes[60502370] = EWS2
map.nodes[59201880] = EWS2
map.nodes[62502580] = EWS2
map.nodes[65902300] = EWS2
map.nodes[69805770] = EWS3
map.nodes[68806210] = EWS3
map.nodes[71906170] = EWS3
map.nodes[72806490] = EWS3
map.nodes[75106450] = EWS3
map.nodes[74106780] = EWS3
map.nodes[73507130] = EWS3
map.nodes[71807550] = EWS3
map.nodes[69807840] = EWS3
map.nodes[69208410] = EWS3
map.nodes[67907150] = EWS3
map.nodes[63006820] = EWS3
map.nodes[52707610] = EWS4
map.nodes[53107310] = EWS4
map.nodes[55208110] = EWS4
map.nodes[58507980] = EWS4
map.nodes[60207600] = EWS4
map.nodes[59307330] = EWS4
map.nodes[58207180] = EWS4
map.nodes[56807220] = EWS4
map.nodes[59705220] = EWS5
map.nodes[58505060] = EWS5
map.nodes[57005470] = EWS5
map.nodes[55505230] = EWS5
map.nodes[55505850] = EWS5
map.nodes[53305100] = EWS5
map.nodes[52205420] = EWS5
map.nodes[50405130] = EWS5
map.nodes[52005960] = EWS5
map.nodes[49605880] = EWS5
map.nodes[36907430] = EWS6
map.nodes[36506760] = EWS6
map.nodes[37106410] = EWS6
map.nodes[40606070] = EWS6
map.nodes[40505550] = EWS6
map.nodes[38905910] = EWS6
map.nodes[36605890] = EWS6
map.nodes[35405620] = EWS6
map.nodes[33605530] = EWS6
map.nodes[29605770] = EWS6
map.nodes[30306410] = EWS6
map.nodes[31906760] = EWS6
map.nodes[32107460] = EWS6
map.nodes[28307130] = EWS6
map.nodes[26106810] = EWS6
map.nodes[49807580] = EWS7
map.nodes[48307370] = EWS7
map.nodes[45907300] = EWS7
map.nodes[45906790] = EWS7
map.nodes[43806970] = EWS7
map.nodes[43806700] = EWS7
map.nodes[40407400] = EWS7
map.nodes[42707550] = EWS7
map.nodes[45907750] = EWS7
map.nodes[41107990] = EWS7
map.nodes[44008130] = EWS7
map.nodes[46807980] = EWS7
map.nodes[46508520] = EWS7
map.nodes[44208640] = EWS7
map.nodes[42508770] = EWS7
map.nodes[41608380] = EWS7
