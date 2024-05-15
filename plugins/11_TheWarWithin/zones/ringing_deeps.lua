-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
-- local L = ns.locale
local Map = ns.Map

local Rare = ns.node.Rare
local Treasure = ns.node.Treasure
local Collectible = ns.node.Collectible

local DragonRace = ns.node.DragonRace

local Achievement = ns.reward.Achievement

-------------------------------------------------------------------------------

local map = Map({id = 2214, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[46007600] = Rare({
    id = nil,
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Aquellion

map.nodes[45003000] = Rare({
    id = nil,
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Basilisk Matriarch

map.nodes[59003200] = Rare({
    id = nil,
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Candleflayer Captain

map.nodes[55002500] = Rare({
    id = nil,
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Charmonger

map.nodes[50004200] = Rare({
    id = nil,
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Coalesced Monstrosity

map.nodes[43005000] = Rare({
    id = nil,
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Cragmund

map.nodes[58006500] = Rare({
    id = nil,
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Deathbound Husk

map.nodes[61005700] = Rare({
    id = nil,
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Disturbed Earthgorger

map.nodes[57005700] = Rare({
    id = nil,
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Hungerer of the Deeps

map.nodes[38004800] = Rare({
    id = nil,
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Kelpmire

map.nodes[33003700] = Rare({
    id = nil,
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- King Splash

map.nodes[50005900] = Rare({
    id = nil,
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Raging Skardyn

map.nodes[60005300] = Rare({
    id = nil,
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Spore-infused Shalewing

map.nodes[36001100] = Rare({
    id = nil,
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Terror of the Forge

map.nodes[66004500] = Rare({
    id = nil,
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Trungal

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[40005100] = Treasure({
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Blocked Intake

map.nodes[57006500] = Treasure({
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Cursed Pickaxe

map.nodes[37001800] = Treasure({
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Discarded Toolbox

map.nodes[41003300] = Treasure({
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Dusty Prospector's Chest

map.nodes[52006900] = Treasure({
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Kaja'Cola Machine

map.nodes[43005500] = Treasure({
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Forgotten Trreasure

map.nodes[48001500] = Treasure({
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Munderut's Forgotten Stash

map.nodes[51003200] = Treasure({
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Scary Dark Chest

map.nodes[60003500] = Treasure({
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Waterlogged Refuse

map.nodes[63004100] = Treasure({
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Webbed Knapsack

-------------------------------------------------------------------------------
--------------------------------- DRAGONRACES ---------------------------------
-------------------------------------------------------------------------------

map.nodes[43004800] = DragonRace() -- Cataract River Cruise
map.nodes[63003800] = DragonRace() -- Chittering Concourse
map.nodes[32001000] = DragonRace() -- Earthenworks Weave
map.nodes[58008300] = DragonRace() -- Opportunity Point Amble
map.nodes[32002400] = DragonRace() -- Ringing Deeps Ramble
map.nodes[60007500] = DragonRace() -- Taelloch Twist

-------------------------------------------------------------------------------
------------------------------------ SIGNS ------------------------------------
-------------------------------------------------------------------------------

local Sign = Class('sign', Collectible, {group = ns.groups.SIGN})

map.nodes[30001900] = Sign() -- A skull on a sign
map.nodes[58005900] = Sign() -- Kobold Warning Sign
map.nodes[44007800] = Sign() -- Submerged Sign
map.nodes[66004300] = Sign() -- Warning: Collapsed Tunnel
map.nodes[43005900] = Sign() -- Wax-Drenched Sign
