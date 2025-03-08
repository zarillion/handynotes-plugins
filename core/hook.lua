-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local Class = ns.Class

-------------------------------------------------------------------------------

ns.hooks = {areapoievent = {}, delve = {}, encounter = {}, vignette = {}}

-------------------------------------------------------------------------------
------------------------------------ HOOK -------------------------------------
-------------------------------------------------------------------------------

local Hook = Class('Hook')

function Hook:Initialize(attrs)
    if attrs then for k, v in pairs(attrs) do self[k] = v end end

    if not self.type then error('Hooks must be initialized with a type!') end
end

-------------------------------------------------------------------------------
------------------------------- AREA POI EVENT --------------------------------
-------------------------------------------------------------------------------

local AreaPoiEvent = Class('AreaPoiEvent', Hook, {type = 'areapoievent'})

function AreaPoiEvent:Initialize(attrs)
    Hook.Initialize(self, attrs)

    if not self.group then error('group required for AreaPoiEvent hooks') end
    if not self.pois then error('pois required for AreaPoiEvent hooks') end

    for id, rewards in pairs(self.pois) do
        if ns.hooks.areapoievent[id] then
            error('areaPoiID already registered: ' .. id)
        end
        ns.hooks.areapoievent[id] = {group = self.group, rewards = rewards}
    end
end

-------------------------------------------------------------------------------
------------------------------- DELVE ENTRANCE --------------------------------
-------------------------------------------------------------------------------

local Delve = Class('Delve', Hook, {type = 'delve'})

function Delve:Initialize(attrs)
    Hook.Initialize(self, attrs)

    if not self.group then error('group required for Delve hooks') end
    if not self.pois then error('pois required for Delve hooks') end

    for id, rewards in pairs(self.pois) do
        if ns.hooks.delve[id] then
            error('areaPoiID already registered: ' .. id)
        end
        ns.hooks.delve[id] = {group = self.group, rewards = rewards}
    end
end

-------------------------------------------------------------------------------
------------------------------ ENCOUNTER JOURNAL ------------------------------
-------------------------------------------------------------------------------

local Encounter = Class('Encounter', Hook, {type = 'encounter_journal'})

function Encounter:Initialize(attrs)
    Hook.Initialize(self, attrs)
    if not self.encounterIDs then
        error('encounterIDs required for Encounter hooks')
    end
    for id, rewards in pairs(self.encounterIDs) do
        if ns.hooks.encounter[id] then
            error('encounterID already registered' .. id)
        end
        ns.hooks.encounter[id] = {rewards = rewards}
    end
end

-------------------------------------------------------------------------------
---------------------------------- VIGNETTE -----------------------------------
-------------------------------------------------------------------------------

local Vignette = Class('Vignette', Hook, {type = 'vignette'})

function Vignette:Initialize(attrs)
    Hook.Initialize(self, attrs)
    if not self.group then error('group required for Vignette hooks') end
    if not self.vignetteID then
        error('vignetteID requied for Vignette hooks')
    end
    if ns.hooks.vignette[self.vignetteID] then
        error('vignetteID already registered:' .. self.vignetteID)
    end
    ns.hooks.vignette[self.vignetteID] = {group = self.group}
end

-------------------------------------------------------------------------------
------------------------------- HOOKSECUREFUNC --------------------------------
-------------------------------------------------------------------------------

local function renderTooltipRewards(rewards, spaceBefore, spaceAfter)

    -- Add rewards to tooltip if provided and enabled
    if rewards then
        if ns:GetOpt('show_loot') then
            if spaceBefore then GameTooltip:AddLine(' ') end
            for _, reward in ipairs(rewards) do
                if reward:IsEnabled() then
                    reward:Render(GameTooltip)
                end
            end
            if spaceAfter then GameTooltip:AddLine(' ') end
        end
    end

    GameTooltip:Show()
end

local function HookAllPOIS()

    ----------------------------- AREA POI EVENT ------------------------------
    hooksecurefunc(AreaPOIEventPinMixin, 'OnMouseEnter', function(self)
        local areaPoiID = self.poiInfo.areaPoiID
        if not ns.hooks.areapoievent[areaPoiID] then return end

        local mapID = self:GetMap().mapID
        local group = ns.hooks.areapoievent[areaPoiID].group
        if not group:GetDisplay(mapID) then return end

        local rewards = ns.hooks.areapoievent[areaPoiID].rewards
        if not rewards then return end

        renderTooltipRewards(rewards, true, true)
    end)

    ----------------------------- DELVE ENTRANCE ------------------------------
    hooksecurefunc(DelveEntrancePinMixin, 'OnMouseEnter', function(self)
        local areaPoiID = self.poiInfo.areaPoiID
        if not ns.hooks.delve[areaPoiID] then return end

        local mapID = self:GetMap().mapID
        local group = ns.hooks.delve[areaPoiID].group
        if not group:GetDisplay(mapID) then return end

        local rewards = ns.hooks.delve[areaPoiID].rewards
        if not rewards then return end

        renderTooltipRewards(rewards, true, false)
    end)

    ------------------------ ENCOUNTER JOURNAL TOOLTIP ------------------------
    hooksecurefunc(EncounterJournalPinMixin, 'OnMouseEnter', function(self)
        local encounterID = self.encounterID
        if not ns.hooks.encounter[encounterID] then return end

        local rewards = ns.hooks.encounter[encounterID].rewards
        if not rewards then return end

        renderTooltipRewards(rewards, true, false)
    end)

    -------------------------------- VIGNETTE ---------------------------------
    hooksecurefunc(VignettePinMixin, 'OnMouseEnter', function(self)
        local vignetteID = self.vignetteID
        if not ns.hooks.vignette[vignetteID] then return end

        local mapID = self:GetMap().mapID
        local group = ns.hooks.vignette[vignetteID].group
        if not group:GetDisplay(mapID) then return end

        local vignetteGUID = self.vignetteGUID
        local x = C_VignetteInfo.GetVignettePosition(vignetteGUID, mapID).x
        local y = C_VignetteInfo.GetVignettePosition(vignetteGUID, mapID).y
        local coordinates = HandyNotes:getCoord(x, y)
        local rewards = ns.maps[mapID].nodes[coordinates].rewards
        if not rewards then return end

        renderTooltipRewards(rewards, false, true)
    end)

end

-------------------------------------------------------------------------------

ns.HookAllPOIS = HookAllPOIS

ns.hook = {
    AreaPoiEvent = AreaPoiEvent,
    Delve = Delve,
    Encounter = Encounter,
    Vignette = Vignette
}
