local ADDON_NAME, ns = ...

-------------------------------------------------------------------------------
------------------------------ DATAMINE TOOLTIP -------------------------------
-------------------------------------------------------------------------------

local NameResolver = {cache = {}, prepared = {}}

function NameResolver:IsLink(link)
    if link == nil then return link end
    return strsub(link, 1, 5) == 'unit:'
end

function NameResolver:Prepare(link)
    if self:IsLink(link) and not (self.cache[link] or self.prepared[link]) then
        -- use a separate tooltip to spam load NPC names, doing this with the
        -- main tooltip can sometimes cause it to become unresponsive and never
        -- update its text until a reload
        C_TooltipInfo.GetHyperlink(link)
        self.prepared[link] = true
    end
end

function NameResolver:Resolve(link)
    -- may be passed a raw name or a hyperlink to be resolved
    if not self:IsLink(link) then return link or UNKNOWN end

    -- all npcs must be prepared ahead of time to avoid breaking the resolver
    if not self.prepared[link] then
        ns.Debug('ERROR: npc link not prepared:', link)
    end

    local name = self.cache[link]
    if name == nil then
        name = UNKNOWN
        local tooltipData = C_TooltipInfo.GetHyperlink(link)
        if tooltipData then
            local line = tooltipData.lines and tooltipData.lines[1]
            if line then name = line.leftText or UNKNOWN end
        end
        if name == UNKNOWN then
            ns.Debug('NameResolver returned UNKNOWN')
        else
            self.cache[link] = name
        end
    end
    return name
end

-------------------------------------------------------------------------------
------------------------------- CALENDAR EVENTS -------------------------------
-------------------------------------------------------------------------------

local activeCalenderEvents = {}
local function UpdateActiveCalendarEvents()
    -- set Calendar to current month
    local current = C_DateAndTime.GetCurrentCalendarTime()
    C_Calendar.SetAbsMonth(current.month, current.year)

    wipe(activeCalenderEvents)
    local day = current.monthDay
    for i = 1, C_Calendar.GetNumDayEvents(0, day) do
        local event = C_Calendar.GetDayEvent(0, day, i)
        activeCalenderEvents[event.eventID] = true
    end

    -- hours until midnight + minutes unit midnight + 5 extra seconds
    local nextDay = (((23 - current.hour) * 60) + (60 - current.minute)) * 60 +
                        5
    -- this will call UpdateActiveCalendarEvents after midnight
    C_Timer.After(nextDay, UpdateActiveCalendarEvents)
end

local function IsCalendarEventActive(eventID)
    return activeCalenderEvents[eventID] and true or false
end

-------------------------------------------------------------------------------
-------------------------------- LINK RENDERER --------------------------------
-------------------------------------------------------------------------------

local function PrepareLinks(str)
    if not str then return end
    for type, id in str:gmatch('{(%l+):(%d+)(%l*)}') do
        id = tonumber(id)
        if type == 'npc' then
            NameResolver:Prepare(('unit:Creature-0-0-0-0-%d'):format(id))
        elseif type == 'item' then
            C_Item.RequestLoadItemDataByID(id) -- prime item info
        elseif type == 'daily' or type == 'quest' then
            C_QuestLog.RequestLoadQuestByID(id) -- prime quest title
        elseif type == 'spell' then
            C_Spell.RequestLoadSpellData(id) -- prime spell info
        end
    end
end

