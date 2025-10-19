-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Map = ns.Map
local L = ns.locale
local Class = ns.Class

local SkyridingRace = ns.node.SkyridingRace
local Vendor = ns.node.Vendor

local Achievement = ns.reward.Achievement
local Section = ns.reward.Section
local Spacer = ns.reward.Spacer
local Transmog = ns.reward.Transmog
local Item = ns.reward.Item
local DC = ns.DRAGON_CUSTOMIZATIONS

-------------------------------------------------------------------------------

local AzureSpan = ns.maps[2024]
local ForbiddenReach = ns.maps[2151]
local OhnahranPlains = ns.maps[2023]
local Thaldraszus = ns.maps[2025]
local WakingShores = ns.maps[2022]
local ZaralekCavern = ns.maps[2133]
local EmeraldDream = ns.maps[2200]

local Orgimmar = ns.maps[85] or Map({id = 85, settings = true})
local Stormwind = ns.maps[84] or Map({id = 84, settings = true})
local Valdrakken = ns.maps[2112] or Map({id = 2112, settings = true})

-------------------------------------------------------------------------------
--------------------------------- DRAGONRACES ---------------------------------
-------------------------------------------------------------------------------

local function AddStormRace(r, c)
    if SkyridingRace.CanAddRace('stormRace') then
        table.insert(r, Spacer())
        table.insert(r, Section(L['sr_storm_race']))
        table.insert(r, Achievement({id = 18928, criteria = c, oneline = true}))
        table.insert(r, Achievement({id = 18929, criteria = c, oneline = true}))
        table.insert(r, Achievement({id = 18931, criteria = c, oneline = true}))
    end
end

-------------------------------------------------------------------------------
------------------------------ SKYRIDING VENDORS ------------------------------
-------------------------------------------------------------------------------

local SkyridingVendor = Class('SkyridingVendor', Vendor, {
    note = L['sr_vendor_note'],
    rewards = {
        ns.reward.Toy({item = 212518, count = 40}), -- Vial of Endless Draconic Scales
        DC.SetCount(DC.WindborneVelocidrake.TealScales, 50),
        DC.SetCount(DC.WindingSlitherdrake.BlondeHair, 25),
        DC.SetCount(DC.WindingSlitherdrake.CurvedNoseHorn, 25),
        DC.SetCount(DC.WindingSlitherdrake.HornedBrow, 25),
        DC.SetCount(DC.WindingSlitherdrake.PairedHorns, 25),
        DC.SetCount(DC.WindingSlitherdrake.SharkFinnedTail, 25),
        DC.SetCount(DC.WindingSlitherdrake.YellowScales, 50), --
        Spacer(), --
        DC.SetCount(DC.CliffsideWylderdrake.CurledHeadHorns, 25),
        DC.SetCount(DC.CliffsideWylderdrake.LargeTailSpikes, 25), -- 10.2.5
        DC.SetCount(DC.HighlandDrake.CurledBackHorns, 25),
        DC.SetCount(DC.HighlandDrake.SweptSpikedHead, 25), -- 10.2.5
        DC.SetCount(DC.RenewedProtoDrake.DualHornedCrest, 25), -- 10.2.5
        DC.SetCount(DC.RenewedProtoDrake.ProngedTail, 25),
        DC.SetCount(DC.WindborneVelocidrake.CurledHorns, 25), -- 10.2.5
        DC.SetCount(DC.WindborneVelocidrake.HookedSnout, 25), --
        Spacer(), --
        Transmog({item = 206588, count = 20}), -- Drake Racer's Helmet
        Transmog({item = 206589, count = 20}), -- Drake Racer's Shoulderpads
        Transmog({item = 206590, count = 20}), -- Drake Racer's Jersey
        Transmog({item = 206591, count = 20}), -- Drake Racer's Handwraps
        Transmog({item = 206592, count = 20}), -- Drake Racer's Belt
        Transmog({item = 206593, count = 20}), -- Drake Racer's Leggings
        Transmog({item = 206594, count = 20}), -- Drake Racer's Boots
        Spacer(), --
        Transmog({item = 211877, slot = L['cloak'], count = 5}), -- Drake Racer's Scarf
        Transmog({item = 211881, count = 15}), -- Outlandish Drake Racer's Helmet
        Transmog({item = 211882, count = 15}), -- Outlandish Drake Racer's Shoulderpads
        Transmog({item = 211883, count = 15}), -- Outlandish Drake Racer's Jersey
        Transmog({item = 211884, count = 15}), -- Outlandish Drake Racer's Handwraps
        Transmog({item = 211885, count = 15}), -- Outlandish Drake Racer's Belt
        Transmog({item = 211886, count = 15}), -- Outlandish Drake Racer's Leggings
        Transmog({item = 211887, count = 15}), -- Outlandish Drake Racer's Boots
        Transmog({item = 211888, slot = L['cloak'], count = 5}) -- Outlandish Drake Racer's Scarf
    }
}) -- Skyriding Vendor

Orgimmar.nodes[52006000] = SkyridingVendor({
    id = 212027, -- Dathendrash (Horde)
    faction = 'Horde'
})

Stormwind.nodes[59806620] = SkyridingVendor({
    id = 212027, -- Dathendrash (Alliance)
    faction = 'Alliance'
})

Valdrakken.nodes[27004760] = SkyridingVendor({
    id = 206744 -- Maztha
})

-------------------------------------------------------------------------------
-------------------------------- DRAGON ISLES ---------------------------------
-------------------------------------------------------------------------------

--------------------------------- AZURE SPAN ----------------------------------

local DragonRacersPurse = {
    Spacer(), Section(_G.WORLD_QUEST_REWARD_FILTERS_TITLE),
    Item({item = 199192}), -- Dragon Racer's Purse
    DC.RenewedProtoDrake.DualHornedCrest, DC.RenewedProtoDrake.ThinSpinedJaw,
    DC.WindborneVelocidrake.HookedSnout, DC.WindborneVelocidrake.CurledHorns,
    DC.HighlandDrake.CurledBackHorns, DC.HighlandDrake.HookedTail,
    DC.HighlandDrake.SweptSpikedHead, DC.CliffsideWylderdrake.LargeTailSpikes,
    DC.CliffsideWylderdrake.SpikedBrow, DC.CliffsideWylderdrake.CurledHeadHorns
}

local function AzureSpan_Rewards(b, c, r, s) -- basic, challenge, reverse challenge, storm race
    local rewards = {
        Achievement({id = 15921, criteria = b, oneline = true}), -- normal bronze
        Achievement({id = 15922, criteria = b, oneline = true}), -- normal silver
        Achievement({id = 15923, criteria = b, oneline = true}), -- normal gold
        Achievement({id = 15933, criteria = b, oneline = true}), -- advanced bronze
        Achievement({id = 15934, criteria = b, oneline = true}), -- advanced silver
        Achievement({id = 15935, criteria = b, oneline = true}), -- advanced gold
        Achievement({id = 17201, criteria = b, oneline = true}), -- reverse bronze
        Achievement({id = 17202, criteria = b, oneline = true}), -- reverse silver
        Achievement({id = 17203, criteria = b, oneline = true}), -- reverse gold
        Section(L['sr_challenge']),
        Achievement({id = 18757, criteria = c, oneline = true}), -- challenge bronze
        Achievement({id = 18758, criteria = c, oneline = true}), -- challenge silver
        Achievement({id = 18759, criteria = c, oneline = true}), -- challenge gold
        Spacer(), Section(L['sr_reverse_challenge']),
        Achievement({id = 18757, criteria = r, oneline = true}), -- reverse challenge bronze
        Achievement({id = 18758, criteria = r, oneline = true}), -- reverse challenge silver
        Achievement({id = 18759, criteria = r, oneline = true}), -- reverse challenge gold
        unpack(DragonRacersPurse)
    }
    if s then AddStormRace(rewards, s) end
    return rewards
end

AzureSpan.nodes[47914078] = SkyridingRace({
    label = '{quest:66946}',
    normal = {2074, 66, 63},
    advanced = {2075, 63, 58},
    reverse = {2188, 65, 60},
    challenge = {2450, 70, 67},
    reverseChallenge = {2451, 72, 69},
    rewards = AzureSpan_Rewards(1, 1, 2)
}) -- Azure Span Sprint

AzureSpan.nodes[20952262] = SkyridingRace({
    label = '{quest:67002}',
    normal = {2076, 61, 58},
    advanced = {2077, 61, 56},
    reverse = {2189, 58, 53},
    challenge = {2452, 58, 55},
    reverseChallenge = {2453, 58, 55},
    rewards = AzureSpan_Rewards(2, 3, 4)
}) -- Azure Span Slalom

