-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible

local Achievement = ns.reward.Achievement

local POI = ns.poi.POI
local Path = ns.poi.Path

-------------------------------------------------------------------------------

local kvr = Map({id = 2681, settings = false}) -- Kriegval's Rest
local tuk = Map({id = 2690, settings = false}) -- The Underkeep
local ecm = Map({id = 2269, settings = false}) -- Earthcrawl Mines
local mmc = Map({id = 2679, settings = false}) -- Mycomancer Cavern
local tdp = Map({id = 2684, settings = false}) -- The Dread Pit
local tww = Map({id = 2683, settings = false}) -- The Waterworks
local tsw = Map({id = 2688, settings = false}) -- The Sprial Weave
local tsh = Map({id = 2687, settings = false}) -- The Sinkhole
local fol = Map({id = 2664, settings = false}) -- Fungal Folly
local ski = Map({id = 2685, settings = false}) -- Skittering Breach
local nfs = Map({id = 2277, settings = false}) -- Nightfall Sanctum
local tra = Map({id = 2689, settings = false}) -- Tak-Rethan Abyss

-------------------------------------------------------------------------------

-- THESE WILL EVENTUALLY BE MOVED TO THE ENGLISH LOCALIZATION FILE ONCE
-- EVERYTHING HAS BEEN CORRECTLY FIGURED OUT. THEY JUST LIVE HERE FOR EASY
-- ACCESS WHEN UPDATING THE NODES.

-- LuaFormatter off
L['options_icons_sturdy_chest'] = '{achievement:40506}'
L['options_icons_sturdy_chest_desc'] = 'Display {object:Sturdy Chest} locations for {achievement:40506}.'

L['sturdy_chest'] = 'Sturdy Chest'
L['sturdy_chest_suffix'] = 'Sturdy Chest found'
L['sturdy_chest_disclaimer'] = '{note:May not be available during the current story variant in this delve.}'

-- THESE LOCATION NOTES WILL PROBABLY BE SHARED. NO REASON TO TRANSLATE A UNIQUE
-- LOCATION NOTE FOR EACH STURDY CHEST NODE. I JUST DON'T KNOW WHICH ALL WILL BE
-- USED YET.
L['on_the_plant'] = 'On the plant.'

-- THESE LOCATION NOTES WILL PROBABLY BE UNIQUE AND USED ONLY ONCE.
L['sturdy_chest_ship_jump'] = 'Jump down from the skyship.'
L['sturdy_chest_crane'] = 'On the crane. Jump from the upper level.'

-- LuaFormatter on

-- THIS NEEDS TO BE MOVED TO COMMON.LUA ONCE ALL NODES ARE FINALIZED.
ns.groups.STURDY_CHEST = ns.Group('sturdy_chest', 4203076, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 40506
})

-------------------------------------------------------------------------------

