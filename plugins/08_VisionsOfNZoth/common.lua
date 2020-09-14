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

function TimedEvent:prerequisite ()
    -- Timed events that are not active today return nil here
    return C_TaskQuest.GetQuestTimeLeftMinutes(self.quest[1])
end

ns.node.TimedEvent = TimedEvent