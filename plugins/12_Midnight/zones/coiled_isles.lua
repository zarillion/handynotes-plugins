-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

local LoreObject = ns.node.LoreObject
local PT = ns.node.ProfessionTreasures
local Rare = ns.node.Rare
local RareElite = ns.node.RareElite
local Safari = ns.node.Safari
local SkyridingGlyph = ns.node.SkyridingGlyph
local Telescope = ns.node.Telescope
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Mount = ns.reward.Mount
local Item = ns.reward.Item
local Transmog = ns.reward.Transmog
local Reputation = ns.reward.Reputation
local Section = ns.reward.Section
local Spacer = ns.reward.Spacer

local Gray = ns.status.Gray

local POI = ns.poi.POI
local Path = ns.poi.Path

-------------------------------------------------------------------------------

local map = Map({id = 2512, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[00000000] = Rare({
    id = 0,
    quest = XXXXX,
    rewards = {
        Achievement({id = 63358, criteria = XXXXX})
    }
}) -- Farthik the Plunderer

map.nodes[00000000] = Rare({
    id = 0,
    quest = XXXXX,
    rewards = {
        Achievement({id = 63358, criteria = XXXXX})
    }
}) -- Siltmouth

map.nodes[00000000] = Rare({
    id = 0,
    quest = XXXXX,
    rewards = {
        Achievement({id = 63358, criteria = XXXXX})
    }
}) -- Kari'zah the Forgotten

map.nodes[00000000] = Rare({
    id = 0,
    quest = XXXXX,
    rewards = {
        Achievement({id = 63358, criteria = XXXXX})
    }
}) -- Lockjaw

map.nodes[00000000] = Rare({
    id = 0,
    quest = XXXXX,
    rewards = {
        Achievement({id = 63358, criteria = XXXXX})
    }
}) -- Hisstara

map.nodes[00000000] = Rare({
    id = 0,
    quest = XXXXX,
    rewards = {
        Achievement({id = 63358, criteria = XXXXX})
    }
}) -- Szarith the Fanged

map.nodes[00000000] = Rare({
    id = 0,
    quest = XXXXX,
    rewards = {
        Achievement({id = 63358, criteria = XXXXX})
    }
}) -- Garsecg

map.nodes[00000000] = Rare({
    id = 0,
    quest = XXXXX,
    rewards = {
        Achievement({id = 63358, criteria = XXXXX})
    }
}) -- Nar'zira

map.nodes[00000000] = Rare({
    id = 0,
    quest = XXXXX,
    rewards = {
        Achievement({id = 63358, criteria = XXXXX})
    }
}) -- Coin-Eye Skully

map.nodes[00000000] = Rare({
    id = 0,
    quest = XXXXX,
    rewards = {
        Achievement({id = 63358, criteria = XXXXX})
    }
}) -- Big Mon

map.nodes[00000000] = Rare({
    id = 0,
    quest = XXXXX,
    rewards = {
        Achievement({id = 63358, criteria = XXXXX})
    }
}) -- Sss'alik

map.nodes[00000000] = Rare({
    id = 0,
    quest = XXXXX,
    rewards = {
        Achievement({id = 63358, criteria = XXXXX})
    }
}) -- Destra

-------------------------------------------------------------------------------
------------------------------- TREASURES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[00000000] = Treasure({
    rewards = {
        Achievement({id = 63359, criteria = XXXXX})
    }
}) -- Abandoned Amani Privateer's Cache

map.nodes[00000000] = Treasure({
    rewards = {
        Achievement({id = 63359, criteria = XXXXX})
    }
}) -- Fangbound Sack

map.nodes[00000000] = Treasure({
    rewards = {
        Achievement({id = 63359, criteria = XXXXX})
    }
}) -- Sunken Diver's Chest

map.nodes[00000000] = Treasure({
    rewards = {
        Achievement({id = 63359, criteria = XXXXX})
    }
}) -- Grave of Someone Forgotten

map.nodes[00000000] = Treasure({
    rewards = {
        Achievement({id = 63359, criteria = XXXXX})
    }
}) -- Profane Ritual Spoils

map.nodes[00000000] = Treasure({
    rewards = {
        Achievement({id = 63359, criteria = XXXXX})
    }
}) -- Brine-Crusted Chest

map.nodes[00000000] = Treasure({
    rewards = {
        Achievement({id = 63359, criteria = XXXXX})
    }
}) -- Posessed Vase

map.nodes[00000000] = Treasure({
    rewards = {
        Achievement({id = 63359, criteria = XXXXX})
    }
}) -- Malfunctioning Staff

map.nodes[00000000] = Treasure({
    rewards = {
        Achievement({id = 63359, criteria = XXXXX})
    }
}) -- Tarnished Amani Glaive

map.nodes[00000000] = Treasure({
    rewards = {
        Achievement({id = 63359, criteria = XXXXX})
    }
}) -- Jaktu's Cursed Blade

map.nodes[00000000] = Treasure({
    rewards = {
        Achievement({id = 63359, criteria = XXXXX})
    }
}) -- Lost Spirit

map.nodes[00000000] = Treasure({
    rewards = {
        Achievement({id = 63359, criteria = XXXXX})
    }
}) -- Cracked Skull

map.nodes[00000000] = Treasure({
    rewards = {
        Achievement({id = 63359, criteria = XXXXX})
    }
}) -- Damaged Loa Trinket

map.nodes[00000000] = Treasure({
    rewards = {
        Achievement({id = 63359, criteria = XXXXX})
    }
}) -- Venomjade Necklace

map.nodes[00000000] = Treasure({
    rewards = {
        Achievement({id = 63359, criteria = XXXXX})
    }
}) -- Ornate Bottle

map.nodes[00000000] = Treasure({
    rewards = {
        Achievement({id = 63359, criteria = XXXXX})
    }
}) -- Stinking Vessel

map.nodes[00000000] = Treasure({
    rewards = {
        Achievement({id = 63359, criteria = XXXXX})
    }
}) -- Waterlogged Basket

map.nodes[00000000] = Treasure({
    rewards = {
        Achievement({id = 63359, criteria = XXXXX})
    }
}) -- Smoldering Incense

map.nodes[00000000] = Treasure({
    rewards = {
        Achievement({id = 63359, criteria = XXXXX})
    }
}) -- Crumbling Urn

map.nodes[00000000] = Treasure({
    rewards = {
        Achievement({id = 63359, criteria = XXXXX})
    }
}) -- Forgotten Mask

map.nodes[00000000] = Treasure({
    rewards = {
        Achievement({id = 63359, criteria = XXXXX})
    }
}) -- Vul'zahn's Smuggled Treasure

map.nodes[00000000] = Treasure({
    rewards = {
        Achievement({id = 63359, criteria = XXXXX})
    }
}) -- Zul'jan's Stash
