-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...

local L = ns.locale
local Class = ns.Class

local SkyridingRace = ns.node.SkyridingRace

local Achievement = ns.reward.Achievement

-------------------------------------------------------------------------------

local IsleOfDorn = ns.maps[2248]
local RingingDeeps = ns.maps[2214]
local Hallowfall = ns.maps[2215]
local AzjKahet = ns.maps[2255]
local Undermine = ns.maps[2346]

local Dornogal = ns.maps[2339]

-------------------------------------------------------------------------------
-------------------------------- ISLE OF DORN ---------------------------------
-------------------------------------------------------------------------------

local function IsleOfDorn_Rewards(a)
    local rewards = {
        Achievement({id = 40316, criteria = a, oneline = true}), -- normal bronze
        Achievement({id = 40317, criteria = a, oneline = true}), -- normal silver
        Achievement({id = 40318, criteria = a, oneline = true}), -- normal gold
        Achievement({id = 40319, criteria = a, oneline = true}), -- advanced bronze
        Achievement({id = 40320, criteria = a, oneline = true}), -- advanced silver
        Achievement({id = 40321, criteria = a, oneline = true}), -- advanced gold
        Achievement({id = 40322, criteria = a, oneline = true}), -- reverse bronze
        Achievement({id = 40323, criteria = a, oneline = true}), -- reverse silver
        Achievement({id = 40324, criteria = a, oneline = true}) -- reverse gold
    }
    return rewards
end

Dornogal.nodes[43471165] = SkyridingRace({
    label = '{quest:80219}',
    parent = IsleOfDorn,
    normal = {2923, 0, 0},
    advanced = {2929, 0, 0},
    reverse = {2935, 0, 0},
    rewards = IsleOfDorn_Rewards(1)
}) -- Dornogal Drift

IsleOfDorn.nodes[38574346] = SkyridingRace({
    label = '{quest:80220}',
    normal = {2924, 0, 0},
    advanced = {2930, 0, 0},
    reverse = {2936, 0, 0},
    rewards = IsleOfDorn_Rewards(2)
}) -- Storm's Watch Survey

IsleOfDorn.nodes[53486421] = SkyridingRace({
    label = '{quest:80221}',
    normal = {2925, 0, 0},
    advanced = {2931, 0, 0},
    reverse = {2937, 0, 0},
    rewards = IsleOfDorn_Rewards(3)
}) -- Basin Bypass

IsleOfDorn.nodes[62164601] = SkyridingRace({
    label = '{quest:80222}',
    normal = {2926, 0, 0},
    advanced = {2932, 0, 0},
    reverse = {2938, 0, 0},
    rewards = IsleOfDorn_Rewards(4)
}) -- The Wold Ways

IsleOfDorn.nodes[58332485] = SkyridingRace({
    label = '{quest:80223}',
    normal = {2927, 0, 0},
    advanced = {2933, 0, 0},
    reverse = {2939, 0, 0},
    rewards = IsleOfDorn_Rewards(5)
}) -- Thunderhead Trail

IsleOfDorn.nodes[32937483] = SkyridingRace({
    label = '{quest:80224}',
    normal = {2928, 0, 0},
    advanced = {2934, 0, 0},
    reverse = {2940, 0, 0},
    rewards = IsleOfDorn_Rewards(6)
}) -- Orecreg's Doglegs

local ISLE_OF_DORN_POIS = {
    [7793] = Dornogal.nodes[43471165], -- Dornogal Drift
    [7794] = IsleOfDorn.nodes[38574346], -- Storm's Watch Survey
    [7795] = IsleOfDorn.nodes[53486421], -- Basin Bypass
    [7796] = IsleOfDorn.nodes[62164601], -- The Wold Ways
    [7797] = IsleOfDorn.nodes[58332485], -- Thunderhead Trail
    [7798] = IsleOfDorn.nodes[32937483] -- Orecreg's Doglegs
}

ns.hooks.skyridingrace.Add(ns.groups.SKYRIDING_RACE, ISLE_OF_DORN_POIS)

-------------------------------------------------------------------------------
-------------------------------- RINGING DEEPS --------------------------------
-------------------------------------------------------------------------------

local function RingingDeeps_Rewards(a)
    local rewards = {
        Achievement({id = 40325, criteria = a, oneline = true}), -- normal bronze
        Achievement({id = 40326, criteria = a, oneline = true}), -- normal silver
        Achievement({id = 40327, criteria = a, oneline = true}), -- normal gold
        Achievement({id = 40328, criteria = a, oneline = true}), -- advanced bronze
        Achievement({id = 40329, criteria = a, oneline = true}), -- advanced silver
        Achievement({id = 40330, criteria = a, oneline = true}), -- advanced gold
        Achievement({id = 40331, criteria = a, oneline = true}), -- reverse bronze
        Achievement({id = 40332, criteria = a, oneline = true}), -- reverse silver
        Achievement({id = 40333, criteria = a, oneline = true}) -- reverse gold
    }
    return rewards
