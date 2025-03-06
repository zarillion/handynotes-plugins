-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...

-------------------------------------------------------------------------------

local function renderRewards(rewards, spaceBefore, spaceAfter)
    if ns:GetOpt('show_loot') then
        if spaceBefore then GameTooltip:AddLine(' ') end
        for _, reward in ipairs(rewards) do
            if reward:IsEnabled() then reward:Render(GameTooltip) end
        end
        if spaceAfter then GameTooltip:AddLine(' ') end
    end
    GameTooltip:Show()
end

-------------------------------------------------------------------------------
--------------------------- AREA POI EVENT TOOLTIP ----------------------------
-------------------------------------------------------------------------------

local function hookAreaPoiEventTooltip(group, areaPoiIDs)
    local group = group
    local areaPoiIDs = areaPoiIDs
    hooksecurefunc(AreaPOIEventPinMixin, 'OnMouseEnter', function(self)
        local areaPoiID = self.poiInfo.areaPoiID
        if not areaPoiIDs[areaPoiID] then return end
        local mapID = self:GetMap().mapID
        if not group:GetDisplay(mapID) then return end
        local rewards = areaPoiIDs[areaPoiID]
        if not rewards then return end
        renderRewards(rewards, true, false)
    end)
end

-------------------------------------------------------------------------------
--------------------------- DELVE ENTRANCE TOOLTIP ----------------------------
-------------------------------------------------------------------------------

local function hookDelveEntranceTooltip(group, areaPoiIDs)
    local group = group
    local areaPoiIDs = areaPoiIDs
    hooksecurefunc(DelveEntrancePinMixin, 'OnMouseEnter', function(self)
        local areaPoiID = self.poiInfo.areaPoiID
        if not areaPoiIDs[areaPoiID] then return end
        local mapID = self:GetMap().mapID
        if not group:GetDisplay(mapID) then return end
        local rewards = areaPoiIDs[areaPoiID]
        if not rewards then return end
        renderTooltipRewards(rewards, true, false)
    end)
end

-------------------------------------------------------------------------------
-------------------------- ENCOUNTER JOURNAL TOOLTIP --------------------------
-------------------------------------------------------------------------------

local function hookEncounterJournalTooltip(encounterIDs)
    local encounterIDs = encounterIDs
    hooksecurefunc(EncounterJournalPinMixin, 'OnMouseEnter', function(self)
        local encounterID = self.encounterID
        if not encounterIDs[encounterID] then return end
        local rewards = encounterIDs[encounterID]
        if not rewards then return end
        renderTooltipRewards(rewards, true, false)
    end)
end

-------------------------------------------------------------------------------
------------------------------ VIGNETTE TOOLTIP -------------------------------
-------------------------------------------------------------------------------

local function hookVignetteTooltip(group, vignetteID)
    local group = group
    local vignetteID = vignetteID
    hooksecurefunc(VignettePinMixin, 'OnMouseEnter', function(self)
        if self.vignetteID ~= vignetteID then return end
        local mapID = self:GetMap().mapID
        if not group:GetDisplay(mapID) then return end
        local vignetteGUID = self.vignetteGUID
        local x = C_VignetteInfo.GetVignettePosition(vignetteGUID, mapID).x
        local y = C_VignetteInfo.GetVignettePosition(vignetteGUID, mapID).y
        local coordinates = HandyNotes:getCoord(x, y)
        local rewards = ns.maps[mapID].nodes[coordinates].rewards
        if not rewards then return end
        renderRewards(rewards, false, true)
    end)
end

-------------------------------------------------------------------------------

ns.hook = {
    AreaPoiEventTooltip = hookAreaPoiEventTooltip,
    DelveEntranceTooltip = hookDelveEntranceTooltip,
    EncounterJournalTooltip = hookEncounterJournalTooltip,
    VignetteTooltip = hookVignetteTooltip
}
