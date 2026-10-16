-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale

-------------------------------------------------------------------------------
-------------------------------- AQIR INVASION --------------------------------
-------------------------------------------------------------------------------

-- The invasion rotates between Eversong Woods and Zul'Aman with the weekly
-- reset and starts at the top of every hour. The event scheduler only knows
-- the weekly window of that rotation, so the countdown to the next start is
-- computed here (same idea as the Curse Surge note in Coiled Isles).
--
-- Registered in the event table only: event pins also run the plain area POI
-- hook, so listing them twice would render the tooltip lines twice.
local Hourly = {
    GetText = function()
        local into = GetServerTime() % 3600
        -- the invasion runs for the first 10 minutes of every hour
        if into < 600 then
            return ns.color.Green(L['aqir_invasion_running'])
        end
        return format('%s %s', L['starts_in'],
            ns.color.Orange(ns.FormatCountdown(3600 - into)))
    end
}

local AQIR_INVASION_AREA_POIS = {
    [8812] = {interval = Hourly}, -- Aqir Invasion of Zul'Aman
    [8813] = {interval = Hourly}, -- Aqir Invasion of Eversong
    [9026] = {interval = Hourly}, -- Aqir Invasion (Zul'Aman)
    [9027] = {interval = Hourly}, -- Aqir Invasion (Eversong Woods)
    [9045] = {interval = Hourly} -- Aqir Invasion (Quel'Thalas)
}

ns.hooks.areapoievent.Add(ns.groups.MISC, AQIR_INVASION_AREA_POIS)
