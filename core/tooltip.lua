-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...

-------------------------------------------------------------------------------
--------------------------- TOOLTIP TEXT SHORTCUTS ----------------------------
-------------------------------------------------------------------------------

local function ItemStatus(itemID, numNeed, note, spacer)
    local txt
    local numHave = C_Item.GetItemCount(itemID, true)
    local status = format('%d/%s', numHave, numNeed)
    if type(numNeed) == 'number' and numHave >= numNeed then
        txt = ns.status.Green(status)
    else
        txt = ns.status.Red(status)
    end
    if note then txt = txt .. ' ' .. note end
    if spacer == nil or spacer == true then txt = '\n\n' .. txt end
    return txt
end

local function PetStatus(petID, identifier, note)
    local txt = ''
    if select(1, C_PetJournal.GetNumCollectedInfo(petID)) > 0 then
        txt = txt .. ns.status.Green(identifier)
    else
        txt = txt .. ns.status.Red(identifier)
    end
    if note then txt = txt .. ' ' .. note end
    return txt
end

local function QuestStatus(questID, identifier, note, spacer)
    local txt = '\n'
    if C_QuestLog.IsQuestFlaggedCompleted(questID) then
        txt = txt .. ns.status.Green(identifier)
    else
        txt = txt .. ns.status.Red(identifier)
    end
    if note then txt = txt .. ' ' .. note end
    if spacer then txt = txt .. '\n' end -- adds a blank line after the status text
    return txt
end

local function ReputationGain(value, factionID)
    local factionName = ns.api.GetFactionInfoByID(factionID)
    return ns.status.LightBlue('+' .. value .. ' ' .. factionName)
end

-------------------------------------------------------------------------------
------------------- APPEND REWARDS TO VIGNETTE PIN TOOLTIPS -------------------
-------------------------------------------------------------------------------

local function addRewardsToVignetteTooltip(map, group, vignetteID)
    local map = map
    local group = group
    local vignetteID = vignetteID
    hooksecurefunc(VignettePinMixin, 'OnMouseEnter', function(self)
        if self.vignetteID ~= vignetteID then return end
        if not group:IsEnabled() then return end
        local mapID = self:GetMap().mapID
        local vignetteGUID = self.vignetteGUID
        local x = C_VignetteInfo.GetVignettePosition(vignetteGUID, mapID).x
        local y = C_VignetteInfo.GetVignettePosition(vignetteGUID, mapID).y
        local coordinates = HandyNotes:getCoord(x, y)
        local node = map.nodes[coordinates]
        if not node then return end
        if ns:GetOpt('show_loot') then
            for i, reward in ipairs(node.rewards) do
                if reward:IsEnabled() then
                    reward:Render(GameTooltip)
                end
            end
            GameTooltip:AddLine(' ')
        end
        GameTooltip:Show()
    end)
end

-------------------------------------------------------------------------------
--------------------------------- PIN TOOLTIP ---------------------------------
-------------------------------------------------------------------------------

local function RenderPinTooltip(pin)
    local x, _ = pin:GetCenter()
    local parentX, _ = pin:GetParent():GetCenter()
    if (x > parentX) then
        GameTooltip:SetOwner(pin, 'ANCHOR_LEFT')
    else
        GameTooltip:SetOwner(pin, 'ANCHOR_RIGHT')
    end

    ns.PrepareLinks(pin.label)
    ns.PrepareLinks(pin.note)

    C_Timer.After(0, function()
        -- label
        GameTooltip:SetText(ns.RenderLinks(pin.label, true))

        -- note
        if pin.note and ns:GetOpt('show_notes') then
            GameTooltip:AddLine(ns.RenderLinks(pin.note), 1, 1, 1, true)
        end

        GameTooltip:Show()
    end)
end

ns.tooltip = {
    ItemStatus = ItemStatus,
    PetStatus = PetStatus,
    QuestStatus = QuestStatus,
    ReputationGain = ReputationGain,
    addRewardsToVignetteTooltip = addRewardsToVignetteTooltip,
    RenderPinTooltip = RenderPinTooltip
}
