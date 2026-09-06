-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map
local Hexmask = ns.node.Hexmask
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

local map = Map({id = 2647, settings = false}) -- The Labyrinth of Kindo'Jan

map.groups[#map.groups + 1] = ns.groups.DELVE_REWARDS
map.groups[ns.groups.DELVE_REWARDS] = true

local function AddAncientChest(coordinate, quest, rlabel, note)
    map.nodes[coordinate] = AncientChest({
        achievementID = 63717,
        quest = quest,
        note = note,
        rlabel = ns.status.Gray(rlabel)
    })
end

AddAncientChest(46886438, 97131, '#1')
AddAncientChest(36916986, 98602, '#2')
AddAncientChest(21776859, 98607, '#3')
AddAncientChest(29987475, 98608, '#4')
AddAncientChest(13853511, 98611, '#5')
AddAncientChest(26444032, 98612, '#6')
AddAncientChest(28692312, 98620, '#7')
AddAncientChest(22142959, 98621, '#8')
AddAncientChest(40582027, 98625, '#9')
AddAncientChest(68243410, 98628, '#10')
AddAncientChest(67892768, 98629, '#11')
AddAncientChest(72396593, 98637, '#12')
AddAncientChest(40754541, 98648, '#13', 'under the bridge')
AddAncientChest(47674001, 98649, '#14')
AddAncientChest(45954837, 98650, '#15')
AddAncientChest(38968406, 00000, '#16') -- TODO: replace with the quest ID
AddAncientChest(37798415, 00000, '#17') -- TODO: replace with the quest ID
AddAncientChest(26623258, 00000, '#18') -- TODO: replace with the quest ID
AddAncientChest(27663544, 00000, '#19') -- TODO: replace with the quest ID
AddAncientChest(65624202, 00000, '#20') -- TODO: replace with the quest ID
AddAncientChest(63714301, 00000, '#21') -- TODO: replace with the quest ID
AddAncientChest(66005161, 00000, '#22') -- TODO: replace with the quest ID
AddAncientChest(67435174, 00000, '#23') -- TODO: replace with the quest ID

-- Mislaid Oddities for Treasures Upon Treasures (63727): Random spawns
-- 22362295 - Mislaid Oddity
-- 62872956 - Mislaid Oddity
-- 64912570 - Mislaid Oddity
-- 58812572 - Mislaid Oddity
-- 31556581 - Mislaid Oddity
-- 31364538 - Mislaid Oddity
-- 41576995 - Mislaid Oddity
-- 37727541 - Mislaid Oddity
-- 58126731 - Mislaid Oddity

local function AddHexmask(coordinate, label)
    map.nodes[coordinate] = Hexmask({
        label = label,
        rewards = {
            Achievement({id = 63720, criteria = 1, oneline = true})
        }
    })
end

AddHexmask(18401777, L['thundering_hexmask'])
AddHexmask(56791654, L['fiery_hexmask'])
AddHexmask(58482171, L['frozen_hexmask'])

-------------------------------------------------------------------------------
-------------------------------- DELVE REWARDS --------------------------------
-------------------------------------------------------------------------------

local DELVE_REWARDS = {
    ['labyrinth_of_kindo_jan'] = {
        Achievement({id = 63727, oneline = true}), -- Treasures Upon Treasures
        Achievement({id = 63720, oneline = true}), -- Happy Hexmask Collector
        Achievement({id = 63717, oneline = true}) -- Kindo'jan's Labyrinth Discoveries
    }
}

local DELVE_AREA_POIS = {
    [9035] = DELVE_REWARDS['labyrinth_of_kindo_jan'],
    [9036] = DELVE_REWARDS['labyrinth_of_kindo_jan'],
    [9037] = DELVE_REWARDS['labyrinth_of_kindo_jan']
}

ns.hooks.delve.Add(ns.groups.DELVE_REWARDS, DELVE_AREA_POIS)
