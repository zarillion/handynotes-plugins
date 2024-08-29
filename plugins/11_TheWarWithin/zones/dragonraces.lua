-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...

local L = ns.locale
local Class = ns.Class

local Collectible = ns.node.Collectible
local Achievement = ns.reward.Achievement
local Spacer = ns.reward.Spacer

-------------------------------------------------------------------------------

local IsleOfDorn = ns.maps[2248]
local RingingDeeps = ns.maps[2214]
local Hallowfall = ns.maps[2215]
local AzjKahet = ns.maps[2255]

-------------------------------------------------------------------------------
--------------------------------- DRAGONRACES ---------------------------------
-------------------------------------------------------------------------------

local Dragonrace = Class('DragonRace', Collectible,
    {icon = 1100022, group = ns.groups.DRAGONRACE})

local DRAGONRIDING_RACE_TYPES = {
    [1] = {type = 'normal', label = L['dr_normal']},
    [2] = {type = 'advanced', label = L['dr_advanced']},
    [3] = {type = 'reverse', label = L['dr_reverse']},
    [4] = {type = 'challenge', label = L['dr_challenge']},
    [5] = {type = 'reverseChallenge', label = L['dr_reverse_challenge']}
}

local function CanAddRace() return true end

function Dragonrace.getters:sublabel()
    local note = L['dr_best_time']
    local txt = L['dr_your_best_time']
    for _, race in ipairs(DRAGONRIDING_RACE_TYPES) do
        if self[race.type] then
            local currencyID = self[race.type][1]
            local label = race.label
            local time = currencyID and
                             C_CurrencyInfo.GetCurrencyInfo(currencyID).quantity or
                             0
            if CanAddRace(race.type) then
                txt = txt .. '\n' .. format(note, label, time / 1000)
            end
        end
    end
    return txt
end

--[[
function Dragonrace.getters:note()
    local Silver = ns.color.Silver
    local Gold = ns.color.Gold
    local note = L['dr_target_time']
    local txt = L['dr_your_target_time']
    for _, race in ipairs(DRAGONRIDING_RACE_TYPES) do
        if self[race.type] then
            local label = race.label
            local sTime = ns.color.Red('??')
            if self[race.type][2] then
                sTime = Silver(self[race.type][2])
            end
            local gTime = ns.color.Red('??')
            if self[race.type][3] then
                gTime = Gold(self[race.type][3])
            end
            if CanAddRace(race.type) then
                txt = txt .. '\n' .. format(note, label, sTime, gTime)
            end
        end
    end
    return txt .. '\n\n' .. L['dr_bronze']
end
]] --

-------------------------------------------------------------------------------
-------------------------------- REWARDS ---------------------------------
-------------------------------------------------------------------------------

local function IsleOfDorn_Rewards(b) -- basic
    local rewards = {
        Achievement({id = 40316, criteria = b, oneline = true}), -- normal bronze
        Achievement({id = 40317, criteria = b, oneline = true}), -- normal silver
        Achievement({id = 40318, criteria = b, oneline = true}), -- normal gold
        Achievement({id = 40319, criteria = b, oneline = true}), -- advanced bronze
        Achievement({id = 40320, criteria = b, oneline = true}), -- advanced silver
        Achievement({id = 40321, criteria = b, oneline = true}), -- advanced gold
        Achievement({id = 40322, criteria = b, oneline = true}), -- reverse bronze
        Achievement({id = 40323, criteria = b, oneline = true}), -- reverse silver
        Achievement({id = 40324, criteria = b, oneline = true}), -- reverse gold
        Spacer()
    }
    return rewards
end

local function RingingDeeps_Rewards(b) -- basic
    local rewards = {
        Achievement({id = 40325, criteria = b, oneline = true}), -- normal bronze
        Achievement({id = 40326, criteria = b, oneline = true}), -- normal silver
        Achievement({id = 40327, criteria = b, oneline = true}), -- normal gold
        Achievement({id = 40328, criteria = b, oneline = true}), -- advanced bronze
        Achievement({id = 40329, criteria = b, oneline = true}), -- advanced silver
        Achievement({id = 40330, criteria = b, oneline = true}), -- advanced gold
        Achievement({id = 40331, criteria = b, oneline = true}), -- reverse bronze
        Achievement({id = 40332, criteria = b, oneline = true}), -- reverse silver
        Achievement({id = 40333, criteria = b, oneline = true}), -- reverse gold
        Spacer()
    }
    return rewards
end