AzureSpan.nodes[71292464] = SkyridingRace({
    label = '{quest:67031}',
    normal = {2078, 61, 58},
    advanced = {2079, 61, 56},
    reverse = {2190, 61, 56},
    challenge = {2454, 66, 63},
    reverseChallenge = {2455, 67, 64},
    stormRace = {2666, nil, 120},
    rewards = AzureSpan_Rewards(3, 5, 6, 3)
}) -- Vakthros Ascent

AzureSpan.nodes[16584937] = SkyridingRace({
    label = '{quest:67296}',
    normal = {2083, 78, 75},
    advanced = {2084, 75, 70},
    reverse = {2191, 72, 67},
    challenge = {2456, 81, 78},
    reverseChallenge = {2457, 82, 79},
    rewards = AzureSpan_Rewards(4, 7, 8)
}) -- Iskaara Tour

AzureSpan.nodes[48473579] = SkyridingRace({
    label = '{quest:67565}',
    normal = {2085, 79, 76},
    advanced = {2086, 77, 72},
    reverse = {2192, 74, 69},
    challenge = {2458, 88, 85},
    reverseChallenge = {2459, 86, 83},
    rewards = AzureSpan_Rewards(5, 9, 10)
}) -- Frostland Flyover

AzureSpan.nodes[42275677] = SkyridingRace({
    label = '{quest:67741}',
    normal = {2089, 94, 91},
    advanced = {2090, 86, 81},
    reverse = {2193, 81, 76},
    challenge = {2460, 93, 90},
    reverseChallenge = {2461, 95, 92},
    rewards = AzureSpan_Rewards(6, 11, 12)
}) -- Archive Ambit

local AZURE_SPAN_POIS = {
    [7760] = AzureSpan.nodes[42275677], -- Archive Ambit
    [7756] = AzureSpan.nodes[20952262], -- Azure Span Slalom
    [7755] = AzureSpan.nodes[47914078], -- Azure Span Sprint
    [7759] = AzureSpan.nodes[48473579], -- Frostland Flyover
    [7758] = AzureSpan.nodes[16584937], -- Iskaara Tour
    [7757] = AzureSpan.nodes[71292464] -- Vakthros Ascent
}

ns.hooks.skyridingrace.Add(ns.groups.SKYRIDING_RACE, AZURE_SPAN_POIS,
    {showNote = true, showSublabel = true})

------------------------------- FORBIDDEN REACH -------------------------------

local function ForbiddenReach_Rewards(b, c, r, s) -- basic, challenge, reverse challenge, storm race
    local rewards = {
        Achievement({id = 17279, criteria = b, oneline = true}), -- normal bronze
        Achievement({id = 17280, criteria = b, oneline = true}), -- normal silver
        Achievement({id = 17281, criteria = b, oneline = true}), -- normal gold
        Achievement({id = 17284, criteria = b, oneline = true}), -- advanced bronze
        Achievement({id = 17286, criteria = b, oneline = true}), -- advanced silver
        Achievement({id = 17287, criteria = b, oneline = true}), -- advanced gold
        Achievement({id = 17288, criteria = b, oneline = true}), -- reverse bronze
        Achievement({id = 17289, criteria = b, oneline = true}), -- reverse silver
        Achievement({id = 17290, criteria = b, oneline = true}), -- reverse gold
        Section(L['sr_challenge']),
        Achievement({id = 18779, criteria = c, oneline = true}), -- challenge bronze
        Achievement({id = 18780, criteria = c, oneline = true}), -- challenge silver
        Achievement({id = 18781, criteria = c, oneline = true}), -- challenge gold
        Spacer(), Section(L['sr_reverse_challenge']),
        Achievement({id = 18779, criteria = r, oneline = true}), -- reverse challenge bronze
        Achievement({id = 18780, criteria = r, oneline = true}), -- reverse challenge silver
        Achievement({id = 18781, criteria = r, oneline = true}), -- reverse challenge gold
        Spacer(), Section(_G.WORLD_QUEST_REWARD_FILTERS_TITLE),
        Item({item = 205226}), -- Reach Racer's Purse
        DC.RenewedProtoDrake.PlatedBrow, DC.WindborneVelocidrake.SmallEars,
        DC.HighlandDrake.SweptHorns, DC.CliffsideWylderdrake.FlaredCheek
    }
    if s then AddStormRace(rewards, s) end
    return rewards
end

ForbiddenReach.nodes[76136563] = SkyridingRace({
    label = '{quest:73017}',
    normal = {2201, 46, 43},
    advanced = {2207, 47, 42},
    reverse = {2213, 47, 42},
    challenge = {2474, 48, 45},
    reverseChallenge = {2475, 47, 44},
    stormRace = {2668, nil, 90},
    rewards = ForbiddenReach_Rewards(1, 1, 2, 5)
}) -- Stormsunder Crater Circuit

ForbiddenReach.nodes[31326573] = SkyridingRace({
    label = '{quest:73020}',
    normal = {2202, 55, 52},
    advanced = {2208, 54, 49},
    reverse = {2214, 58, 53},
    challenge = {2476, 53, 50},
    reverseChallenge = {2477, 53, 50},
    rewards = ForbiddenReach_Rewards(2, 3, 4)
}) -- Morqut Ascent

ForbiddenReach.nodes[63095195] = SkyridingRace({
    label = '{quest:73025}',
    normal = {2203, 56, 53},
    advanced = {2209, 55, 50},
    reverse = {2215, 55, 50},
    challenge = {2478, 56, 53},
    reverseChallenge = {2479, 55, 52},
    rewards = ForbiddenReach_Rewards(3, 5, 6)
}) -- Aerie Chasm Cruise

ForbiddenReach.nodes[63658406] = SkyridingRace({
    label = '{quest:73029}',
    normal = {2204, 73, 70},
    advanced = {2210, 73, 68},
    reverse = {2216, 68, 63},
    challenge = {2480, 73, 70},
    reverseChallenge = {2481, 71, 68},
    rewards = ForbiddenReach_Rewards(4, 7, 8)
}) -- Southern Reach Route

ForbiddenReach.nodes[41361455] = SkyridingRace({
    label = '{quest:73033}',
    normal = {2205, 61, 58},
    advanced = {2211, 61, 58},
    reverse = {2217, 55, 50},
    challenge = {2482, 58, 55},
    reverseChallenge = {2483, 56, 53},
    rewards = ForbiddenReach_Rewards(5, 9, 10)
}) -- Caldera Coaster

ForbiddenReach.nodes[49426006] = SkyridingRace({
    label = '{quest:73061}',
    normal = {2206, 62, 59},
    advanced = {2212, 61, 58},
    reverse = {2218, 61, 58},
    challenge = {2484, 63, 60},
    reverseChallenge = {2485, 63, 60},
    rewards = ForbiddenReach_Rewards(6, 11, 12)
}) -- Forbidden Reach Rush

local FORBIDDEN_REACH_POIS = {
    [7769] = ForbiddenReach.nodes[63095195], -- Aerie Chasm Cruise
    [7771] = ForbiddenReach.nodes[41361455], -- Caldera Coaster
    [7772] = ForbiddenReach.nodes[49426006], -- Forbidden Reach Rush
    [7768] = ForbiddenReach.nodes[31326573], -- Morqut Ascent
    [7770] = ForbiddenReach.nodes[63658406], -- Southern Reach Route
    [7767] = ForbiddenReach.nodes[76136563] -- Stormsunder Crater Circuit
}

ns.hooks.skyridingrace.Add(ns.groups.SKYRIDING_RACE, FORBIDDEN_REACH_POIS,
    {showNote = true, showSublabel = true})

------------------------------- OHNAHRAN PLAINS -------------------------------

local function OhnahranPlains_Rewards(b, c, r, s) -- basic, challenge, reverse challenge, storm race
    local rewards = {
        Achievement({id = 15918, criteria = b, oneline = true}), -- normal bronze
        Achievement({id = 15919, criteria = b, oneline = true}), -- normal silver
        Achievement({id = 15920, criteria = b, oneline = true}), -- normal gold
        Achievement({id = 15930, criteria = b, oneline = true}), -- advanced bronze
        Achievement({id = 15931, criteria = b, oneline = true}), -- advanced silver
        Achievement({id = 15932, criteria = b, oneline = true}), -- advanced gold
        Achievement({id = 17198, criteria = b, oneline = true}), -- reverse bronze
        Achievement({id = 17199, criteria = b, oneline = true}), -- reverse silver
        Achievement({id = 17200, criteria = b, oneline = true}), -- reverse gold
        Section(L['sr_challenge']),
        Achievement({id = 18754, criteria = c, oneline = true}), -- challenge bronze
        Achievement({id = 18755, criteria = c, oneline = true}), -- challenge silver
        Achievement({id = 18756, criteria = c, oneline = true}), -- challenge gold
        Spacer(), Section(L['sr_reverse_challenge']),
        Achievement({id = 18754, criteria = r, oneline = true}), -- reverse challenge bronze
        Achievement({id = 18755, criteria = r, oneline = true}), -- reverse challenge silver
        Achievement({id = 18756, criteria = r, oneline = true}), -- reverse challenge gold
        unpack(DragonRacersPurse)
    }
    if s then AddStormRace(rewards, s) end
    return rewards
