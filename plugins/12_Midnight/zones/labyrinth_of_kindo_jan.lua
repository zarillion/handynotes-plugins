-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement

-------------------------------------------------------------------------------

local AncientChestCriteria = {
    id = 1,
    qty = true,
    suffix = L['ancient_chest_suffix']
}

local AncientChest = Class('AncientChest', Treasure, {
    icon = 'chest_yw',
    label = L['ancient_chest'],
    scale = 1.25,
    getters = {
        rewards = function(self)
            return {
                Achievement({
                    id = self.achievementID,
                    criteria = AncientChestCriteria
                })
            }
        end
    }
}) -- Ancient Chest

local map = Map({id = 2647, settings = true}) -- The Labyrinth of Kindo'Jan

map.groups[#map.groups + 1] = ns.groups.DELVE_REWARDS
map.groups[ns.groups.DELVE_REWARDS] = true

map.nodes[21746863] = AncientChest({
    achievementID = 63717,
    quest = 98607,
    rlabel = ns.status.Gray('#1')
})

map.nodes[37006963] = AncientChest({
    achievementID = 63717,
    quest = 98602,
    rlabel = ns.status.Gray('#2')
})

map.nodes[46886438] = AncientChest({
    achievementID = 63717,
    quest = 97131,
    rlabel = ns.status.Gray('#3')
})

map.nodes[38968406] = AncientChest({
    achievementID = 63717,
    quest = 00000, -- TODO: replace with the quest ID
    rlabel = ns.status.Gray('#4')
})

map.nodes[37798415] = AncientChest({
    achievementID = 63717,
    quest = 00000, -- TODO: replace with the quest ID
    rlabel = ns.status.Gray('#5')
})

-- Placeholder positions for the remaining chests until their coordinates are available.
for index = 6, 38 do
    local x = 10 + ((index - 1) % 10) * 8
    local y = 10 + math.floor((index - 1) / 10) * 20
    local coordinate = x * 1000000 + y * 100

    map.nodes[coordinate] = AncientChest({
        achievementID = 63717,
        quest = 00000, -- TODO: replace with the quest ID
        rlabel = ns.status.Gray('#' .. index)
    })
end

-- Placeholder positions for the ten Mislaid Oddities.
for index = 1, 10 do
    local x = 15 + ((index - 1) % 5) * 16
    local y = 15 + math.floor((index - 1) / 5) * 30
    local coordinate = x * 1000000 + y * 100

    map.nodes[coordinate] = Treasure({
        label = L['mislaid_oddity'],
        rlabel = ns.status.Gray('#' .. index)
    })
end

-------------------------------------------------------------------------------
-------------------------------- DELVE REWARDS --------------------------------
-------------------------------------------------------------------------------

local DELVE_REWARDS = {
    ['labyrinth_of_kindo_jan'] = {
        Achievement({id = 63727, oneline = true}) -- Treasures Upon Treasures
    }
}

local DELVE_AREA_POIS = {
    [9035] = DELVE_REWARDS['labyrinth_of_kindo_jan'],
    [9036] = DELVE_REWARDS['labyrinth_of_kindo_jan'],
    [9037] = DELVE_REWARDS['labyrinth_of_kindo_jan']
}

ns.hooks.delve.Add(ns.groups.DELVE_REWARDS, DELVE_AREA_POIS)
