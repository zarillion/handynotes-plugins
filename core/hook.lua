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
    vignette = {}
}

-------------------------------------------------------------------------------
---------------------------------- HOOK INFO ----------------------------------
-------------------------------------------------------------------------------

local HookInfo = Class('HookInfo', nil)

function HookInfo:Initialize(attrs, rewards)
    -- GROUP
    self.group = attrs.group or nil

    -- NOTE
    self.showNote = attrs.showNote
    if attrs.note then self.showNote = true end
    self.note = attrs.note or nil
    self.noteSpaceBefore = attrs.noteSpaceBefore
    self.noteSpaceAfter = attrs.noteSpaceAfter

    -- REWARDS
    self.rewards = rewards or nil
    self.rewardsSpaceBefore = attrs.rewardsSpaceBefore
    self.rewardsSpaceAfter = attrs.rewardsSpaceAfter
end

-------------------------------------------------------------------------------
------------------------------------ HOOK -------------------------------------
-------------------------------------------------------------------------------

local Hook = Class('Hook', nil, {
    showNote = false,
    noteSpaceBefore = true,
    noteSpaceAfter = false,
    rewardsSpaceBefore = false,
    rewardsSpaceAfter = false
})

function Hook:Initialize(attrs)
    if attrs then for k, v in pairs(attrs) do self[k] = v end end

    if not self.type then error('Hooks must be initialized with a type!') end
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

    if not self.group then error('group required for AreaPoi hooks') end
    if not self.pois then error('pois required for AreaPoi hooks') end

    for id, rewards in pairs(self.pois) do
        if ns.hooks.areapoi[id] then
            error('areaPoiID already registered: ' .. id)
        end

        ns.hooks.areapoi[id] = HookInfo(self, rewards)
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

    if not self.group then error('group required for AreaPoiEvent hooks') end
    if not self.pois then error('pois required for AreaPoiEvent hooks') end

    for id, rewards in pairs(self.pois) do
        if ns.hooks.areapoievent[id] then
            error('areaPoiID already registered: ' .. id)
        end

        ns.hooks.areapoievent[id] = HookInfo(self, rewards)
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

    if not self.group then error('group required for Delve hooks') end
    if not self.pois then error('pois required for Delve hooks') end

    for id, rewards in pairs(self.pois) do
        if ns.hooks.delve[id] then
            error('areaPoiID already registered: ' .. id)
        end

        ns.hooks.delve[id] = HookInfo(self, rewards)
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

    if not self.encounterIDs then
        error('encounterIDs required for Encounter hooks')
    end

    for id, rewards in pairs(self.encounterIDs) do
        if ns.hooks.encounter[id] then
            error('encounterID already registered' .. id)
        end

        ns.hooks.encounter[id] = HookInfo(self, rewards)
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

    if not self.group then error('group required for Vignette hooks') end
    if not self.vignetteID then
        error('vignetteID requied for Vignette hooks')
    end
    if ns.hooks.vignette[self.vignetteID] then
        error('vignetteID already registered:' .. self.vignetteID)
    end

    ns.hooks.vignette[self.vignetteID] = HookInfo(self)
end

-------------------------------------------------------------------------------
------------------------------- HOOKSECUREFUNC --------------------------------
-------------------------------------------------------------------------------

local function renderTooltip(hookInfo)
    -- Add note to tooltip if provided and enabled
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
    -- Add rewards to tooltip if provided and enabled
    if hookInfo.rewards then
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

        hookInfo.rewards = node.rewards
        hookInfo.note = node.note

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
    Vignette = Vignette
}
