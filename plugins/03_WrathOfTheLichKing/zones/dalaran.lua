-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Map = ns.Map
local L = ns.locale
local Class = ns.Class

local Collectible = ns.node.Collectible

local Achievement = ns.reward.Achievement
local Pet = ns.reward.Pet
local Toy = ns.reward.Toy

-------------------------------------------------------------------------------

local map = Map({id = 125, settings = true})
local sewers = Map({id = 126, settings = true})

-------------------------------------------------------------------------------

local function HigherLearning_Rewards(criteria)
    return {
        Achievement({id = 1956, criteria = criteria}), -- Higher Learning
        ns.reward.Item({item = 43824}) -- The Schools of Arcane Magic - Mastery
    }
end

local HigherLearning = Class('HigherLearning', Collectible,
    {icon = 133743, label = '{achievement:1956}'})

map.nodes[56674557] = HigherLearning({
    note = L['higher_learning_1'],
    rewards = HigherLearning_Rewards(7236)
}) -- The Schools of Arcane Magic - Introduction

map.nodes[52305479] = HigherLearning({
    note = L['higher_learning_2'],
    rewards = HigherLearning_Rewards(7237)
}) -- The Schools of Arcane Magic - Abjuration

map.nodes[30774601] = HigherLearning({
    note = L['higher_learning_3'],
    rewards = HigherLearning_Rewards(7238)
}) -- The Schools of Arcane Magic - Conjuration

map.nodes[26485222] = HigherLearning({
    note = L['higher_learning_4'],
    rewards = HigherLearning_Rewards(7239)
}) -- The Schools of Arcane Magic - Divination

map.nodes[43544669] = HigherLearning({
    note = L['higher_learning_5'],
    rewards = HigherLearning_Rewards(7240)
}) -- The Schools of Arcane Magic - Enchantment

map.nodes[64415237] = HigherLearning({
    note = L['higher_learning_6'],
    rewards = HigherLearning_Rewards(7241)
}) -- The Schools of Arcane Magic - Illusion

map.nodes[46773914] = HigherLearning({
    note = L['higher_learning_7'],
    rewards = HigherLearning_Rewards(7242)
}) -- The Schools of Arcane Magic - Necromancy

map.nodes[46784001] = HigherLearning({
    note = L['higher_learning_8'],
    rewards = HigherLearning_Rewards(7243)
}) -- The Schools of Arcane Magic - Transmutation

map.nodes[22405470] = HigherLearning({
    label = '{npc:90430}',
    note = L['higher_learning_vargoth'],
    requires = {ns.requirement.Achievement(1956), ns.requirement.Toy(43824)},
    rewards = {
        Pet({id = 199, item = 44738}), -- Kirin Tor Familiar
        Toy({item = 43824}) -- The Schools of Arcane Magic - Mastery
    }
}) -- The Schools of Arcane Magic - Transmutation

-------------------------------------------------------------------------------

sewers.nodes[48504590] = Collectible({
    id = 32428,
    icon = 132196,
    rewards = {Achievement({id = 2556, criteria = 5})}
}) -- Underbelly Rat

map.nodes[60704817] = Collectible({
    id = 32428,
    icon = 132196,
    note = L['dalaran_sewers'],
    rewards = {Achievement({id = 2556, criteria = 5})}
}) -- Underbelly Rat
