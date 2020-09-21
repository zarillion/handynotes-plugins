-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local _, ns = ...

local Class = ns.Class
local Group = ns.Group
local Quest = ns.node.Quest

-------------------------------------------------------------------------------

ns.groups.ALPACA_ULDUM = Group({name='alpaca_uldum'})
ns.groups.ALPACA_VOLDUN = Group({name='alpaca_voldun'})
ns.groups.ASSAULT_EVENT = Group({name='assault_events'})
ns.groups.DAILY_CHESTS = Group({name='daily_chests'})
ns.groups.COFFERS = Group({name='coffers'})
ns.groups.VISIONS_BUFFS = Group({name='visions_buffs'})
ns.groups.VISIONS_CRYSTALS = Group({name='visions_crystals'})
ns.groups.VISIONS_MAIL = Group({name='visions_mail'})
ns.groups.VISIONS_MISC = Group({name='visions_misc'})
ns.groups.VISIONS_CHEST = Group({name='visions_chest'})

-------------------------------------------------------------------------------
-------------------------------- TIMED EVENTS ---------------------------------
-------------------------------------------------------------------------------

local TimedEvent = Class('TimedEvent', Quest, {
    icon = "peg_yellow",
    scale = 2,
    group = ns.groups.ASSAULT_EVENT,
    note = ''
})

function TimedEvent:prerequisite ()
    -- Timed events that are not active today return nil here
    return C_TaskQuest.GetQuestTimeLeftMinutes(self.quest[1])
end

ns.node.TimedEvent = TimedEvent