end

OhnahranPlains.nodes[63743051] = SkyridingRace({
    label = '{quest:66835}',
    normal = {2060, 52, 44},
    advanced = {2061, 46, 41},
    reverse = {2183, 50, 45},
    challenge = {2437, 54, 51},
    reverseChallenge = {2439, 53, 50},
    rewards = OhnahranPlains_Rewards(1, 1, 2)
}) -- Sundapple Copse Circuit

OhnahranPlains.nodes[86263583] = SkyridingRace({
    label = '{quest:66877}',
    normal = {2062, 51, 44},
    advanced = {2063, 46, 41},
    reverse = {2184, 52, 47},
    challenge = {2440, 53, 50},
    reverseChallenge = {2441, 53, 50},
    stormRace = {nil, nil, nil},
    rewards = OhnahranPlains_Rewards(2, 3, 4, 2)
}) -- Fen Flythrough

OhnahranPlains.nodes[80897220] = SkyridingRace({
    label = '{quest:66880}',
    normal = {2064, 52, 50},
    advanced = {2065, 52, 47},
    reverse = {2185, 51, 46},
    challenge = {2442, 53, 50},
    reverseChallenge = {2443, 54, 51},
    rewards = OhnahranPlains_Rewards(3, 5, 6)
}) -- Ravine River Run

OhnahranPlains.nodes[25715508] = SkyridingRace({
    label = '{quest:66885}',
    normal = {2066, 66, 59},
    advanced = {2067, 60, 55},
    reverse = {2186, 62, 57},
    challenge = {2444, 69, 66},
    reverseChallenge = {2445, 69, 66},
    rewards = OhnahranPlains_Rewards(4, 7, 8)
}) -- Emerald Garden Ascent

OhnahranPlains.nodes[59933555] = SkyridingRace({
    label = '{quest:66921}',
    normal = {2069, 28, 25},
    challenge = {2446, 27, 24},
    rewards = {
        Achievement({id = 15918, criteria = 5, oneline = true}), -- normal bronze
        Achievement({id = 15919, criteria = 5, oneline = true}), -- normal silver
        Achievement({id = 15920, criteria = 5, oneline = true}), -- normal gold
        Section(L['sr_challenge']),
        Achievement({id = 18754, criteria = 11, oneline = true}), -- challenge bronze
        Achievement({id = 18755, criteria = 11, oneline = true}), -- challenge silver
        Achievement({id = 18756, criteria = 11, oneline = true}), -- challenge gold
        unpack(DragonRacersPurse)
    }
}) -- Maruukai Dash

OhnahranPlains.nodes[47487064] = SkyridingRace({
    label = '{quest:66933}',
    normal = {2070, 29, 26},
    challenge = {2447, 30, 27},
    rewards = {
        Achievement({id = 15918, criteria = 6, oneline = true}), -- normal bronze
        Achievement({id = 15919, criteria = 6, oneline = true}), -- normal silver
        Achievement({id = 15920, criteria = 6, oneline = true}), -- normal gold
        Section(L['sr_challenge']),
        Achievement({id = 18754, criteria = 12, oneline = true}), -- challenge bronze
        Achievement({id = 18755, criteria = 12, oneline = true}), -- challenge silver
        Achievement({id = 18756, criteria = 12, oneline = true}), -- challenge gold
        unpack(DragonRacersPurse)
    }
}) -- Mirror of Sky Dash

OhnahranPlains.nodes[43746678] = SkyridingRace({
    label = '{quest:70710}',
    normal = {2119, 51, 46},
    advanced = {2120, 48, 43},
    reverse = {2187, 49, 44},
    challenge = {2448, 55, 52},
    reverseChallenge = {2449, 55, 52},
    rewards = {
        Achievement({id = 15918, criteria = 7, oneline = true}), -- normal bronze
        Achievement({id = 15919, criteria = 7, oneline = true}), -- normal silver
        Achievement({id = 15920, criteria = 7, oneline = true}), -- normal gold
        Achievement({id = 15930, criteria = 5, oneline = true}), -- advanced bronze
        Achievement({id = 15931, criteria = 5, oneline = true}), -- advanced silver
        Achievement({id = 15932, criteria = 5, oneline = true}), -- advanced gold
        Achievement({id = 17198, criteria = 5, oneline = true}), -- reverse bronze
        Achievement({id = 17199, criteria = 5, oneline = true}), -- reverse silver
        Achievement({id = 17200, criteria = 5, oneline = true}), -- reverse gold
        Section(L['sr_challenge']),
        Achievement({id = 18754, criteria = 9, oneline = true}), -- challenge bronze
        Achievement({id = 18755, criteria = 9, oneline = true}), -- challenge silver
        Achievement({id = 18756, criteria = 9, oneline = true}), -- challenge gold
        Spacer(), Section(L['sr_reverse_challenge']),
        Achievement({id = 18754, criteria = 10, oneline = true}), -- reverse challenge bronze
        Achievement({id = 18755, criteria = 10, oneline = true}), -- reverse challenge silver
        Achievement({id = 18756, criteria = 10, oneline = true}), -- reverse challenge gold
        unpack(DragonRacersPurse)
    }
}) -- River Rapids Route

local OHNAHRAN_PLAINS_POIS = {
    [7751] = OhnahranPlains.nodes[25715508], -- Emerald Gardens Ascent
    [7749] = OhnahranPlains.nodes[86263583], -- Fen Flythrough
    [7753] = OhnahranPlains.nodes[59933555], -- Maruukai Dash
    [7754] = OhnahranPlains.nodes[47487064], -- Mirror of the Sky Dash
    [7750] = OhnahranPlains.nodes[80897220], -- Ravine River Run
    [7752] = OhnahranPlains.nodes[43746678], -- River Rapids Route
    [7748] = OhnahranPlains.nodes[63743051] -- Sundapple Copse Circuit
}

ns.hooks.skyridingrace.Add(ns.groups.SKYRIDING_RACE, OHNAHRAN_PLAINS_POIS,
    {showNote = true, showSublabel = true})

--------------------------------- THALDRASZUS ---------------------------------

local function Thaldraszus_Rewards(b, c, r, s) -- basic, challenge, reverse challenge, storm race
    local rewards = {
        Achievement({id = 15924, criteria = b, oneline = true}), -- normal bronze
        Achievement({id = 15925, criteria = b, oneline = true}), -- normal silver
        Achievement({id = 15926, criteria = b, oneline = true}), -- normal gold
        Achievement({id = 15936, criteria = b, oneline = true}), -- advanced bronze
        Achievement({id = 15937, criteria = b, oneline = true}), -- advanced silver
        Achievement({id = 15938, criteria = b, oneline = true}), -- advanced gold
        Achievement({id = 17204, criteria = b, oneline = true}), -- reverse bronze
        Achievement({id = 17205, criteria = b, oneline = true}), -- reverse silver
        Achievement({id = 17206, criteria = b, oneline = true}), -- reverse gold
        Section(L['sr_challenge']),
        Achievement({id = 18760, criteria = c, oneline = true}), -- challenge bronze
        Achievement({id = 18761, criteria = c, oneline = true}), -- challenge silver
        Achievement({id = 18762, criteria = c, oneline = true}), -- challenge gold
        Spacer(), Section(L['sr_reverse_challenge']),
        Achievement({id = 18760, criteria = r, oneline = true}), -- reverse challenge bronze
        Achievement({id = 18761, criteria = r, oneline = true}), -- reverse challenge silver
        Achievement({id = 18762, criteria = r, oneline = true}), -- reverse challenge gold
        unpack(DragonRacersPurse)
    }
    if s then AddStormRace(rewards, s) end
    return rewards
end

Thaldraszus.nodes[57777501] = SkyridingRace({
    label = '{quest:67095}',
    normal = {2080, 52, 49},
    advanced = {2081, 45, 40},
    reverse = {2194, 46, 41},
    challenge = {2462, 50, 47},
    reverseChallenge = {2463, 49, 46},
    rewards = Thaldraszus_Rewards(1, 1, 2)
}) -- Flowing Forest Flight

Thaldraszus.nodes[57236690] = SkyridingRace({
    label = '{quest:69957}',
    normal = {2092, 84, 81},
    advanced = {2093, 80, 75},
    reverse = {2195, 64, 59},
    challenge = {2464, 61, 58},
    reverseChallenge = {2465, 66, 63},
    stormRace = {2667, nil, 80},
    rewards = Thaldraszus_Rewards(2, 3, 4, 4)
}) -- Tyrhold Trial

