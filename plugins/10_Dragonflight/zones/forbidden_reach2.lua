-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible
local Rare = ns.node.Rare

local Dragonglyph = ns.node.Dragonglyph
local Dragonrace = ns.node.Dragonrace
local Flag = ns.node.Flag
local SignalTransmitter = ns.node.SignalTransmitter

local Achievement = ns.reward.Achievement
local Currency = ns.reward.Currency
local Item = ns.reward.Item
local Pet = ns.reward.Pet
local Toy = ns.reward.Toy

local Path = ns.poi.Path
local POI = ns.poi.POI

-------------------------------------------------------------------------------

local map = Map({id = 2151, settings = true})

local seigeCreche = Map({id = 2100, settings = false}) -- The Seige Crech
local supportCreche = Map({id = 2101, settings = false}) -- The Support Creche
local warCreche = Map({id = 2102, settings = false}) -- The War Creche

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[60484373] = Rare({
    id = 200584,
    quest = 73111,
    note = L['in_small_cave'],
    rewards = {
        Achievement({id = 17525, criteria = 58458}), -- Champion of the Forbidden Reach
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    },
    pois = {
        POI({5948225}) -- Entrance
    }
}) -- Vakren the Hunter

map.nodes[28293793] = Rare({
    id = 200537,
    quest = nil,
    note = L['in_water_cave'],
    rewards = {
        Achievement({id = 17525, criteria = 58459}), -- Champion of the Forbidden Reach
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    },
    pois = {
        POI({23013438}) -- Entrance
    }
}) -- Gahz'raxes

map.nodes[41011435] = Rare({
    id = 200579,
    quest = nil,
    rewards = {
        Achievement({id = 17525, criteria = 58460}), -- Champion of the Forbidden Reach
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    }
}) -- Ishyra

map.nodes[47331027] = Rare({
    id = 200600,
    quest = 73117,
    note = L['in_small_cave'],
    rewards = {
        Achievement({id = 17525, criteria = 58461}), -- Champion of the Forbidden Reach
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    },
    pois = {
        POI({46260854}) -- Entrance
    }
}) -- Reisa the Drowned

local Duzalgor = Class('Duzalgor', Rare, {
    id = 200610,
    quest = 73881,
    note = L['in_small_cave'] .. '\n\n' .. L['duzalgor_note'],
    rewards = {
        Achievement({id = 17525, criteria = 58462}), -- Champion of the Forbidden Reach
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    }
}) -- Duzalgor

map.nodes[32842931] = Duzalgor({
    pois = {
        POI({34662400}), -- Entrance
        POI({color = 'Green', points = {34622426, 34852387}}) -- Toxin Antidote
    }
}) -- Duzalgor (The Forbidden Reach)

supportCreche.nodes[32693558] = Duzalgor() -- Duzalgor (The Support Creche)

map.nodes[43736121] = Rare({
    id = 200681,
    quest = nil,
    note = L['in_small_cave'],
    rewards = {
        Achievement({id = 17525, criteria = 58463}), -- Champion of the Forbidden Reach
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    },
    pois = {
        POI({42565425, 40715404, 40015641}) -- Entrances
    }
}) -- Bonesifter Marwak

map.nodes[44707647] = Rare({
    id = 200717,
    quest = 73152,
    rewards = {
        Achievement({id = 17525, criteria = 58464}), -- Champion of the Forbidden Reach
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    }
}) -- Galakhad

map.nodes[43939051] = Rare({
    id = 200721,
    quest = nil,
    rewards = {
        Achievement({id = 17525, criteria = 58465}), -- Champion of the Forbidden Reach
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    }
}) -- Grugoth the Hullcrusher

map.nodes[59605888] = Rare({
    id = 200885,
    quest = 73222,
    note = L['in_small_cave'],
    rewards = {
        Achievement({id = 17525, criteria = 58466}), -- Champion of the Forbidden Reach
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    },
    pois = {
        POI({61005823}) -- Entrance
    }
}) -- Lady Shaz'ra

map.nodes[72976738] = Rare({
    id = 200904,
    quest = nil,
    note = L['in_small_cave'],
    rewards = {
        Achievement({id = 17525, criteria = 58467}), -- Champion of the Forbidden Reach
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    },
    pois = {
        POI({75356707, 74136633, 74016326, 75616214}) -- Entrances
    }
}) -- Veltrax

