-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local Class = ns.Class

-------------------------------------------------------------------------------
------------------------------------ HOOK -------------------------------------
-------------------------------------------------------------------------------

ns.hooks = {
    areapoi = {},
    areapoievent = {},
    delve = {},
    encounter = {},
    legend = {},
    skyridingrace = {},
    vignette = {}
}

local Hook = Class('Hook', nil, {
    showLabel = false,
    --
    showSublabel = false,
    sublabelSpaceBefore = true,
    sublabelSpaceAfter = false,
    --
    showNote = false,
    noteSpaceBefore = true,
    noteSpaceAfter = false,
    --
    showRewards = true,
    rewardsSpaceBefore = false,
    rewardsSpaceAfter = false
})

function Hook:Initialize(attrs)
    if attrs then for k, v in pairs(attrs) do self[k] = v end end
end

function Hook:AddHook(attrs)
    if attrs then for k, v in pairs(attrs) do self[k] = v end end
    return self
end

for type, hookTable in pairs(ns.hooks) do
    hookTable.Add = function(group, pois, options)
        for id, poi in pairs(pois) do
            ns.hooks[type][id] = Hook({
                rewards = poi.rewards or poi,
                label = poi.label or nil,
                sublabel = poi.sublabel or nil,
                note = poi.note or nil,
                group = group,
                x = poi.pos and poi.pos.x or nil,
                y = poi.pos and poi.pos.y or nil
            })
            if options then
                for k, v in pairs(options) do
                    ns.hooks[type][id][k] = v
                end
            end
        end
    end
end

-------------------------------------------------------------------------------
---------------------------------- AREA POI -----------------------------------
-------------------------------------------------------------------------------

local AreaPoi = Class('AreaPoi', Hook, {
    type = 'areapoi',
    rewardsSpaceBefore = true,
    rewardsSpaceAfter = false
})

function AreaPoi:Initialize(attrs)
    Hook.Initialize(self, attrs)
    for id, rewards in pairs(self.pois) do
        ns.hooks.areapoi[id] = self:AddHook({rewards = rewards})
    end
end

-------------------------------------------------------------------------------
------------------------------- AREA POI EVENT --------------------------------
-------------------------------------------------------------------------------

local AreaPoiEvent = Class('AreaPoiEvent', Hook, {
    type = 'areapoievent',
    rewardsSpaceBefore = true,
    rewardsSpaceAfter = true
})

function AreaPoiEvent:Initialize(attrs)
    Hook.Initialize(self, attrs)
    for id, rewards in pairs(self.pois) do
        ns.hooks.areapoievent[id] = self:AddHook({rewards = rewards})
    end
end

-------------------------------------------------------------------------------
------------------------------- DELVE ENTRANCE --------------------------------
-------------------------------------------------------------------------------

local Delve = Class('Delve', Hook, {
    type = 'delve',
    rewardsSpaceBefore = true,
    rewardsSpaceAfter = false
})

-- function Delve:Initialize(attrs)
--     Hook.Initialize(self, attrs)
-- end

-------------------------------------------------------------------------------
------------------------------ ENCOUNTER JOURNAL ------------------------------
-------------------------------------------------------------------------------

local Encounter = Class('Encounter', Hook, {
    type = 'enounter',
    rewardsSpaceBefore = true,
    rewardsSpaceAfter = false
})

function Encounter:Initialize(attrs)
    Hook.Initialize(self, attrs)
    for id, rewards in pairs(self.encounterIDs) do
        ns.hooks.encounter[id] = self:AddHook({rewards = rewards})
    end
end

-------------------------------------------------------------------------------
----------------------------------- LEGEND ------------------------------------
-------------------------------------------------------------------------------

local Legend =
    Class('Legend', Hook, {type = 'legend', rewardsSpaceAfter = true})

function Legend:Initialize(attrs)
    Hook.Initialize(self, attrs)
    for id, rewards in pairs(self.questIDs) do
        ns.hooks.legend[id] = self:AddHook({rewards = rewards})
    end
end

-------------------------------------------------------------------------------
------------------------------- SKYRIDING RACE --------------------------------
-------------------------------------------------------------------------------

local SkyridingRace = Class('SkyridingRace', Hook, {
    type = 'skyridingrace',
    showLabel = true,
    rewardsSpaceBefore = true
})