Thaldraszus.nodes[37654893] = SkyridingRace({
    label = '{quest:70051}',
    normal = {2096, 72, 69},
    advanced = {2097, 71, 66},
    reverse = {2196, 74, 69},
    challenge = {2466, 84, 81},
    reverseChallenge = {2467, 83, 80},
    rewards = Thaldraszus_Rewards(3, 5, 6)
}) -- Cliffside Circuit

Thaldraszus.nodes[60294159] = SkyridingRace({
    label = '{quest:70059}',
    normal = {2098, 57, 54},
    advanced = {2099, 57, 52},
    reverse = {2197, 58, 53},
    challenge = {2468, 68, 65},
    reverseChallenge = {2469, 68, 65},
    rewards = Thaldraszus_Rewards(4, 7, 8)
}) -- Academy Ascent

Thaldraszus.nodes[39517619] = SkyridingRace({
    label = '{quest:70157}',
    normal = {2101, 64, 61},
    advanced = {2102, 59, 54},
    reverse = {2198, 62, 57},
    challenge = {2470, 63, 60},
    reverseChallenge = {2471, 67, 64},
    rewards = Thaldraszus_Rewards(5, 9, 10)
}) -- Garden Gallivant

Thaldraszus.nodes[58053361] = SkyridingRace({
    label = '{quest:70161}',
    normal = {2103, 53, 50},
    advanced = {2104, 50, 45},
    reverse = {2199, 52, 47},
    challenge = {2472, 59, 56},
    reverseChallenge = {2473, 57, 54},
    rewards = Thaldraszus_Rewards(6, 11, 12)
}) -- Caverns Criss-Cross

local THALDRASZUS_POIS = {
    [7764] = Thaldraszus.nodes[60294159], -- Academy Ascent
    [7766] = Thaldraszus.nodes[58053361], -- Caverns Criss-Cross
    [7763] = Thaldraszus.nodes[37654893], -- Cliffside Circuit
    [7761] = Thaldraszus.nodes[57777501], -- Flowing Forest Flight
    [7765] = Thaldraszus.nodes[39517619], -- Garden Gallivant
    [7762] = Thaldraszus.nodes[57236690] -- Tyrhold Trial
}

ns.hooks.skyridingrace.Add(ns.groups.SKYRIDING_RACE, THALDRASZUS_POIS,
    {showNote = true, showSublabel = true})

-------------------------------- WAKING SHORES --------------------------------

local function WakingShores_Rewards(b, c, r, s) -- basic, challenge, reverse challenge, storm race
    local rewards = {
        Achievement({id = 15915, criteria = b, oneline = true}), -- normal bronze
        Achievement({id = 15916, criteria = b, oneline = true}), -- normal silver
        Achievement({id = 15917, criteria = b, oneline = true}), -- normal gold
        Achievement({id = 15927, criteria = b, oneline = true}), -- advanced bronze
        Achievement({id = 15928, criteria = b, oneline = true}), -- advanced silver
        Achievement({id = 15929, criteria = b, oneline = true}), -- advanced gold
        Achievement({id = 17195, criteria = b, oneline = true}), -- reverse bronze
        Achievement({id = 17196, criteria = b, oneline = true}), -- reverse silver
        Achievement({id = 17197, criteria = b, oneline = true}), -- reverse gold
        Section(L['sr_challenge']),
        Achievement({id = 18748, criteria = c, oneline = true}), -- challenge bronze
        Achievement({id = 18749, criteria = c, oneline = true}), -- challenge silver
        Achievement({id = 18750, criteria = c, oneline = true}), -- challenge gold
        Spacer(), Section(L['sr_reverse_challenge']),
        Achievement({id = 18748, criteria = r, oneline = true}), -- reverse challenge bronze
        Achievement({id = 18749, criteria = r, oneline = true}), -- reverse challenge silver
        Achievement({id = 18750, criteria = r, oneline = true}), -- reverse challenge gold
        unpack(DragonRacersPurse)
    }
    if s then AddStormRace(rewards, s) end
    return rewards
end

WakingShores.nodes[63327090] = SkyridingRace({
    label = '{quest:66679}',
    normal = {2042, 66, 64},
    advanced = {2044, 57, 52},
    reverse = {2154, 55, 50},
    challenge = {2421, 57, 54},
    reverseChallenge = {2422, 60, 57},
    stormRace = {nil, nil, nil},
    rewards = WakingShores_Rewards(1, 1, 2, 1)
}) -- Ruby Lifeshrine Loop

WakingShores.nodes[47018558] = SkyridingRace({
    label = '{quest:66721}',
    normal = {2048, 45, 43},
    advanced = {2049, 45, 40},
    reverse = {2176, 46, 41},
    challenge = {2423, 51, 48},
    reverseChallenge = {2424, 52, 49},
    rewards = {
        Achievement({id = 15915, criteria = 2, oneline = true}), -- normal bronze
        Achievement({id = 15916, criteria = 2, oneline = true}), -- normal silver
        Achievement({id = 15917, criteria = 2, oneline = true}), -- normal gold
        Achievement({id = 15927, criteria = 2, oneline = true}), -- advanced bronze
        Achievement({id = 15928, criteria = 2, oneline = true}), -- advanced silver
        Achievement({id = 15929, criteria = 2, oneline = true}), -- advanced gold
        Achievement({id = 17195, criteria = 2, oneline = true}), -- reverse bronze
        Achievement({id = 17196, criteria = 2, oneline = true}), -- reverse silver
        Achievement({id = 17197, criteria = 2, oneline = true}), -- reverse gold
        Section(L['sr_challenge']),
        Achievement({id = 18748, criteria = 15, oneline = true}), -- challenge bronze
        Achievement({id = 18749, criteria = 3, oneline = true}), -- challenge silver
        Achievement({id = 18750, criteria = 3, oneline = true}), -- challenge gold
        Spacer(), Section(L['sr_reverse_challenge']),
        Achievement({id = 18748, criteria = 16, oneline = true}), -- reverse challenge bronze
        Achievement({id = 18749, criteria = 4, oneline = true}), -- reverse challenge silver
        Achievement({id = 18750, criteria = 4, oneline = true}), -- reverse challenge gold
        unpack(DragonRacersPurse)
    }
}) -- Wild Preserve Slalom

WakingShores.nodes[41976730] = SkyridingRace({
    label = '{quest:66727}',
    normal = {2052, 53, 47},
    advanced = {2053, 49, 44},
    reverse = {2177, 50, 45},
    challenge = {2425, 53, 50},
    reverseChallenge = {2426, 54, 51},
    rewards = WakingShores_Rewards(3, 5, 6)
}) -- Emberflow Flight

WakingShores.nodes[23268430] = SkyridingRace({
    label = '{quest:66732}',
    normal = {2054, 56, 48},
    advanced = {2055, 50, 45},
    reverse = {2178, 53, 48},
    challenge = {2427, 56, 53},
    reverseChallenge = {2428, 56, 53},
    rewards = WakingShores_Rewards(4, 7, 8)
}) -- Apex Canopy River Run

WakingShores.nodes[55454113] = SkyridingRace({
    label = '{quest:66777}',
    normal = {2056, 48, 43},
    advanced = {2057, 45, 40},
    reverse = {2179, 48, 43},
    challenge = {2429, 49, 46},
    reverseChallenge = {2430, 51, 48},
    rewards = WakingShores_Rewards(5, 9, 10)
}) -- Uktulut Coaster

WakingShores.nodes[73203393] = SkyridingRace({
    label = '{quest:66786}',
    normal = {2058, 56, 53},
    advanced = {2059, 58, 53},
    reverse = {2180, 61, 56},
    challenge = {2431, 63, 60},
    reverseChallenge = {2432, 63, 60},
    rewards = WakingShores_Rewards(6, 11, 12)
}) -- Wingrest Roundabout

WakingShores.nodes[62777400] = SkyridingRace({
    label = '{quest:66710}',
    normal = {2046, 66, 63},
    advanced = {2047, 66, 61},
    reverse = {2181, 65, 60},
    challenge = {2433, 67, 64},
    reverseChallenge = {2434, 74, 69},
    rewards = WakingShores_Rewards(7, 13, 14)
}) -- Flashfrost Flyover

