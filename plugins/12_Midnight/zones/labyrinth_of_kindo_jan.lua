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

local AncientChest = Class('AncientChest', Treasure, {
    icon = 'chest_yw',
    label = L['ancient_chest'],
    scale = 1.25,
    getters = {
        rewards = function(self)
            return {
                Achievement({
                    id = self.achievementID,
                    criteria = {
                        id = 1,
                        qty = true,
                        suffix = L['ancient_chest_suffix']
                    }
                })
            }
        end
    }
}) -- Ancient Chest

local MislaidOddity = Class('MislaidOddity', Treasure, {
    icon = 7298691,
    label = L['mislaid_oddity'],
    note = L['multiple_spawns'],
    rewards = {
        Achievement({id = 63727, criteria = {id = 1, qty = true}}),
        Achievement({id = 63728, criteria = {id = 1, qty = true}})
    }
}) -- Mislaid Oddity

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
AddAncientChest(36966986, 98602, '#2')
AddAncientChest(61654412, 98604, '#3') -- Entrance: 56934409
AddAncientChest(38768342, 98605, '#4') -- 2
AddAncientChest(38038346, 98606, '#5') -- 2
AddAncientChest(21776859, 98607, '#6')
AddAncientChest(29987475, 98608, '#7')
AddAncientChest(13853511, 98611, '#8')
AddAncientChest(26444032, 98612, '#9')
AddAncientChest(27483301, 98613, '#10') -- 2
AddAncientChest(61174348, 98614, '#11') -- Entrance: 56934409
AddAncientChest(61534357, 98640, '#12') -- Entrance: 56934409
AddAncientChest(27943455, 98615, '#13') -- 2
AddAncientChest(61514472, 98619, '#14') -- Entrance: 56934409
AddAncientChest(28692312, 98620, '#15')
AddAncientChest(22142959, 98621, '#16')
AddAncientChest(22441204, 98622, '#17') -- 2
AddAncientChest(22991163, 98623, '#18') -- 2
AddAncientChest(46091111, 98624, '#19')
AddAncientChest(40582027, 98625, '#20')
AddAncientChest(30561565, 98626, '#21') -- 2
AddAncientChest(30481502, 98627, '#22') -- 2
AddAncientChest(68243410, 98628, '#23')
AddAncientChest(67892768, 98629, '#24')
AddAncientChest(61164480, 98631, '#25') -- Entrance: 56934409
AddAncientChest(81315501, 98633, '#26')
AddAncientChest(72396593, 98637, '#27')
AddAncientChest(69257109, 98638, '#28')
AddAncientChest(40754541, 98648, '#29', L['c_underneath_bridge'])
AddAncientChest(47674001, 98649, '#30')
AddAncientChest(45954837, 98650, '#31')
AddAncientChest(65404260, 98630, '#32')
AddAncientChest(64704310, 98632, '#33')
AddAncientChest(67355175, 98641, '#34')
AddAncientChest(66305180, 98639, '#35')
AddAncientChest(86906330, 98634, '#36', L['in_water'])
AddAncientChest(89007800, 98635, '#37')
AddAncientChest(88507725, 98636, '#38')
AddAncientChest(27308100, 98609, '#39')
AddAncientChest(26808120, 98610, '#40')
AddAncientChest(11705480, 98616, '#41')
AddAncientChest(09305470, 98617, '#42')
AddAncientChest(10505570, 98618, '#43')

-- red --akilion -2
--
--
-- purple - halazzi - 5

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
-- 25866169 - Mislaid Oddity
-- 37502166 - Mislaid Oddity
-- 39341333 - Mislaid Oddity
-- 57302124 - Mislaid Oddity
-- 59032004 - Mislaid Oddity
-- 59832070 - Mislaid Oddity
map.nodes[80002500] = MislaidOddity()

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
