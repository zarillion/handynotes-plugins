-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local Class = ns.Class

-------------------------------------------------------------------------------
------------------------------------- HOOK ------------------------------------
-------------------------------------------------------------------------------

ns.hooks = {
    areapoi = {},
    areapoievent = {},
    delve = {},
    encounter = {},
    legend = {},
    skyridingrace = {},
    vignette = {},
    worldquest = {}
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
end -- just for now to prevent lua error on Vignettes

for type, hookTable in pairs(ns.hooks) do
    hookTable.Add = function(group, pois, options)
        for id, poi in pairs(pois) do
            -- an entry is either a plain list of rewards or a table holding
            -- `rewards` and/or `interval` (show the time remaining for this
            -- scheduled area POI). `interval` is either true (server scheduled
            -- event) or a table with its own GetText(), e.g. for events whose
            -- cycle is not part of the event scheduler.
            local interval = poi.interval
            if interval == true then
                interval = ns.Intervals.LiveEvent({areaPoiID = id})
            end

            ns.hooks[type][id] = Hook({
                rewards = poi.rewards or (poi[1] and poi),
                interval = interval,
                label = poi.label or nil,
                sublabel = poi.sublabel or nil,
                note = poi.note or nil,
                npcID = poi.npcID,
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
----------------------------------- VIGNETTE ----------------------------------
-------------------------------------------------------------------------------

local Vignette = Class('Vignette', Hook, {
    type = 'vignette',
    rewardsSpaceBefore = false,
    rewardsSpaceAfter = true,
    group = ns.groups.MISC
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
-------------------------------- HOOKSECUREFUNC -------------------------------
-------------------------------------------------------------------------------

local function renderTooltip(self, POI, tooltip)
    if not POI then return 'no-poi' end
    tooltip = tooltip or GameTooltip

    local mapID
    if self.GetMap then
        local map = self:GetMap()
        mapID = map and map.mapID
    end
    if not mapID and _G.WorldMapFrame then
        mapID = _G.WorldMapFrame:GetMapID()
    end
    if POI.group and mapID and not POI.group:GetDisplay(mapID) then
        return 'group-hidden'
    end

    -- Add LABEL to tooltip if provided/enabled
    if POI.showLabel and POI.label then
        tooltip:SetText(ns.RenderLinks(POI.label, true))
    end

    -- Add SUBLABEL to tooltip if provided/enabled
    if POI.showSublabel and POI.sublabel then
        if POI.sublabelSpaceBefore then tooltip:AddLine(' ') end
        tooltip:AddLine(ns.RenderLinks(POI.sublabel, true), 1, 1, 1)
        if POI.sublabelSpaceAfter then tooltip:AddLine(' ') end
    end

    -- Add NOTE to tooltip if provided/enabled
    if POI.showNote and POI.note and ns:GetOpt('show_notes') then
        if POI.rewardsSpaceBefore then tooltip:AddLine(' ') end
        tooltip:AddLine(ns.RenderLinks(POI.note), 1, 1, 1, true)
        if POI.rewardsSpaceAfter then tooltip:AddLine(' ') end
    end

    -- Add REWARDS to tooltip if provided/enabled
    if POI.showRewards and POI.rewards and ns:GetOpt('show_loot') then
        if POI.rewardsSpaceBefore then tooltip:AddLine(' ') end
        for _, reward in ipairs(POI.rewards) do
            if reward:IsEnabled() then reward:Render(tooltip) end
        end
        if POI.rewardsSpaceAfter then tooltip:AddLine(' ') end
    end

    -- Time remaining for scheduled events (see ns.Intervals), hidden when
    -- there is no event data for this POI
    if POI.interval then
        local intervalText = POI.interval:GetText()
        if intervalText then
            GameTooltip_AddBlankLineToTooltip(tooltip)
            local lines = {}
            for line in (intervalText .. '\n'):gmatch('(.-)\n') do
                lines[#lines + 1] = line
            end
            if #lines > 0 and lines[#lines] == '' then
                lines[#lines] = nil -- trailing break added by the .. '\n'
            end
            for i, line in ipairs(lines) do
                if line == '' then
                    GameTooltip_AddBlankLineToTooltip(tooltip)
                else
                    tooltip:AddLine(ns.RenderLinks(line), 1, 1, 1, true)
                end
            end
        end
    end

    tooltip:Show()
    return 'ok'
end

local function HookAllPOIS()
    --------------------------------- AREA POI --------------------------------

    hooksecurefunc(AreaPOIPinMixin, 'OnMouseEnter', function(self)
        local type = 'areapoi'
        local poi = ns.hooks[type][self.poiInfo.areaPoiID]
        if not poi then return end

        local hookInfo = Hook({
            rewardsSpaceBefore = true,
            rewardsSpaceAfter = false,
            rewards = poi.rewards,
            group = poi.group,
            interval = poi.interval
        })

        renderTooltip(self, hookInfo)
    end)

    ----------------------------- AREA POI EVENT ------------------------------

    hooksecurefunc(AreaPOIEventPinMixin, 'OnMouseEnter', function(self)
        local poi = ns.hooks['areapoievent'][self.poiInfo.areaPoiID]
        if not poi then return end

        local hookInfo = Hook({
            rewardsSpaceBefore = true,
            rewardsSpaceAfter = true,
            rewards = poi.rewards,
            group = poi.group,
            interval = poi.interval
        })

        renderTooltip(self, hookInfo)
    end)

    ------------------------- WORLD QUEST TOOLTIP ----------------------------

    -- 12.x: tooltip text can be a secret value; comparing or measuring it
    -- throws, so every value read off the tooltip is guarded
    local function isSecret(value)
        if not issecretvalue then return false end
        local ok, secret = pcall(issecretvalue, value)
        return ok and secret
    end

    local function getWorldQuestID(tooltip)
        local owner = tooltip:GetOwner()
        local ownerQuest = owner and owner.questID
        if ownerQuest and not isSecret(ownerQuest) then
            return ownerQuest, owner
        end

        local data = tooltip.GetTooltipData and tooltip:GetTooltipData()
        if data and data.id and not isSecret(data.id) and
            (data.type == Enum.TooltipDataType.Quest or
                (Enum.TooltipDataType.WorldQuest and data.type ==
                    Enum.TooltipDataType.WorldQuest)) then
            return data.id, owner
        end

        -- World quest pins do not always expose the quest through the owner,
        -- so fall back to the localized quest title in the tooltip.
        local line = _G[tooltip:GetName() .. 'TextLeft1']
        local title = line and line:GetText()
        if title and not isSecret(title) then
            for id in pairs(ns.hooks.worldquest) do
                if type(id) == 'number' then
                    local questTitle = C_TaskQuest.GetQuestInfoByQuestID(id)
                    if questTitle and questTitle == title then
                        return id, owner
                    end
                end
            end
        end
        return nil, owner
    end

    -- Adds the reward block once per tooltip build. The line count kept on
    -- the frame tells whether our lines are still there after a rebuild.
    local function addWorldQuestRewards(tooltip, owner, poi, questID)
        local attached = tooltip._handyNotesWorldQuest or {}
        local marker = attached[ns]
        if marker and marker.quest == questID and tooltip:NumLines() >=
            marker.lines then return 'attached' end

        local hookInfo = Hook({
            rewardsSpaceBefore = true,
            rewardsSpaceAfter = false,
            rewards = poi.rewards,
            group = poi.group,
            interval = poi.interval
        })

        local why = renderTooltip(owner or {}, hookInfo, tooltip)
        if why == 'ok' then
            attached[ns] = {quest = questID, lines = tooltip:NumLines()}
            tooltip._handyNotesWorldQuest = attached
        end
        return why
    end

    local function attachWorldQuestRewards(tooltip)
        local questID, owner = getWorldQuestID(tooltip)
        local poi = questID and ns.hooks.worldquest[questID]
        if not poi then return end

        addWorldQuestRewards(tooltip, owner, poi, questID)
    end

    local function hookWQTooltipFrame(tooltip)
        if not tooltip then return end
        tooltip._handyNotesWQFrameHooked =
            tooltip._handyNotesWQFrameHooked or {}
        if tooltip._handyNotesWQFrameHooked[ns] then return end
        tooltip._handyNotesWQFrameHooked[ns] = true

        tooltip:HookScript('OnTooltipCleared', function(self)
            local marker = self._handyNotesWorldQuest
            if marker then marker[ns] = nil end
        end)
        tooltip:HookScript('OnShow',
            function(self) attachWorldQuestRewards(self) end)
    end

    hookWQTooltipFrame(GameTooltip)

    ---------------------- WORLD QUEST TRACKER (compat) -----------------------

    local function hookWorldQuestTracker()
        local wqt = _G.WorldQuestTrackerAddon or _G.WorldQuestTracker
        if wqt and type(wqt.ShowWorldQuestTooltip) == 'function' then
            wqt._handyNotesWorldQuestTrackerHooked =
                wqt._handyNotesWorldQuestTrackerHooked or {}
        end
        if wqt and type(wqt.ShowWorldQuestTooltip) == 'function' and
            not wqt._handyNotesWorldQuestTrackerHooked[ns] then
            wqt._handyNotesWorldQuestTrackerHooked[ns] = true

            hooksecurefunc(wqt, 'ShowWorldQuestTooltip', function(button)
                local questID = button and button.questID
                if not questID or isSecret(questID) then return end
                local poi = ns.hooks.worldquest[questID]
                if not poi then return end

                local tooltip = _G.WorldQuestTrackerGameTooltip or GameTooltip
                addWorldQuestRewards(tooltip, button, poi, questID)
            end)
        end

        hookWQTooltipFrame(_G.WorldQuestTrackerGameTooltip)
        hookWQTooltipFrame(_G.WorldMapTooltip)
    end

    hookWorldQuestTracker()
    local frame = CreateFrame('Frame')
    ns._worldQuestHookFrame = frame
    frame:RegisterEvent('PLAYER_LOGIN')
    frame:RegisterEvent('ADDON_LOADED')
    frame:SetScript('OnEvent', function(self)
        hookWorldQuestTracker()
        hookWQTooltipFrame(GameTooltip)
        if _G.WorldMapTooltip and _G.WorldQuestTrackerGameTooltip then
            self:UnregisterEvent('ADDON_LOADED')
        end
    end)
    C_Timer.After(3, hookWorldQuestTracker)

    ----------------------------- DELVE ENTRANCE ------------------------------

    hooksecurefunc(DelveEntrancePinMixin, 'OnMouseEnter', function(self)
        local poi = ns.hooks['delve'][self.poiInfo.areaPoiID]
        if not poi then return end

        local hookInfo

        if (self.poiInfo.description == _G.DELVE_LABEL) then
            hookInfo = Hook({
                rewardsSpaceBefore = true,
                rewardsSpaceAfter = false,
                rewards = poi.rewards,
                group = poi.group,
                interval = poi.interval
            })
        else
            hookInfo = Hook({
                rewardsSpaceBefore = false,
                rewardsSpaceAfter = true,
                rewards = poi.rewards,
                group = poi.group,
                interval = poi.interval
            })
        end

        renderTooltip(self, hookInfo)
    end)

    ---------------------- DRAGONRIDING / SKYRIDING RACE ----------------------

    hooksecurefunc(DragonridingRacePinMixin, 'OnMouseEnter', function(self)
        local poitype = 'skyridingrace'
        local poi = ns.hooks[poitype][self.poiInfo.areaPoiID]
        if not poi then return end

        local hookInfo = Hook({
            showLabel = true,
            showSublabel = true,
            showNote = true,
            sublabelSpaceBefore = false,
            rewardsSpaceBefore = true,
            --
            label = poi.label,
            note = poi.note,
            sublabel = poi.sublabel,
            rewards = poi.rewards,
            group = poi.group
        })

        if self:GetCenter() > UIParent:GetCenter() then
            GameTooltip:SetOwner(self, 'ANCHOR_LEFT')
        else
            GameTooltip:SetOwner(self, 'ANCHOR_RIGHT')
        end

        renderTooltip(self, hookInfo)
    end)

    hooksecurefunc(DragonridingRacePinMixin, 'OnMouseLeave',
        function(self) GameTooltip:Hide() end)

    hooksecurefunc(VignettePinMixin, 'OnMouseEnter', function(self)
        if self.vignetteID ~= 5104 then return end -- Bronze Timekeeper
        local mapID = self:GetMap().mapID
        local x, y = self:GetPosition()

        local coords = HandyNotes:getCoord(x, y)

        local map = ns.maps[mapID]
        local node = map and map.nodes[coords]

        if not node then return end

        local hookInfo = Hook({
            showLabel = true,
            showSublabel = true,
            showNote = true,
            sublabelSpaceBefore = false,
            rewardsSpaceBefore = true,
            --
            label = node.label,
            note = node.note,
            sublabel = node.sublabel,
            rewards = node.rewards,
            group = node.group[1]
        })

        renderTooltip(self, hookInfo)
    end)

    ------------------------ ENCOUNTER JOURNAL TOOLTIP ------------------------

    hooksecurefunc(EncounterJournalPinMixin, 'OnMouseEnter', function(self)
        local poi = ns.hooks.encounter[self.encounterID]
        if not poi then return end

        local hookInfo = Hook({
            rewardsSpaceBefore = true,
            rewardsSpaceAfter = false,
            rewards = poi.rewards
        })

        renderTooltip(self, hookInfo)
    end)

    ----------------------------- LEGEND TOOLTIP ------------------------------

    local legendHandled = false

    hooksecurefunc(LegendHighlightablePoiPinMixin, 'OnLegendPinMouseEnter',
        function(self)
            if legendHandled then return end
            local poi = ns.hooks.legend[self.questID]
            if not poi then return end

            local hookInfo =
                Hook({rewardsSpaceAfter = true, rewards = poi.rewards})

            legendHandled = true

            renderTooltip(self, hookInfo)
        end)

    hooksecurefunc(LegendHighlightablePoiPinMixin, 'OnLegendPinMouseLeave',
        function(self) legendHandled = false end)

    -------------------------------- VIGNETTE ---------------------------------

    hooksecurefunc(VignettePinMixin, 'OnMouseEnter', function(self)
        local hookInfo = ns.hooks.vignette[self.vignetteID]
        if not hookInfo then
            -- World boss vignettes can be matched by their NPC id when the
            -- rewards are registered as a world quest hook.
            local info = C_VignetteInfo.GetVignetteInfo(self.vignetteGUID)
            local guid = info and info.objectGUID
            local npcID = guid and
                              tonumber(
                    guid:match('Creature%-%d+%-%d+%-%d+%-%d+%-(%d+)'))
            if npcID then
                for _, poi in pairs(ns.hooks.worldquest) do
                    if type(poi) == 'table' and poi.npcID == npcID then
                        hookInfo = poi
                        break
                    end
                end
            end
        end
        if not hookInfo then return end
        local mapID = self:GetMap().mapID
        if not hookInfo.group:GetDisplay(mapID) then return end
        local vignetteGUID = self.vignetteGUID
        local pos = C_VignetteInfo.GetVignettePosition(vignetteGUID, mapID)
        local coordinates = HandyNotes:getCoord(pos.x, pos.y)
        local node = ns.maps[mapID] and ns.maps[mapID].nodes[coordinates]
        if node and node.note then hookInfo.note = node.note end
        if node and node.rewards then hookInfo.rewards = node.rewards end
        renderTooltip(self, hookInfo)
    end)
end

-------------------------------------------------------------------------------

ns.HookAllPOIS = HookAllPOIS

ns.hook = {Vignette = Vignette}