local function Hallowfall_Rewards(b) -- basic
    local rewards = {
        Achievement({id = 40334, criteria = b, oneline = true}), -- normal bronze
        Achievement({id = 40335, criteria = b, oneline = true}), -- normal silver
        Achievement({id = 40336, criteria = b, oneline = true}), -- normal gold
        Achievement({id = 40337, criteria = b, oneline = true}), -- advanced bronze
        Achievement({id = 40338, criteria = b, oneline = true}), -- advanced silver
        Achievement({id = 40339, criteria = b, oneline = true}), -- advanced gold
        Achievement({id = 40340, criteria = b, oneline = true}), -- reverse bronze
        Achievement({id = 40341, criteria = b, oneline = true}), -- reverse silver
        Achievement({id = 40342, criteria = b, oneline = true}), -- reverse gold
        Spacer()
    }
    return rewards
end

local function AzjKahet_Rewards(b) -- basic
    local rewards = {
        Achievement({id = 40343, criteria = b, oneline = true}), -- normal bronze
        Achievement({id = 40344, criteria = b, oneline = true}), -- normal silver
        Achievement({id = 40345, criteria = b, oneline = true}), -- normal gold
        Achievement({id = 40346, criteria = b, oneline = true}), -- advanced bronze
        Achievement({id = 40347, criteria = b, oneline = true}), -- advanced silver
        Achievement({id = 40348, criteria = b, oneline = true}), -- advanced gold
        Achievement({id = 40349, criteria = b, oneline = true}), -- reverse bronze
        Achievement({id = 40350, criteria = b, oneline = true}), -- reverse silver
        Achievement({id = 40351, criteria = b, oneline = true}), -- reverse gold
        Spacer()
    }
    return rewards
end
-------------------------------------------------------------------------------
-------------------------------- TWW ---------------------------------
-------------------------------------------------------------------------------

Hallowfall.nodes[10101010] = Dragonrace({
    label = '{quest:XXXXX}',
    normal = {2959, 0, 0},
    advanced = {2965, 0, 0},
    reverse = {2971, 0, 0},
    rewards = Hallowfall_Rewards(1)
}) -- Dunelle's Detour

Hallowfall.nodes[10101010] = Dragonrace({
    label = '{quest:XXXXX}',
    normal = {2963, 0, 0},
    advanced = {2969, 0, 0},
    reverse = {2975, 0, 0},
    rewards = Hallowfall_Rewards(5)
}) -- Mereldar Meander

Hallowfall.nodes[10101010] = Dragonrace({
    label = '{quest:XXXXX}',
    normal = {2960, 0, 0},
    advanced = {2966, 0, 0},
    reverse = {2972, 0, 0},
    rewards = Hallowfall_Rewards(2)
}) -- Tenir's Traversal

Hallowfall.nodes[10101010] = Dragonrace({
    label = '{quest:XXXXX}',
    normal = {2961, 0, 0},
    advanced = {2967, 0, 0},
    reverse = {2973, 0, 0},
    rewards = Hallowfall_Rewards(3)
}) -- Light's Redoubt Descent

Hallowfall.nodes[10101010] = Dragonrace({
    label = '{quest:XXXXX}',
    normal = {2964, 0, 0},
    advanced = {2970, 0, 0},
    reverse = {2976, 0, 0},
    rewards = Hallowfall_Rewards(6)
}) -- Velhan's Venture

Hallowfall.nodes[10101010] = Dragonrace({
    label = '{quest:XXXXX}',
    normal = {2962, 0, 0},
    advanced = {2968, 0, 0},
    reverse = {2974, 0, 0},
    rewards = Hallowfall_Rewards(4)
}) -- Stillstone Slalom

IsleOfDorn.nodes[10101010] = Dragonrace({
    label = '{quest:XXXXX}',
    normal = {2926, 0, 0},
    advanced = {2932, 0, 0},
    reverse = {2938, 0, 0},
    rewards = IsleOfDorn_Rewards(4)
}) -- The Wold Ways

IsleOfDorn.nodes[10101010] = Dragonrace({
    label = '{quest:XXXXX}',
    normal = {2925, 0, 0},
    advanced = {2931, 0, 0},
    reverse = {2937, 0, 0},
    rewards = IsleOfDorn_Rewards(3)
}) -- Basin Bypass

IsleOfDorn.nodes[10101010] = Dragonrace({
    label = '{quest:XXXXX}',
    normal = {2924, 0, 0},
    advanced = {2930, 0, 0},
    reverse = {2936, 0, 0},
    rewards = IsleOfDorn_Rewards(2)
}) -- Storm's Watch Survey

