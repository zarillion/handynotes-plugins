-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Map = ns.Map
local L = ns.locale

local Collectible = ns.node.Collectible

local Achievement = ns.reward.Achievement
local Pet = ns.reward.Pet
local Toy = ns.reward.Toy
-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------
local map = Map({id = 125, settings = true})
local sewers = Map({id = 126, settings = true})

map.nodes[56674557] = Collectible({
    id = 192708,
    icon = 133743,
    label = '{achievement:1956}',
    rewards = {
        Achievement({id = 1956, criteria = 1}), -- Higher Learning
        Pet({id = 199, item = 44738}), -- 	Kirin Tor Familiar
        Toy({item = 43824}) -- The Schools of Arcane Magic - Mastery
    }
}) -- The Schools of Arcane Magic - Introduction

map.nodes[52305479] = Collectible({
    id = 192709,
    icon = 133743,
    label = '{achievement:1956}',
    rewards = {
        Achievement({id = 1956, criteria = 2}), -- Higher Learning
        Pet({id = 199, item = 44738}), -- 	Kirin Tor Familiar
        Toy({item = 43824}) -- The Schools of Arcane Magic - Mastery
    }
}) -- The Schools of Arcane Magic - Abjuration

map.nodes[30774601] = Collectible({
    id = 192710,
    icon = 133743,
    label = '{achievement:1956}',
    rewards = {
        Achievement({id = 1956, criteria = 3}), -- Higher Learning
        Pet({id = 199, item = 44738}), -- 	Kirin Tor Familiar
        Toy({item = 43824}) -- The Schools of Arcane Magic - Mastery
    }
}) -- The Schools of Arcane Magic - Conjuration

map.nodes[26485222] = Collectible({
    id = 192711,
    icon = 133743,
    label = '{achievement:1956}',
    rewards = {
        Achievement({id = 1956, criteria = 4}), -- Higher Learning
        Pet({id = 199, item = 44738}), -- 	Kirin Tor Familiar
        Toy({item = 43824}) -- The Schools of Arcane Magic - Mastery
    }
}) -- The Schools of Arcane Magic - Divination

map.nodes[43544669] = Collectible({
    id = 192712,
    icon = 133743,
    label = '{achievement:1956}',
    rewards = {
        Achievement({id = 1956, criteria = 5}), -- Higher Learning
        Pet({id = 199, item = 44738}), -- 	Kirin Tor Familiar
        Toy({item = 43824}) -- The Schools of Arcane Magic - Mastery
    }
}) -- The Schools of Arcane Magic - Enchantment

map.nodes[64415237] = Collectible({
    id = 192713,
    icon = 133743,
    label = '{achievement:1956}',
    rewards = {
        Achievement({id = 1956, criteria = 6}), -- Higher Learning
        Pet({id = 199, item = 44738}), -- 	Kirin Tor Familiar
        Toy({item = 43824}) -- The Schools of Arcane Magic - Mastery
    }
}) -- The Schools of Arcane Magic - Illusion

map.nodes[46773914] = Collectible({
    id = 192714,
    icon = 133743,
    label = '{achievement:1956}',
    rewards = {
        Achievement({id = 1956, criteria = 7}), -- Higher Learning
        Pet({id = 199, item = 44738}), -- 	Kirin Tor Familiar
        Toy({item = 43824}) -- The Schools of Arcane Magic - Mastery
    }
}) -- The Schools of Arcane Magic - Necromancy

map.nodes[46784001] = Collectible({
    id = 192715,
    icon = 133743,
    label = '{achievement:1956}',
    rewards = {
        Achievement({id = 1956, criteria = 8}), -- Higher Learning
        Pet({id = 199, item = 44738}), -- 	Kirin Tor Familiar
        Toy({item = 43824}) -- The Schools of Arcane Magic - Mastery
    }
}) -- The Schools of Arcane Magic - Transmutation

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
