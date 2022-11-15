-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale

local Rare = ns.node.Rare
local NPC = ns.node.NPC

-------------------------------------------------------------------------------

--[[

There is a calendar event for the anniversary that remains static every year:

    event=590,title=WoW's Anniversary

However, this event does not actually show up in the C_Calendar API, so we cannot use
it to check if the event is active. The actual event id, title and dates change:

    event=1225,title=WoW's 17th Anniversary,dates=11/15-12/6
    event=1262,title=WoW's 18th Anniversary,dates=11/6-11/27

So as far as I can tell, we cannot look for a single event id or a static date range.
We have two options, we can update this code each year to include the new event id, or
we can pattern match the title for each language we support. I'm going to go with the
latter so no new releases are necessary each year.

If someone knows a better way, let me know!

--]]

local function IsAnniversaryEvent()
    local day = C_DateAndTime.GetCurrentCalendarTime().monthDay
    C_Calendar.SetMonth(0) -- set calendar to current month

    for i = 1, C_Calendar.GetNumDayEvents(0, day) do
        local event = C_Calendar.GetDayEvent(0, day, i)

        -- LuaFormatter off
        if event.calendarType == 'HOLIDAY' and (
            event.title:match('WoW\'s %d%d%l%l Anniversary') or -- enUS
            event.title:match('%d%d. Geburtstag von WoW') or -- deDE
            event.title:match('%d%de anniversaire de Wo') or -- frFR
            event.title:match('%d%d-я годовщина Wo') or -- ruRU
            event.title:match('魔兽世界') and event.title:match('周年') -- zhCN 魔兽世界十八周年
            -- additional language help needed!
        ) then return true end
        -- LuaFormatter on
    end
end

ns.node.AnniversaryRare = Class('AnniversaryRare', Rare, {
    sublabel = L['anniversary_note'],
    IsEnabled = function(self)
        if not IsAnniversaryEvent() then return false end
        return Rare.IsEnabled(self)
    end
})

ns.node.AnniversaryNPC = Class('AnniversaryNPC', NPC, {
    sublabel = L['anniversary_note'],
    IsEnabled = function(self)
        if not IsAnniversaryEvent() then return false end
        return Rare.IsEnabled(self)
    end
})

-------------------------------------------------------------------------------

ns.expansion = 1
