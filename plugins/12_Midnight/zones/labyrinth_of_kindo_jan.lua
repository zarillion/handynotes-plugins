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

local SturdyChest = Class('SturdyChest', Treasure, {
    icon = 'chest_yw',
    label = L['sturdy_chest'],
    scale = 1.25,
    getters = {
        rewards = function(self)
            return {
                Achievement({
                    id = self.achievementID,
                    criteria = {
                        id = 1,
                        qty = true,
                        suffix = L['sturdy_chest_suffix']
                    }
                })
            }
        end
    }
}) -- Sturdy Chest

local MislaidTreasure = Class('MislaidTreasure', Treasure, {
    icon = 7298691,
    label = L['mislaid_treasure'],
    note = L['multiple_spawns'],
    rewards = {
        Achievement({id = 63727, criteria = {id = 1, qty = true}}),
        Achievement({id = 63728, criteria = {id = 1, qty = true}})
    }
}) -- Mislaid Treasure

local map = Map({id = 2647, settings = false}) -- The Labyrinth of Kindo'Jan

map.groups[#map.groups + 1] = ns.groups.DELVE_REWARDS
map.groups[ns.groups.DELVE_REWARDS] = true

local function AddSturdyChest(coordinate, quest, rlabel, note)
    map.nodes[coordinate] = SturdyChest({
        achievementID = 63717,
        quest = quest,
        note = note,
        rlabel = ns.status.Gray(rlabel)
    })
end

AddSturdyChest(46886438, 97131, '#1')
AddSturdyChest(36966986, 98602, '#2')
AddSturdyChest(61654412, 98604, '#3') -- Entrance: 56934409
AddSturdyChest(38768342, 98605, '#4') -- 2
AddSturdyChest(38038346, 98606, '#5') -- 2
AddSturdyChest(21776859, 98607, '#6')
AddSturdyChest(29987475, 98608, '#7')
AddSturdyChest(13853511, 98611, '#8')
AddSturdyChest(26444032, 98612, '#9')
AddSturdyChest(27483301, 98613, '#10') -- 2
AddSturdyChest(61174348, 98614, '#11') -- Entrance: 56934409
AddSturdyChest(61534357, 98640, '#12') -- Entrance: 56934409
AddSturdyChest(27943455, 98615, '#13') -- 2
AddSturdyChest(61514472, 98619, '#14') -- Entrance: 56934409
AddSturdyChest(28692312, 98620, '#15')
AddSturdyChest(22142959, 98621, '#16')
AddSturdyChest(22441204, 98622, '#17') -- 2
AddSturdyChest(22991163, 98623, '#18') -- 2
AddSturdyChest(46091111, 98624, '#19')
AddSturdyChest(40582027, 98625, '#20')
AddSturdyChest(30561565, 98626, '#21') -- 2
AddSturdyChest(30481502, 98627, '#22') -- 2
AddSturdyChest(68243410, 98628, '#23')
AddSturdyChest(67892768, 98629, '#24')
AddSturdyChest(61164480, 98631, '#25') -- Entrance: 56934409
AddSturdyChest(81315501, 98633, '#26')
AddSturdyChest(72396593, 98637, '#27')
AddSturdyChest(69257109, 98638, '#28')
AddSturdyChest(40754541, 98648, '#29', L['c_underneath_bridge'])
AddSturdyChest(47674001, 98649, '#30')
AddSturdyChest(45954837, 98650, '#31')
AddSturdyChest(65404260, 98630, '#32')
AddSturdyChest(64704310, 98632, '#33')
AddSturdyChest(67355175, 98641, '#34')
AddSturdyChest(66305180, 98639, '#35')
AddSturdyChest(86906330, 98634, '#36', L['in_water'])
AddSturdyChest(89007800, 98635, '#37')
AddSturdyChest(88507725, 98636, '#38')
AddSturdyChest(27308100, 98609, '#39')
AddSturdyChest(26808120, 98610, '#40')
AddSturdyChest(11705480, 98616, '#41')
AddSturdyChest(09305470, 98617, '#42')
AddSturdyChest(10505570, 98618, '#43')

-- red --akilion -2
--
--
-- purple - halazzi - 5

-- Mislaid Treasures for Treasures Upon Treasures (63727): Random spawns
-- 22362295 - Mislaid Treasure
-- 62872956 - Mislaid Treasure
-- 64912570 - Mislaid Treasure
-- 58812572 - Mislaid Treasure
-- 31556581 - Mislaid Treasure
-- 31364538 - Mislaid Treasure
-- 41576995 - Mislaid Treasure
-- 37727541 - Mislaid Treasure
-- 58126731 - Mislaid Treasure
-- 25866169 - Mislaid Treasure
-- 37502166 - Mislaid Treasure
-- 39341333 - Mislaid Treasure
-- 57302124 - Mislaid Treasure
-- 59032004 - Mislaid Treasure
-- 59832070 - Mislaid Treasure
map.nodes[80002500] = MislaidTreasure()

local function AddHexmask(coordinate, label)
    map.nodes[coordinate] = Hexmask({
        label = label,
        rewards = {Achievement({id = 63720, oneline = true})}
    })
end

AddHexmask(18401777, L['thundering_hexmask'])
AddHexmask(56791654, L['fiery_hexmask'])
AddHexmask(58482171, L['frozen_hexmask'])
-- 50348261 (frost + fire)

-------------------------------------------------------------------------------
-------------------------------- DELVE REWARDS --------------------------------
-------------------------------------------------------------------------------

local DELVE_REWARDS = {
    ['labyrinth_of_kindo_jan'] = {
        Achievement({id = 63717, criteria = {id = 1, qty = true}}), -- Kindo'jan's Labyrinth Discoveries
        Achievement({id = 63728, criteria = {id = 1, qty = true}}), -- A Few More Can't Hurt
        Achievement({id = 63723, criteria = {id = 1, qty = true}}), -- My Labyrinth
        Achievement({id = 63719, criteria = {id = 1, qty = true}}), -- Lock and Key Master
        Achievement({id = 63721, oneline = true}), -- The Labyrinth of Kindo'Jan
        Achievement({id = 63722, oneline = true}), -- Who's Labyrinth
        Achievement({id = 63720, oneline = true}) -- Happy Hexmask Collector
    }
}

local DELVE_AREA_POIS = {
    [9035] = DELVE_REWARDS['labyrinth_of_kindo_jan'],
    [9036] = DELVE_REWARDS['labyrinth_of_kindo_jan'],
    [9037] = DELVE_REWARDS['labyrinth_of_kindo_jan']
}

ns.hooks.delve.Add(ns.groups.DELVE_REWARDS, DELVE_AREA_POIS)
