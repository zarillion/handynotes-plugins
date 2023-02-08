-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible
local Node = ns.node.Node
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

map.nodes[42635736] = Rare({
    id = 200681,
    quest = nil,
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
    quest = nil,
    rewards = {
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    }
}) -- "Captain" Ookbeard

local Duzalgor = Class('Duzalgor', Rare, {
    id = 200610,
    quest = 73881,
    note = L['in_small_cave'] .. '\n\n' .. L['duzalgor_note'],
    rewards = {
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    }
}) -- Duzalgor

map.nodes[32692080] = Duzalgor({
    pois = {
        POI({34662400}), -- Entrance
        POI({color = 'Green', points = {34622426, 34852387}}) -- Toxin Antidote
    }
}) -- Duzalgor (The Forbidden Reach)

supportCreche.nodes[32693558] = Duzalgor({
    pois = {
        POI({34662400}) -- Entrance
    }
}) -- Duzalgor (The Support Creche)

map.nodes[25023040] = Rare({
    id = 200537,
    quest = nil,
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
    quest = nil,
    rewards = {
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    }
}) -- Galakhad

map.nodes[42949113] = Rare({
    id = 200721,
    quest = nil,
    rewards = {
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    }
}) -- Grugoth the Hullcrusher

map.nodes[39580284] = Rare({
    id = 200579,
    quest = nil,
    rewards = {
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    }
}) -- Ishyra

map.nodes[61385430] = Rare({
    id = 200885,
    quest = nil,
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
    quest = 74283,
    note = L['in_small_cave'] .. '\n\n' .. L['mad_eye_carrey_note'],
    rewards = {
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    },
    pois = {
        POI({722113973}) -- Entrance
    }
}) -- Mad-Eye Carrey

local Pyrachniss = Class('Pyrachniss', Rare, {
    id = 200978,
    quest = 73385,
    note = L['in_the_war_creche'],
    rewards = {
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    }
}) -- Pyrachniss

map.nodes[54096894] = Pyrachniss({
    pois = {
        POI({52145574}) -- Entrance
    }
}) -- Pyrachniss (The Forbidden Reach)

warCreche.nodes[75935075] = Pyrachniss({
    pois = {
        POI({67600383}) -- Entrance
    }
}) -- Pyrachniss (The War Creche)

map.nodes[47331027] = Rare({
    id = 200600,
    quest = 73117,
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
    id = 200584,
    quest = 73111,
    note = L['in_small_cave'],
    rewards = {
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    },
    pois = {
        POI({5948225}) -- Entrance
    }
}) -- Vakren the Hunter

map.nodes[76736414] = Rare({
    id = 200904,
    quest = nil,
    note = L['in_small_cave'],
    rewards = {
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    },
    pois = {
        POI({75356707, 74136633, 74016326, 75616214}) -- Entrances
    }
}) -- Veltrax

local Volcanakk = Class('Volcanakk', Rare, {
    id = 200911,
    quest = 73225,
    note = L['in_small_cave'],
    rewards = {
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    }
}) -- Volcanakk

map.nodes[82684504] = Volcanakk({
    pois = {
        POI({78174982}) -- Entrance
    }
}) -- Volcanakk (The Forbidden Reach)

seigeCreche.nodes[58923839] = Volcanakk({
    pois = {
        POI({19698008}) -- Entrance
    }
}) -- Volcanakk (The Seige Creche)

local WardenEntrix = Class('WardenEntrix', Rare, {
    id = 200960,
    quest = nil,
    note = L['in_the_war_creche'],
    rewards = {
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    }
}) -- Warden Entrix

map.nodes[45127862] = WardenEntrix({
    pois = {
        POI({52145574}) -- Entrance
    }
}) -- Warden Entrix (The Forbidden Reach)

warCreche.nodes[42928473] = WardenEntrix({
    pois = {
        POI({67600383}), -- Entrance
        POI({47004743, 49945425}), -- Spellsworn Gateways
        Path({47004743, 49945425}) -- Spellsworn Gateways
    }
}) -- Warden Entrix (The War Creche)

map.nodes[63572576] = Rare({
    id = 201013,
    quest = nil,
    note = L['wymslayer_angvardi_note'],
    rewards = {
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    },
    pois = {
        POI({64042478}) -- Nidharr
    }
}) -- Wyrmslayer Angvardi

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

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

map.nodes[24435566] = Flag({quest = nil})
map.nodes[34843030] = Flag({quest = nil})
map.nodes[55332639] = Flag({quest = nil})
map.nodes[80464835] = Flag({quest = nil})

-------------------------------------------------------------------------------
------------------ WYRMHOLE GENERATOR - SIGNAL TRANSMITTER --------------------
-------------------------------------------------------------------------------

map.nodes[38398116] = SignalTransmitter({quest = nil}) -- Sharpscale Coast

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

-------------------------------------------------------------------------------
---------------------------------- BONE PILE ----------------------------------
-------------------------------------------------------------------------------

local BonePile = Class('BonePile', Node, {
    label = L['bone_pile_label'],
    icon = 'chest_pk',
    group = ns.groups.BONE_PILE,
    rewards = {
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

-------------------------------------------------------------------------------
------------------------------- FORBIDDEN HOARD -------------------------------
-------------------------------------------------------------------------------

local ForbiddenHoard = Class('ForbiddenHoard', Node, {
    label = L['forbidden_hoard_label'],
    icon = 'chest_pp',
    group = ns.groups.FORBIDDEN_HOARD,
    note = L['forbidden_hoard_note'],
    rewards = {
        Item({item = 202196}) -- Zskera Vault Key
    }
}) -- Forbidden Hoard

map.nodes[33822568] = ForbiddenHoard()
map.nodes[39670001] = ForbiddenHoard()
map.nodes[46207342] = ForbiddenHoard()
map.nodes[53647674] = ForbiddenHoard()
map.nodes[55592617] = ForbiddenHoard()
map.nodes[59285907] = ForbiddenHoard()
map.nodes[65013709] = ForbiddenHoard()
map.nodes[70606555] = ForbiddenHoard()
map.nodes[72897639] = ForbiddenHoard()

-------------------------------------------------------------------------------
-------------------------------- MISCELLANEOUS --------------------------------
-------------------------------------------------------------------------------

map.nodes[25884785] = Collectible({
    label = L['zskera_vault_label'],
    icon = 4909720,
    note = L['zskera_vault_note'],
    rewards = {
        Achievement({id = 17413}), -- Door Buster
        Pet({item = 193851, id = 3332}), -- Patos
        Pet({item = 193908, id = 3338}), -- Kobaldt
        Pet({item = 204079, id = 3476}), -- Gilded Mechafrog
        Toy({item = 204257}), -- Holoviewer: The Lady of Dreams
        Toy({item = 204256}), -- Holoviewer: The Scarlet Queen
        Toy({item = 204262}) -- Holoviewer: The timeless One
    }
}) -- Zskera Vault
