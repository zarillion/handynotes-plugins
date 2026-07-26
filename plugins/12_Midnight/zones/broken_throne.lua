-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

local Node = ns.node.Node
local RitualCollectible = ns.node.RitualCollectible

local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local POI = ns.poi.POI

-------------------------------------------------------------------------------

local map = Map({id = 2585, settings = true})
local zulaman = ns.maps[2437]

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[55803880] = RitualCollectible({
    icon = 7263309,
    label = L['chewed_meat'],
    note = L['chewed_meat_note'],
    rewards = {
        Mount({item = 257225, id = 2779}) -- Witherbark Warbear Harness
    }
}) -- Chewed Meat

map.nodes[50604730] = RitualCollectible({
    icon = 135664,
    label = L['ritual_circle'],
    note = L['ritual_circle_note'],
    requires = ns.requirement.Item(271999), -- Misplaced Ritual Candle
    rewards = {
        Mount({item = 269828, id = 2961}) -- Void-Corrupted Eagle Talon
    },
    pois = {
        POI({51504780, label = '{item:271999}'}) -- Misplaced Ritual Candle
    }
}) -- Ritual Circle

map.nodes[45806480] = RitualCollectible({
    icon = 7210236,
    label = L['void_tainted_nest'],
    note = L['void_tainted_nest_note'],
    rewards = {
        Pet({item = 269829, id = 5017}) -- Void-Scarred Eaglet
    },
    pois = {POI({49507830, label = L['updraft']})}
}) -- Void-Tainted Nest (ride updraft at {49.5,78.3} to reach)

-------------------------------------------------------------------------------
------------------------------------- PETS ------------------------------------
-------------------------------------------------------------------------------

map.nodes[55804960] = RitualCollectible({
    icon = 7523130,
    label = '{spell:1286634}',
    note = L['chubs_note'],
    rewards = {
        Pet({item = 269836, id = 5019}) -- Chubs
    }
}) -- Chubs (Lost Bear Cub)

-------------------------------------------------------------------------------
-------------------------------- RUSTLING FERN --------------------------------
-------------------------------------------------------------------------------

-- Void-Touched Lynx Kitten (shared across both ritual sites, Tier 3+)
map.nodes[40906760] = RitualCollectible({
    icon = 7390433,
    label = L['rustling_fern'],
    note = L['rustling_fern_note'],
    rewards = {
        Pet({item = 270063, id = 5023}) -- Void-Touched Lynx Kitten
    },
    pois = {
        POI({
            39004500, 40906760, 42004500, 43104490, 48108310, 48507710,
            51504490, 51603640, 52908340, 54304500, 54307260, 58207940, 58504960
        })
    }
}) -- Rustling Fern (Broken Throne)

-------------------------------------------------------------------------------
------------------------------- PARENT MAP ENTRY ------------------------------
-------------------------------------------------------------------------------

zulaman.nodes[66507600] = Node({
    label = L['ritual_site_broken_throne'],
    note = L['broken_throne_entry_note'],
    icon = 'portal_pp',
    scale = 2,
    group = ns.groups.RITUAL_SITE,
    OnClick = function() WorldMapFrame:SetMapID(2585) end,
    clabel = L['change_map']
}) -- Curious Obelisk (always-visible entry)
