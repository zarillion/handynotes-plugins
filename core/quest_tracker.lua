-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
-------------------------------------------------------------------------------
-------------------------------- QUEST TRACKER --------------------------------
-------------------------------------------------------------------------------

-- To prevent disconnects when using C_QuestLog.GetTitleForQuestID too often.
local quest_limit = 20

local function GetChangedQuests() -- Q1: QuestDB, Q2: GetCompletedQuests
    local q1 = ns.QuestDB
    local q2 = {}
    for _, id in pairs(C_QuestLog.GetAllCompletedQuestIDs()) do q2[id] = true end

    local changed = {count = 0}

    for id, completed in pairs(q2) do
        -- Quest was completed before and is now not completed
        if q1[id] and q1[id].completed == true and not completed then
            changed[id] = false
            changed.count = changed.count + 1
            q1[id] = nil -- trim id from table q1 (QuestDB), alraedy checked
        end
        -- Quest was not completed before and is now completed
        if q1[id] and q1[id].completed == false and completed then
            changed[id] = true
            changed.count = changed.count + 1
            q1[id] = nil
        end
        -- Quest did not exist in QuestDB and is now completed
        if not q1[id] and completed then
            changed[id] = true
            changed.count = changed.count + 1
            q1[id] = nil
        end
    end

    for id, quest in pairs(q1) do
        if q2[id] == true and not quest.completed then
            changed[id] = true
            changed.count = changed.count + 1
        end
        if q2[id] == false and quest.completed then
            changed[id] = false
            changed.count = changed.count + 1
        end
    end

    return changed
end

local function UpdateQuestDB(changed)
    local map = C_Map.GetBestMapForUnit('player')
    if not map then return end -- cancel when map is not ready (teleport, map change, etc.)
    local x, y = C_Map.GetPlayerMapPosition(map, 'player'):GetXY()
    local Time = GetTime()

    if changed.count > quest_limit then
        ns.Print('Too many quests changed at once (' .. changed.count ..
                     '), please wait while the Database is being updated.')
    end

    local counter = 0
    for id, completed in pairs(changed) do
        counter = counter + 1
        if counter > quest_limit then break end
        if id ~= 'count' then -- skip changed.count
            -- create ns.QuestDB entry if it didnt existed before
            if not ns.QuestDB[id] then
                ns.QuestDB[id] = {
                    id = id,
                    name = ns.QuestDB[id] and ns.QuestDB[id].name or
                        C_QuestLog.GetTitleForQuestID(id) or
                        'Hidden/Tracking Quest'
                }
            end
            -- Set Quest Data in QuestDB
            ns.QuestDB[id].completed = completed
            ns.QuestDB[id].time = Time
            ns.QuestDB[id].map = map or 0
            ns.QuestDB[id].position = {x = x or 0, y = y or 0}

            -- Print Changed Quest IDs
            local q_changed = 'Quest %d [%s] changed: %s'
            if changed[id] == true then
                ns.Print(format(q_changed, id, ns.QuestDB[id].name,
                    'false => true'))
            else
                ns.Print(format(q_changed, id, ns.QuestDB[id].name,
                    'true => false'))
            end
        end
    end
end

ns.QuestTracker = function()
    if ns:GetOpt('show_debug_quest') then
        local changed = GetChangedQuests()
        if changed then UpdateQuestDB(changed) end
    end
    C_Timer.After(0.5, ns.QuestTracker)
end
