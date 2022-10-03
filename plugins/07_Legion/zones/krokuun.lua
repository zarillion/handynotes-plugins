-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

local Treasure = ns.node.Treasure
local Rare = ns.node.Rare

local Achievement = ns.reward.Achievement
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

map.nodes[40704340] = Rare({
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