local function RenderLinks(str, nameOnly)
    -- render numeric ids
    local links, _ = str:gsub('{(%l+):(%d+)(%l*)}', function(type, id, suffix)
        id = tonumber(id)
        if type == 'npc' then
            local name = NameResolver:Resolve('unit:Creature-0-0-0-0-' .. id)
            name = name .. (suffix or '')
            if nameOnly then return name end
            return ns.color.NPC(name)
        elseif type == 'achievement' then
            if nameOnly then
                local _, name = GetAchievementInfo(id)
                if name then return name end
            else
                local link = GetAchievementLink(id)
                if link then
                    return ns.GetIconLink('achievement', 15) .. link
                end
            end
        elseif type == 'currency' then
            local info = C_CurrencyInfo.GetCurrencyInfo(id)
            if info then
                if nameOnly then return info.name end
                local link = C_CurrencyInfo.GetCurrencyLink(id, 0)
                if link then
                    return '|T' .. info.iconFileID .. ':0|t ' .. link
                end
            end
        elseif type == 'faction' then
            local name = GetFactionInfoByID(id)
            if nameOnly then return name end
            return ns.color.NPC(name) -- TODO: colorize based on standing?
        elseif type == 'item' then
            local name, link, _, _, _, _, _, _, _, icon = GetItemInfo(id)
            if link and icon then
                return nameOnly and (name .. (suffix or '')) or
                           ('|T' .. icon .. ':0|t ' .. link)
            end
        elseif type == 'daily' or type == 'quest' then
            local name = C_QuestLog.GetTitleForQuestID(id)
            if name then
                if nameOnly then return name end
                local icon = type == 'daily' and 'quest_ab' or 'quest_ay'
                return ns.GetIconLink(icon, 12) ..
                           ns.color.Yellow('[' .. name .. ']')
            end
        elseif type == 'spell' then
            local name, _, icon = GetSpellInfo(id)
            if name and icon then
                if nameOnly then return name end
                return ns.color.Spell('|T' .. icon .. ':0|t [' .. name .. ']')
            end
        end
        return type .. '+' .. id
    end)
    -- render commonly colored text
    local function renderNonNumeric(str)
        local result = str:gsub('{(%l+):([^{}]+)}', function(type, text)
            if type == 'bug' then return ns.color.Red(text) end
            if type == 'emote' then return ns.color.Orange(text) end
            if type == 'location' then return ns.color.Yellow(text) end
            if type == 'note' then return ns.color.Orange(text) end
            if type == 'object' then return ns.color.Yellow(text) end
            if type == 'title' then return ns.color.Yellow(text) end
            if type == 'npc' then return ns.color.NPC(text) end
            if type == 'yell' then return ns.color.Red(text) end
            if type == 'faction' then return ns.color.NPC(text) end
            if type == 'wq' then
                local icon = ns.GetIconLink('world_quest', 16, 0, -1)
                return icon .. ns.color.Yellow('[' .. text .. ']')
            end
            if type == 'dot' then
                local r, g, b = ns.getARGB(text, 255)
                local texStr = '|T%s:0::::16:16::16::16:%d:%d:%d|t'
                return texStr:format(ns.GetGlowPath('peg_bl'), r, g, b)
            end
            return type .. '+' .. text
        end)
        if result == str then
            return result
        else
            return renderNonNumeric(result)
        end
    end
    links = renderNonNumeric(links)
    return links
end

-------------------------------------------------------------------------------
-------------------------------- PLAYER FUNCTIONS -----------------------------
-------------------------------------------------------------------------------

local function PlayerHasItem(item, count)
    return GetItemCount(item, true) >= (count and count > 1 and count or 1)
end

local function PlayerHasProfession(skillID)
    for _, prof in pairs({GetProfessions()}) do
        local id = select(7, GetProfessionInfo(prof))
        if skillID == id then return true end
    end
    return false
end

-------------------------------------------------------------------------------
------------------------------ DATABASE FUNCTIONS -----------------------------
-------------------------------------------------------------------------------

local function GetDatabaseTable(...)
    local db = _G[ADDON_NAME .. 'DB']
    for _, key in ipairs({...}) do
        if db[key] == nil then db[key] = {} end
        db = db[key]
    end
    return db
end

-------------------------------------------------------------------------------
------------------------------ LOCALE FUNCTIONS -------------------------------
-------------------------------------------------------------------------------

--[[

Wrap the AceLocale NewLocale() function to return a slightly modified locale
table. This table will ignore assignments of `nil`, allowing locales to include
noop translation lines in their files without overriding the default enUS
strings. This allows us to keep all the locale files in sync with the exact
same keys in the exact same order even before actual translations are done.

--]]

local AceLocale = LibStub('AceLocale-3.0')
local LOCALES = {}

local function NewLocale(locale)
    if LOCALES[locale] then return LOCALES[locale] end
    local L = AceLocale:NewLocale(ADDON_NAME, locale, (locale == 'enUS'), true)
    if not L then return end
    local wrapper = {}
    setmetatable(wrapper, {
        __index = function(self, key) return L[key] end,
        __newindex = function(self, key, value)
            if value == nil then return end
            L[key] = value
        end
    })
    return wrapper
end

-------------------------------------------------------------------------------
------------------------------ TABLE CONVERTERS -------------------------------
-------------------------------------------------------------------------------

local function AsTable(value, class)
    -- normalize to table of scalars
    if type(value) == 'nil' then return end
    if type(value) ~= 'table' then return {value} end
    if class and ns.IsInstance(value, class) then return {value} end
    return value
end

local function AsIDTable(value)
    -- normalize to table of id objects
    if type(value) == 'nil' then return end
    if type(value) ~= 'table' then return {{id = value}} end
    if value.id then return {value} end
    for i, v in ipairs(value) do
        if type(v) == 'number' then value[i] = {id = v} end
    end
    return value
end

-------------------------------------------------------------------------------

ns.AsIDTable = AsIDTable
ns.AsTable = AsTable
ns.GetDatabaseTable = GetDatabaseTable
ns.IsCalendarEventActive = IsCalendarEventActive
ns.NameResolver = NameResolver
ns.NewLocale = NewLocale
ns.PlayerHasItem = PlayerHasItem
ns.PlayerHasProfession = PlayerHasProfession
ns.PrepareLinks = PrepareLinks
ns.RenderLinks = RenderLinks
ns.UpdateActiveCalendarEvents = UpdateActiveCalendarEvents