map.nodes[67924531] = Rare({
    id = 201181,
    quest = 74283,
    note = L['in_small_cave'] .. '\n\n' .. L['mad_eye_carrey_note'],
    rewards = {
        Achievement({id = 17525, criteria = 58468}), -- Champion of the Forbidden Reach
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    },
    pois = {
        POI({722113973}) -- Entrance
    }
}) -- Mad-Eye Carrey

map.nodes[63572576] = Rare({
    id = 201013,
    quest = nil,
    note = L['wymslayer_angvardi_note'],
    rewards = {
        Achievement({id = 17525, criteria = 58469}), -- Champion of the Forbidden Reach
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    },
    pois = {
        POI({64042478}) -- Nidharr
    }
}) -- Wyrmslayer Angvardi

local WardenEntrix = Class('WardenEntrix', Rare, {
    id = 200960,
    quest = nil,
    note = L['in_the_war_creche'],
    rewards = {
        Achievement({id = 17525, criteria = 58470}), -- Champion of the Forbidden Reach
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    }
}) -- Warden Entrix

map.nodes[45917966] = WardenEntrix({
    pois = {
        POI({51846018}) -- Entrance
    }
}) -- Warden Entrix (The Forbidden Reach)

warCreche.nodes[42978454] = WardenEntrix({
    pois = {
        POI({47004743, 49945425}), -- Spellsworn Gateways
        Path({47004743, 49945425}) -- Spellsworn Gateways
    }
}) -- Warden Entrix (The War Creche)

map.nodes[26664150] = Rare({
    id = 200956,
    quest = nil,
    rewards = {
        Achievement({id = 17525, criteria = 58471}), -- Champion of the Forbidden Reach
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    }
}) -- "Captain" Ookbeard

local Pyrachniss = Class('Pyrachniss', Rare, {
    id = 200978,
    quest = 73385,
    note = L['in_the_war_creche'],
    rewards = {
        Achievement({id = 17525, criteria = 58472}), -- Champion of the Forbidden Reach
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    }
}) -- Pyrachniss

map.nodes[53707154] = Pyrachniss({
    pois = {
        POI({51846018}) -- Entrance
    }
}) -- Pyrachniss (The Forbidden Reach)

warCreche.nodes[75615011] = Pyrachniss() -- Pyrachniss (The War Creche)

local Volcanakk = Class('Volcanakk', Rare, {
    id = 200911,
    quest = 73225,
    note = L['in_small_cave'],
    rewards = {
        Achievement({id = 17525, criteria = 58473}), -- Champion of the Forbidden Reach
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    }
}) -- Volcanakk

map.nodes[78205065] = Volcanakk({
    pois = {
        POI({78174982}) -- Entrance
    }
}) -- Volcanakk (The Forbidden Reach)

seigeCreche.nodes[58923839] = Volcanakk() -- Volcanakk (The Seige Creche)

-- map.nodes[] = Rare({
--     id = 200619,
--     quest = nil,
--     rewards = {
--         Achievement({id = 17525, criteria = 58474}), -- Champion of the Forbidden Reach
--     }
-- }) -- Tectonus

-- map.nodes[] = Rare({
--     id = 200620,
--     quest = nil,
--     rewards = {
--         Achievement({id = 17525, criteria = 58475}), -- Champion of the Forbidden Reach
--     }
-- }) -- Sir Pinchalot

-- map.nodes[] = Rare({
--     id = 200621,
--     quest = nil,
--     rewards = {
--         Achievement({id = 17525, criteria = 58476}), -- Champion of the Forbidden Reach
--     }
-- }) -- Manathema

-- map.nodes[] = Rare({
--     id = 200622,
--     quest = nil,
--     rewards = {
--         Achievement({id = 17525, criteria = 58477}), -- Champion of the Forbidden Reach
--     }
-- }) -- Snarfang

-- map.nodes[] = Rare({
--     id = 200722,
--     quest = nil,
--     rewards = {
--         Achievement({id = 17525, criteria = 58478}), -- Champion of the Forbidden Reach
--     }
-- }) -- Gareed

-- map.nodes[] = Rare({
--     id = 200725,
--     quest = nil,
--     rewards = {
--         Achievement({id = 17525, criteria = 58479}), -- Champion of the Forbidden Reach
--     }
-- }) -- Faunos

