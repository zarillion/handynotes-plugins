-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Map = ns.Map

local SkyridingRace = ns.node.SkyridingRace

local Achievement = ns.reward.Achievement

-------------------------------------------------------------------------------

local HellfirePeninsula = ns.maps[100] or Map({id = 100, settings = true})
local Zangarmarsh = ns.maps[102] or Map({id = 102, settings = true})
local BladesEdge = ns.maps[105] or Map({id = 105, settings = true})
local ShadowmoonValley = ns.maps[104] or Map({id = 104, settings = true})
local Nagrand = ns.maps[107] or Map({id = 107, settings = true})
local TerokkarForest = ns.maps[108] or Map({id = 108, settings = true})
local Shattrath = ns.maps[111] or Map({id = 111, settings = true})
local Netherstorm = ns.maps[109] or Map({id = 109, settings = true})

-------------------------------------------------------------------------------
----------------------------------- OUTLANDS ----------------------------------
-------------------------------------------------------------------------------

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

HellfirePeninsula.nodes[75514425] = SkyridingRace({
    label = '{quest:77102}',
    normal = {2600, 80, 75},
    advanced = {2615, 76, 73},
    reverse = {2630, 75, 72},
    rewards = Outland_Rewards(1)
}) -- Hellfire Hustle

Zangarmarsh.nodes[36923719] = SkyridingRace({
    label = '{quest:77169}',
    normal = {2601, 80, 75},
    advanced = {2616, 73, 70},
    reverse = {2631, 73, 70},
    rewards = Outland_Rewards(2)
}) -- Coilfang Caper

BladesEdge.nodes[61032759] = SkyridingRace({
    label = '{quest:77205}',
    normal = {2602, 80, 75},
    advanced = {2617, 75, 72},
    reverse = {2632, 78, 75},
    rewards = Outland_Rewards(3)
}) -- Blade's Edge Brawl

ShadowmoonValley.nodes[61734841] = SkyridingRace({
    label = '{quest:77346}',
    normal = {2608, 75, 70},
    advanced = {2623, 66, 63},
    reverse = {2638, 66, 63},
    rewards = Outland_Rewards(9)
}) -- Shadowmoon Slam

ShadowmoonValley.nodes[51014006] = SkyridingRace({
    label = '{quest:77684}',
    normal = {2612, 82, 77},
    advanced = {2627, 76, 73},
    reverse = {2642, 79, 76},
    rewards = Outland_Rewards(13)
}) -- Fel Pit Fracas

Nagrand.nodes[58267599] = SkyridingRace({
    label = '{quest:77238}',
    normal = {2603, 69, 64},
    advanced = {2618, 60, 57},
    reverse = {2633, 61, 58},
    rewards = Outland_Rewards(4)
}) -- Telaar Tear

Nagrand.nodes[29472503] = SkyridingRace({
    label = '{quest:77589}',
    normal = {2610, 85, 80},
    advanced = {2625, 75, 72},
    reverse = {2640, 76, 73},
    rewards = Outland_Rewards(11)
}) -- Warmaul Wingding

local ShattrathCitySashay = SkyridingRace({
    label = '{quest:77322}',
    normal = {2607, 80, 75},
    advanced = {2622, 68, 65},
    reverse = {2637, 69, 66},
    rewards = Outland_Rewards(8),
    parent = TerokkarForest.id
}) -- Shattrath City Sashay

-- TerokkarForest.nodesx[34813025] = ShattrathCitySashay
Shattrath.nodes[71317061] = ShattrathCitySashay

local RazorthornRiseRush = SkyridingRace({
    label = '{quest:77260}',
    normal = {2604, 72, 67},
    advanced = {2619, 57, 54},
    reverse = {2634, 57, 54},
    rewards = Outland_Rewards(5),
    parent = TerokkarForest.id
}) -- Razorthorn Rise Rush

-- TerokkarForest.nodesx[59810480] = RazorthornRiseRush
HellfirePeninsula.nodes[32657707] = RazorthornRiseRush

TerokkarForest.nodes[42256788] = SkyridingRace({
    label = '{quest:77264}',
    normal = {2605, 78, 73},
    advanced = {2620, 73, 70},
    reverse = {2635, 73, 70},
    rewards = Outland_Rewards(6)
}) -- Auchindoun Coaster

TerokkarForest.nodes[67256586] = SkyridingRace({
    label = '{quest:77645}',
    normal = {2611, 75, 70},
    advanced = {2626, 66, 63},
    reverse = {2641, 66, 63},
    rewards = Outland_Rewards(12)
}) -- Skettis Scramble

Netherstorm.nodes[51204193] = SkyridingRace({
    label = '{quest:77398}',
    normal = {2609, 120, 115},
    advanced = {2624, 112, 109},
    reverse = {2639, 113, 110},
    rewards = Outland_Rewards(10)
}) -- Eco-Dome Excursion

Netherstorm.nodes[68894774] = SkyridingRace({
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
    {showNote = true})
