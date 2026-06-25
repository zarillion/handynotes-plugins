-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Map = ns.Map

local Rare = ns.node.Rare
local RareElite = ns.node.RareElite
-- local Treasure = ns.node.Treasure
local Achievement = ns.reward.Achievement

-------------------------------------------------------------------------------

local map = Map({id = 2599, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[42605830] = Rare({
    id = 264866,
    quest = 96372,
    rewards = {
        Achievement({id = 62881, criteria = 114000}), -- Showdown Slugger: Val
        Achievement({id = 63348, criteria = 115262}) -- Heroic Slugger
    }
}) -- Krilkan

map.nodes[49707920] = Rare({
    id = 264865,
    quest = 96371,
    rewards = {
        Achievement({id = 62881, criteria = 113998}), -- Showdown Slugger: Val
        Achievement({id = 63348, criteria = 115260}) -- Heroic Slugger
    }
}) -- Mercilus

map.nodes[55206560] = Rare({
    id = 261965,
    rewards = {
        Achievement({id = 62881, criteria = 113995}), -- Showdown Slugger: Val
        Achievement({id = 63348, criteria = 115257}) -- Heroic Slugger
    }
}) -- Sleet-Rune

map.nodes[28507450] = Rare({
    id = 264864,
    quest = 96370,
    rewards = {
        Achievement({id = 62881, criteria = 113999}), -- Showdown Slugger: Val
        Achievement({id = 63348, criteria = 115261}) -- Heroic Slugger
    }
}) -- Xirah

map.nodes[67204180] = RareElite({
    id = 261716,
    quest = 95559,
    location = L['in_cave'],
    rewards = {
        Achievement({id = 62881, criteria = 113997}), -- Showdown Slugger: Val
        Achievement({id = 63348, criteria = 115259}) -- Heroic Slugger
    }
}) -- Glacial Broodmother

--[=[
map.nodes[00000000] = Rare({
    id = 264868,
    rewards = {
        Achievement({id = 62881, criteria = 114001}), -- Showdown Slugger: Val
        Achievement({id = 63348, criteria = 115263}), -- Heroic Slugger
    }
}) -- Opprimius
]=]

--[=[
map.nodes[00000000] = Rare({
    id = 264870,
    rewards = {
        Achievement({id = 62881, criteria = 114003}), -- Showdown Slugger: Val
        Achievement({id = 63348, criteria = 115265}), -- Heroic Slugger
    }
}) -- The Horror Below
]=]

--[=[
map.nodes[00000000] = Rare({
    id = 262421,
    rewards = {
        Achievement({id = 62881, criteria = 113996}), -- Showdown Slugger: Val
        Achievement({id = 63348, criteria = 115258}), -- Heroic Slugger
    }
}) -- Atomus
]=]

--[=[
map.nodes[00000000] = Rare({
    id = 264869,
    rewards = {
        Achievement({id = 62881, criteria = 114002}), -- Showdown Slugger: Val
        Achievement({id = 63348, criteria = 115264}), -- Heroic Slugger
    }
}) -- Nelgothar
]=]

--[=[
map.nodes[00000000] = RareElite({
    id = 265269,
    rewards = {
        Achievement({id = 62881, criteria = 114004}), -- Showdown Slugger: Val
        Achievement({id = 63348, criteria = 115266}), -- Heroic Slugger
    }
}) -- Shadowguard Destroyer
]=]

-------------------------------------------------------------------------------
------------------------------- TREASURES ------------------------------------
-------------------------------------------------------------------------------

--[=[
map.nodes[00000000] = Treasure({
    -- Spawns randomly throughout the zone
}) -- Dominaar Storage Vessel (random spawn)
]=]
