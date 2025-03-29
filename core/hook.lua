-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local Class = ns.Class

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

ns.hooks.Add = function(hook, group, pois)
    for id, rewards in pairs(pois) do
        ns.hooks[hook][id] = {rewards = rewards, group = group}
    end
end

ns.DELVE_AREA_POIS = ns.DELVE_AREA_POIS or {}

-------------------------------------------------------------------------------
---------------------------------- HOOK INFO ----------------------------------
-------------------------------------------------------------------------------

local HookInfo = Class('HookInfo')

function HookInfo:Initialize(attrs)
    if attrs then for k, v in pairs(attrs) do self[k] = v end end

    -- don't save the table of poi rewards to every hook
    self.pois = nil
end

-------------------------------------------------------------------------------
------------------------------------ HOOK -------------------------------------
-------------------------------------------------------------------------------

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
    -- self.pois = nil
    return self
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

local function renderTooltip(POI)

    -- Add LABEL to tooltip if provided/enabled
    if POI.showLabel then
        GameTooltip:SetText(ns.RenderLinks(POI.label, true))
    end

    -- Add SUBLABEL to tooltip if provided/enabled
    if POI.showSublabel and POI.sublabel then
        GameTooltip:AddLine(' ')
        GameTooltip:AddLine(ns.RenderLinks(POI.sublabel, true), 1, 1, 1)
        GameTooltip:AddLine(' ')
    end

    -- Add NOTE to tooltip if provided/enabled
    if POI.showNote and POI.note and ns:GetOpt('show_notes') then
        if POI.rewardsSpaceBefore then GameTooltip:AddLine(' ') end
        GameTooltip:AddLine(ns.RenderLinks(POI.note), 1, 1, 1, true)
        if POI.rewardsSpaceAfter then GameTooltip:AddLine(' ') end
    end

    -- Add REWARDS to tooltip if provided/enabled
    if POI.showRewards and POI.rewards and ns:GetOpt('show_loot') then
        if POI.rewardsSpaceBefore then GameTooltip:AddLine(' ') end
        for _, reward in ipairs(POI.rewards) do
            if reward:IsEnabled() then reward:Render(GameTooltip) end
        end
        if POI.rewardsSpaceAfter then GameTooltip:AddLine(' ') end
    end

    GameTooltip:Show()
end

local function HookAllPOIS()
    --------------------------------- AREA POI --------------------------------
    hooksecurefunc(AreaPOIPinMixin, 'OnMouseEnter', function(self)
        local hookInfo = ns.hooks.areapoi[self.poiInfo.areaPoiID]
        if not hookInfo then return end
        if not hookInfo.group:GetDisplay(self:GetMap().mapID) then return end
        renderTooltip(hookInfo)
    end)

    ----------------------------- AREA POI EVENT ------------------------------
    hooksecurefunc(AreaPOIEventPinMixin, 'OnMouseEnter', function(self)
        local hookInfo = ns.hooks.areapoievent[self.poiInfo.areaPoiID]
        if not hookInfo then return end
        if not hookInfo.group:GetDisplay(self:GetMap().mapID) then return end
        renderTooltip(hookInfo)
    end)

    ----------------------------- DELVE ENTRANCE ------------------------------
    hooksecurefunc(DelveEntrancePinMixin, 'OnMouseEnter', function(self)
        local areaPoiID = self.poiInfo.areaPoiID
        local poi = ns.hooks.delve[areaPoiID]
        if not poi then return end

        local hookInfo = Delve({rewards = poi.rewards, group = poi.group})

        -- local hookInfo = ns.hooks.delve[areaPoiID]
        -- if not hookInfo then return end
        if not hookInfo.group:GetDisplay(self:GetMap().mapID) then return end
        renderTooltip(hookInfo)
    end)

    ---------------------- DRAGONRIDING / SKYRIDING RACE ----------------------
    hooksecurefunc(DragonridingRacePinMixin, 'OnMouseEnter', function(self)
        local hookInfo = ns.hooks.skyridingrace[self.poiInfo.areaPoiID]
        if not hookInfo then return end
        local mapID = self:GetMap().mapID
        if not hookInfo.group:GetDisplay(mapID) then return end
        local coordinates = hookInfo.coordinates
        for _, coords in pairs(coordinates) do
            local node = ns.maps[mapID].nodes[coords]
            if node then
                hookInfo.label = node.label
                hookInfo.note = node.note
                hookInfo.rewards = node.rewards
                hookInfo.sublabel = node.sublabel
                if self:GetCenter() > UIParent:GetCenter() then
                    GameTooltip:SetOwner(self, 'ANCHOR_LEFT')
                else
                    GameTooltip:SetOwner(self, 'ANCHOR_RIGHT')
                end
                renderTooltip(hookInfo)
            end
        end
    end)

    hooksecurefunc(DragonridingRacePinMixin, 'OnMouseLeave',
        function(self) GameTooltip:Hide() end)

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
