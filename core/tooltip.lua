-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...

-------------------------------------------------------------------------------
----------------------------------- TOOLTIP -----------------------------------
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

ns.tooltip = {
    ItemStatus = ItemStatus,
    QuestStatus = QuestStatus,
    ReputationGain = ReputationGain
}
