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
    skyridingrace = {},
    encounter = {},
    vignette = {}
}

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

function Delve:Initialize(attrs)
    Hook.Initialize(self, attrs)
    for id, rewards in pairs(self.pois) do
        ns.hooks.delve[id] = self:AddHook({rewards = rewards})
    end
end

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

local function renderTooltip(hookInfo)

    -- Add LABEL to tooltip if provide/enabled
    if hookInfo.showLabel then
        GameTooltip:SetText(ns.RenderLinks(hookInfo.label, true))
    end

    -- Add SUBLABEL to tooltip if provided/enabled
    if hookInfo.showSublabel then
        if hookInfo.showSublabel then GameTooltip:AddLine(' ') end
        GameTooltip:AddLine(ns.RenderLinks(hookInfo.sublabel, true), 1, 1, 1)
        if hookInfo.showSublabel then GameTooltip:AddLine(' ') end
    end

    -- Add NOTE to tooltip if provided/enabled
    if hookInfo.showNote then
        if ns:GetOpt('show_notes') then
            if hookInfo.rewardsSpaceBefore then
                GameTooltip:AddLine(' ')
            end
            GameTooltip:AddLine(ns.RenderLinks(hookInfo.note), 1, 1, 1, true)
            if hookInfo.rewardsSpaceAfter then
                GameTooltip:AddLine(' ')
            end
        end
    end

    -- Add REWARDS to tooltip if provided/enabled
    if hookInfo.showRewards then
        if ns:GetOpt('show_loot') then
            if hookInfo.rewardsSpaceBefore then
                GameTooltip:AddLine(' ')
            end
            for _, reward in ipairs(hookInfo.rewards) do
                if reward:IsEnabled() then
                    reward:Render(GameTooltip)
                end
            end
            if hookInfo.rewardsSpaceAfter then
                GameTooltip:AddLine(' ')
            end
        end
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
        local hookInfo = ns.hooks.delve[self.poiInfo.areaPoiID]
        if not hookInfo then return end
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
    SkyridingRace = SkyridingRace,
    Encounter = Encounter,
    Vignette = Vignette
}
