-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible
local Rare = ns.node.Rare
local Treasure = ns.node.Treasure
local Vendor = ns.node.Vendor

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Mount = ns.reward.Mount
-- local Pet = ns.reward.Pet
local Transmog = ns.reward.Transmog
local Toy = ns.reward.Toy

-- local Path = ns.poi.Path

local Green = ns.status.Green
local Red = ns.status.Red

local ItemStatus = ns.tooltip.ItemStatus
local QuestStatus = ns.tooltip.QuestStatus

-------------------------------------------------------------------------------

local map = Map({id = 2369, settings = true})
local tfv = Map({id = 2375, settings = false}) -- The Forgotten Vault

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

-- Achievement({
--     id = 41046,
--     criteria = {
--         70791, -- Nerathor
--         70792, -- Gravesludge
--         70793, -- Stalagnarok
--         70794, -- Bloodbrine
--         70795, -- Shardsong
--         70798, -- Gunnlod the Sea-Drinker
--         70799, -- Snacker
--         70801, -- Coralweaver Calliso
--         70802, -- Siris the Sea Scorpion
--         70803, -- Chef Chum Platter
--         70804, -- Plank-Master Bluebelly
--     }
-- }) -- Clean Up on Isle Siren

map.nodes[53283383] = Rare({
    id = 228601,
    quest = nil,
    rewards = {Achievement({id = 41046, criteria = 70796})},
    vignette = 6531
}) -- Ghostmaker

map.nodes[34151392] = Rare({
    id = 228155,
    quest = nil,
    -- pois = {
    --     Path({}) -- Flight path
    -- },
    rewards = {Achievement({id = 41046, criteria = 70797})},
    vignette = 6529
}) -- Grimgull

map.nodes[46787812] = Rare({
    id = 228151,
    quest = nil,
    rewards = {Achievement({id = 41046, criteria = 70800})},
    vignette = 6526
}) -- Wreckwater

map.nodes[32457405] = Rare({
    id = 227545,
    quest = nil,
    rewards = {Achievement({id = 41046, criteria = 70805})},
    vignette = 6525
}) -- Ikir the Flotsurge

map.nodes[63948729] = Rare({
    id = 230137,
    quest = nil,
    rewards = {Achievement({id = 41046, criteria = 70806})},
    vignette = 6590
}) -- Asbjorn the Bloodsoaked

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[67557351] = Treasure({
    location = L['in_small_cave'], -- bejewelled puzzle but I only swap one purple gem and it solved
    rewards = {
        Transmog({item = 229026, type = L['leather']}) -- Earthen Deckhand's Bindings
    }
}) -- Unsolved Amethyst Runelock (Rune-Sealed Coffer on minimap)

-------------------------------------------------------------------------------
----------------------------------- VENDOR ------------------------------------
-------------------------------------------------------------------------------

map.nodes[69984855] = Vendor({
    id = 234390,
    note = L['soweezi_note'],
    rewards = {
        Mount({item = 233058, id = 2333, count = 10000}), -- Soweezi's Vintage Waveshredder
        Toy({item = 234473, count = 750}) -- Soweezi's Comfy Lawn Chair
        -- Pet({item = 234395, id = nil, count = 750}) -- Skitterbite
    }
}) -- Soweezi

-------------------------------------------------------------------------------
-------------------------------- MISCELLEANOUS --------------------------------
-------------------------------------------------------------------------------

---------------------- MOUNT: THRAYIR, EYES OF THE SIREN ----------------------

local Thrayir = Class('Thrayir', Collectible, {
    icon = 897087,
    label = '{item:232639}',
    parent = map,
    requires = {
        ns.requirement.Spell(458069), -- Seafury Tempest
        ns.requirement.Item(232571), -- whirling Runekey
        ns.requirement.Item(232572), -- Torrential Runekey
        ns.requirement.Item(232573), -- Thunderous Runekey
        ns.requirement.Item(232569), -- Cyclonic Runekey
        ns.requirement.Item(232570) -- Turbulent Runekey
    },
    rewards = {
        Mount({item = 232639, id = 2322}) -- Thrayir, Eyes of the Siren
    }
}) -- Thrayir, Eyes of the Siren

function Thrayir.getters:note()
    local note = L['thrayir_note_start']
    note = note .. ItemStatus(232571, 1, L['whirling_runekey_note']) -- whirling Runekey
    note = note .. ItemStatus(232572, 1, L['torrential_runekey_note']) -- Torrential Runekey
    note = note .. ItemStatus(232573, 1, L['thunderous_runekey_note']) -- Thunderous Runekey
    note = note .. ItemStatus(232569, 1, L['cyclonic_runekey_note']) -- Cyclonic Runekey
    note = note .. ItemStatus(232570, 1, L['turbulent_runekey_note']) -- Turbulent Runekey
    return note
end

tfv.nodes[72506132] = Thrayir()

local TurbulentFragmentItem = Class('TurbulentFragment', Item, {item = 234327})

function TurbulentFragmentItem:GetStatus()
    local count = C_Item.GetItemCount(self.item, true)
    return count >= 3 and Green(count .. '/3') or Red(count .. '/3')
end

local TurbulentFragment = Class('TurbulentFragment', Collectible, {
    icon = 1385913,
    label = '{item:234327}',
    requires = ns.requirement.Spell(458069), -- Seafury Tempest
    rewards = {TurbulentFragmentItem()}
}) -- Turbulent Fragment

map.nodes[38195178] = TurbulentFragment({location = L['turbulent_fragment_a']})
map.nodes[67087844] = TurbulentFragment({location = L['turbulent_fragment_b']})
map.nodes[52393859] = TurbulentFragment({location = L['turbulent_fragment_c']})

------------------------ MOUNT: PRISTMATIC SNAPDRAGON -------------------------

local PristmaticSnapdragon = Class('PristmaticSnapdragon', Collectible, {
    icon = 2027958,
    label = '{npc:235216}',
    quest = {
        86482, -- ![A Lifeline]
        86486, -- ![Hungry, Hungry Snapdragon] (daily)
        86486, -- ![Hungry, Hungry Snapdragon] (daily)
        86483, -- ![Snap To It]
        86486, -- ![Hungry, Hungry Snapdragon] (daily)
        86486, -- ![Hungry, Hungry Snapdragon] (daily)
        86484, -- ![Temper Like A Tempest]
        86486 -- ![Hungry, Hungry Snapdragon] (daily)
    },
    rewards = {
        Mount({item = 233489, id = 2469}) -- Pristmatic Snapdragon
    }
}) -- Pristmatic Snapdragon

function PristmaticSnapdragon.getters:label()
    if C_QuestLog.IsQuestFlaggedCompleted(self.quest[1]) then
        return '{npc:235237}' -- Growing Snapdragon Runt
    end
    if C_QuestLog.IsQuestFlaggedCompleted(self.quest[4]) then
        return '{npc:235243}' -- Maturing Pristmatic Snapdragon
    end
    if C_QuestLog.IsQuestFlaggedCompleted(self.quest[7]) then
        return '{npc:235250}' -- Mature Pristmatic Snapdragon
    end
    return '{npc:235216}' -- Starving Snapdragon Runt
end

function PristmaticSnapdragon.getters:note()
    local note = L['pristmatic_snapdragon_note_start'] .. '\n'
    for num, quest in ipairs(self.quest) do
        note = note .. QuestStatus(quest, num, '{quest:' .. quest .. '}')
    end
    return note
end

map.nodes[70003000] = PristmaticSnapdragon()