WakingShores.nodes[42599445] = SkyridingRace({
    label = '{quest:66725}',
    normal = {2050, 43, 41},
    advanced = {2051, 43, 38},
    reverse = {2182, 46, 41},
    challenge = {2435, 46, 43},
    reverseChallenge = {2436, 47, 44},
    rewards = {
        Achievement({id = 15915, criteria = 8, oneline = true}), -- normal bronze
        Achievement({id = 15916, criteria = 8, oneline = true}), -- normal silver
        Achievement({id = 15917, criteria = 8, oneline = true}), -- normal gold
        Achievement({id = 15927, criteria = 8, oneline = true}), -- advanced bronze
        Achievement({id = 15928, criteria = 8, oneline = true}), -- advanced silver
        Achievement({id = 15929, criteria = 8, oneline = true}), -- advanced gold
        Achievement({id = 17195, criteria = 8, oneline = true}), -- reverse bronze
        Achievement({id = 17196, criteria = 8, oneline = true}), -- reverse silver
        Achievement({id = 17197, criteria = 8, oneline = true}), -- reverse gold
        Section(L['sr_challenge']),
        Achievement({id = 18748, criteria = 3, oneline = true}), -- challenge bronze
        Achievement({id = 18749, criteria = 15, oneline = true}), -- challenge silver
        Achievement({id = 18750, criteria = 15, oneline = true}), -- challenge gold
        Spacer(), Section(L['sr_reverse_challenge']),
        Achievement({id = 18748, criteria = 4, oneline = true}), -- reverse challenge bronze
        Achievement({id = 18749, criteria = 16, oneline = true}), -- reverse challenge silver
        Achievement({id = 18750, criteria = 16, oneline = true}), -- reverse challenge gold
        unpack(DragonRacersPurse)
    }
}) -- Wild Preserve Circuit

local WAKING_SHORSE_POIS = {
    [7744] = WakingShores.nodes[23268430], -- Apex Canopy River Run
    [7743] = WakingShores.nodes[41976730], -- Emberflow Flight
    [7741] = WakingShores.nodes[62777400], -- Flashfrost Flyover
    [7740] = WakingShores.nodes[63327090], -- Ruby Lifeshrine Loop
    [7745] = WakingShores.nodes[55454113], -- Uktulut Coaster
    [7747] = WakingShores.nodes[42599445], -- Wild Preserve Circuit
    [7742] = WakingShores.nodes[47018558], -- Wild Preserve Slalom
    [7746] = WakingShores.nodes[73203393] -- Wingrest Roundabout
}

ns.hooks.skyridingrace.Add(ns.groups.SKYRIDING_RACE, WAKING_SHORSE_POIS,
    {showNote = true, showSublabel = true})

------------------------------- ZARALEK CAVERN --------------------------------

local function ZaralekCavern_Rewards(b, c, r, s) -- basic, challenge, reverse challenge, storm race
    local rewards = {
        Achievement({id = 17483, criteria = b, oneline = true}), -- normal bronze
        Achievement({id = 17484, criteria = b, oneline = true}), -- normal silver
        Achievement({id = 17485, criteria = b, oneline = true}), -- normal gold
        Achievement({id = 17486, criteria = b, oneline = true}), -- advanced bronze
        Achievement({id = 17487, criteria = b, oneline = true}), -- advanced silver
        Achievement({id = 17488, criteria = b, oneline = true}), -- advanced gold
        Achievement({id = 17489, criteria = b, oneline = true}), -- reverse bronze
        Achievement({id = 17490, criteria = b, oneline = true}), -- reverse silver
        Achievement({id = 17491, criteria = b, oneline = true}), -- reverse gold
        Section(L['sr_challenge']),
        Achievement({id = 18786, criteria = c, oneline = true}), -- challenge bronze
        Achievement({id = 18787, criteria = c, oneline = true}), -- challenge silver
        Achievement({id = 18788, criteria = c, oneline = true}), -- challenge gold
        Spacer(), Section(L['sr_reverse_challenge']),
        Achievement({id = 18786, criteria = r, oneline = true}), -- reverse challenge bronze
        Achievement({id = 18787, criteria = r, oneline = true}), -- reverse challenge silver
        Achievement({id = 18788, criteria = r, oneline = true}), -- reverse challenge gold
        Spacer(), Section(_G.WORLD_QUEST_REWARD_FILTERS_TITLE),
        Item({item = 205226}), -- Cavern Racer's Purse
        DC.RenewedProtoDrake.ProngedTail, DC.HighlandDrake.TaperedChin,
        DC.CliffsideWylderdrake.SplitHorns,
        DC.CliffsideWylderdrake.SmallHeadSpikes,
        DC.WindingSlitherdrake.SmallFinnedCrest,
        DC.WindingSlitherdrake.FinnedTipTail,
        DC.WindingSlitherdrake.PointedNose,
        DC.WindingSlitherdrake.TripleJawHorns
    }
    if s then AddStormRace(rewards, s) end
    return rewards
end

ZaralekCavern.nodes[38756061] = SkyridingRace({
    label = '{quest:74839}',
    normal = {2246, 68, 63},
    advanced = {2252, 60, 55},
    reverse = {2258, 58, 53},
    challenge = {2486, 60, 57},
    reverseChallenge = {2487, 61, 58},
    stormRace = {nil, nil, nil},
    rewards = ZaralekCavern_Rewards(1, 1, 2, 6)
}) -- Crystal Circuit

ZaralekCavern.nodes[39054999] = SkyridingRace({
    label = '{quest:74889}',
    normal = {2247, 80, 75},
    advanced = {2253, 73, 68},
    reverse = {2259, 73, 68},
    challenge = {2488, 75, 72},
    reverseChallenge = {2489, 75, 72},
    rewards = ZaralekCavern_Rewards(2, 3, 4)
}) -- Caldera Cruise

ZaralekCavern.nodes[54502371] = SkyridingRace({
    label = '{quest:74939}',
    normal = {2248, 72, 69},
    advanced = {2254, 69, 64},
    reverse = {2260, 69, 64},
    challenge = {2490, 72, 69},
    reverseChallenge = {2491, 74, 71},
    rewards = ZaralekCavern_Rewards(3, 5, 6)
}) -- Brimstone Scramble

ZaralekCavern.nodes[58724503] = SkyridingRace({
    label = '{quest:74951}',
    normal = {2249, 80, 75},
    advanced = {2255, 75, 70},
    reverse = {2261, 75, 70},
    challenge = {2492, 82, 79},
    reverseChallenge = {2493, 78, 75},
    rewards = ZaralekCavern_Rewards(4, 7, 8)
}) -- Shimmering Slalom

ZaralekCavern.nodes[58155759] = SkyridingRace({
    label = '{quest:74972}',
    normal = {2250, 60, 55},
    advanced = {2256, 55, 50},
    reverse = {2262, 53, 48},
    challenge = {2494, 56, 53},
    reverseChallenge = {2495, 55, 52},
    rewards = ZaralekCavern_Rewards(5, 9, 10)
}) -- Loamm Roamm

ZaralekCavern.nodes[51264667] = SkyridingRace({
    label = '{quest:75035}',
    normal = {2251, 67, 64},
    advanced = {2257, 62, 57},
    reverse = {2263, 62, 57},
    challenge = {2496, 70, 67},
    reverseChallenge = {2497, 68, 65},
    rewards = ZaralekCavern_Rewards(6, 11, 12)
}) -- Sulfur Sprint

local ZARALEK_CAVERN_POIS = {
    [7773] = ZaralekCavern.nodes[38756061], -- Crystal Circuit
    [7774] = ZaralekCavern.nodes[39054999], -- Caldera Cruise
    [7775] = ZaralekCavern.nodes[54502371], -- Brimstone Scramble
    [7776] = ZaralekCavern.nodes[58724503], -- Shimmering Slalom
    [7777] = ZaralekCavern.nodes[58155759], -- Loamm Roamm
    [7778] = ZaralekCavern.nodes[51264667] -- Sulfur Sprint
}

ns.hooks.skyridingrace.Add(ns.groups.SKYRIDING_RACE, ZARALEK_CAVERN_POIS,
    {showNote = true, showSublabel = true})

-------------------------------- EMERALD DREAM --------------------------------

