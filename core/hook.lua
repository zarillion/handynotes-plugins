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
end -- just for now to prevent lua error on Vignettes

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

    GameTooltip:Show()
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
            group = poi.group
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
            group = poi.group
        })

        renderTooltip(self, hookInfo)
    end)

    ----------------------------- DELVE ENTRANCE ------------------------------

    hooksecurefunc(DelveEntrancePinMixin, 'OnMouseEnter', function(self)
        local poi = ns.hooks['delve'][self.poiInfo.areaPoiID]
        if not poi then return end

        local hookInfo = Hook({
            rewardsSpaceBefore = true,
            rewardsSpaceAfter = false,
            rewards = poi.rewards,
            group = poi.group
        })

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
        local node = ns.maps[mapID].nodes[coordinates]
        hookInfo.note = node.note
        hookInfo.rewards = node.rewards
        renderTooltip(self, hookInfo)
    end)
end

-------------------------------------------------------------------------------

ns.HookAllPOIS = HookAllPOIS

ns.hook = {Vignette = Vignette}
