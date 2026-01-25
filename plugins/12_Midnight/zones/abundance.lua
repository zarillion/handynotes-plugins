-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...

local Achievement = ns.reward.Achievement
local Spacer = ns.reward.Spacer
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-------------------------------- DELVE REWARDS --------------------------------
-------------------------------------------------------------------------------
local maps = {
    ns.maps[2395], -- Eversong Woods
    ns.maps[2413], -- Harandar
    ns.maps[2405], -- Voidstorm
    ns.maps[2437] -- Zul'Aman
}

for _, m in pairs(maps) do
    m.groups[#m.groups + 1] = ns.groups.ABUNDANCE_REWARDS
    m.groups[ns.groups.ABUNDANCE_REWARDS] = true
end

local ABUNDANCE_REWARDS = {
    ['zul_aman'] = {
        Achievement({id = 61943, oneline = true, criteria = {111432}}), -- Abundance: Prosperous Plentitude!
        Achievement({id = 62325, oneline = true, criteria = {112531}}), -- Abundance: Treasures Aplenty
        Achievement({id = 62326, oneline = true, criteria = {112535}}), -- Abundance: Golden Opportunities
        Achievement({id = 62329, oneline = true, criteria = {112539}}), -- Abundance: Squash the Competition
        Achievement({id = 62330, oneline = true, criteria = {112543}}), -- Abundance: One Bite at a Time
        Achievement({id = 62331, oneline = true, criteria = {112547}}), -- Abundance: Drops of Prosperity
        Achievement({id = 61938, oneline = true, criteria = {111422}}), -- Abundance: Artisan of Loaknit
        Achievement({id = 62324, oneline = true, criteria = {112529}}), -- Abundance: Loa of all Trades
        Spacer(), Achievement({id = 62333, criteria = {112555}}), -- Abundance: Harvester
        Achievement({id = 62336, criteria = {112557}}), -- Abundance: Contributer
        Achievement({id = 62337, criteria = {112558}}), -- Abundance: Professional
        Achievement({id = 62338, criteria = {112559}}), -- Abundance: Artisan
        Achievement({id = 62339, criteria = {112560}}), -- Abundance: Gambler
        Achievement({id = 62340, criteria = {112561}}), -- Abundance: Investor
        Achievement({id = 61681, criteria = {111406}}), -- Abundance: You Should See Him in a Crown
        Achievement({id = 62266, criteria = {111406}}) -- Abundance: An Acolyte no Longer
    },
    ['eversong_forest'] = {
        Achievement({id = 61943, oneline = true, criteria = {111431}}), -- Abundance: Prosperous Plentitude!
        Achievement({id = 62325, oneline = true, criteria = {112530}}), -- Abundance: Treasures Aplenty
        Achievement({id = 62326, oneline = true, criteria = {112534}}), -- Abundance: Golden Opportunities
        Achievement({id = 62329, oneline = true, criteria = {112538}}), -- Abundance: Squash the Competition
        Achievement({id = 62330, oneline = true, criteria = {112542}}), -- Abundance: One Bite at a Time
        Achievement({id = 62331, oneline = true, criteria = {112546}}), -- Abundance: Drops of Prosperity
        Achievement({id = 61937, oneline = true, criteria = {111421}}), -- Abundance: Artisan of Mausoloa
        Achievement({id = 62324, oneline = true, criteria = {112529}}), -- Abundance: Loa of all Trades
        Spacer(), Achievement({id = 62333, criteria = {112555}}), -- Abundance: Harvester
        Achievement({id = 62336, criteria = {112557}}), -- Abundance: Contributer
        Achievement({id = 62337, criteria = {112558}}), -- Abundance: Professional
        Achievement({id = 62338, criteria = {112559}}), -- Abundance: Artisan
        Achievement({id = 62339, criteria = {112560}}), -- Abundance: Gambler
        Achievement({id = 62340, criteria = {112561}}), -- Abundance: Investor
        Achievement({id = 61681, criteria = {111406}}), -- Abundance: You Should See Him in a Crown
        Achievement({id = 62266, criteria = {111406}}) -- Abundance: An Acolyte no Longer

    },
    ['voidstorm'] = {
        Achievement({id = 61943, oneline = true, criteria = {111434}}), -- Abundance: Prosperous Plentitude!
        Achievement({id = 62325, oneline = true, criteria = {112533}}), -- Abundance: Treasures Aplenty
        Achievement({id = 62326, oneline = true, criteria = {112537}}), -- Abundance: Golden Opportunities
        Achievement({id = 62329, oneline = true, criteria = {112541}}), -- Abundance: Squash the Competition
        Achievement({id = 62330, oneline = true, criteria = {112545}}), -- Abundance: One Bite at a Time
        Achievement({id = 62331, oneline = true, criteria = {112549}}), -- Abundance: Drops of Prosperity
        Achievement({id = 61940, oneline = true, criteria = {111424}}), -- Abundance: Artisan of Loanite
        Achievement({id = 62324, oneline = true, criteria = {112529}}), -- Abundance: Loa of all Trades
        Spacer(), Achievement({id = 62333, criteria = {112555}}), -- Abundance: Harvester
        Achievement({id = 62336, criteria = {112557}}), -- Abundance: Contributer
        Achievement({id = 62337, criteria = {112558}}), -- Abundance: Professional
        Achievement({id = 62338, criteria = {112559}}), -- Abundance: Artisan
        Achievement({id = 62339, criteria = {112560}}), -- Abundance: Gambler
        Achievement({id = 62340, criteria = {112561}}), -- Abundance: Investor
        Achievement({id = 61681, criteria = {111406}}), -- Abundance: You Should See Him in a Crown
        Achievement({id = 62266, criteria = {111406}}) -- Abundance: An Acolyte no Longer
    },
    ['harandar'] = {
        Achievement({id = 61943, oneline = true, criteria = {111433}}), -- Abundance: Prosperous Plentitude!
        Achievement({id = 62325, oneline = true, criteria = {112532}}), -- Abundance: Treasures Aplenty
        Achievement({id = 62326, oneline = true, criteria = {112536}}), -- Abundance: Golden Opportunities
        Achievement({id = 62329, oneline = true, criteria = {112540}}), -- Abundance: Squash the Competition
        Achievement({id = 62330, oneline = true, criteria = {112544}}), -- Abundance: One Bite at a Time
        Achievement({id = 62331, oneline = true, criteria = {112548}}), -- Abundance: Drops of Prosperity
        Achievement({id = 61939, oneline = true, criteria = {111423}}), -- Abundance: Artisan of Floaret
        Achievement({id = 62324, oneline = true, criteria = {112529}}), -- Abundance: Loa of all Trades
        Spacer(), Achievement({id = 62333, criteria = {112555}}), -- Abundance: Harvester
        Achievement({id = 62336, criteria = {112557}}), -- Abundance: Contributer
        Achievement({id = 62337, criteria = {112558}}), -- Abundance: Professional
        Achievement({id = 62338, criteria = {112559}}), -- Abundance: Artisan
        Achievement({id = 62339, criteria = {112560}}), -- Abundance: Gambler
        Achievement({id = 62340, criteria = {112561}}), -- Abundance: Investor
        Achievement({id = 61681, criteria = {111406}}), -- Abundance: You Should See Him in a Crown
        Achievement({id = 62266, criteria = {111406}}) -- Abundance: An Acolyte no Longer
    }
}

local ABUNDANCE_AREA_POIS = {
    -- NORMAL ABUNDANCE ----------------------------------------------------------
    [8415] = ABUNDANCE_REWARDS['zul_aman'],
    [8416] = ABUNDANCE_REWARDS['eversong_forest'],
    [8417] = ABUNDANCE_REWARDS['voidstorm'],
    [8418] = ABUNDANCE_REWARDS['harandar'],
    -- ABUNTANT HARVEST -------------------------------------------------------
    [8525] = ABUNDANCE_REWARDS['zul_aman'],
    [8528] = ABUNDANCE_REWARDS['eversong_forest'],
    [8526] = ABUNDANCE_REWARDS['voidstorm'],
    [8527] = ABUNDANCE_REWARDS['harandar']
}

ns.hooks.areapoievent.Add(ns.groups.ABUNDANCE_REWARDS, ABUNDANCE_AREA_POIS)
