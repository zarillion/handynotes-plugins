-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map
local POI = ns.poi.POI
local Collectible = ns.node.Collectible
local Hexmask = ns.node.Hexmask
local Node = ns.node.Node
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement

-------------------------------------------------------------------------------
------------------------------------- MAPS ------------------------------------
-------------------------------------------------------------------------------

local map = Map({id = 2647, settings = false}) -- The Labyrinth of Kindo'Jan
local map2 = Map({id = 2671, settings = false}) -- The Labyrinth of Kindo'Jan (lower)

map.groups[#map.groups + 1] = ns.groups.DELVE_REWARDS
map.groups[ns.groups.DELVE_REWARDS] = true

-------------------------------------------------------------------------------
-------------------------------- STURDY CHESTS --------------------------------
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

local function AddSturdyChest(coordinate, quest, rlabel, note, m, requires)
    m = m or map
    m.nodes[coordinate] = SturdyChest({
        achievementID = 63717,
        quest = quest,
        note = note,
        rlabel = ns.status.Gray(rlabel),
        requires = requires
    })
end

local RENOWN = {
    [3] = {ns.requirement.Reputation(2836, 3, true)},
    [5] = {ns.requirement.Reputation(2836, 5, true)},
    [7] = {ns.requirement.Reputation(2836, 7, true)},
    [9] = {ns.requirement.Reputation(2836, 9, true)}
}

local function AddRenownChest(coordinate, quest, rlabel, level, note, m)
    AddSturdyChest(coordinate, quest, rlabel, note, m, RENOWN[level])
end

-- no requirement
AddSturdyChest(46886438, 97131, '#1')
AddSturdyChest(36966986, 98602, '#2')
AddSturdyChest(21776859, 98607, '#3')
AddSturdyChest(29987475, 98608, '#4')
AddSturdyChest(13853511, 98611, '#5')
AddSturdyChest(26444032, 98612, '#6')
AddSturdyChest(46091111, 98624, '#7')
AddSturdyChest(40582027, 98625, '#8')
AddSturdyChest(68243410, 98628, '#9')
AddSturdyChest(67892768, 98629, '#10')
AddSturdyChest(81315501, 98633, '#11')
AddSturdyChest(72396593, 98637, '#12')
AddSturdyChest(69257109, 98638, '#13')
AddSturdyChest(40754541, 98648, '#14', L['c_underneath_bridge'])
AddSturdyChest(47674001, 98649, '#15')
AddSturdyChest(45954837, 98650, '#16')
AddSturdyChest(86906330, 98634, '#17', L['in_water'])
-- Renown 3 (Akil'zon)
AddRenownChest(38768342, 98605, '#18', 3) -- 2
AddRenownChest(38038346, 98606, '#19', 3) -- 2
AddRenownChest(30561565, 98626, '#20', 3) -- 2
AddRenownChest(30481502, 98627, '#21', 3) -- 2
AddRenownChest(89007800, 98635, '#22', 3)
AddRenownChest(88507725, 98636, '#23', 3)
-- Renown 5 (Jan'alai)
AddRenownChest(27483301, 98613, '#24', 5) -- 2
AddRenownChest(27943455, 98615, '#25', 5) -- 2
-- Renown 7 (Nalorakk)
AddRenownChest(65404260, 98630, '#26', 7)
AddRenownChest(64704310, 98632, '#27', 7)
AddRenownChest(27308100, 98609, '#28', 7)
AddRenownChest(26808120, 98610, '#29', 7)
-- Renown 9 (Halazzi)
AddRenownChest(67355175, 98641, '#30', 9)
AddRenownChest(66305180, 98639, '#31', 9)
AddRenownChest(11705480, 98616, '#32', 9)
AddRenownChest(09305470, 98617, '#33', 9)
AddRenownChest(10505570, 98618, '#34', 9)
-- Flooded Chamber
AddSturdyChest(61654412, 98604, '#35', L['flooded_chamber'])
AddSturdyChest(61174348, 98614, '#36', L['flooded_chamber'])
AddSturdyChest(61534357, 98640, '#37', L['flooded_chamber'])
AddSturdyChest(61514472, 98619, '#38', L['flooded_chamber'])
AddSturdyChest(61164480, 98631, '#39', L['flooded_chamber'])
-- lower level (map 2671), shown on both maps
AddSturdyChest(28692312, 98620, '#40', '{area:17030}', map)
AddSturdyChest(28692312, 98620, '#40', '{area:17030}', map2)
AddSturdyChest(22142959, 98621, '#41', '{area:17030}', map)
AddSturdyChest(22142959, 98621, '#41', '{area:17030}', map2)
AddRenownChest(22441204, 98622, '#42', 5, '{area:17030}', map)
AddRenownChest(22441204, 98622, '#42', 5, '{area:17030}', map2)
AddRenownChest(22991163, 98623, '#43', 5, '{area:17030}', map)
AddRenownChest(22991163, 98623, '#43', 5, '{area:17030}', map2)
AddSturdyChest(21403670, 98603, '#44', '{area:17030}', map)
AddSturdyChest(21403670, 98603, '#44', '{area:17030}', map2)

-------------------------------------------------------------------------------
--------------------------------- LOCKED DOOR ---------------------------------
-------------------------------------------------------------------------------

local LockedDoor = Class('LockedDoor', Collectible, {
    icon = 134241,
    label = '{achievement:63718}',
    note = L['multiple_spawns'] .. '\n\n' .. L['locked_door_note'],
    scale = 1.5,
    group = ns.groups.TREASURE,
    requires = {ns.requirement.Reputation(2836, 2, true)},
    rewards = {
        Achievement({id = 63718, oneline = true}),
        Achievement({id = 63719, criteria = {id = 1, qty = true}})
    },
    pois = {
        POI({
            points = {18801820, 50308260, 56801780, 58502170, 88505150},
            color = 'Yellow'
        })
    }
}) -- Locked Door

map.nodes[84002500] = LockedDoor()

-------------------------------------------------------------------------------
------------------------------ MISLAID TREASURES ------------------------------
-------------------------------------------------------------------------------

local MislaidTreasure = Class('MislaidTreasure', Collectible, {
    icon = 7298691,
    label = L['mislaid_treasure'],
    note = L['multiple_spawns'],
    scale = 1.5,
    group = ns.groups.TREASURE,
    rewards = {
        Achievement({id = 63727, criteria = {id = 1, qty = true}}),
        Achievement({id = 63728, criteria = {id = 1, qty = true}})
    }
}) -- Mislaid Treasure

map.nodes[80002500] = MislaidTreasure()

-------------------------------------------------------------------------------
--------------------------------- MY LABYRINTH --------------------------------
-------------------------------------------------------------------------------

map.nodes[88002500] = Collectible({
    icon = 237388,
    label = '{achievement:63723}',
    scale = 1.5,
    group = ns.groups.TREASURE,
    rewards = {Achievement({id = 63723, criteria = {id = 1, qty = true}})}
}) -- My Labyrinth

-------------------------------------------------------------------------------
----------------------------------- HEXMASKS ----------------------------------
-------------------------------------------------------------------------------

local function AddHexmask(coordinate, label, m)
    m = m or map
    m.nodes[coordinate] = Hexmask({
        label = label,
        note = L['multiple_spawns'],
        rewards = {Achievement({id = 63720, oneline = true})}
    })
end

AddHexmask(18401777, L['thundering_hexmask'], map) -- lower level, shown on both maps
AddHexmask(18401777, L['thundering_hexmask'], map2)
AddHexmask(56791654, L['fiery_hexmask'])
AddHexmask(58482171, L['frozen_hexmask'])

-------------------------------------------------------------------------------
------------------------------- FLOODED CHAMBER -------------------------------
-------------------------------------------------------------------------------

map.nodes[56934409] = Node({
    label = L['flooded_chamber'],
    note = L['flooded_chamber_note'],
    icon = 'peg_bl',
    scale = 2,
    group = ns.groups.TREASURE
}) -- Underwater entrance

-------------------------------------------------------------------------------
------------------------------------ DOORS ------------------------------------
-------------------------------------------------------------------------------

local function AddDoor(m, target)
    m.nodes[31003240] = Node({
        label = '{area:17030}',
        icon = 'door_down',
        scale = 2,
        OnClick = function()
            if not InCombatLockdown() then
                C_Map.OpenWorldMap(target.id)
            end
        end,
        clabel = L['change_map']
    })
end

AddDoor(map, map2)
AddDoor(map2, map)

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