function SkyridingRace:Initialize(attrs)
    Hook.Initialize(self, attrs)
    for id, coordinates in pairs(self.pois) do
        ns.hooks.skyridingrace[id] = self:AddHook({
            coordinates = ns.AsTable(coordinates)
        })
    end
end

-------------------------------------------------------------------------------
---------------------------------- VIGNETTE -----------------------------------
-------------------------------------------------------------------------------

local Vignette = Class('Vignette', Hook, {
    type = 'vignette',
    rewardsSpaceBefore = false,
    rewardsSpaceAfter = true
})

function Vignette:Initialize(attrs)
    Hook.Initialize(self, attrs)
    if self.vignetteID then
        ns.hooks.vignette[self.vignetteID] = self:AddHook()
    end
    if self.vignetteIDs then
        for id, rewards in pairs(self.vignetteIDs) do
            ns.hooks.vignette[id] = self:AddHook({rewards = rewards})
        end
    end
end

-------------------------------------------------------------------------------
------------------------------- HOOKSECUREFUNC --------------------------------
-------------------------------------------------------------------------------

local function renderTooltip(self, POI)

    print(POI.showLabel, POI.showSublabel, POI.showNote, POI.showRewards)
    -- Add LABEL to tooltip if provided/enabled
    if POI.showLabel then
        GameTooltip:SetText(ns.RenderLinks(POI.label, true))
        print('Label: ', POI.label)
    end

    -- Add SUBLABEL to tooltip if provided/enabled
    if POI.showSublabel and POI.sublabel then
        GameTooltip:AddLine(' ')
        GameTooltip:AddLine(ns.RenderLinks(POI.sublabel, true), 1, 1, 1)
        GameTooltip:AddLine(' ')
        print('Sublabel: ', POI.sublabel)
    end

    -- Add NOTE to tooltip if provided/enabled
    if POI.showNote and POI.note and ns:GetOpt('show_notes') then
        if POI.rewardsSpaceBefore then GameTooltip:AddLine(' ') end
        GameTooltip:AddLine(ns.RenderLinks(POI.note), 1, 1, 1, true)
        if POI.rewardsSpaceAfter then GameTooltip:AddLine(' ') end
        print('Note: ', POI.note)
    end

    -- Add REWARDS to tooltip if provided/enabled
    if POI.showRewards and POI.rewards and ns:GetOpt('show_loot') then
        if POI.rewardsSpaceBefore then GameTooltip:AddLine(' ') end
        for _, reward in ipairs(POI.rewards) do
            if reward:IsEnabled() then reward:Render(GameTooltip) end
        end
        if POI.rewardsSpaceAfter then GameTooltip:AddLine(' ') end
        print('Rewards: ', POI.rewards)
    end

    GameTooltip:Show()
end

