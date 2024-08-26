-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale

local Class = ns.Class
local Group = ns.Group

local Collectible = ns.node.Collectible

local Achievement = ns.reward.Achievement
local Pet = ns.reward.Pet

-------------------------------------------------------------------------------

ns.expansion = 2

-------------------------------------------------------------------------------
----------------------------------- GROUPS ------------------------------------
-------------------------------------------------------------------------------

ns.groups.DRAGONRACE = Group('dragonrace', 1100022, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.EXPANSION,
    IsEnabled = function(self)
        if select(2, C_AddOns.IsAddOnLoaded('HandyNotes_Dragonflight')) then
            return false
        end
        return Group.IsEnabled(self)
    end
})
ns.groups.NETHERWING_EGGS = Group('netherwing_eggs', 134430,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.SAFARI = Group('safari', 4048818, {defaults = ns.GROUP_HIDDEN})
ns.groups.CRAZYFORCATS = Group('crazyforcats', 656579,
    {defaults = ns.GROUP_HIDDEN})

-------------------------------------------------------------------------------
----------------------------------- SAFARI ------------------------------------
-------------------------------------------------------------------------------

local Safari = Class('Safari', Collectible,
    {icon = 'paw_g', group = ns.groups.SAFARI})

ns.node.Safari = {
    Adder = Class('Adder', Safari, {
        id = 61325,
        rewards = {
            Achievement({id = 6585, criteria = 21509, oneline = true}),
            Achievement({id = 6586, criteria = 21509, oneline = true}),
            Achievement({id = 6587, criteria = 21509, oneline = true}),
            Pet({id = 635})
        }
    }),
    AshViper = Class('AshViper', Safari, {
        id = 61385,
        rewards = {
            Achievement({id = 6586, criteria = 21624, oneline = true}),
            Achievement({id = 6587, criteria = 21624, oneline = true}),
            Pet({id = 425})
        }
    }),
    ClefthoofRunt = Class('ClefthoofRunt', Safari, {
        id = 62620,
        rewards = {
            Achievement({id = 6587, criteria = 21761, oneline = true}),
            Pet({id = 518})
        }
    }),
    FelFlame = Class('FelFlame', Safari, {
        id = 62621,
        rewards = {
            Achievement({id = 6587, criteria = 21764, oneline = true}),
            Pet({id = 519})
        }
    }),
    FlayerYoungling = Class('FlayerYoungling', Safari, {
        id = 62555,
        rewards = {
            Achievement({id = 6587, criteria = 21760, oneline = true}),
            Pet({id = 514})
        }
    }),
    FledglingNetherRay = Class('FledglingNetherRay', Safari, {
        id = 62627,
        rewards = {
            Achievement({id = 6587, criteria = 21762, oneline = true}),
            Pet({id = 521})
        }
    }),
    NetherRoach = Class('NetherRoach', Safari, {
        id = 62625,
        rewards = {
            Achievement({id = 6587, criteria = 21763, oneline = true}),
            Pet({id = 638})
        }
    }),
    PrairieDog = Class('PrairieDog', Safari, {
        id = 61141,
        rewards = {
            Achievement({id = 6585, criteria = 21613, oneline = true}),
            Achievement({id = 6586, criteria = 21613, oneline = true}),
            Achievement({id = 6587, criteria = 21613, oneline = true}),
            Pet({id = 386})
        }
    }),
    Rat = Class('Rat', Safari, {
        id = 61366,
        rewards = {
            Achievement({id = 6585, criteria = 21516, oneline = true}),
            Achievement({id = 6586, criteria = 21516, oneline = true}),
            Achievement({id = 6587, criteria = 21516, oneline = true}),
            Achievement({id = 6588, criteria = 21516, oneline = true}),
            Pet({id = 417})
        }
    }),
    RockViper = Class('RockViper', Safari, {
        id = 62184,
        rewards = {
            Achievement({id = 6585, criteria = 21699, oneline = true}),
            Achievement({id = 6587, criteria = 21716, oneline = true}),
            Pet({id = 482})
        }
    }),
    ScaldedBasiliskHatchling = Class('ScaldedBasiliskHatchling', Safari, {
        id = 62628,
        rewards = {
            Achievement({id = 6587, criteria = 21759, oneline = true}),
            Pet({id = 528})
        }
    }),
    Scorpid = Class('Scorpid', Safari, {
        id = 61326,
        rewards = {
            Achievement({id = 6585, criteria = 21622, oneline = true}),
            Achievement({id = 6586, criteria = 21622, oneline = true}),
            Achievement({id = 6587, criteria = 21622, oneline = true}),
            Pet({id = 414})
        }
    }),
    SkitteringCavernCrawler = Class('SkitteringCavernCrawler', Safari, {
        id = 62638,
        rewards = {
            Achievement({id = 6587, criteria = 21758, oneline = true}),
            Pet({id = 637})
        }
    }),
    Skunk = Class('Skunk', Safari, {
        id = 61255,
        rewards = {
            Achievement({id = 6585, criteria = 21633, oneline = true}),
            Achievement({id = 6586, criteria = 21633, oneline = true}),
            Achievement({id = 6587, criteria = 21633, oneline = true}),
            Achievement({id = 6588, criteria = 21633, oneline = true}),
            Pet({id = 397})
        }
    }),
    SmallFrog = Class('SmallFrog', Safari, {
        id = 61071,
        rewards = {
            Achievement({id = 6585, criteria = 21518, oneline = true}),
            Achievement({id = 6586, criteria = 21518, oneline = true}),
            Achievement({id = 6587, criteria = 21518, oneline = true}),
            Pet({id = 419})
        }
    }),
    Snake = Class('Snake', Safari, {
        id = 61142,
        rewards = {
            Achievement({id = 6585, criteria = 21519, oneline = true}),
            Achievement({id = 6586, criteria = 21519, oneline = true}),
            Achievement({id = 6587, criteria = 21519, oneline = true}),
            Achievement({id = 6588, criteria = 21519, oneline = true}),
            Pet({id = 387})
        }
    }),
    SporelingSprout = Class('SporelingSprout', Safari, {
        id = 62564,
        rewards = {
            Achievement({id = 6587, criteria = 21766, oneline = true}),
            Pet({id = 515})
        }
    }),
    Squirrel = Class('Squirrel', Safari, {
        id = 61081,
        rewards = {
            Achievement({id = 6585, criteria = 21522, oneline = true}),
            Achievement({id = 6586, criteria = 21522, oneline = true}),
            Achievement({id = 6587, criteria = 21522, oneline = true}),
            Achievement({id = 6588, criteria = 21522, oneline = true}),
            Pet({id = 379})
        }
    }),
    StripeTailedScorpid = Class('StripeTailedScorpid', Safari, {
        id = 61440,
        rewards = {
            Achievement({id = 6585, criteria = 21620, oneline = true}),
            Achievement({id = 6586, criteria = 21620, oneline = true}),
            Achievement({id = 6587, criteria = 21620, oneline = true}),
            Pet({id = 432})
        }
    }),
    TaintedCockroach = Class('TaintedCockroach', Safari, {
        id = 62314,
        rewards = {
            Achievement({id = 6585, criteria = 21723, oneline = true}),
            Achievement({id = 6587, criteria = 21723, oneline = true}),
            Pet({id = 497})
        }
    }),
    Toad = Class('Toad', Safari, {
        id = 61369,
        rewards = {
            Achievement({id = 6585, criteria = 21646, oneline = true}),
            Achievement({id = 6586, criteria = 21646, oneline = true}),
            Achievement({id = 6587, criteria = 21646, oneline = true}),
            Achievement({id = 6588, criteria = 21646, oneline = true}),
            Pet({id = 420})
        }
    }),
    WarpstalkerHatchling = Class('WarpstalkerHatchling', Safari, {
        id = 62583,
        rewards = {
            Achievement({id = 6587, criteria = 21765, oneline = true}),
            Pet({id = 517})
        }
    })
}

-------------------------------------------------------------------------------
--------------------------------- DRAGONRACES ---------------------------------
-------------------------------------------------------------------------------

local Dragonrace = Class('DragonRace', Collectible,
    {icon = 1100022, group = ns.groups.DRAGONRACE})

function Dragonrace.getters:sublabel()
    if self.normal then
        local ntime = C_CurrencyInfo.GetCurrencyInfo(self.normal[1]).quantity
        if self.advanced and self.reverse then
            local atime = C_CurrencyInfo.GetCurrencyInfo(self.advanced[1])
                              .quantity
            local rtime = C_CurrencyInfo.GetCurrencyInfo(self.reverse[1])
                              .quantity
            return L['dr_best']:format(ntime / 1000, atime / 1000, rtime / 1000)
        end
        return L['dr_best_dash']:format(ntime / 1000)
    end
end

function Dragonrace.getters:note()
    if self.normal then
        local silver = ns.color.Silver
        local gold = ns.color.Gold

        -- LuaFormatter off
        if self.advanced and self.reverse then
            return L['dr_note']:format(
                silver(self.normal[2]),
                gold(self.normal[3]),
                silver(self.advanced[2]),
                gold(self.advanced[3]),
                silver(self.reverse[2]),
                gold(self.reverse[3])
            ) .. L['dr_bronze']
        end

        return L['dr_note_dash']:format(
            silver(self.normal[2]),
            gold(self.normal[3])
        ) .. L['dr_bronze']
        -- LuaFormatter on
    end
end

ns.node.Dragonrace = Dragonrace

local DRAGONRACE_POI = {
    -- [] = true, --
    -- [] = true, --
    -- [] = true, --
    -- [] = true, --
    -- [] = true, --
    -- [] = true, --
    -- [] = true, --
    -- [] = true, --
}

hooksecurefunc(AreaPOIPinMixin, 'TryShowTooltip', function(self)
    if not ns.groups.DRAGONRACE:IsEnabled() or
        not DRAGONRACE_POI[self.areaPoiID] then return end
    local mapID = self:GetMap().mapID
    local group = ns.groups.DRAGONRACE

    if not ns.maps[mapID] or not group:GetDisplay(mapID) then return end

    local node = ns.maps[mapID].nodes[DRAGONRACE_POI[self.areaPoiID]]
    if not node then return end

    GameTooltip:AddLine(' ')
    GameTooltip:AddLine(ns.RenderLinks(node.sublabel, true), 1, 1, 1)
    if ns:GetOpt('show_notes') then
        GameTooltip:AddLine(' ')
        GameTooltip:AddLine(ns.RenderLinks(node.note), 1, 1, 1, true)
    end
    if ns:GetOpt('show_loot') then
        GameTooltip:AddLine(' ')
        for i, reward in ipairs(node.rewards) do
            if reward:IsEnabled() then reward:Render(GameTooltip) end
        end
    end

    GameTooltip:Show()
end)

hooksecurefunc(VignettePinMixin, 'DisplayNormalTooltip', function(self)
    if not ns.groups.DRAGONRACE:IsEnabled() or self.vignetteID ~= 5104 then
        return
    end

    local mapID = self:GetMap().mapID
    local group = ns.groups.DRAGONRACE
    if not ns.maps[mapID] or not group:GetDisplay(mapID) then return end

    local x = C_VignetteInfo.GetVignettePosition(self.vignetteGUID, mapID).x
    local y = C_VignetteInfo.GetVignettePosition(self.vignetteGUID, mapID).y

    GameTooltip:AddLine('XY ' .. HandyNotes:getCoord(x, y), 1, 1, 1, true) -- DEBUG

    local node = ns.maps[mapID].nodes[HandyNotes:getCoord(x, y)]
    if not node then return end

    GameTooltip:SetText(ns.RenderLinks(node.label, true))
    GameTooltip:AddLine(ns.RenderLinks(node.sublabel, true), 1, 1, 1)
    if ns:GetOpt('show_notes') then
        GameTooltip:AddLine(' ')
        GameTooltip:AddLine(ns.RenderLinks(node.note), 1, 1, 1, true)
    end
    if ns:GetOpt('show_loot') then
        GameTooltip:AddLine(' ')
        for i, reward in ipairs(node.rewards) do
            if reward:IsEnabled() then reward:Render(GameTooltip) end
        end
    end

    GameTooltip:Show()
end)