end

RingingDeeps.nodes[36701131] = SkyridingRace({
    label = '{quest:80237}',
    normal = {2941, 0, 0},
    advanced = {2947, 0, 0},
    reverse = {2953, 0, 0},
    rewards = RingingDeeps_Rewards(1)
}) -- Earthenworks Weave

RingingDeeps.nodes[38072744] = SkyridingRace({
    label = '{quest:80238}',
    normal = {2942, 0, 0},
    advanced = {2948, 0, 0},
    reverse = {2954, 0, 0},
    rewards = RingingDeeps_Rewards(2)
}) -- Ringing Deeps Ramble

RingingDeeps.nodes[63753479] = SkyridingRace({
    label = '{quest:80239}',
    normal = {2943, 0, 0},
    advanced = {2949, 0, 0},
    reverse = {2955, 0, 0},
    rewards = RingingDeeps_Rewards(3)
}) -- Chittering Concourse

RingingDeeps.nodes[48314686] = SkyridingRace({
    label = '{quest:80240}',
    normal = {2944, 0, 0},
    advanced = {2950, 0, 0},
    reverse = {2956, 0, 0},
    rewards = RingingDeeps_Rewards(4)
}) -- Cataract River Cruise

RingingDeeps.nodes[62486868] = SkyridingRace({
    label = '{quest:80242}',
    normal = {2945, 0, 0},
    advanced = {2951, 0, 0},
    reverse = {2957, 0, 0},
    rewards = RingingDeeps_Rewards(5)
}) -- Taelloch Twist

RingingDeeps.nodes[59397513] = SkyridingRace({
    label = '{quest:80243}',
    normal = {2946, 0, 0},
    advanced = {2952, 0, 0},
    reverse = {2958, 0, 0},
    rewards = RingingDeeps_Rewards(6)
}) -- Opportunity Point Amble

local RINGING_DEEPS_POIS = {
    [7799] = RingingDeeps.nodes[36701131], -- Earthenworks Weave
    [7800] = RingingDeeps.nodes[38072744], -- Ringing Deeps Ramble
    [7801] = RingingDeeps.nodes[63753479], -- Chittering Concourse
    [7802] = RingingDeeps.nodes[48314686], -- Cataract River Cruise
    [7803] = RingingDeeps.nodes[62486868], -- Taelloch Twist
    [7804] = RingingDeeps.nodes[59397513] -- Opportunity Point Amble
}

ns.hooks.skyridingrace.Add(ns.groups.SKYRIDING_RACE, RINGING_DEEPS_POIS)

-------------------------------------------------------------------------------
--------------------------------- HALLOWFALL ----------------------------------
-------------------------------------------------------------------------------

local function Hallowfall_Rewards(a)
    local rewards = {
        Achievement({id = 40334, criteria = a, oneline = true}), -- normal bronze
        Achievement({id = 40335, criteria = a, oneline = true}), -- normal silver
        Achievement({id = 40336, criteria = a, oneline = true}), -- normal gold
        Achievement({id = 40337, criteria = a, oneline = true}), -- advanced bronze
        Achievement({id = 40338, criteria = a, oneline = true}), -- advanced silver
        Achievement({id = 40339, criteria = a, oneline = true}), -- advanced gold
        Achievement({id = 40340, criteria = a, oneline = true}), -- reverse bronze
        Achievement({id = 40341, criteria = a, oneline = true}), -- reverse silver
        Achievement({id = 40342, criteria = a, oneline = true}) -- reverse gold
    }
    return rewards
end

Hallowfall.nodes[72783842] = SkyridingRace({
    label = '{quest:80256}',
    normal = {2959, 0, 0},
    advanced = {2965, 0, 0},
    reverse = {2971, 0, 0},
    rewards = Hallowfall_Rewards(1)
}) -- Dunelle's Detour

Hallowfall.nodes[59196894] = SkyridingRace({
    label = '{quest:80257}',
    normal = {2960, 0, 0},
    advanced = {2966, 0, 0},
    reverse = {2972, 0, 0},
    rewards = Hallowfall_Rewards(2)
}) -- Tenir's Traversal

Hallowfall.nodes[41436725] = SkyridingRace({
    label = '{quest:80258}',
    normal = {2961, 0, 0},
    advanced = {2967, 0, 0},
    reverse = {2973, 0, 0},
    rewards = Hallowfall_Rewards(3)
}) -- Light's Redoubt Descent