-- map.nodes[] = Rare({
--     id = 200730,
--     quest = nil,
--     rewards = {
--         Achievement({id = 17525, criteria = 58480}), -- Champion of the Forbidden Reach
--     }
-- }) -- Tidesmith Zarviss

-- map.nodes[] = Rare({
--     id = 200737,
--     quest = nil,
--     rewards = {
--         Achievement({id = 17525, criteria = 58481}), -- Champion of the Forbidden Reach
--     }
-- }) -- Arcantrix

-- map.nodes[] = Rare({
--     id = 200738,
--     quest = nil,
--     rewards = {
--         Achievement({id = 17525, criteria = 58482}), -- Champion of the Forbidden Reach
--     }
-- }) -- Kangalo

-- map.nodes[] = Rare({
--     id = 200739,
--     quest = nil,
--     rewards = {
--         Achievement({id = 17525, criteria = 58483}), -- Champion of the Forbidden Reach
--     }
-- }) -- Fimbul

-- map.nodes[] = Rare({
--     id = 200740,
--     quest = nil,
--     rewards = {
--         Achievement({id = 17525, criteria = 58484}), -- Champion of the Forbidden Reach
--     }
-- }) -- Agni Blazehoof

-- map.nodes[] = Rare({
--     id = 200742,
--     quest = nil,
--     rewards = {
--         Achievement({id = 17525, criteria = 58485}), -- Champion of the Forbidden Reach
--     }
-- }) -- Luttrok

-- map.nodes[] = Rare({
--     id = 200743,
--     quest = nil,
--     rewards = {
--         Achievement({id = 17525, criteria = 58486}), -- Champion of the Forbidden Reach
--     }
-- }) -- Amephyst

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

-- Achievement({
--     id = 17526,
--     criteria = {
--         58487, -- Forbidden Hoard
--         58488, -- Avian Trove
--         58489, -- Obsidian Coffer
--         58490, -- Spellsworn Reserves
--         58491, -- Bone Pile
--         58492, -- Farscale Cache
--         58493, -- Irontide Stash
--         58494, -- Storm-Eater Cairn
--         58495, -- Stonescaled Cairn
--         58496, -- Blazing Cairn
--         58497, -- Frozenheart Cairn
--         58498, -- Morqut Provisions
--     }
-- }) -- Treasures of the Forbidden Reach

------------------------------- FORBIDDEN HOARD -------------------------------

local ForbiddenHoard = Class('ForbiddenHoard', Collectible, {
    label = L['forbidden_hoard_label'],
    icon = 'chest_pp',
    group = ns.groups.FORBIDDEN_HOARD,
    note = L['forbidden_hoard_note'],
    rewards = {
        Achievement({id = 17526, criteria = 58487}), -- Treasures of the Forbidden Reach
        Achievement({
            id = 17527,
            criteria = {
                id = 1,
                qty = true,
                suffix = L['scavenger_of_the_forbidden_reach_suffix']
            }
        }), -- Scavenger of the Forbidden Reach
        Achievement({
            id = 17529,
            criteria = {
                id = 1,
                qty = true,
                suffix = L['forbidden_spoils_suffix']
            }
        }), -- Forbidden Spoils
        Item({item = 202196}), -- Zskera Vault Key
        Item({item = 203464}) -- Sealed Spellsworn Scroll
    }
}) -- Forbidden Hoard

map.nodes[28424199] = ForbiddenHoard()
map.nodes[33822568] = ForbiddenHoard()
map.nodes[39192427] = ForbiddenHoard()
map.nodes[39670001] = ForbiddenHoard()
map.nodes[46207342] = ForbiddenHoard()
map.nodes[50733677] = ForbiddenHoard({
    note = L['in_small_cave'],
    pois = {POI({49143704})}
})
map.nodes[53647674] = ForbiddenHoard()
map.nodes[55592617] = ForbiddenHoard()
map.nodes[59285907] = ForbiddenHoard()
map.nodes[65013709] = ForbiddenHoard()
map.nodes[70606555] = ForbiddenHoard()
map.nodes[72897639] = ForbiddenHoard()

warCreche.nodes[40816962] = ForbiddenHoard()
warCreche.nodes[61195448] = ForbiddenHoard()

--------------------------------- AVIAN TROVE ---------------------------------

------------------------------- OBSIDIAN COFFER -------------------------------