local function EmeraldDream_Rewards(b, c, r) -- basic, challenge, reverse challenge
    return {
        Achievement({id = 19109, criteria = b, oneline = true}), -- normal bronze
        Achievement({id = 19110, criteria = b, oneline = true}), -- normal silver
        Achievement({id = 19111, criteria = b, oneline = true}), -- normal gold
        Achievement({id = 19112, criteria = b, oneline = true}), -- advanced bronze
        Achievement({id = 19113, criteria = b, oneline = true}), -- advanced silver
        Achievement({id = 19114, criteria = b, oneline = true}), -- advanced gold
        Achievement({id = 19115, criteria = b, oneline = true}), -- reverse bronze
        Achievement({id = 19116, criteria = b, oneline = true}), -- reverse silver
        Achievement({id = 19117, criteria = b, oneline = true}), -- reverse gold
        Section(L['sr_challenge']),
        Achievement({id = 19121, criteria = c, oneline = true}), -- challenge bronze
        Achievement({id = 19122, criteria = c, oneline = true}), -- challenge silver
        Achievement({id = 19123, criteria = c, oneline = true}), -- challenge gold
        Spacer(), Section(L['sr_reverse_challenge']),
        Achievement({id = 19124, criteria = r, oneline = true}), -- reverse challenge bronze
        Achievement({id = 19125, criteria = r, oneline = true}), -- reverse challenge silver
        Achievement({id = 19126, criteria = r, oneline = true}), -- reverse challenge gold
        Spacer(), Section(_G.WORLD_QUEST_REWARD_FILTERS_TITLE),
        Item({item = 210549}), -- Dream Racer's Purse
        DC.WindingSlitherdrake.HairyJaw, DC.WindingSlitherdrake.ShortHorns,
        DC.WindingSlitherdrake.ThornHorns,
        DC.WindingSlitherdrake.LargeFinnedTail,
        DC.GrottoNetherwingDrake.SpikedBack,
        DC.GrottoNetherwingDrake.ClusterSpikedCrest,
        DC.GrottoNetherwingDrake.VolatilePattern,
        DC.GrottoNetherwingDrake.DoubleFinnedTail
    }
end

EmeraldDream.nodes[59112881] = SkyridingRace({
    label = '{quest:77841}',
    normal = {2676, 103, 98},
    advanced = {2682, 90, 87},
    reverse = {2688, 90, 87},
    challenge = {2694, 98, 95},
    reverseChallenge = {2695, 100, 97},
    rewards = EmeraldDream_Rewards(1, 1, 1)
}) -- Ysera Invitational

EmeraldDream.nodes[37184408] = SkyridingRace({
    label = '{quest:77983}',
    normal = {2677, 85, 80},
    advanced = {2683, 76, 73},
    reverse = {2689, 76, 73},
    challenge = {2696, 82, 79},
    reverseChallenge = {2697, 83, 80},
    rewards = EmeraldDream_Rewards(2, 2, 2)
}) -- Smoldering Sprint

EmeraldDream.nodes[35165522] = SkyridingRace({
    label = '{quest:77996}',
    normal = {2678, 83, 78},
    advanced = {2684, 67, 64},
    reverse = {2690, 67, 64},
    challenge = {2698, 76, 73},
    reverseChallenge = {2699, 76, 73},
    rewards = EmeraldDream_Rewards(3, 3, 3)
}) -- Viridescent Venture

EmeraldDream.nodes[69625262] = SkyridingRace({
    label = '{quest:78016}',
    normal = {2679, 78, 73},
    advanced = {2685, 66, 63},
    reverse = {2691, 65, 62},
    challenge = {2700, 73, 70},
    reverseChallenge = {2701, 73, 70},
    rewards = EmeraldDream_Rewards(4, 4, 4)
}) -- Shoreline Switchback

EmeraldDream.nodes[62808812] = SkyridingRace({
    label = '{quest:78102}',
    normal = {2680, 110, 105},
    advanced = {2686, 96, 93},
    reverse = {2692, 99, 96},
    challenge = {2702, 108, 105},
    reverseChallenge = {2703, 108, 105},
    rewards = EmeraldDream_Rewards(5, 5, 5)
}) -- Canopy Concours

EmeraldDream.nodes[32364825] = SkyridingRace({
    label = '{quest:78115}',
    normal = {2681, 89, 84},
    advanced = {2687, 73, 70},
    reverse = {2693, 73, 70},
    challenge = {2704, 76, 73},
    reverseChallenge = {2705, 76, 73},
    rewards = EmeraldDream_Rewards(6, 6, 6)
}) -- Emerald Amble

local EMERALD_DREAM_POIS = {
    [7903] = EmeraldDream.nodes[59112881], -- Ysera Invitational
    [7904] = EmeraldDream.nodes[37184408], -- Smoldering Sprint
    [7905] = EmeraldDream.nodes[35165522], -- Viridescent Venture
    [7906] = EmeraldDream.nodes[69625262], -- Shoreline Switchback
    [7907] = EmeraldDream.nodes[62808812], -- Canopy Concours
    [7908] = EmeraldDream.nodes[32364825] -- Emerald Amble
}

ns.hooks.skyridingrace.Add(ns.groups.SKYRIDING_RACE, EMERALD_DREAM_POIS,
    {showNote = true, showSublabel = true})

-------------------------------------------------------------------------------
---------------------------------- KALIMDOR -----------------------------------
-------------------------------------------------------------------------------

local KalimdorCup = Class('KalimdorCup', SkyridingRace)

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

local Felwood = ns.maps[77] or Map({id = 77, settings = true})
Felwood.nodes[58181079] = KalimdorCup({
    label = '{quest:75277}',
    normal = {2312, 75, 70},
    advanced = {2342, 66, 63},
    reverse = {2372, 65, 62},
    rewards = Kalimdor_Rewards(1)
}) -- Fel Flyover

local Winterspring = ns.maps[83] or Map({id = 83, settings = true})
Winterspring.nodes[68836804] = KalimdorCup({
    label = '{quest:75310}',
    normal = {2313, 81, 76},
    advanced = {2343, 86, 73},
    reverse = {2373, 73, 70},
    rewards = Kalimdor_Rewards(2)
}) -- Winter Wander

local Hyjal = ns.maps[198] or Map({id = 198, settings = true})
Hyjal.nodes[56702790] = KalimdorCup({
    label = '{quest:75317}',
    normal = {2314, 50, 45},
    advanced = {2344, 46, 41},
    reverse = {2374, 46, 41},
    rewards = Kalimdor_Rewards(3)
}) -- Nordrassil Spiral

Hyjal.nodes[21905420] = KalimdorCup({
    label = '{quest:75330}',
    normal = {2315, 75, 70},
    advanced = {2345, 72, 69},
    reverse = {2375, 72, 67},
    rewards = Kalimdor_Rewards(4)
}) -- Hyjal Hotfoot

local Azshara = ns.maps[76] or Map({id = 76, settings = true})
Azshara.nodes[67202617] = KalimdorCup({
    label = '{quest:75347}',
    normal = {2316, 105, 100},
    advanced = {2346, 100, 94},
    reverse = {2376, 100, 94},
    rewards = Kalimdor_Rewards(5)
}) -- Rocketway Ride

local Ashenvale = ns.maps[63] or Map({id = 63, settings = true})
Ashenvale.nodes[37043058] = KalimdorCup({
    label = '{quest:75378}',
    normal = {2317, 69, 64},
    advanced = {2347, 64, 59},
    reverse = {2377, 64, 59},
    rewards = Kalimdor_Rewards(6)
}) -- Ashenvale Ambit

local Durotar = ns.maps[1] or Map({id = 1, settings = true})
Durotar.nodes[56906286] = KalimdorCup({
    label = '{quest:75385}',
    normal = {2318, 85, 80},
    advanced = {2348, 78, 73},
    reverse = {2378, 78, 73},
    rewards = Kalimdor_Rewards(7)
}) -- Durotar Tour

local StonetalonMontains = ns.maps[65] or Map({id = 65, settings = true})
StonetalonMontains.nodes[66778681] = KalimdorCup({
    label = '{quest:75394}',
    normal = {2319, 85, 80},
    advanced = {2349, 75, 70},
    reverse = {2379, 75, 70},
    rewards = Kalimdor_Rewards(8)
}) -- Webwinder Weave

local Desolace = ns.maps[66] or Map({id = 66, settings = true})
Desolace.nodes[28106328] = KalimdorCup({
    label = '{quest:75409}',
    normal = {2320, 80, 75},
    advanced = {2350, 80, 75},
    reverse = {2380, 75, 70},
    rewards = Kalimdor_Rewards(9)
}) -- Desolace Drift

local SouthernBarrens = ns.maps[199] or Map({id = 199, settings = true})
SouthernBarrens.nodes[41431300] = KalimdorCup({
    label = '{quest:75412}',
    normal = {2321, 53, 48},
    advanced = {2351, 48, 43},
    reverse = {2381, 49, 44},
    rewards = Kalimdor_Rewards(10)
}) -- Barrens Divide Dive

SouthernBarrens.nodes[42809308] = KalimdorCup({
    label = '{quest:75437}',
    normal = {2322, 58, 53},
    advanced = {2352, 52, 47},
    reverse = {2382, 52, 47},
    rewards = Kalimdor_Rewards(11)
}) -- Razorfen Roundabout

local ThousandNeedles = ns.maps[64] or Map({id = 64, settings = true})
ThousandNeedles.nodes[09731735] = KalimdorCup({
    label = '{quest:75463}',
    normal = {2323, 92, 87},
    advanced = {2353, 82, 77},
    reverse = {2383, 82, 77},
    rewards = Kalimdor_Rewards(12)
}) -- Thousand Needles Thread

