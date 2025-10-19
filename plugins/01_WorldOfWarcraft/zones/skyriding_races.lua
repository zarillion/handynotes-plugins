-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Map = ns.Map

local SkyridingRace = ns.node.SkyridingRace

local Achievement = ns.reward.Achievement

---------------------------------- KALIMDOR -----------------------------------

local Felwood = ns.maps[77] or Map({id = 77, settings = true})
local Winterspring = ns.maps[83] or Map({id = 83, settings = true})
local Hyjal = ns.maps[198] or Map({id = 198, settings = true})
local Azshara = ns.maps[76] or Map({id = 76, settings = true})
local Ashenvale = ns.maps[63] or Map({id = 63, settings = true})
local Durotar = ns.maps[1] or Map({id = 1, settings = true})
local StonetalonMontains = ns.maps[65] or Map({id = 65, settings = true})
local Desolace = ns.maps[66] or Map({id = 66, settings = true})
local SouthernBarrens = ns.maps[199] or Map({id = 199, settings = true})
local ThousandNeedles = ns.maps[64] or Map({id = 64, settings = true})
local Feralas = ns.maps[69] or Map({id = 69, settings = true})
local Silithus = ns.maps[81] or Map({id = 81, settings = true})
local Uldum = ns.maps[249] or Map({id = 249, settings = true})
local UngoroCrater = ns.maps[78] or Map({id = 78, settings = true})

------------------------------- EASTER KINGDOMS -------------------------------

local Gilneas = ns.maps[217] or Map({id = 217, settings = true})
local LochModan = ns.maps[48] or Map({id = 48, settings = true})
local SearingGorge = ns.maps[32] or Map({id = 32, settings = true})
local TwilightHighlands = ns.maps[241] or Map({id = 241, settings = true})
local DeadwindPass = ns.maps[42] or Map({id = 42, settings = true})
local ElwynnForest = ns.maps[37] or Map({id = 37, settings = true})
local StranglethornVale = ns.maps[224] or Map({id = 224, settings = true})
local NorthernStranglethorn = ns.maps[50] or Map({id = 50, settings = true})
local DunMorogh = ns.maps[27] or Map({id = 27, settings = true})
local BlastedLands = ns.maps[17] or Map({id = 17, settings = true})
local EasternPlaguelands = ns.maps[23] or Map({id = 23, settings = true})
local CapeOfStranglethorn = ns.maps[210] or Map({id = 210, settings = true})
local Badlands = ns.maps[15] or Map({id = 15, settings = true})
local RedridgeMountains = ns.maps[49] or Map({id = 49, settings = true})

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

Felwood.nodes[58181079] = SkyridingRace({
    label = '{quest:75277}',
    normal = {2312, 75, 70},
    advanced = {2342, 66, 63},
    reverse = {2372, 65, 62},
    rewards = Kalimdor_Rewards(1)
}) -- Fel Flyover

Winterspring.nodes[68836804] = SkyridingRace({
    label = '{quest:75310}',
    normal = {2313, 81, 76},
    advanced = {2343, 86, 73},
    reverse = {2373, 73, 70},
    rewards = Kalimdor_Rewards(2)
}) -- Winter Wander

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

Azshara.nodes[67202617] = SkyridingRace({
    label = '{quest:75347}',
    normal = {2316, 105, 100},
    advanced = {2346, 100, 94},
    reverse = {2376, 100, 94},
    rewards = Kalimdor_Rewards(5)
}) -- Rocketway Ride

Ashenvale.nodes[37043058] = SkyridingRace({
    label = '{quest:75378}',
    normal = {2317, 69, 64},
    advanced = {2347, 64, 59},
    reverse = {2377, 64, 59},
    rewards = Kalimdor_Rewards(6)
}) -- Ashenvale Ambit

Durotar.nodes[56906286] = SkyridingRace({
    label = '{quest:75385}',
    normal = {2318, 85, 80},
    advanced = {2348, 78, 73},
    reverse = {2378, 78, 73},
    rewards = Kalimdor_Rewards(7)
}) -- Durotar Tour

StonetalonMontains.nodes[66778681] = SkyridingRace({
    label = '{quest:75394}',
    normal = {2319, 85, 80},
    advanced = {2349, 75, 70},
    reverse = {2379, 75, 70},
    rewards = Kalimdor_Rewards(8)
}) -- Webwinder Weave

Desolace.nodes[28106328] = SkyridingRace({
    label = '{quest:75409}',
    normal = {2320, 80, 75},
    advanced = {2350, 80, 75},
    reverse = {2380, 75, 70},
    rewards = Kalimdor_Rewards(9)
}) -- Desolace Drift

SouthernBarrens.nodes[41431300] = SkyridingRace({
    label = '{quest:75412}',
    normal = {2321, 53, 48},
    advanced = {2351, 48, 43},
    reverse = {2381, 49, 44},
    rewards = Kalimdor_Rewards(10)
}) -- Barrens Divide Dive

SouthernBarrens.nodes[42809308] = SkyridingRace({
    label = '{quest:75437}',
    normal = {2322, 58, 53},
    advanced = {2352, 52, 47},
    reverse = {2382, 52, 47},
    rewards = Kalimdor_Rewards(11)
}) -- Razorfen Roundabout

ThousandNeedles.nodes[09731735] = SkyridingRace({
    label = '{quest:75463}',
    normal = {2323, 92, 87},
    advanced = {2353, 82, 77},
    reverse = {2383, 82, 77},
    rewards = Kalimdor_Rewards(12)
}) -- Thousand Needles Thread