local ObsidianCoffer = Class('ObsidianCoffer', Collectible, {
    label = L['obsidian_coffer_label'],
    icon = 'chest_pp',
    group = ns.groups.OBSIDIAN_COFFER,
    rewards = {
        Achievement({id = 17526, criteria = 58489}), -- Obsidian Coffer
        Achievement({
            id = 17527,
            criteria = {
                id = 1,
                qty = true,
                suffix = L['scavenger_of_the_forbidden_reach_suffix']
            }
        }), -- Scavenger of the Forbidden Reach
        Item({item = 202196}) -- Zskera Vault Key
    }
}) -- Obsidian Coffer

map.nodes[57466242] = ObsidianCoffer()

warCreche.nodes[68681317] = ObsidianCoffer()
warCreche.nodes[44358594] = ObsidianCoffer()

----------------------------- SPELLSWORN RESERVES -----------------------------

---------------------------------- BONE PILE ----------------------------------

local BonePile = Class('BonePile', Collectible, {
    label = L['bone_pile_label'],
    icon = 'chest_pp',
    group = ns.groups.BONE_PILE,
    rewards = {
        Achievement({id = 17526, criteria = 58491}), -- Treasures of the Forbidden Reach
        Achievement({
            id = 17527,
            criteria = {
                id = 1,
                qty = true,
                suffix = L['scavenger_of_the_forbidden_reach_suffix']
            }
        }), -- Scavenger of the Forbidden Reach
        Item({item = 202196}) -- Zskera Vault Key
    }
}) -- Bone Pile

map.nodes[28414290] = BonePile()
map.nodes[33967739] = BonePile()
map.nodes[36752964] = BonePile()
map.nodes[38793491] = BonePile()
map.nodes[39985317] = BonePile()
map.nodes[42985326] = BonePile()
map.nodes[43105496] = BonePile()
map.nodes[50134985] = BonePile()
map.nodes[59044624] = BonePile()
map.nodes[65213628] = BonePile()

supportCreche.nodes[16733332] = BonePile()

------------------------------- FARSCALE CACHE --------------------------------

------------------------------- IRONTIDE STASH --------------------------------

------------------------------ STORM-EATER CAIRN ------------------------------

------------------------------ STONESCALED CAIRN ------------------------------

local StonescaledCairn = Class('StonescaledCairn', Collectible, {
    label = L['stonescaled_cairn_label'],
    icon = 'chest_pp',
    group = ns.groups.STONESCALED_CAIRN,
    rewards = {
        Achievement({id = 17526, criteria = 58495}), -- Stonescaled Cairn
        Achievement({
            id = 17527,
            criteria = {
                id = 1,
                qty = true,
                suffix = L['scavenger_of_the_forbidden_reach_suffix']
            }
        }), -- Scavenger of the Forbidden Reach
        Item({item = 202196}) -- Zskera Vault Key
    }
}) -- Stonescaled Cairn

map.nodes[73045926] = StonescaledCairn()

-------------------------------- BLAZING CAIRN --------------------------------

local BlazingCairn = Class('BlazingCairn', Collectible, {
    label = L['blazing_cairn_label'],
    icon = 'chest_pp',
    group = ns.groups.BLAZING_CAIRN,
    rewards = {
        Achievement({id = 17526, criteria = 58496}), -- Blazing Cairn
        Achievement({
            id = 17527,
            criteria = {
                id = 1,
                qty = true,
                suffix = L['scavenger_of_the_forbidden_reach_suffix']
            }
        }), -- Scavenger of the Forbidden Reach
        Item({item = 202196}) -- Zskera Vault Key
    }
}) -- Stonescaled Cairn

seigeCreche.nodes[49143582] = BlazingCairn()

------------------------------ FROZENHEART CAIRN ------------------------------

------------------------------ MORQUT PROVISIONS ------------------------------

-------------------------------- MISCELLANEOUS --------------------------------

map.nodes[48697111] = ns.node.ElementalChest({
    label = L['storm_bound_chest_label'],
    quest = nil
}) -- Storm-Bound Chest

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

map.nodes[27945985] = Flag({quest = 73696})
map.nodes[54573460] = Flag({quest = 73699})
map.nodes[36903792] = Flag({quest = 73700})
map.nodes[76285343] = Flag({quest = 73702})