Hallowfall.nodes[60412602] = SkyridingRace({
    label = '{quest:80259}',
    normal = {2962, 0, 0},
    advanced = {2968, 0, 0},
    reverse = {2974, 0, 0},
    rewards = Hallowfall_Rewards(4)
}) -- Stillstone Slalom

Hallowfall.nodes[38976136] = SkyridingRace({
    label = '{quest:80260}',
    normal = {2963, 0, 0},
    advanced = {2969, 0, 0},
    reverse = {2975, 0, 0},
    rewards = Hallowfall_Rewards(5)
}) -- Mereldar Meander

Hallowfall.nodes[54131740] = SkyridingRace({
    label = '{quest:80261}',
    normal = {2964, 0, 0},
    advanced = {2970, 0, 0},
    reverse = {2976, 0, 0},
    rewards = Hallowfall_Rewards(6)
}) -- Velhan's Venture

local HALLOWFALL_POIS = {
    [7805] = Hallowfall.nodes[72783842], -- Dunelle's Detour
    [7806] = Hallowfall.nodes[59196894], -- Tenir's Traversal
    [7807] = Hallowfall.nodes[41436725], -- Light's Redoubt Descent
    [7808] = Hallowfall.nodes[60412602], -- Stillstone Slalom
    [7809] = Hallowfall.nodes[38976136], -- Mereldar Meander
    [7810] = Hallowfall.nodes[54131740] -- Velhan's Venture
}

ns.hooks.skyridingrace.Add(ns.groups.SKYRIDING_RACE, HALLOWFALL_POIS)

-------------------------------------------------------------------------------
---------------------------------- AZJ-KAHET ----------------------------------
-------------------------------------------------------------------------------

local function AzjKahet_Rewards(a)
    return {
        Achievement({id = 40343, criteria = a, oneline = false}), -- normal bronze
        Achievement({id = 40344, criteria = a, oneline = true}), -- normal silver
        Achievement({id = 40345, criteria = a, oneline = true}), -- normal gold
        Achievement({id = 40346, criteria = a, oneline = true}), -- advanced bronze
        Achievement({id = 40347, criteria = a, oneline = true}), -- advanced silver
        Achievement({id = 40348, criteria = a, oneline = true}), -- advanced gold
        Achievement({id = 40349, criteria = a, oneline = true}), -- reverse bronze
        Achievement({id = 40350, criteria = a, oneline = true}), -- reverse silver
        Achievement({id = 40351, criteria = a, oneline = true}) -- reverse gold
    }
end

AzjKahet.nodes[40756780] = SkyridingRace({
    label = '{quest:80277}',
    normal = {2977, 0, 0},
    advanced = {2983, 0, 0},
    reverse = {2989, 0, 0},
    rewards = AzjKahet_Rewards(1)
}) -- City of Threads Twist

AzjKahet.nodes[77927964] = SkyridingRace({
    label = '{quest:80278}',
    normal = {2978, 0, 0},
    advanced = {2984, 0, 0},
    reverse = {2990, 0, 0},
    rewards = AzjKahet_Rewards(2)
}) -- Maddening Deep Dip

AzjKahet.nodes[52943618] = SkyridingRace({
    label = '{quest:80279}',
    normal = {2979, 0, 0},
    advanced = {2985, 0, 0},
    reverse = {2991, 0, 0},
    rewards = AzjKahet_Rewards(3)
}) -- The Weaver's Wing

AzjKahet.nodes[71343636] = SkyridingRace({
    label = '{quest:80280}',
    normal = {2980, 0, 0},
    advanced = {2986, 0, 0},
    reverse = {2992, 0, 0},
    rewards = AzjKahet_Rewards(4)
}) -- Rak-Ahat Rush

AzjKahet.nodes[23814835] = SkyridingRace({
    label = '{quest:80281}',
    normal = {2981, 0, 0},
    advanced = {2987, 0, 0},
    reverse = {2993, 0, 0},
    rewards = AzjKahet_Rewards(5)
}) -- Pit Plunge

AzjKahet.nodes[40183220] = SkyridingRace({
    label = '{quest:80282}',
    normal = {2982, 0, 0},
    advanced = {2988, 0, 0},
    reverse = {2994, 0, 0},
    rewards = AzjKahet_Rewards(6)
}) -- Siegehold Scuttle

local AZJ_KAHET_POIS = {
    [7811] = AzjKahet.nodes[40756780], -- City of Threads Twist
    [7812] = AzjKahet.nodes[77927964], -- Maddening Deep Dip
    [7813] = AzjKahet.nodes[52943618], -- The Weaver's Wing
    [7814] = AzjKahet.nodes[71343636], -- Rak-Ahat Rush
    [7815] = AzjKahet.nodes[23814835], -- Pit Plunge
    [7816] = AzjKahet.nodes[40183220] -- Siegehold Scuttle
}