Feralas.nodes[64125435] = SkyridingRace({
    label = '{quest:75468}',
    normal = {2324, 94, 89},
    advanced = {2354, 89, 84},
    reverse = {2384, 89, 84},
    rewards = Kalimdor_Rewards(13)
}) -- Feralas Ruins Ramble

Silithus.nodes[39548419] = SkyridingRace({
    label = '{quest:75472}',
    normal = {2325, 80, 75},
    advanced = {2355, 71, 66},
    reverse = {2385, 74, 69},
    rewards = Kalimdor_Rewards(14)
}) -- Ahn'Qiraj Circuit

Uldum.nodes[55764218] = SkyridingRace({
    label = '{quest:75481}',
    normal = {2326, 89, 84},
    advanced = {2356, 81, 76},
    reverse = {2386, 81, 76},
    rewards = Kalimdor_Rewards(15)
}) -- Uldum Tour

UngoroCrater.nodes[53379308] = SkyridingRace({
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

Gilneas.nodes[58611160] = SkyridingRace({
    label = '{quest:76309}',
    normal = {2536, 83, 78},
    advanced = {2552, 77, 74},
    reverse = {2568, 77, 74},
    rewards = EasternKingdoms_Rewards(1)
}) -- Gilneas Gambit

LochModan.nodes[46921391] = SkyridingRace({
    label = '{quest:76339}',
    normal = {2537, 68, 63},
    advanced = {2553, 64, 61},
    reverse = {2569, 66, 63},
    rewards = EasternKingdoms_Rewards(2)
}) -- Loch Modan Loop

SearingGorge.nodes[73244238] = SkyridingRace({
    label = '{quest:76357}',
    normal = {2538, 57, 52},
    advanced = {2554, 49, 46},
    reverse = {2570, 46, 43},
    rewards = EasternKingdoms_Rewards(3)
}) -- Searing Slalom

TwilightHighlands.nodes[34797786] = SkyridingRace({
    label = '{quest:76364}',
    normal = {2539, 78, 73},
    advanced = {2555, 71, 68},
    reverse = {2571, 69, 66},
    rewards = EasternKingdoms_Rewards(4)
}) -- Twilight Terror

DeadwindPass.nodes[46227221] = SkyridingRace({
    label = '{quest:76380}',
    normal = {2540, 65, 60},
    advanced = {2556, 62, 59},
    reverse = {2572, 62, 59},
    rewards = EasternKingdoms_Rewards(5)
}) -- Deadwind Derby

ElwynnForest.nodes[64704879] = SkyridingRace({
    label = '{quest:76397}',
    normal = {2541, 78, 73},
    advanced = {2557, 69, 66},
    reverse = {2573, 66, 63},
    rewards = EasternKingdoms_Rewards(6)
}) -- Elwynn Forest Flash

local GurubashiGala = SkyridingRace({
    label = '{quest:76438}',
    normal = {2542, 61, 56},
    advanced = {2558, 52, 49},
    reverse = {2574, 53, 50},
    rewards = EasternKingdoms_Rewards(7),
    parent = StranglethornVale.id
}) -- Gurubashi Gala

NorthernStranglethorn.nodes[70102655] = GurubashiGala
-- StranglethornVale.nodesx[62691781] = GurubashiGala

DunMorogh.nodes[74133398] = SkyridingRace({
    label = '{quest:76445}',
    normal = {2543, 75, 70},
    advanced = {2559, 67, 64},
    reverse = {2575, 63, 60},
    rewards = EasternKingdoms_Rewards(8)
}) -- Ironforge Interceptor

BlastedLands.nodes[62662616] = SkyridingRace({
    label = '{quest:76469}',
    normal = {2544, 74, 69},
    advanced = {2560, 65, 62},
    reverse = {2576, 67, 64},
    rewards = EasternKingdoms_Rewards(9)
}) -- Blasted Lands Bolt

EasternPlaguelands.nodes[34753792] = SkyridingRace({
    label = '{quest:76510}',
    normal = {2545, 68, 63},
    advanced = {2561, 56, 53},
    reverse = {2577, 61, 58},
    rewards = EasternKingdoms_Rewards(10)
}) -- Plaguelands Plunge

local BootyBayBlast = SkyridingRace({
    label = '{quest:76515}',
    normal = {2546, 68, 63},
    advanced = {2562, 60, 57},
    reverse = {2578, 59, 56},
    rewards = EasternKingdoms_Rewards(11),
    parent = StranglethornVale.id
}) -- Booty Bay Blast

CapeOfStranglethorn.nodes[40417782] = BootyBayBlast
-- StranglethornVale.nodesx[37608240] = BootyBayBlast

Badlands.nodes[67113676] = SkyridingRace({
    label = '{quest:76523}',
    normal = {2547, 69, 64},
    advanced = {2563, 61, 58},
    reverse = {2579, 61, 58},
    rewards = EasternKingdoms_Rewards(12)
}) -- Fuselight Night Flight

TwilightHighlands.nodes[72892784] = SkyridingRace({
    label = '{quest:76527}',
    normal = {2548, 76, 71},
    advanced = {2564, 67, 64},
    reverse = {2580, 65, 62},
    rewards = EasternKingdoms_Rewards(13)
}) -- Krazzworks Klash

RedridgeMountains.nodes[40822500] = SkyridingRace({
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
    {showNote = true})