-------------------------------------------------------------------------------
------------------ WYRMHOLE GENERATOR - SIGNAL TRANSMITTER --------------------
-------------------------------------------------------------------------------

map.nodes[39988182] = SignalTransmitter({quest = 73145}) -- Sharpscale Coast

-------------------------------------------------------------------------------
--------------------------------- DRAGONRACES ---------------------------------
-------------------------------------------------------------------------------

map.nodes[65164656] = Dragonrace({
    -- label = nil,
    -- normal = {nil, nil, nil},
    -- advanced = {nil, nil, nil},
    -- reverse = {nil, nil, nil},
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
    -- label = nil,
    -- normal = {nil, nil, nil},
    -- advanced = {nil, nil, nil},
    -- reverse = {nil, nil, nil},
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
    -- label = nil,
    -- normal = {nil, nil, nil},
    -- advanced = {nil, nil, nil},
    -- reverse = {nil, nil, nil},
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

map.nodes[65838376] = Dragonrace({
    -- label = nil,
    -- normal = {nil, nil, nil},
    -- advanced = {nil, nil, nil},
    -- reverse = {nil, nil, nil},
    rewards = {
        Achievement({id = 17279, criteria = 4, oneline = true}), -- normal bronze
        Achievement({id = 17280, criteria = 4, oneline = true}), -- normal silver
        Achievement({id = 17281, criteria = 4, oneline = true}), -- normal gold
        Achievement({id = 17284, criteria = 4, oneline = true}), -- advanced bronze
        Achievement({id = 17286, criteria = 4, oneline = true}), -- advanced silver
        Achievement({id = 17287, criteria = 4, oneline = true}), -- advanced gold
        Achievement({id = 17288, criteria = 4, oneline = true}), -- reverse bronze
        Achievement({id = 17289, criteria = 4, oneline = true}), -- reverse silver
        Achievement({id = 17290, criteria = 4, oneline = true}) -- reverse gold
    }
}) -- Southern Reach Route

map.nodes[39960318] = Dragonrace({
    -- label = nil,
    -- normal = {nil, nil, nil},
    -- advanced = {nil, nil, nil},
    -- reverse = {nil, nil, nil},
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
    -- label = nil,
    -- normal = {nil, nil, nil},
    -- advanced = {nil, nil, nil},
    -- reverse = {nil, nil, nil},
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

------------------------------------------------------------------------
---------------------------- SCROLL HUNTER -----------------------------
------------------------------------------------------------------------

-- L['scroll_hunter_suffix'] = 'Treasures found'
-- L['options_icons_scroll_hunter'] = '{achievement:17532}'
-- L['options_icons_scroll_hunter_desc'] = 'Display sealed scroll locations for {achievement:17532}.'

-- ns.groups.SCROLL_HUNTER = Group('scroll_hunter', 4549192, {
--     defaults = ns.GROUP_HIDDEN,
--     type = ns.group_types.ACHIEVEMENT,
--     achievement = 17532
-- })

-- local SealedScroll = Class('SealedScroll', Collectible, {
--     -- id = 202667, -- Sealed Artifact Scroll
--     -- id = 202668, -- Sealed Spirit Scroll
--     -- id = 202669, -- Sealed Fish Scroll
--     -- id = 202670, -- Sealed Knowledge Scroll
--     -- id = 203464, -- Sealed Spellsworn Scroll
--     icon = 4549192,
--     rewards = {
--         Achievement({
--             id = 17532,
--             criteria = {
--                 id = 1,
--                 qty = true,
--                 suffix = L['scroll_hunter_suffix']
--             }
--         }) -- Scroll Hunter
--     }
-- }) -- Sealed Scroll

-- map.nodes[] = SealedScroll()

------------------------------------------------------------------------
------------------------ LIBRARIAN OF THE REACH ------------------------
------------------------------------------------------------------------

local LibraryBook = Class('LibraryBook', Collectible,
    {icon = 4549135, group = ns.groups.LIBRARY})

warCreche.nodes[52435962] = LibraryBook({
    label = L['spellsworn_missive_label'],
    note = L['spellsworn_missive_note'],
    parent = map.id,
    rewards = {Achievement({id = 17530, criteria = 58501})}
}) -- The Burden of Lapisagos

-- map.nodes[] = LibraryBook({
--     id = 204316,
--     rewards = {Achievement({id = 17530, criteria = 58502})}
-- })-- A Soldier's Journal

-- map.nodes[] = LibraryBook({
--     id = 204335,
--     rewards = {Achievement({id = 17530, criteria = 58503})}
-- })-- A Song of the Depths

-- map.nodes[] = LibraryBook({
--     id = 204328,
--     rewards = {Achievement({id = 17530, criteria = 58504})}
-- })-- Return of the Nightsquall

-- map.nodes[] = LibraryBook({
--     id = 204321,
--     rewards = {Achievement({id = 17530, criteria = 58505})}
-- })-- Expedition Notes

-- map.nodes[] = LibraryBook({
--     id = 204317,
--     rewards = {Achievement({id = 17530, criteria = 58506})}
-- })-- Words of the Wyrmslayer

-- map.nodes[] = LibraryBook({
--     id = 204185,
--     rewards = {Achievement({id = 17530, criteria = 58507})}
-- })-- The Old Gods and the Ordering of Azeroth (Annotated)

------------------------------------------------------------------------
------------------------ WHILE WE WERE SLEEPING ------------------------
------------------------------------------------------------------------

local ScalecommanderItem = Class('scalecommander_item', Collectible, {
    icon = 134422,
    group = ns.groups.SCALECOMMANDER_ITEM
})

-- map.nodes[] = ScalecommanderItem({
--     label = '{item:}',
--     rewards = {Achievement({id = 17315, criteria = 1})}
-- }) -- Journal Entry: The Creches

-- map.nodes[] = ScalecommanderItem({
--     label = '{item:}',
--     rewards = {Achievement({id = 17315, criteria = 2})}
-- }) -- Journal Entry: Experiments

map.nodes[50884345] = ScalecommanderItem({
    label = '{item:202335}',
    rewards = {Achievement({id = 17315, criteria = 3})}
}) -- Journal Entry: Relics

-- map.nodes[] = ScalecommanderItem({
--     label = '{item:}',
--     rewards = {Achievement({id = 17315, criteria = 4})}
-- }) -- Journal Entry: Silence

-- map.nodes[] = ScalecommanderItem({
--     label = '{item:}',
--     rewards = {Achievement({id = 17315, criteria = 5})}
-- }) -- Receiving Stone: Final Warning

-- map.nodes[] = ScalecommanderItem({
--     label = '{item:}',
--     rewards = {Achievement({id = 17315, criteria = 6})}
-- }) -- Sending Stone: Protest

-- map.nodes[] = ScalecommanderItem({
--     label = '{item:}',
--     rewards = {Achievement({id = 17315, criteria = 7})}
-- }) -- Sending Stone: Initial Report

-- map.nodes[] = ScalecommanderItem({
--     label = '{item:}',
--     rewards = {Achievement({id = 17315, criteria = 8})}
-- }) -- Sending Stone: The Prisoner

-------------------------------------------------------------------------------
-------------------------------- MISCELLANEOUS --------------------------------
-------------------------------------------------------------------------------

map.nodes[56425914] = Collectible({
    label = L['awakened_soil_label'],
    icon = 656681,
    requires = ns.requirement.Item(203416) -- Lifebloom Seeds
}) -- Awakened Soil

warCreche.nodes[31178082] = Collectible({
    label = L['book_of_arcane_entities_label'],
    icon = 1033184,
    parent = map.id,
    requires = ns.requirement.Item(203410) -- Glowing Crystal Bookmark
}) -- Book of Arcane Entities

map.nodes[25884785] = Collectible({
    label = L['zskera_vault_label'],
    icon = 4909720,
    note = L['zskera_vault_note'],
    rewards = {
        Achievement({id = 17509}), -- Every Door, Everywhere, All At Once
        Achievement({
            id = 17413,
            criteria = {id = 1, qty = true, suffix = L['door_buster_suffix']}
        }), -- Door Buster
        Pet({item = 193851, id = 3332}), -- Patos
        Pet({item = 193908, id = 3338}), -- Kobaldt
        Pet({item = 204079, id = 3476}), -- Gilded Mechafrog
        Toy({item = 204257}), -- Holoviewer: The Lady of Dreams
        Toy({item = 204256}), -- Holoviewer: The Scarlet Queen
        Toy({item = 204262}) -- Holoviewer: The timeless One
    }
}) -- Zskera Vault
