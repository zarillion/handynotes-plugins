-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local Class = ns.Class
local L = ns.locale

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
end -- just for now to prevent lua error on Vignettes

for type, hookTable in pairs(ns.hooks) do
    hookTable.Add = function(group, pois, options)
        for id, poi in pairs(pois) do
            -- an entry is either a plain list of rewards or a table holding
            -- `rewards`, `map` (the UiMap its pin links to) and/or `interval`
            -- (show the time remaining for this scheduled area POI)
            -- `interval` is either true (server scheduled event) or a
            -- table with its own GetText(), e.g. for events whose cycle
            -- is not part of the event scheduler
            local interval = poi.interval
            if interval == true then
                interval = ns.Intervals.LiveEvent({areaPoiID = id})
            end

            ns.hooks[type][id] = Hook({
                rewards = poi.rewards or (poi[1] and poi),
                map = poi.map or nil,
                interval = interval,
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

local function renderTooltip(self, POI)
    if not POI then return end

    if POI.group and not POI.group:GetDisplay(self:GetMap().mapID) then
        return
    end

    -- Add LABEL to tooltip if provided/enabled
    if POI.showLabel and POI.label then
        GameTooltip:SetText(ns.RenderLinks(POI.label, true))
    end

    -- Add SUBLABEL to tooltip if provided/enabled
    if POI.showSublabel and POI.sublabel then
        if POI.sublabelSpaceBefore then GameTooltip:AddLine(' ') end
        GameTooltip:AddLine(ns.RenderLinks(POI.sublabel, true), 1, 1, 1)
        if POI.sublabelSpaceAfter then GameTooltip:AddLine(' ') end
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

    -- Time remaining for scheduled events (see ns.Intervals), hidden when
    -- there is no event data for this POI
    if POI.interval then
        local intervalText = POI.interval:GetText()
        if intervalText then
            GameTooltip_AddBlankLineToTooltip(GameTooltip)
            local lines = {}
            for line in (intervalText .. '\n'):gmatch('(.-)\n') do
                lines[#lines + 1] = line
            end
            if #lines > 0 and lines[#lines] == '' then
                lines[#lines] = nil -- trailing break added by the .. '\n'
            end
            for i, line in ipairs(lines) do
                if line == '' then
                    GameTooltip_AddBlankLineToTooltip(GameTooltip)
                else
                    GameTooltip:AddLine(ns.RenderLinks(line), 1, 1, 1, true)
                end
            end
        end
    end

    -- Hint that right clicking switches to the linked map
    if POI.map then
        local rtext = _G[GameTooltip:GetName() .. 'TextRight1']
        rtext:SetTextColor(1, 1, 1)
        rtext:SetText(ns.GetIconLink('right_mouse', 12) .. ' ' ..
                          ns.status.Gray(L['change_map']))
        rtext:Show()
    end

    GameTooltip:Show()

    -- Widen tooltips too short for both the first line and the hint, so that
    -- the hint always keeps its distance from the text (see short tooltips
    -- inside instances, where no rewards are displayed). The right region does
    -- not follow the enlarged width, so anchor it behind the first line too.
    if POI.map then
        local ltext = _G[GameTooltip:GetName() .. 'TextLeft1']
        local rtext = _G[GameTooltip:GetName() .. 'TextRight1']
        local inset = ltext:GetLeft() and
                          (ltext:GetLeft() - GameTooltip:GetLeft()) or 12
        local needed = (inset * 2) + ltext:GetStringWidth() +
                           rtext:GetStringWidth() + 24
        if GameTooltip:GetWidth() < needed then
            GameTooltip:SetWidth(needed)
            rtext:ClearAllPoints()
            rtext:SetPoint('LEFT', ltext, 'RIGHT', 24, 0)
        end

        -- padding differs per tooltip and is not measurable before it is laid
        -- out, so correct whatever still sticks out
        local overflow = rtext:GetRight() and
                             (rtext:GetRight() - GameTooltip:GetRight())
        if overflow and overflow > 0 then
            GameTooltip:SetWidth(GameTooltip:GetWidth() + overflow + 12)
        end
    end
end

local function HookAllPOIS()
    ------------------------------ MAP SHORTCUTS ------------------------------

    -- A pin whose hook carries a `map` attribute is right clickable and will
    -- switch the world map to that map (see the Add calls in the plugins).
    local function shortcutMap(poiInfo)
        if not (poiInfo and poiInfo.areaPoiID) then return end
        for _, poiType in ipairs({'delve', 'areapoi', 'areapoievent'}) do
            local poi = ns.hooks[poiType][poiInfo.areaPoiID]
            if poi then
                -- delves without an explicit map fall back to the map their
                -- entrance POI links to
                if poiType == 'delve' then
                    return poi.map or poiInfo.linkedUiMapID
                end
                return poi.map
            end
        end
    end

    local function addMapShortcut(self, poiInfo)
        local mapID = shortcutMap(poiInfo)
        if not mapID then return end

        -- Pins are shared by every HandyNotes plugin and each of them installs
        -- its own lookups, so track who already hooked this pin. The hooks
        -- themselves are stateless: pins are pooled and reused for other POIs,
        -- so the map is looked up again on every use instead of being captured
        -- here (see Blizzard's CheckMouseButtonPassthrough call, which happens
        -- after OnAcquired for exactly this reason).
        local addons = self.mapShortcutAddons
        if not addons then
            addons = {}
            self.mapShortcutAddons = addons
        end
        if addons[ns] then return end
        addons[ns] = true

        -- Map pins ignore right clicks by default, this one opts back in.
        local passthrough = self.ShouldMouseButtonBePassthrough
        local function shouldPass(pin, button)
            if button == 'RightButton' and shortcutMap(pin.poiInfo) then
                return false
            end
            return passthrough(pin, button)
        end
        self.ShouldMouseButtonBePassthrough = shouldPass

        local click = self.OnMouseClickAction
        local function onRightClick(pin, button, ...)
            local map = (button == 'RightButton') and shortcutMap(pin.poiInfo)
            if map then
                WorldMapFrame:SetMapID(map)
                return true
            end
            return click and click(pin, button, ...)
        end
        self.OnMouseClickAction = onRightClick
    end

    local function hookMapShortcut(mixin)
        hooksecurefunc(mixin, 'OnAcquired', function(self, poiInfo)
            addMapShortcut(self, poiInfo)
        end)

        hooksecurefunc(mixin, 'OnMouseLeave', function(self)
            _G[GameTooltip:GetName() .. 'TextRight1']:Hide()
        end)
    end

    hookMapShortcut(AreaPOIPinMixin)
    hookMapShortcut(AreaPOIEventPinMixin)
    hookMapShortcut(DelveEntrancePinMixin)

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
            map = shortcutMap(self.poiInfo),
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
            map = shortcutMap(self.poiInfo),
            interval = poi.interval
        })

        renderTooltip(self, hookInfo)
    end)

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
                map = shortcutMap(self.poiInfo),
                interval = poi.interval
            })
        else
            hookInfo = Hook({
                rewardsSpaceBefore = false,
                rewardsSpaceAfter = true,
                rewards = poi.rewards,
                group = poi.group,
                map = shortcutMap(self.poiInfo),
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
