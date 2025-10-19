-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Map = ns.Map

local SkyridingRace = ns.node.SkyridingRace

local Achievement = ns.reward.Achievement

-------------------------------------------------------------------------------

local Hyjal = ns.maps[198] or Map({id = 198, settings = true})
local Uldum = ns.maps[249] or Map({id = 249, settings = true})
local TwilightHighlands = ns.maps[241] or Map({id = 241, settings = true})

-------------------------------------------------------------------------------
---------------------------------- KALIMDOR -----------------------------------
-------------------------------------------------------------------------------

local function Kalimdor_Rewards(c)
    return {
        Achievement({id = 17712, criteria = c, oneline = true}), -- normal bronze
        Achievement({id = 17713, criteria = c, oneline = true}), -- normal silver
        Achievement({id = 17714, criteria = c, oneline = true}), -- normal gold
        Achievement({id = 17715, criteria = c, oneline = true}), -- advanced bronze
        Achievement({id = 17716, criteria = c, oneline = true}), -- advanced silver
        Achievement({id = 17717, criteria = c, oneline = true}), -- advanced gold
        Achievement({id = 17718, criteria = c, oneline = true}), -- reverse bronze
        Achievement({id = 17719, criteria = c, oneline = true}), -- reverse silver
        Achievement({id = 17720, criteria = c, oneline = true}) -- reverse gold
    }
end

Hyjal.nodes[56702790] = SkyridingRace({
    label = '{quest:75317}',
    normal = {2314, 50, 45},
    advanced = {2344, 46, 41},
    reverse = {2374, 46, 41},
    rewards = Kalimdor_Rewards(3)
}) -- Nordrassil Spiral

Hyjal.nodes[21905420] = SkyridingRace({
    label = '{quest:75330}',
    normal = {2315, 75, 70},
    advanced = {2345, 72, 69},
    reverse = {2375, 72, 67},
    rewards = Kalimdor_Rewards(4)
}) -- Hyjal Hotfoot

Uldum.nodes[55764218] = SkyridingRace({
    label = '{quest:75481}',
    normal = {2326, 89, 84},
    advanced = {2356, 81, 76},
    reverse = {2386, 81, 76},
    rewards = Kalimdor_Rewards(15)
}) -- Uldum Tour

local KALIMDOR_POIS = {
    [7496] = Hyjal.nodes[56702790], -- Nordrassil Spiral
    [7497] = Hyjal.nodes[21905420], -- Hyjal Hotfoot
    [7508] = Uldum.nodes[55764218] -- Uldum Tour
}

ns.hooks.skyridingrace.Add(ns.groups.SKYRIDING_RACE, KALIMDOR_POIS,
    {showNote = true})

-------------------------------------------------------------------------------
------------------------------- EASTERN KINGDOMS ------------------------------
-------------------------------------------------------------------------------

local function EasternKingdoms_Rewards(c)
    return {
        Achievement({id = 18566, criteria = c, oneline = true}), -- normal bronze
        Achievement({id = 18567, criteria = c, oneline = true}), -- normal silver
        Achievement({id = 18568, criteria = c, oneline = true}), -- normal gold
        Achievement({id = 18569, criteria = c, oneline = true}), -- advanced bronze
        Achievement({id = 18570, criteria = c, oneline = true}), -- advanced silver
        Achievement({id = 18571, criteria = c, oneline = true}), -- advanced gold
        Achievement({id = 18572, criteria = c, oneline = true}), -- reverse bronze
        Achievement({id = 18573, criteria = c, oneline = true}), -- reverse silver
        Achievement({id = 18574, criteria = c, oneline = true}) -- reverse gold
    }
end

TwilightHighlands.nodes[34797786] = SkyridingRace({
    label = '{quest:76364}',
    normal = {2539, 78, 73},
    advanced = {2555, 71, 68},
    reverse = {2571, 69, 66},
    rewards = EasternKingdoms_Rewards(4)
}) -- Twilight Terror

TwilightHighlands.nodes[72892784] = SkyridingRace({
    label = '{quest:76527}',
    normal = {2548, 76, 71},
    advanced = {2564, 67, 64},
    reverse = {2580, 65, 62},
    rewards = EasternKingdoms_Rewards(13)
}) -- Krazzworks Klash

local EASTERN_KINGDOMS_POIS = {
    [7574] = TwilightHighlands.nodes[34797786], -- Twilight Terror
    [7583] = TwilightHighlands.nodes[72892784] -- Krazzworks Klash
}

ns.hooks.skyridingrace.Add(ns.groups.SKYRIDING_RACE, EASTERN_KINGDOMS_POIS,
    {showNote = true})