local function HookAllPOIS()
    --------------------------------- AREA POI --------------------------------
    hooksecurefunc(AreaPOIPinMixin, 'OnMouseEnter', function(self)
        local type = 'areapoi'
        local poi = ns.hooks[type][self.poiInfo.areaPoiID]
        if not poi then return end

        local hookInfo = Hook({
            type = type, -- is it even needed?
            rewardsSpaceBefore = true,
            rewardsSpaceAfter = false,
            rewards = poi.rewards,
            group = poi.group

        })

        if not hookInfo.group:GetDisplay(self:GetMap().mapID) then return end
        renderTooltip(self, hookInfo)
    end)

    ----------------------------- AREA POI EVENT ------------------------------
    hooksecurefunc(AreaPOIEventPinMixin, 'OnMouseEnter', function(self)
        local type = 'areapoievent'
        local poi = ns.hooks[type][self.poiInfo.areaPoiID]
        if not poi then return end

        local hookInfo = Hook({
            type = type,
            rewardsSpaceBefore = true,
            rewardsSpaceAfter = true,
            rewards = poi.rewards,
            group = poi.group
        })

        if not hookInfo.group:GetDisplay(self:GetMap().mapID) then return end
        renderTooltip(self, hookInfo)
    end)

    ----------------------------- DELVE ENTRANCE ------------------------------
    hooksecurefunc(DelveEntrancePinMixin, 'OnMouseEnter', function(self)
        local type = 'delve'
        local poi = ns.hooks[type][self.poiInfo.areaPoiID]
        if not poi then return end

        poi.rewardsSpaceBefore = true
        poi.rewardsSpaceAfter = false

        if not poi.group:GetDisplay(self:GetMap().mapID) then return end
        for k, v in pairs(poi) do print(k, v) end
        renderTooltip(self, poi)
    end)

    ---------------------- DRAGONRIDING / SKYRIDING RACE ----------------------
    hooksecurefunc(DragonridingRacePinMixin, 'OnMouseEnter', function(self)
        local poitype = 'skyridingrace'
        local poi = ns.hooks[poitype][self.poiInfo.areaPoiID]
        if not poi then return end

        poi.showLabel = true
        poi.showSublabel = true
        poi.showNote = true
        -- poi.showRewards = true
        poi.rewardsSpaceBefore = true
        poi.rewardsSpaceAfter = false

        if not poi.group:GetDisplay(self:GetMap().mapID) then return end

        if self:GetCenter() > UIParent:GetCenter() then
            GameTooltip:SetOwner(self, 'ANCHOR_LEFT')
        else
            GameTooltip:SetOwner(self, 'ANCHOR_RIGHT')
        end

        renderTooltip(self, poi)
        GameTooltip:Show()
    end)

    hooksecurefunc(DragonridingRacePinMixin, 'OnMouseLeave',
        function(self) GameTooltip:Hide() end)

    hooksecurefunc(VignettePinMixin, 'OnMouseEnter', function(self)
        if self.vignetteID ~= 5104 then return end -- Bronze Timekeeper

        local mapID = self:GetMap().mapID
        local vignetteGUID = self.vignetteGUID
        local pos = C_VignetteInfo.GetVignettePosition(vignetteGUID, mapID)
        local coordinates = HandyNotes:getCoord(pos.x, pos.y)
        for id, race in pairs(ns.hooks.skyridingrace) do
            if ns.IsInstance(race, Hook) then
                local race_coordinates = HandyNotes:getCoord(race.x, race.y)
                -- if race_coordinates == coordinates then
                -- ns.hooks.skyridingrace[k].showLabel = true
                -- ns.hooks.skyridingrace[k].showSublabel = true
                -- ns.hooks.skyridingrace[k].showNote = true
                -- ns.hooks.skyridingrace[k].rewardsSpaceBefore = true
                -- ns.hooks.skyridingrace[k].rewardsSpaceAfter = false
                -- renderTooltip(self, ns.hooks.skyridingrace[id])
                -- break
                -- end
            end
        end
    end)

    ------------------------ ENCOUNTER JOURNAL TOOLTIP ------------------------
    hooksecurefunc(EncounterJournalPinMixin, 'OnMouseEnter', function(self)
        local hookInfo = ns.hooks.encounter[self.encounterID]
        if not hookInfo then return end
        renderTooltip(hookInfo)
    end)

    ----------------------------- LEGEND TOOLTIP ------------------------------

    local legendHandled = false

    hooksecurefunc(LegendHighlightablePoiPinMixin, 'OnLegendPinMouseEnter',
        function(self)
            if legendHandled then return end
            local hookInfo = ns.hooks.legend[self.questID]
            if not hookInfo then return end
            legendHandled = true
            renderTooltip(hookInfo)
        end)

    hooksecurefunc(LegendHighlightablePoiPinMixin, 'OnLegendPinMouseLeave',
        function(self) legendHandled = false end)

    -------------------------------- VIGNETTE ---------------------------------
    hooksecurefunc(VignettePinMixin, 'OnMouseEnter', function(self)
        local hookInfo = ns.hooks.vignette[self.vignetteID]
        if not hookInfo then return end
        local mapID = self:GetMap().mapID
        if not hookInfo.group:GetDisplay(mapID) then return end
        local vignetteGUID = self.vignetteGUID
        local pos = C_VignetteInfo.GetVignettePosition(vignetteGUID, mapID)
        local coordinates = HandyNotes:getCoord(pos.x, pos.y)
        local node = ns.maps[mapID].nodes[coordinates]
        hookInfo.note = node.note
        hookInfo.rewards = node.rewards
        renderTooltip(hookInfo)
    end)
end

-------------------------------------------------------------------------------

ns.HookAllPOIS = HookAllPOIS

ns.hook = {
    AreaPoi = AreaPoi,
    AreaPoiEvent = AreaPoiEvent,
    Delve = Delve,
    Encounter = Encounter,
    Legend = Legend,
    SkyridingRace = SkyridingRace,
    Vignette = Vignette
}
