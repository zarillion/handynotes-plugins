-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

local Rare = ns.node.Rare
local Treasure = ns.node.Treasure

local Dragonglyph = ns.node.Dragonglyph
local Dragonrace = ns.node.Dragonrace
local Flag = ns.node.Flag
local SignalTransmitter = ns.node.SignalTransmitter

local Achievement = ns.reward.Achievement
local Currency = ns.reward.Currency
local Item = ns.reward.Item

local POI = ns.poi.POI

-------------------------------------------------------------------------------

local map = Map({id = 2151, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[42635736] = Rare({
    id = 200681,
    quest = 74341,
    note = L['in_small_cave'],
    rewards = {
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    },
    pois = {
        POI({42565425, 40715404, 40015641}) -- Entrances
    }
}) -- Bonesifter Marwak

map.nodes[26664150] = Rare({
    id = 200956,
    quest = 74349,
    rewards = {
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    }
}) -- "Captain" Ookbeard

-- map.nodes[] = Rare({
--     id = 200610,
--     quest = 74340
-- }) -- Duzalgor

map.nodes[25023040] = Rare({
    id = 200537,
    quest = 74337,
    note = L['in_water_cave'],
    rewards = {
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    },
    pois = {
        POI({23013438}) -- Entrance
    }
}) -- Gahz'raxes

map.nodes[43927846] = Rare({
    id = 200717,
    quest = 74342,
    rewards = {
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    }
}) -- Galakhad

map.nodes[42949113] = Rare({
    id = 200721,
    quest = 74343,
    rewards = {
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    }
}) -- Grugoth the Hullcrusher

map.nodes[39580284] = Rare({
    id = 200579,
    quest = 74338,
    rewards = {
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    }
}) -- Ishyra

map.nodes[61385430] = Rare({
    id = 200885,
    quest = 74344,
    note = L['in_small_cave'],
    rewards = {
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    },
    poi = {
        POI({63155389}) -- Entrance
    }
}) -- Lady Shaz'ra

map.nodes[70763874] = Rare({
    id = 201181,
    quest = 74346,
    note = L['in_small_cave'],
    rewards = {
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    },
    pois = {
        POI({722113973}) -- Entrance
    }
}) -- Mad-Eye Carrey
-- -- Navigator Bi-Yun {npc:201184}
-- -- First Mate Ovdah {npc:201182}

-- map.nodes[] = Rare({
--     id = 200978,
--     quest = 74350
-- }) -- Pyrachniss

map.nodes[47331027] = Rare({
    id = 200600,
    quest = 74339,
    note = L['in_small_cave'],
    rewards = {
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    },
    pois = {
        POI({46260854}) -- Entrance
    }
}) -- Reisa the Drowned

map.nodes[60484373] = Rare({
    id = nil,
    quest = nil,
    note = L['in_small_cave'],
    rewards = {
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    },
    pois = {POI({5948225})}
}) -- Vakren the Hunter

map.nodes[76736414] = Rare({
    id = 200904,
    quest = 74345,
    note = L['in_small_cave'],
    rewards = {
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    },
    pois = {
        POI({75356707, 74136633, 74016326, 75616214}) -- Entrances
    }
}) -- Veltrax

map.nodes[58923839] = Rare({
    id = 200911,
    quest = 74351,
    note = L['in_small_cave'],
    rewards = {
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    },
    pois = {
        POI({78274972}) -- Entrance
    }
}) -- Volcanakk

-- map.nodes[] = Rare({
--     id = 200960,
--     quest = 74348
-- }) -- Warden Entrix

map.nodes[63572576] = Rare({
    id = 201013,
    quest = 74347,
    rewards = {
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    },
    pois = {
        POI({64042478}) -- Nidharr
    }
}) -- Wyrmslayer Angvardi
-- -- Nidharr {npc:201310}

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

------------------------------- FORBIDDEN HOARD -------------------------------

map.nodes[46207342] = Treasure({
    label = L['forbidden_hoard_label'],
    quest = nil,
    note = L['in_small_cave'] .. '\n\n' ..
        format(L['forbidden_hoard_note'], '{npc:201304}'), -- Territorial Proto-Drake
    rewards = {
        Item({item = 202196}) -- Zskera Vault Key
    },
    pois = {
        POI({45787255}) -- Entrance
    }
}) -- Forbidden Hoard

map.nodes[53647674] = Treasure({
    label = L['forbidden_hoard_label'],
    quest = nil,
    note = format(L['forbidden_hoard_note'], '{npc:201304}'), -- Territorial Proto-Drake
    rewards = {
        Item({item = 202196}) -- Zskera Vault Key
    }
}) -- Forbidden Hoard

map.nodes[55592617] = Treasure({
    label = L['forbidden_hoard_label'],
    quest = nil,
    note = format(L['forbidden_hoard_note'], '{npc:201292}'), -- Tarasek Plunderer
    rewards = {
        Item({item = 202196}) -- Zskera Vault Key
    }
}) -- Forbidden Hoard

map.nodes[65013709] = Treasure({
    label = L['forbidden_hoard_label'],
    quest = nil,
    note = format(L['forbidden_hoard_note'], '{npc:201292}'), -- Tarasek Plunderer
    rewards = {
        Item({item = 202196}) -- Zskera Vault Key
    }
}) -- Forbidden Hoard

map.nodes[70606555] = Treasure({
    label = L['forbidden_hoard_label'],
    quest = nil,
    rewards = {
        Item({item = 202196}) -- Zskera Vault Key
    }
}) -- Forbidden Hoard

map.nodes[72897639] = Treasure({
    label = L['forbidden_hoard_label'],
    quest = nil,
    note = format(L['forbidden_hoard_note'], '{npc:201301}'), -- Farscale Raider
    rewards = {
        Item({item = 202196}) -- Zskera Vault Key
    }
}) -- Forbidden Hoard

---------------------------  MISCELLANEOUS TREASURE ---------------------------

map.nodes[48697111] = ns.node.ElementalChest({
    label = L['storm_bound_chest_label'],
    quest = nil
}) -- Storm-Bound Chest

map.nodes[65213628] = Treasure({
    label = L['purple_bone_pile_label'],
    quest = nil
}) -- Purple Bone Pile <---------------- TODO: This has 10.0.7 placeholder loot

-------------------------------------------------------------------------------
-------------------------------- DRAGON GLYPHS --------------------------------
-------------------------------------------------------------------------------

map.nodes[13260179] = Dragonglyph({
    rewards = {Achievement({id = 17411, criteria = 1})}
}) -- Forbidden Reach Glyph Hunger: Northwind Point

map.nodes[15879224] = Dragonglyph({
    rewards = {Achievement({id = 17411, criteria = 2})}
}) -- Forbidden Reach Glyph Hunger: Talon's Watch

map.nodes[64532385] = Dragonglyph({
    rewards = {Achievement({id = 17411, criteria = 3})}
}) -- Forbidden Reach Glyph Hunger: Fragstone Vault

map.nodes[84092412] = Dragonglyph({
    rewards = {Achievement({id = 17411, criteria = 4})}
}) -- Forbidden Reach Glyph Hunger: Dragonskull Island

map.nodes[81635017] = Dragonglyph({
    rewards = {Achievement({id = 17411, criteria = 5})}
}) -- Forbidden Reach Glyph Hunger: Sunder Mountain

map.nodes[48316624] = Dragonglyph({
    rewards = {Achievement({id = 17411, criteria = 6})}
}) -- Forbidden Reach Glyph Hunger: War Creche

map.nodes[60506171] = Dragonglyph({
    rewards = {Achievement({id = 17411, criteria = 7})}
}) -- Forbidden Reach Glyph Hunger: Talonlord's Perch

map.nodes[35752174] = Dragonglyph({
    rewards = {Achievement({id = 17411, criteria = 8})}
}) -- Forbidden Reach Glyph Hunger: Caldera of the Menders

-------------------------------------------------------------------------------
------------------ DRAGONSCALE EXPEDITION: THE HIGHEST PEAKS ------------------
-------------------------------------------------------------------------------

map.nodes[24435566] = Flag({quest = nil})
map.nodes[34843030] = Flag({quest = nil})
map.nodes[55332639] = Flag({quest = nil})
map.nodes[80464835] = Flag({quest = nil})

-------------------------------------------------------------------------------
------------------ WYRMHOLE GENERATOR - SIGNAL TRANSMITTER --------------------
-------------------------------------------------------------------------------

map.nodes[38398116] = SignalTransmitter({quest = nil}) -- TODO: Forgot location
map.nodes[42504555] = SignalTransmitter({quest = nil}) -- TODO: Forgot location

-------------------------------------------------------------------------------
--------------------------------- DRAGONRACES ---------------------------------
-------------------------------------------------------------------------------

map.nodes[65164656] = Dragonrace({
    label = nil,
    normal = {nil, nil, nil},
    advanced = {nil, nil, nil},
    reverse = {nil, nil, nil},
    rewards = {
        Achievement({id = 17279, criteria = 1, oneline = true}), -- normal bronze
        Achievement({id = 17280, criteria = 1, oneline = true}), -- normal silver
        Achievement({id = 17281, criteria = 1, oneline = true}), -- normal gold
        Achievement({id = 17284, criteria = 1, oneline = true}), -- advanced bronze
        Achievement({id = 17286, criteria = 1, oneline = true}), -- advanced silver
        Achievement({id = 17287, criteria = 1, oneline = true}), -- advanced gold
        Achievement({id = 17288, criteria = 1, oneline = true}), -- reverse bronze
        Achievement({id = 17289, criteria = 1, oneline = true}), -- reverse silver
        Achievement({id = 17290, criteria = 1, oneline = true}) -- reverse gold
    }
}) -- Stormsunder Crater

map.nodes[28316257] = Dragonrace({
    label = nil,
    normal = {nil, nil, nil},
    advanced = {nil, nil, nil},
    reverse = {nil, nil, nil},
    rewards = {
        Achievement({id = 17279, criteria = 2, oneline = true}), -- normal bronze
        Achievement({id = 17280, criteria = 2, oneline = true}), -- normal silver
        Achievement({id = 17281, criteria = 2, oneline = true}), -- normal gold
        Achievement({id = 17284, criteria = 2, oneline = true}), -- advanced bronze
        Achievement({id = 17286, criteria = 2, oneline = true}), -- advanced silver
        Achievement({id = 17287, criteria = 2, oneline = true}), -- advanced gold
        Achievement({id = 17288, criteria = 2, oneline = true}), -- reverse bronze
        Achievement({id = 17289, criteria = 2, oneline = true}), -- reverse silver
        Achievement({id = 17290, criteria = 2, oneline = true}) -- reverse gold
    }
}) -- Morqt Ascent

map.nodes[651846532] = Dragonrace({
    label = nil,
    normal = {nil, nil, nil},
    advanced = {nil, nil, nil},
    reverse = {nil, nil, nil},
    rewards = {
        Achievement({id = 17279, criteria = 3, oneline = true}), -- normal bronze
        Achievement({id = 17280, criteria = 3, oneline = true}), -- normal silver
        Achievement({id = 17281, criteria = 3, oneline = true}), -- normal gold
        Achievement({id = 17284, criteria = 3, oneline = true}), -- advanced bronze
        Achievement({id = 17286, criteria = 3, oneline = true}), -- advanced silver
        Achievement({id = 17287, criteria = 3, oneline = true}), -- advanced gold
        Achievement({id = 17288, criteria = 3, oneline = true}), -- reverse bronze
        Achievement({id = 17289, criteria = 3, oneline = true}), -- reverse silver
        Achievement({id = 17290, criteria = 3, oneline = true}) -- reverse gold
    }
}) -- Aerie Chasm Cruise

-- map.nodes[] = Dragonrace({
--     label = nil,
--     normal = {nil, nil, nil},
--     advanced = {nil, nil, nil},
--     reverse = {nil, nil, nil},
--     rewards = {
--         Achievement({id = 17279, criteria = 4, oneline = true}), -- normal bronze
--         Achievement({id = 17280, criteria = 4, oneline = true}), -- normal silver
--         Achievement({id = 17281, criteria = 4, oneline = true}), -- normal gold
--         Achievement({id = 17284, criteria = 4, oneline = true}), -- advanced bronze
--         Achievement({id = 17286, criteria = 4, oneline = true}), -- advanced silver
--         Achievement({id = 17287, criteria = 4, oneline = true}), -- advanced gold
--         Achievement({id = 17288, criteria = 4, oneline = true}), -- reverse bronze
--         Achievement({id = 17289, criteria = 4, oneline = true}), -- reverse silver
--         Achievement({id = 17290, criteria = 4, oneline = true}) -- reverse gold
--     }
-- }) -- Southern Reach Route

map.nodes[39960318] = Dragonrace({
    label = nil,
    normal = {nil, nil, nil},
    advanced = {nil, nil, nil},
    reverse = {nil, nil, nil},
    rewards = {
        Achievement({id = 17279, criteria = 5, oneline = true}), -- normal bronze
        Achievement({id = 17280, criteria = 5, oneline = true}), -- normal silver
        Achievement({id = 17281, criteria = 5, oneline = true}), -- normal gold
        Achievement({id = 17284, criteria = 5, oneline = true}), -- advanced bronze
        Achievement({id = 17286, criteria = 5, oneline = true}), -- advanced silver
        Achievement({id = 17287, criteria = 5, oneline = true}), -- advanced gold
        Achievement({id = 17288, criteria = 5, oneline = true}), -- reverse bronze
        Achievement({id = 17289, criteria = 5, oneline = true}), -- reverse silver
        Achievement({id = 17290, criteria = 5, oneline = true}) -- reverse gold
    }
}) -- Caldera Coaster

map.nodes[49335595] = Dragonrace({
    label = nil,
    normal = {nil, nil, nil},
    advanced = {nil, nil, nil},
    reverse = {nil, nil, nil},
    rewards = {
        Achievement({id = 17279, criteria = 6, oneline = true}), -- normal bronze
        Achievement({id = 17280, criteria = 6, oneline = true}), -- normal silver
        Achievement({id = 17281, criteria = 6, oneline = true}), -- normal gold
        Achievement({id = 17284, criteria = 6, oneline = true}), -- advanced bronze
        Achievement({id = 17286, criteria = 6, oneline = true}), -- advanced silver
        Achievement({id = 17287, criteria = 6, oneline = true}), -- advanced gold
        Achievement({id = 17288, criteria = 6, oneline = true}), -- reverse bronze
        Achievement({id = 17289, criteria = 6, oneline = true}), -- reverse silver
        Achievement({id = 17290, criteria = 6, oneline = true}) -- reverse gold
    }
}) -- Forbidden Reach Ramble
