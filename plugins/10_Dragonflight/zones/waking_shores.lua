-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
-- local L = ns.locale
local Map = ns.Map

-- local Rare = ns.node.Rare
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement

-------------------------------------------------------------------------------

local map = Map({id = 2022, settings = true})

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

-- https://www.wowhead.com/beta/achievement=16297/treasures-of-the-waking-shores#comments

map.nodes[40454136] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 16297, criteria = 54699})}
}) -- Bubble Drifter

map.nodes[69314658] = Treasure({
    quest = 70346,
    rewards = {Achievement({id = 16297, criteria = 54702})}
}) -- Dead Man's Chestplate

-- map.nodes[] = Treasure({
--     quest = nil,
--     rewards = {Achievement({id = 16297, criteria = 55403})}
-- }) -- Misty Treasure Chest

-- map.nodes[] = Treasure({
--     quest = nil,
--     rewards = {Achievement({id = 16297, criteria = 55448})}
-- }) -- Onyx Gem Cluster

-- map.nodes[] = Treasure({
--     quest = nil,
--     rewards = {Achievement({id = 16297, criteria = 54698})}
-- }) -- Replica Dragon Goblet

-- map.nodes[] = Treasure({
--     quest = nil,
--     rewards = {Achievement({id = 16297, criteria = 54713})}
-- }) -- Ruby Gem Cluster

-- map.nodes[] = Treasure({
--     quest = nil,
--     rewards = {Achievement({id = 16297, criteria = 54703})}
-- }) -- Torn Riding Pack

map.nodes[46713121] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 16297, criteria = 54701})}
}) -- Yennu's Kite
