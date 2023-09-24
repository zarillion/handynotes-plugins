-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...

-------------------------------------------------------------------------------
----------------------------------- TOOLTIP -----------------------------------
-------------------------------------------------------------------------------

local function ItemStatus(itemID, numNeed, note)
    local txt
    local numHave = GetItemCount(itemID, true)
    local status = format('%d/%d', numHave, numNeed)
    if numHave >= numNeed then
        txt = ns.status.Green(status)
    else
        txt = ns.status.Red(status)
    end
    if note then txt = '\n\n' .. txt .. ' ' .. note end
    return txt
end

local function QuestStatus(questID, identifier, note)
    local txt
    if C_QuestLog.IsQuestFlaggedCompleted(questID) then
        txt = ns.status.Green(identifier)
    else
        txt = ns.status.Red(identifier)
    end
    if note then txt = '\n\n' .. txt .. note end
    return txt
end

ns.tooltip = {ItemStatus = ItemStatus, QuestStatus = QuestStatus}