local Feralas = ns.maps[69] or Map({id = 69, settings = true})
Feralas.nodes[64125435] = KalimdorCup({
    label = '{quest:75468}',
    normal = {2324, 94, 89},
    advanced = {2354, 89, 84},
    reverse = {2384, 89, 84},
    rewards = Kalimdor_Rewards(13)
}) -- Feralas Ruins Ramble

local Silithus = ns.maps[81] or Map({id = 81, settings = true})
Silithus.nodes[39548419] = KalimdorCup({
    label = '{quest:75472}',
    normal = {2325, 80, 75},
    advanced = {2355, 71, 66},
    reverse = {2385, 74, 69},
    rewards = Kalimdor_Rewards(14)
}) -- Ahn'Qiraj Circuit

local Uldum = ns.maps[249] or Map({id = 249, settings = true})
Uldum.nodes[55764218] = KalimdorCup({
    label = '{quest:75481}',
    normal = {2326, 89, 84},
    advanced = {2356, 81, 76},
    reverse = {2386, 81, 76},
    rewards = Kalimdor_Rewards(15)
}) -- Uldum Tour

local UngoroCrater = ns.maps[78] or Map({id = 78, settings = true})
UngoroCrater.nodes[53379308] = KalimdorCup({
    label = '{quest:75485}',
    normal = {2327, 105, 100},
    advanced = {2357, 92, 87},
    reverse = {2387, 96, 91},
    rewards = Kalimdor_Rewards(16)
}) -- Un'Goro Crater Circuit

local KALIMDOR_POIS = {
    [7494] = Felwood.nodes[58181079], -- Fel Flyover
    [7495] = Winterspring.nodes[68836804], -- Winter Wander
    [7496] = Hyjal.nodes[56702790], -- Nordrassil Spiral
    [7497] = Hyjal.nodes[21905420], -- Hyjal Hotfoot
    [7498] = Azshara.nodes[67202617], -- Rocketway Ride
    [7499] = Ashenvale.nodes[37043058], -- Ashenvale Ambit
    [7500] = Durotar.nodes[56906286], -- Durotar Tour
    [7501] = StonetalonMontains.nodes[66778681], -- Webwinder Weave
    [7502] = Desolace.nodes[28106328], -- Desolace Drift
    [7503] = SouthernBarrens.nodes[41431300], -- Barrens Divide Dive
    [7504] = SouthernBarrens.nodes[42809308], -- Razorfen Roundabout
    [7505] = ThousandNeedles.nodes[09731735], -- Thousand Needles Thread
    [7506] = Feralas.nodes[64125435], -- Feralas Ruins Ramble
    [7507] = Silithus.nodes[39548419], -- Ahn'Qiraj Circuit
    [7508] = Uldum.nodes[55764218], -- Uldum Tour
    [7509] = UngoroCrater.nodes[53379308] -- Un'Goro Crater Circuit
}

ns.hooks.skyridingrace.Add(ns.groups.SKYRIDING_RACE, KALIMDOR_POIS,
    {showNote = true, showSublabel = true})

-------------------------------------------------------------------------------
------------------------------- EASTERN KINGDOMS ------------------------------
-------------------------------------------------------------------------------

local EasternKingdomsCup = Class('EasternKingdomsCup', SkyridingRace)

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

local Gilneas = ns.maps[217] or Map({id = 217, settings = true}) -- Missing Map ID
Gilneas.nodes[58611160] = EasternKingdomsCup({
    label = '{quest:76309}',
    normal = {2536, 83, 78},
    advanced = {2552, 77, 74},
    reverse = {2568, 77, 74},
    rewards = EasternKingdoms_Rewards(1)
}) -- Gilneas Gambit

local LochModan = ns.maps[48] or Map({id = 48, settings = true})
LochModan.nodes[46921391] = EasternKingdomsCup({
    label = '{quest:76339}',
    normal = {2537, 68, 63},
    advanced = {2553, 64, 61},
    reverse = {2569, 66, 63},
    rewards = EasternKingdoms_Rewards(2)
}) -- Loch Modan Loop

local SearingGorge = ns.maps[32] or Map({id = 32, settings = true})
SearingGorge.nodes[73244238] = EasternKingdomsCup({
    label = '{quest:76357}',
    normal = {2538, 57, 52},
    advanced = {2554, 49, 46},
    reverse = {2570, 46, 43},
    rewards = EasternKingdoms_Rewards(3)
}) -- Searing Slalom

local TwilightHighlands = ns.maps[241] or Map({id = 241, settings = true})
TwilightHighlands.nodes[34797786] = EasternKingdomsCup({
    label = '{quest:76364}',
    normal = {2539, 78, 73},
    advanced = {2555, 71, 68},
    reverse = {2571, 69, 66},
    rewards = EasternKingdoms_Rewards(4)
}) -- Twilight Terror

local DeadwindPass = ns.maps[42] or Map({id = 42, settings = true})
DeadwindPass.nodes[46227221] = EasternKingdomsCup({
    label = '{quest:76380}',
    normal = {2540, 65, 60},
    advanced = {2556, 62, 59},
    reverse = {2572, 62, 59},
    rewards = EasternKingdoms_Rewards(5)
}) -- Deadwind Derby

local ElwynnForest = ns.maps[37] or Map({id = 37, settings = true})
ElwynnForest.nodes[64704879] = EasternKingdomsCup({
    label = '{quest:76397}',
    normal = {2541, 78, 73},
    advanced = {2557, 69, 66},
    reverse = {2573, 66, 63},
    rewards = EasternKingdoms_Rewards(6)
}) -- Elwynn Forest Flash

local StranglethornVale = ns.maps[224] or Map({id = 224, settings = true})
local NorthernStranglethorn = ns.maps[50] or Map({id = 50, settings = true})
local GurubashiGala = EasternKingdomsCup({
    label = '{quest:76438}',
    normal = {2542, 61, 56},
    advanced = {2558, 52, 49},
    reverse = {2574, 53, 50},
    rewards = EasternKingdoms_Rewards(7),
    parent = StranglethornVale.id
}) -- Gurubashi Gala

NorthernStranglethorn.nodes[70102655] = GurubashiGala
-- StranglethornVale.nodes[62691781] = GurubashiGala

local DunMorogh = ns.maps[27] or Map({id = 27, settings = true})
DunMorogh.nodes[74133398] = EasternKingdomsCup({
    label = '{quest:76445}',
    normal = {2543, 75, 70},
    advanced = {2559, 67, 64},
    reverse = {2575, 63, 60},
    rewards = EasternKingdoms_Rewards(8)
}) -- Ironforge Interceptor

local BlastedLands = ns.maps[17] or Map({id = 17, settings = true})
BlastedLands.nodes[62662616] = EasternKingdomsCup({
    label = '{quest:76469}',
    normal = {2544, 74, 69},
    advanced = {2560, 65, 62},
    reverse = {2576, 67, 64},
    rewards = EasternKingdoms_Rewards(9)
}) -- Blasted Lands Bolt

local EasternPlaguelands = ns.maps[23] or Map({id = 23, settings = true})
EasternPlaguelands.nodes[34753792] = EasternKingdomsCup({
    label = '{quest:76510}',
    normal = {2545, 68, 63},
    advanced = {2561, 56, 53},
    reverse = {2577, 61, 58},
    rewards = EasternKingdoms_Rewards(10)
}) -- Plaguelands Plunge

local CapeOfStranglethorn = ns.maps[210] or Map({id = 210, settings = true})
local BootyBayBlast = EasternKingdomsCup({
    label = '{quest:76515}',
    normal = {2546, 68, 63},
    advanced = {2562, 60, 57},
    reverse = {2578, 59, 56},
    rewards = EasternKingdoms_Rewards(11),
    parent = StranglethornVale.id
}) -- Booty Bay Blast

CapeOfStranglethorn.nodes[40417782] = BootyBayBlast
-- StranglethornVale.nodes[37608240] = BootyBayBlast

local Badlands = ns.maps[15] or Map({id = 15, settings = true})
Badlands.nodes[67113676] = EasternKingdomsCup({
    label = '{quest:76523}',
    normal = {2547, 69, 64},
    advanced = {2563, 61, 58},
    reverse = {2579, 61, 58},
    rewards = EasternKingdoms_Rewards(12)
}) -- Fuselight Night Flight

TwilightHighlands.nodes[72892784] = EasternKingdomsCup({
    label = '{quest:76527}',
    normal = {2548, 76, 71},
    advanced = {2564, 67, 64},
    reverse = {2580, 65, 62},
    rewards = EasternKingdoms_Rewards(13)
}) -- Krazzworks Klash

