-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Map = ns.Map
local L = ns.locale

local Rare = ns.node.Rare
local Squirrel = ns.node.Squirrel
local Collectible = ns.node.Collectible

local Achievement = ns.reward.Achievement
local Transmog = ns.reward.Transmog

local POI = ns.poi.POI

-------------------------------------------------------------------------------

local map = Map({id = 117, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[72805140] = Rare({
    id = 32386,
    rewards = {
        Achievement({id = 2257, criteria = 8}), -- Frostbitten
        Transmog({item = 44670, slot = L['plate']}) -- Soul-Sealed Belt
    },
    pois = {
        POI({
            68004480, 69404900, 70605160, 71205540, 69005880, 72806180,
            74406060, 75005800, 74605580, 74805480, 74805100, 75204980,
            72804900, 71604660, 72004360, 73604060, 75604380
        })
    },
    note = L['area_spawn']
}) -- Vigdis the War Maiden

map.nodes[60602000] = Rare({
    id = 32377,
    rewards = {
        Achievement({id = 2257, criteria = 7}), -- Frostbitten
        Transmog({item = 44669, slot = L['mail']}) -- Worgen-Scored Shackles
    },
    pois = {POI({53601240, 50800400, 68801700, 71601360})}
}) -- Perobas the Bloodthirster

map.nodes[31205680] = Rare({
    id = 32398,
    rewards = {
        Achievement({id = 2257, criteria = 9}), -- Frostbitten
        Transmog({item = 44668, slot = L['cloth']}) -- Egg-Warming Blanket
    },
    pois = {POI({26006400, 30807120, 32207540, 33208020})}
}) -- King Ping

-------------------------------------------------------------------------------
------------------- TO ALL THE SQUIRRELS WHO SHARED MY LIFE -------------------
-------------------------------------------------------------------------------

map.nodes[21095563] = Squirrel({
    id = 28407,
    rewards = {Achievement({id = 2557, criteria = 3})}
}) -- Fjord Penguin

map.nodes[36287932] = Squirrel({
    id = 26503,
    rewards = {Achievement({id = 2557, criteria = 10})}
}) -- Scalawag Frog

map.nodes[69266450] = Squirrel({
    id = 24746,
    rewards = {Achievement({id = 2557, criteria = 4})}
}) -- Fjord Turkey

map.nodes[68006350] = Squirrel({
    id = 17467,
    rewards = {Achievement({id = 1206, criteria = 16})}
}) -- Skunk

map.nodes[52506660] = Squirrel({
    id = 1420,
    rewards = {Achievement({id = 1206, criteria = 20})}
}) -- Toad

map.nodes[33787837] = Squirrel({
    id = 1420,
    note = L['in_cave'],
    rewards = {Achievement({id = 1206, criteria = 20})},
    pois = {POI({33577564})}
}) -- Sheep

-------------------------------------------------------------------------------
-------------------------------- PEST CONTROL ---------------------------------
-------------------------------------------------------------------------------

map.nodes[69266550] = Collectible({
    id = 24174,
    icon = 132196,
    rewards = {Achievement({id = 2556, criteria = 15})}
}) -- Fjord Turkey

map.nodes[57205650] = Collectible({
    id = 24270,
    icon = 132196,
    note = L['note_devouring_maggot'],
    rewards = {Achievement({id = 2556, criteria = 6})},
    pois = {POI({56624889})}
}) -- Devouring Maggot

map.nodes[50265509] = Collectible({
    id = 16030,
    icon = 132196,
    label = '{npc:2914}, {npc:16030}',
    rewards = {Achievement({id = 2556, criteria = {10, 13}})}
}) -- Snake, Maggot

map.nodes[59207730] = Collectible({
    id = 4075,
    icon = 132196,
    rewards = {Achievement({id = 2556, criteria = 18})}
}) -- Rat

-------------------------------------------------------------------------------
------------------------------- FRIEND OR FOWL? -------------------------------
-------------------------------------------------------------------------------

map.nodes[69266550] = Collectible({
    id = 24746,
    icon = 133971,
    note = L['achievement_friend_or_fowl_desc'],
    rewards = {Achievement({id = 1254})}
}) -- Fjord Turkey