ns.hooks.skyridingrace.Add(ns.groups.SKYRIDING_RACE, AZJ_KAHET_POIS)

-------------------------------------------------------------------------------
---------------------------------- UNDERMINE ----------------------------------
-------------------------------------------------------------------------------

local function Undermine_Skyrocketing_Rewards(a, b)
    local rewards = {
        Achievement({id = 40936, criteria = a, oneline = true}), -- normal bronze
        Achievement({id = 40937, criteria = a, oneline = true}), -- normal silver
        Achievement({id = 40938, criteria = a, oneline = true}), -- normal gold
        Achievement({id = 40936, criteria = b, oneline = true}), -- reverse bronze
        Achievement({id = 40937, criteria = b, oneline = true}), -- reverse silver
        Achievement({id = 40938, criteria = b, oneline = true}) -- reverse gold
    }
    return rewards
end

-------------------------------- SKYROCKETING ---------------------------------

Undermine.nodes[39042868] = SkyridingRace({
    label = '{quest:85071}',
    rewards = Undermine_Skyrocketing_Rewards(1, 2)
}) -- Skyrocketing Sprint

Undermine.nodes[33777624] = SkyridingRace({
    label = '{quest:85097}',
    rewards = Undermine_Skyrocketing_Rewards(2, 4)
}) -- The Heaps Leap

Undermine.nodes[39221136] = SkyridingRace({
    label = '{quest:85099}',
    rewards = Undermine_Skyrocketing_Rewards(5, 6)
}) -- Scrapshop Shot

Undermine.nodes[25494212] = SkyridingRace({
    label = '{quest:85101}',
    rewards = Undermine_Skyrocketing_Rewards(7, 8)
}) -- Rags to Riches Rush

local SKYROCKETING_POIS = {
    [8144] = Undermine.nodes[39042868], -- Skyrocketing Sprint
    [8145] = Undermine.nodes[33777624], -- The Heaps Leap
    [8146] = Undermine.nodes[39221136], -- Scrapshop Shot
    [8147] = Undermine.nodes[25494212] -- Rags to Riches Rush
}

ns.hooks.skyridingrace.Add(ns.groups.SKYRIDING_RACE, SKYROCKETING_POIS)

-------------------------------- BREAKNECKING ---------------------------------

local function Undermine_Breaknecking_Rewards(a, b)
    local rewards = {
        Achievement({id = 41081, criteria = a, oneline = true}), -- normal bronze
        Achievement({id = 41083, criteria = a, oneline = true}), -- normal silver
        Achievement({id = 41084, criteria = a, oneline = true}), -- normal gold
        Achievement({id = 41081, criteria = b, oneline = true}), -- reverse bronze
        Achievement({id = 41083, criteria = b, oneline = true}), -- reverse silver
        Achievement({id = 41084, criteria = b, oneline = true}) -- reverse gold
    }
    return rewards
end

local BreakneckRace = Class('BreakneckRace', SkyridingRace, {
    note = format(L['breakneck_race_note'], --
    L['upgrade_the_pozzik_standard'], --
    L['upgrade_22h_slicks'], --
    L['upgrade_turbo_handcrank'])
})

Undermine.nodes[26025299] = BreakneckRace({
    label = '{quest:85900}',
    rewards = Undermine_Breaknecking_Rewards(1, 2)
}) -- Breakneck Bolt

Undermine.nodes[43697800] = BreakneckRace({
    label = '{quest:85902}',
    rewards = Undermine_Breaknecking_Rewards(3, 4)
}) -- Junkyard Jaunt

Undermine.nodes[39575371] = BreakneckRace({
    label = '{quest:85904}',
    rewards = Undermine_Breaknecking_Rewards(5, 6)
}) -- Casino Cruise

Undermine.nodes[47604426] = BreakneckRace({
    label = '{quest:85906}',
    rewards = Undermine_Breaknecking_Rewards(7, 8)
}) -- Sandy Scuttle

local BREAKNECKING_POIS = {
    [8177] = Undermine.nodes[26025299], -- Breakneck Bolt
    [8178] = Undermine.nodes[43697800], -- Junkyard Jaunt
    [8179] = Undermine.nodes[39575371], -- Casino Cruise
    [8180] = Undermine.nodes[47604426] -- Sandy Scuttle
}

ns.hooks.skyridingrace.Add(ns.groups.SKYRIDING_RACE, BREAKNECKING_POIS,
    {showNote = true})
