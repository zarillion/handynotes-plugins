-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

local Node = ns.node.Node
local RitualCollectible = ns.node.RitualCollectible
local Rare = ns.node.Rare

local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local POI = ns.poi.POI

-------------------------------------------------------------------------------

local map = Map({id = 2594, settings = true})
local eversong = ns.maps[2395]

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[55103870] = Rare({
    id = 259971,
    requires = ns.requirement.Reputation(2792, 8, true), -- Ritual Sites Renown 8
    rewards = {
        Pet({item = 269999, id = 5020}) -- Overloaded Manaling
    }
}) -- Mana-Gorged Greatwyrm

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[30006310] = RitualCollectible({
    icon = 2766227,
    label = L['soggy_nest'],
    note = L['soggy_nest_note'],
    requires = ns.requirement.Item(272128), -- Soggy Lynx Toy
    rewards = {
        Pet({item = 270061, id = 5021}) -- Void-Bathed Snapdragon
    }
}) -- Soggy Nest

-- Washed Up Kelp (Void-Touched Snapdragon mount)
map.nodes[38006360] = RitualCollectible({
    icon = 2027958,
    label = L['washed_up_kelp'],
    note = L['washed_up_kelp_note'],
    rewards = {
        Mount({item = 270041, id = 2964}) -- Void-Touched Snapdragon
    },
    pois = {
        POI({
            38006360, 41007300, 46604600, 47907210, 50105510, 53405540,
            62007710, 66007400
        })
    }
}) -- Washed Up Kelp

-- Floating Egg
map.nodes[55804560] = RitualCollectible({
    icon = 6703754,
    label = '{npc:263805}',
    note = L['floating_egg_note'],
    rewards = {
        Pet({item = 270062, id = 5022}) -- Void-Touched Chick
    },
    pois = {POI({55804560, 68704770, 71605030})}
}) -- Egg

-------------------------------------------------------------------------------
-------------------------------- RUSTLING BUSH --------------------------------
-------------------------------------------------------------------------------

-- Void-Touched Lynx Kitten (shared across both ritual sites, Tier 3+)
map.nodes[41804970] = RitualCollectible({
    icon = 7390433,
    label = L['rustling_bush'],
    note = L['rustling_bush_note'],
    rewards = {
        Pet({item = 270063, id = 5023}) -- Void-Touched Lynx Kitten
    },
    pois = {
        POI({
            35104450, 41804970, 42008000, 43004970, 43305800, 55007930,
            63606560, 66405250, 66603710, 68503760
        })
    }
}) -- Rustling Bush (Daggerspine Point)

------------------------------- PARENT MAP ENTRY ------------------------------
-------------------------------------------------------------------------------

eversong.nodes[21006600] = Node({
    label = L['ritual_site_daggerspine_point'],
    note = L['daggerspine_point_entry_note'],
    icon = 'portal_pp',
    scale = 2,
    group = ns.groups.RITUAL_SITE,
    OnClick = function() WorldMapFrame:SetMapID(2594) end,
    clabel = L['change_map']
}) -- Curious Obelisk (always-visible entry)
