-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local _, ns = ...

local Class = ns.Class
local L = ns.locale
local Quest = ns.node.Quest

-------------------------------------------------------------------------------
-------------------------------- TIMED EVENTS ---------------------------------
-------------------------------------------------------------------------------

local TimedEvent = Class('TimedEvent', Quest, {
    icon="peg_yellow",
    scale=2,
    group="assault_events",
    note=''
})

function TimedEvent:enabled (map, coord, minimap)
    -- Timed events that are not active today return nil here
    if not C_TaskQuest.GetQuestTimeLeftMinutes(self.quest[1]) then
        return false
    end
    return Quest.enabled(self, map, coord, minimap)
end

ns.node.TimedEvent = TimedEvent