IsleOfDorn.nodes[10101010] = Dragonrace({
    label = '{quest:XXXXX}',
    normal = {2923, 0, 0},
    advanced = {2929, 0, 0},
    reverse = {2935, 0, 0},
    rewards = IsleOfDorn_Rewards(1)
}) -- Dornogal Drift

IsleOfDorn.nodes[10101010] = Dragonrace({
    label = '{quest:XXXXX}',
    normal = {2928, 0, 0},
    advanced = {2934, 0, 0},
    reverse = {2940, 0, 0},
    rewards = IsleOfDorn_Rewards(6)
}) -- Orecreg's Doglegs

IsleOfDorn.nodes[58332485] = Dragonrace({
    label = '{quest:81805}',
    normal = {2927, 0, 0},
    advanced = {2933, 0, 0},
    reverse = {2939, 0, 0},
    rewards = IsleOfDorn_Rewards(5)
}) -- Thunderhead Trail

AzjKahet.nodes[10101010] = Dragonrace({
    label = '{quest:XXXXX}',
    normal = {40361, 0, 0},
    advanced = {40364, 0, 0},
    reverse = {40367, 0, 0},
    rewards = AzjKahet_Rewards(5)
}) -- Pit Plunge

AzjKahet.nodes[10101010] = Dragonrace({
    label = '{quest:XXXXX}',
    normal = {40361, 0, 0},
    advanced = {40364, 0, 0},
    reverse = {40367, 0, 0},
    rewards = AzjKahet_Rewards(4)
}) -- Rak-Ahat Rush

AzjKahet.nodes[10101010] = Dragonrace({
    label = '{quest:XXXXX}',
    normal = {40361, 0, 0},
    advanced = {40364, 0, 0},
    reverse = {40367, 0, 0},
    rewards = AzjKahet_Rewards(3)
}) -- The Weaver's Wing

AzjKahet.nodes[10101010] = Dragonrace({
    label = '{quest:XXXXX}',
    normal = {40361, 0, 0},
    advanced = {40364, 0, 0},
    reverse = {40367, 0, 0},
    rewards = AzjKahet_Rewards(6)
}) -- Siegehold Scuttle

AzjKahet.nodes[10101010] = Dragonrace({
    label = '{quest:XXXXX}',
    normal = {40361, 0, 0},
    advanced = {40364, 0, 0},
    reverse = {40367, 0, 0},
    rewards = AzjKahet_Rewards(2)
}) -- City of Threads Twist

AzjKahet.nodes[10101010] = Dragonrace({
    label = '{quest:XXXXX}',
    normal = {40361, 0, 0},
    advanced = {40364, 0, 0},
    reverse = {40367, 0, 0},
    rewards = AzjKahet_Rewards(1)
}) -- Maddening Deep Dip

RingingDeeps.nodes[10101010] = Dragonrace({
    label = '{quest:XXXXX}',
    normal = {2942, 0, 0},
    advanced = {2948, 0, 0},
    reverse = {2954, 0, 0},
    rewards = RingingDeeps_Rewards(2)
}) -- Ringing Deeps Ramble

RingingDeeps.nodes[10101010] = Dragonrace({
    label = '{quest:XXXXX}',
    normal = {2941, 0, 0},
    advanced = {2947, 0, 0},
    reverse = {2953, 0, 0},
    rewards = RingingDeeps_Rewards(1)
}) -- Earthenworks Weave

RingingDeeps.nodes[10101010] = Dragonrace({
    label = '{quest:XXXXX}',
    normal = {2945, 0, 0},
    advanced = {2951, 0, 0},
    reverse = {2957, 0, 0},
    rewards = RingingDeeps_Rewards(5)
}) -- Taelloch Twist

RingingDeeps.nodes[10101010] = Dragonrace({
    label = '{quest:XXXXX}',
    normal = {2946, 0, 0},
    advanced = {2952, 0, 0},
    reverse = {2958, 0, 0},
    rewards = RingingDeeps_Rewards(6)
}) -- Opportunity Point Amble

RingingDeeps.nodes[10101010] = Dragonrace({
    label = '{quest:XXXXX}',
    normal = {2944, 0, 0},
    advanced = {2950, 0, 0},
    reverse = {2956, 0, 0},
    rewards = RingingDeeps_Rewards(4)
}) -- Cataract River Cruise

RingingDeeps.nodes[10101010] = Dragonrace({
    label = '{quest:XXXXX}',
    normal = {2943, 0, 0},
    advanced = {2949, 0, 0},
    reverse = {2955, 0, 0},
    rewards = RingingDeeps_Rewards(3)
}) -- Chittering Concourse