local SturdyChest = Class('SturdyChest', Collectible, {
    group = ns.groups.STURDY_CHEST,
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

-------------------------------------------------------------------------------
------------------------------- KRIEGVAL'S REST -------------------------------
-------------------------------------------------------------------------------

kvr.nodes[46472000] = SturdyChest({
    achievementID = 40807,
    -- location = nil,
    -- quest = nil,
    rlabel = ns.status.Gray('1/4')
}) -- Sturdy Chest 1

kvr.nodes[62105315] = SturdyChest({
    achievementID = 40807,
    -- location = nil,
    -- quest = nil,
    rlabel = ns.status.Gray('2/4')
}) -- Sturdy Chest 2

kvr.nodes[74406953] = SturdyChest({
    achievementID = 40807,
    -- location = nil,
    -- quest = nil,
    rlabel = ns.status.Gray('3/4')
}) -- Sturdy Chest 3

kvr.nodes[69508531] = SturdyChest({
    achievementID = 40807,
    -- location = nil,
    -- quest = nil,
    rlabel = ns.status.Gray('4/4')
}) -- Sturdy Chest 4

-------------------------------------------------------------------------------
-------------------------------- THE UNDERKEEP --------------------------------
-------------------------------------------------------------------------------

tuk.nodes[36343442] = SturdyChest({
    achievementID = 40815,
    -- location = nil,
    -- quest = nil,
    rlabel = ns.status.Gray('1/4')
}) -- Sturdy Chest 1

tuk.nodes[63723223] = SturdyChest({
    achievementID = 40815,
    -- location = nil,
    -- quest = nil,
    rlabel = ns.status.Gray('2/4')
}) -- Sturdy Chest 2

tuk.nodes[38946882] = SturdyChest({
    achievementID = 40815,
    -- location = nil,
    -- quest = nil,
    rlabel = ns.status.Gray('3/4')
}) -- Sturdy Chest 3

tuk.nodes[72128833] = SturdyChest({
    achievementID = 40815,
    -- location = nil,
    -- quest = nil,
    rlabel = ns.status.Gray('4/4')
}) -- Sturdy Chest 4

-------------------------------------------------------------------------------
------------------------------ EARTHCRAWL MINES -------------------------------
-------------------------------------------------------------------------------

ecm.nodes[45341525] = SturdyChest({
    achievementID = 40806,
    quest = 83440
}) -- Sturdy Chest 1

ecm.nodes[43572716] = SturdyChest({
    achievementID = 40806,
    quest = 83438
}) -- Sturdy Chest 2

ecm.nodes[32743966] = SturdyChest({
    achievementID = 40806,
    quest = nil -- TODO: I MISSED THIS QUEST
}) -- Sturdy Chest 3

ecm.nodes[36163308] = SturdyChest({
    achievementID = 40806,
    location = L['sturdy_chest_crane'],
    quest = 83441,
    pois = {
        POI({34523427}), -- jump point
        Path({34523427, 35393357}) -- jump path
    }
}) -- Sturdy Chest 4

ecm.nodes[53558214] = SturdyChest({
    achievementID = 40806,
    quest = 83438
}) -- Sturdy Chest 5

-------------------------------------------------------------------------------
------------------------------ MYOMANCER CAVERN -------------------------------
-------------------------------------------------------------------------------

mmc.nodes[49662155] = SturdyChest({
    achievementID = 40808,
    -- location = nil,
    -- quest = nil,
    rlabel = ns.status.Gray('1/4')
}) -- Sturdy Chest 1

mmc.nodes[63224544] = SturdyChest({
    achievementID = 40808,
    -- location = nil,
    -- quest = nil,
    rlabel = ns.status.Gray('2/4')
}) -- Sturdy Chest 2

mmc.nodes[68914096] = SturdyChest({
    achievementID = 40808,
    -- location = nil,
    -- quest = nil,
    rlabel = ns.status.Gray('3/4')
}) -- Sturdy Chest 3

mmc.nodes[40666161] = SturdyChest({
    achievementID = 40808,
    -- location = nil,
    -- quest = nil,
    rlabel = ns.status.Gray('4/4')
}) -- Sturdy Chest 4

-------------------------------------------------------------------------------
-------------------------------- THE DREAD PIT --------------------------------
-------------------------------------------------------------------------------

tdp.nodes[40594578] = SturdyChest({
    achievementID = 40812,
    -- location = nil,
    -- quest = nil,
    rlabel = ns.status.Gray('1/4')
}) -- Sturdy Chest 1

tdp.nodes[57305610] = SturdyChest({
    achievementID = 40812,
    -- location = nil,
    -- quest = nil,
    rlabel = ns.status.Gray('2/4')
}) -- Sturdy Chest 2

tdp.nodes[58322779] = SturdyChest({
    achievementID = 40812,
    -- location = nil,
    -- quest = nil,
    rlabel = ns.status.Gray('3/4')
}) -- Sturdy Chest 3

tdp.nodes[36061721] = SturdyChest({
    achievementID = 40812,
    -- location = nil,
    -- quest = nil,
    rlabel = ns.status.Gray('4/4')
}) -- Sturdy Chest 4

-------------------------------------------------------------------------------
------------------------------- THE WATERWORKS --------------------------------
-------------------------------------------------------------------------------

tww.nodes[49962425] = SturdyChest({
    achievementID = 40816,
    -- location = nil,
    -- quest = nil,
    rlabel = ns.status.Gray('1/4')
}) -- Sturdy Chest 1

tww.nodes[44453848] = SturdyChest({
    achievementID = 40816,
    -- location = nil,
    -- quest = nil,
    rlabel = ns.status.Gray('2/4')
}) -- Sturdy Chest 2

tww.nodes[47855336] = SturdyChest({
    achievementID = 40816,
    -- location = nil,
    -- quest = nil,
    rlabel = ns.status.Gray('3/4')
}) -- Sturdy Chest 3

tww.nodes[49647937] = SturdyChest({
    achievementID = 40816,
    -- location = nil,
    -- quest = nil,
    rlabel = ns.status.Gray('4/4')
}) -- Sturdy Chest 4

-------------------------------------------------------------------------------
------------------------------ THE SPIRAL WEAVE ------------------------------
-------------------------------------------------------------------------------

tsw.nodes[50334578] = SturdyChest({
    achievementID = 40814,
    -- location = nil,
    -- quest = nil,
    rlabel = ns.status.Gray('1/4')
}) -- Sturdy Chest 1

tsw.nodes[36421114] = SturdyChest({
    achievementID = 40814,
    -- location = nil,
    -- quest = nil,
    rlabel = ns.status.Gray('2/4')
}) -- Sturdy Chest 2

tsw.nodes[46074625] = SturdyChest({
    achievementID = 40814,
    -- location = nil,
    -- quest = nil,
    rlabel = ns.status.Gray('3/4')
}) -- Sturdy Chest 3

tsw.nodes[42404777] = SturdyChest({
    achievementID = 40814,
    -- location = nil,
    -- quest = nil,
    rlabel = ns.status.Gray('4/4')
}) -- Sturdy Chest 4

-------------------------------------------------------------------------------
-------------------------------- THE SINKHOLE ---------------------------------
-------------------------------------------------------------------------------

tsh.nodes[52331421] = SturdyChest({
    achievementID = 40813,
    -- location = nil,
    -- quest = nil,
    rlabel = ns.status.Gray('1/4')
}) -- Sturdy Chest 1

tsh.nodes[43156082] = SturdyChest({
    achievementID = 40813,
    -- location = nil,
    -- quest = nil,
    rlabel = ns.status.Gray('2/4')
}) -- Sturdy Chest 2

tsh.nodes[72626093] = SturdyChest({
    achievementID = 40813,
    -- location = nil,
    -- quest = nil,
    rlabel = ns.status.Gray('3/4')
}) -- Sturdy Chest 3

tsh.nodes[48646947] = SturdyChest({
    achievementID = 40813,
    -- location = nil,
    -- quest = nil,
    rlabel = ns.status.Gray('4/4')
}) -- Sturdy Chest 4

-------------------------------------------------------------------------------
-------------------------------- FUNGAL FOLLY ---------------------------------
-------------------------------------------------------------------------------

fol.nodes[58384691] = SturdyChest({
    achievementID = 40803,
    -- location = nil,
    -- quest = nil,
    rlabel = ns.status.Gray('1/5')
}) -- Sturdy Chest 1

fol.nodes[32977397] = SturdyChest({
    achievementID = 40803,
    -- location = nil,
    -- quest = nil,
    rlabel = ns.status.Gray('2/5')
}) -- Sturdy Chest 2

fol.nodes[34416533] = SturdyChest({
    achievementID = 40803,
    -- location = nil,
    -- quest = nil,
    rlabel = ns.status.Gray('3/5')
}) -- Sturdy Chest 3

fol.nodes[49343576] = SturdyChest({
    achievementID = 40803,
    -- location = nil,
    -- quest = nil,
    rlabel = ns.status.Gray('4/5')
}) -- Sturdy Chest 4

fol.nodes[35642007] = SturdyChest({
    achievementID = 40803,
    -- location = nil,
    -- quest = nil,
    rlabel = ns.status.Gray('5/5')
}) -- Sturdy Chest 5

-------------------------------------------------------------------------------
------------------------------ SKITTERING BREACH ------------------------------
-------------------------------------------------------------------------------

ski.nodes[50956518] = SturdyChest({
    achievementID = 40810,
    -- location = nil,
    -- quest = nil,
    rlabel = ns.status.Gray('1/4')
}) -- Sturdy Chest 1

ski.nodes[26952720] = SturdyChest({
    achievementID = 40810,
    -- location = nil,
    -- quest = nil,
    rlabel = ns.status.Gray('2/4')
}) -- Sturdy Chest 2

ski.nodes[55862416] = SturdyChest({
    achievementID = 40810,
    -- location = nil,
    -- quest = nil,
    rlabel = ns.status.Gray('3/4')
}) -- Sturdy Chest 3

ski.nodes[66331480] = SturdyChest({
    achievementID = 40810,
    -- location = nil,
    -- quest = nil,
    rlabel = ns.status.Gray('4/4')
}) -- Sturdy Chest 4

-------------------------------------------------------------------------------
------------------------------ NIGHTFALL SANCTUM ------------------------------
-------------------------------------------------------------------------------

nfs.nodes[70584444] = SturdyChest({
    achievementID = 40809,
    location = L['on_the_plant'],
    quest = 83670
}) -- Sturdy Chest 1

nfs.nodes[51905539] = SturdyChest({
    achievementID = 40809,
    location = L['in_water'],
    quest = nil ------------------------------------ TODO: I MISSED THIS QUEST
}) -- Sturdy Chest 2

nfs.nodes[38887406] = SturdyChest({
    achievementID = 40809,
    location = L['in_building'],
    quest = 83454
}) -- Sturdy Chest 3

nfs.nodes[40203704] = SturdyChest({
    achievementID = 40809,
    location = L['sturdy_chest_ship_jump'],
    quest = 83701,
    pois = {
        POI({38554822}), -- jump point
        Path({38554822, 38494360}) -- jump path
    }
}) -- Sturdy Chest 4

-------------------------------------------------------------------------------
------------------------------ TAK-RETHAN ABYSS -------------------------------
-------------------------------------------------------------------------------

tra.nodes[59862502] = SturdyChest({
    achievementID = 40811,
    -- location = nil,
    -- quest = nil,
    rlabel = ns.status.Gray('1/4')
}) -- Sturdy Chest 1

tra.nodes[64814880] = SturdyChest({
    achievementID = 40811,
    -- location = nil,
    -- quest = nil,
    rlabel = ns.status.Gray('2/4')
}) -- Sturdy Chest 2

tra.nodes[44954986] = SturdyChest({
    achievementID = 40811,
    -- location = nil,
    -- quest = nil,
    rlabel = ns.status.Gray('3/4')
}) -- Sturdy Chest 3

tra.nodes[35315839] = SturdyChest({
    achievementID = 40811,
    -- location = nil,
    -- quest = nil,
    rlabel = ns.status.Gray('4/4')
}) -- Sturdy Chest 4

-------------------------------------------------------------------------------
-------------------------- DELVE REWARDS (AREAPOIS) ---------------------------
-------------------------------------------------------------------------------

local maps = {
    ns.maps[2214], -- Ringing Deeps
    ns.maps[2215], -- Hallowfall
    ns.maps[2248], -- Isle of Dorn
    ns.maps[2255], -- Azj-Kahet - Upper
    ns.maps[2256] -- Azj-Kahet - Lower
}

for _, m in pairs(maps) do
    m.groups[#m.groups + 1] = ns.groups.DELVE_REWARDS
    m.groups[ns.groups.DELVE_REWARDS] = true
end

local DELVE_REWARDS = {
    [7863] = { -- Earthcrawl Mines
        Achievement({
            id = 40806,
            criteria = {id = 1, qty = true, suffix = L['sturdy_chest_suffix']}
        }), Achievement({id = 40527, criteria = {68758, 68759, 68760}})
    },
    [7864] = { -- Fungal Folly
        Achievement({
            id = 40803,
            criteria = {id = 1, qty = true, suffix = L['sturdy_chest_suffix']}
        }), Achievement({id = 40525, criteria = {68752, 68753, 68754}})
    },
    [7865] = { -- Kriegval's Rest
        Achievement({
            id = 40807,
            criteria = {id = 1, qty = true, suffix = L['sturdy_chest_suffix']}
        }), Achievement({id = 40526, criteria = {68755, 68756, 68757}})
    },
    [7866] = { -- The Waterworks
        Achievement({
            id = 40816,
            criteria = {id = 1, qty = true, suffix = L['sturdy_chest_suffix']}
        }), Achievement({id = 40528, criteria = {68761, 68762, 68763}})
    },
    [7867] = { -- The Dread Pit
        Achievement({
            id = 40812,
            criteria = {id = 1, qty = true, suffix = L['sturdy_chest_suffix']}
        }), Achievement({id = 40529, criteria = {68764, 68765, 68766}})
    },
    [7868] = { -- Nightfall Sanctum
        Achievement({
            id = 40809,
            criteria = {id = 1, qty = true, suffix = L['sturdy_chest_suffix']}
        }), Achievement({id = 40530, criteria = {68767, 68768, 68769}})
    },
    [7869] = { -- Mycomancer Cavern
        Achievement({
            id = 40808,
            criteria = {id = 1, qty = true, suffix = L['sturdy_chest_suffix']}
        }), Achievement({id = 40531, criteria = {68770, 68771, 68772}})
    },
    [7870] = { -- The Sinkhole
        Achievement({
            id = 40813,
            criteria = {id = 1, qty = true, suffix = L['sturdy_chest_suffix']}
        }), Achievement({id = 40532, criteria = {68773, 68774, 68775}})
    },
    [7871] = { -- Skittering Berach
        Achievement({
            id = 40810,
            criteria = {id = 1, qty = true, suffix = L['sturdy_chest_suffix']}
        }), Achievement({id = 40533, criteria = {68776, 68777, 68778}})
    },
    [7872] = { -- The Underkeep
        Achievement({
            id = 40815,
            criteria = {id = 1, qty = true, suffix = L['sturdy_chest_suffix']}
        }), Achievement({id = 40534, criteria = {68779, 68780, 68781, 68782}})
    },
    [7873] = { -- Tek-Rethan Abyss
        Achievement({
            id = 40811,
            criteria = {id = 1, qty = true, suffix = L['sturdy_chest_suffix']}
        }), Achievement({id = 40535, criteria = {68783, 68784, 68785}})
    },
    [7874] = { -- The Spiral Weave
        Achievement({
            id = 40814,
            criteria = {id = 1, qty = true, suffix = L['sturdy_chest_suffix']}
        }), Achievement({id = 40536, criteria = {68786, 68787, 68788}})
    }
}

hooksecurefunc(DelveEntrancePinMixin, 'OnMouseEnter', function(self)
    if not DELVE_REWARDS[self.areaPoiID] then return end
    local mapID = self:GetMap().mapID
    local group = ns.groups.DELVE_REWARDS
    if group:GetDisplay(mapID) then
        GameTooltip:AddLine(' ')
        local rewards = DELVE_REWARDS[self.areaPoiID]
        for _, reward in pairs(rewards) do
            if reward and reward:IsEnabled() then
                reward:Render(GameTooltip)
            end
        end
        GameTooltip:Show()
    end
end)