local RedridgeMountains = ns.maps[49] or Map({id = 49, settings = true})
RedridgeMountains.nodes[40822500] = EasternKingdomsCup({
    label = '{quest:76536}',
    normal = {2549, 62, 57},
    advanced = {2565, 55, 52},
    reverse = {2581, 55, 52},
    rewards = EasternKingdoms_Rewards(14)
}) -- Redridge Rally

local EASTERN_KINGDOMS_POIS = {
    [7571] = Gilneas.nodes[58611160], -- Gilneas Gambit
    [7572] = LochModan.nodes[46921391], -- Loch Modan Loop
    [7573] = SearingGorge.nodes[73244238], -- Searing Slalom
    [7574] = TwilightHighlands.nodes[34797786], -- Twilight Terror
    [7575] = DeadwindPass.nodes[46227221], -- Deadwind Derby
    [7576] = ElwynnForest.nodes[64704879], -- Elwynn Forest Flash
    [7577] = NorthernStranglethorn.nodes[70102655], -- Gurubashi Gala
    [7578] = DunMorogh.nodes[74133398], -- Ironforge Interceptor
    [7579] = BlastedLands.nodes[62662616], -- Blasted Lands Bolt
    [7580] = EasternPlaguelands.nodes[34753792], -- Plaguelands Plunge
    [7581] = CapeOfStranglethorn.nodes[40417782], -- Booty Bay Blast
    [7582] = Badlands.nodes[67113676], -- Fuselight Night Flight
    [7583] = TwilightHighlands.nodes[72892784], -- Krazzworks Klash
    [7584] = RedridgeMountains.nodes[40822500] -- Redridge Rally
}

ns.hooks.skyridingrace.Add(ns.groups.SKYRIDING_RACE, EASTERN_KINGDOMS_POIS,
    {showNote = true, showSublabel = true})

-------------------------------------------------------------------------------
----------------------------------- OUTLANDS ----------------------------------
-------------------------------------------------------------------------------

local OutlandCup = Class('OutlandCup', SkyridingRace)

local function Outland_Rewards(c)
    return {
        Achievement({id = 19092, criteria = c, oneline = true}), -- normal bronze
        Achievement({id = 19097, criteria = c, oneline = true}), -- normal silver
        Achievement({id = 19098, criteria = c, oneline = true}), -- normal gold
        Achievement({id = 19099, criteria = c, oneline = true}), -- advanced bronze
        Achievement({id = 19100, criteria = c, oneline = true}), -- advanced silver
        Achievement({id = 19101, criteria = c, oneline = true}), -- advanced gold
        Achievement({id = 19102, criteria = c, oneline = true}), -- reverse bronze
        Achievement({id = 19103, criteria = c, oneline = true}), -- reverse silver
        Achievement({id = 19104, criteria = c, oneline = true}) -- reverse gold
    }
end

local HellfirePeninsula = ns.maps[100] or Map({id = 100, settings = true})
HellfirePeninsula.nodes[75514425] = OutlandCup({
    label = '{quest:77102}',
    normal = {2600, 80, 75},
    advanced = {2615, 76, 73},
    reverse = {2630, 75, 72},
    rewards = Outland_Rewards(1)
}) -- Hellfire Hustle

local Zangarmarsh = ns.maps[102] or Map({id = 102, settings = true})
Zangarmarsh.nodes[36923719] = OutlandCup({
    label = '{quest:77169}',
    normal = {2601, 80, 75},
    advanced = {2616, 73, 70},
    reverse = {2631, 73, 70},
    rewards = Outland_Rewards(2)
}) -- Coilfang Caper

local BladesEdge = ns.maps[105] or Map({id = 105, settings = true})
BladesEdge.nodes[61032759] = OutlandCup({
    label = '{quest:77205}',
    normal = {2602, 80, 75},
    advanced = {2617, 75, 72},
    reverse = {2632, 78, 75},
    rewards = Outland_Rewards(3)
}) -- Blade's Edge Brawl

local ShadowmoonValley = ns.maps[104] or Map({id = 104, settings = true})
ShadowmoonValley.nodes[61734841] = OutlandCup({
    label = '{quest:77346}',
    normal = {2608, 75, 70},
    advanced = {2623, 66, 63},
    reverse = {2638, 66, 63},
    rewards = Outland_Rewards(9)
}) -- Shadowmoon Slam

ShadowmoonValley.nodes[51014006] = OutlandCup({
    label = '{quest:77684}',
    normal = {2612, 82, 77},
    advanced = {2627, 76, 73},
    reverse = {2642, 79, 76},
    rewards = Outland_Rewards(13)
}) -- Fel Pit Fracas

local Nagrand = ns.maps[107] or Map({id = 107, settings = true})
Nagrand.nodes[58267599] = OutlandCup({
    label = '{quest:77238}',
    normal = {2603, 69, 64},
    advanced = {2618, 60, 57},
    reverse = {2633, 61, 58},
    rewards = Outland_Rewards(4)
}) -- Telaar Tear

Nagrand.nodes[29472503] = OutlandCup({
    label = '{quest:77589}',
    normal = {2610, 85, 80},
    advanced = {2625, 75, 72},
    reverse = {2640, 76, 73},
    rewards = Outland_Rewards(11)
}) -- Warmaul Wingding

local TerokkarForest = ns.maps[108] or Map({id = 108, settings = true})
local Shattrath = ns.maps[111] or Map({id = 111, settings = true})
local ShattrathCitySashay = OutlandCup({
    label = '{quest:77322}',
    normal = {2607, 80, 75},
    advanced = {2622, 68, 65},
    reverse = {2637, 69, 66},
    rewards = Outland_Rewards(8),
    parent = TerokkarForest.id
}) -- Shattrath City Sashay

-- TerokkarForest.nodes[34813025] = ShattrathCitySashay
Shattrath.nodes[71317061] = ShattrathCitySashay

local RazorthornRiseRush = OutlandCup({
    label = '{quest:77260}',
    normal = {2604, 72, 67},
    advanced = {2619, 57, 54},
    reverse = {2634, 57, 54},
    rewards = Outland_Rewards(5),
    parent = TerokkarForest.id
}) -- Razorthorn Rise Rush

-- TerokkarForest.nodes[59810480] = RazorthornRiseRush
HellfirePeninsula.nodes[32657707] = RazorthornRiseRush

TerokkarForest.nodes[42256788] = OutlandCup({
    label = '{quest:77264}',
    normal = {2605, 78, 73},
    advanced = {2620, 73, 70},
    reverse = {2635, 73, 70},
    rewards = Outland_Rewards(6)
}) -- Auchindoun Coaster

TerokkarForest.nodes[67256586] = OutlandCup({
    label = '{quest:77645}',
    normal = {2611, 75, 70},
    advanced = {2626, 66, 63},
    reverse = {2641, 66, 63},
    rewards = Outland_Rewards(12)
}) -- Skettis Scramble

local Netherstorm = ns.maps[109] or Map({id = 109, settings = true})
Netherstorm.nodes[51204193] = OutlandCup({
    label = '{quest:77398}',
    normal = {2609, 120, 115},
    advanced = {2624, 112, 109},
    reverse = {2639, 113, 110},
    rewards = Outland_Rewards(10)
}) -- Eco-Dome Excursion

Netherstorm.nodes[68894774] = OutlandCup({
    label = '{quest:77278}',
    normal = {2606, 105, 100},
    advanced = {2621, 90, 87},
    reverse = {2636, 91, 88},
    rewards = Outland_Rewards(7)
}) -- Tempest Keep Sweep

local OUTLAND_POIS = {
    [7589] = HellfirePeninsula.nodes[75514425], -- Hellfire Hustle
    [7590] = Zangarmarsh.nodes[36923719], -- Coilfang Caper
    [7591] = BladesEdge.nodes[61032759], -- Blade's Edge Brawl
    [7592] = Nagrand.nodes[58267599], -- Telaar Tear
    [7593] = HellfirePeninsula.nodes[32657707], -- Razorthorn Rise Rush
    [7594] = TerokkarForest.nodes[42256788], -- Auchindoun Coaster
    [7595] = Netherstorm.nodes[68894774], -- Tempest Keep Sweep
    [7596] = Shattrath.nodes[71317061], -- Shattrath City Sashay
    [7597] = ShadowmoonValley.nodes[61734841], -- Shadowmoon Slam
    [7598] = Netherstorm.nodes[51204193], -- Eco-Dome Excursion
    [7599] = Nagrand.nodes[29472503], -- Warmaul Wingding
    [7600] = TerokkarForest.nodes[67256586], -- Skettis Scramble
    [7601] = ShadowmoonValley.nodes[51014006] -- Fel Pit Fracas
}

ns.hooks.skyridingrace.Add(ns.groups.SKYRIDING_RACE, OUTLAND_POIS,
    {showNote = true, showSublabel = true})
