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
    quest = 96491,
    rewards = {
        Achievement({id = 63358, criteria = 115279})
    }
}) -- Farthik the Plunderer

map.nodes[00000000] = Rare({
    id = 0,
    quest = 97112,
    rewards = {
        Achievement({id = 63358, criteria = 115280})
    }
}) -- Siltmouth

map.nodes[00000000] = Rare({
    id = 0,
    quest = 97122,
    rewards = {
        Achievement({id = 63358, criteria = 115784})
    }
}) -- Kari'zah the Forgotten

map.nodes[00000000] = Rare({
    id = 0,
    quest = 96456,
    rewards = {
        Achievement({id = 63358, criteria = 115284})
    }
}) -- Lockjaw

map.nodes[00000000] = Rare({
    id = 0,
    quest = 96464,
    rewards = {
        Achievement({id = 63358, criteria = 115281})
    }
}) -- Hisstara

map.nodes[00000000] = Rare({
    id = 0,
    quest = 96030,
    rewards = {
        Achievement({id = 63358, criteria = 115282})
    }
}) -- Szarith the Fanged

map.nodes[00000000] = Rare({
    id = 0,
    quest = 94856,
    rewards = {
        Achievement({id = 63358, criteria = 110172})
    }
}) -- Garsecg

map.nodes[00000000] = Rare({
    id = 0,
    quest = 94860,
    rewards = {
        Achievement({id = 63358, criteria = 115283})
    }
}) -- Nar'zira

map.nodes[00000000] = Rare({
    id = 0,
    quest = 94619,
    rewards = {
        Achievement({id = 63358, criteria = 115285})
    }
}) -- Coin-Eye Skully

map.nodes[00000000] = Rare({
    id = 0,
    quest = 93829,
    rewards = {
        Achievement({id = 63358, criteria = 115286})
    }
}) -- Big Mon

map.nodes[00000000] = Rare({
    id = 0,
    quest = 95447,
    rewards = {
        Achievement({id = 63358, criteria = 115287})
    }
}) -- Sss'alik

map.nodes[00000000] = Rare({
    id = 0,
    quest = 95452,
    rewards = {
        Achievement({id = 63358, criteria = 115288})
    }
}) -- Destra

-------------------------------------------------------------------------------
------------------------------- TREASURES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[00000000] = Treasure({
    quest = 94569,
    rewards = {
        Achievement({id = 63359, criteria = 115289})
    }
}) -- Abandoned Amani Privateer's Cache

map.nodes[00000000] = Treasure({
    quest = 95938,
    rewards = {
        Achievement({id = 63359, criteria = 115313})
    }
}) -- Fangbound Sack

map.nodes[00000000] = Treasure({
    quest = 95907,
    rewards = {
        Achievement({id = 63359, criteria = 115290})
    }
}) -- Sunken Diver's Chest

map.nodes[00000000] = Treasure({
    quest = 95956,
    rewards = {
        Achievement({id = 63359, criteria = 115291})
    }
}) -- Grave of Someone Forgotten

map.nodes[00000000] = Treasure({
    quest = 95941,
    rewards = {
        Achievement({id = 63359, criteria = 115292})
    }
}) -- Profane Ritual Spoils

map.nodes[00000000] = Treasure({
    quest = 95995,
    rewards = {
        Achievement({id = 63359, criteria = 115294})
    }
}) -- Brine-Crusted Chest

map.nodes[00000000] = Treasure({
    quest = 96985,
    rewards = {
        Achievement({id = 63359, criteria = 115295})
    }
}) -- Posessed Vase

map.nodes[00000000] = Treasure({
    quest = 95164,
    rewards = {
        Achievement({id = 63359, criteria = 115306})
    }
}) -- Malfunctioning Staff

map.nodes[00000000] = Treasure({
    quest = 95563,
    rewards = {
        Achievement({id = 63359, criteria = 115307})
    }
}) -- Tarnished Amani Glaive

map.nodes[00000000] = Treasure({
    quest = 95566,
    rewards = {
        Achievement({id = 63359, criteria = 115309})
    }
}) -- Jaktu's Cursed Blade

map.nodes[00000000] = Treasure({
    quest = 95571,
    rewards = {
        Achievement({id = 63359, criteria = 115310})
    }
}) -- Lost Spirit

map.nodes[00000000] = Treasure({
    quest = 95594,
    rewards = {
        Achievement({id = 63359, criteria = 115312})
    }
}) -- Cracked Skull

map.nodes[00000000] = Treasure({
    quest = 95596,
    rewards = {
        Achievement({id = 63359, criteria = 115296})
    }
}) -- Damaged Loa Trinket

map.nodes[00000000] = Treasure({
    quest = 95835,
    rewards = {
        Achievement({id = 63359, criteria = 115298})
    }
}) -- Venomjade Necklace

map.nodes[00000000] = Treasure({
    quest = 95836,
    rewards = {
        Achievement({id = 63359, criteria = 115299})
    }
}) -- Ornate Bottle

map.nodes[00000000] = Treasure({
    quest = 95841,
    rewards = {
        Achievement({id = 63359, criteria = 115300})
    }
}) -- Stinking Vessel

map.nodes[00000000] = Treasure({
    quest = 95854,
    rewards = {
        Achievement({id = 63359, criteria = 115301})
    }
}) -- Waterlogged Basket

map.nodes[00000000] = Treasure({
    quest = 95855,
    rewards = {
        Achievement({id = 63359, criteria = 115302})
    }
}) -- Smoldering Incense

map.nodes[00000000] = Treasure({
    quest = 95558,
    rewards = {
        Achievement({id = 63359, criteria = 115308})
    }
}) -- Crumbling Urn

map.nodes[00000000] = Treasure({
    quest = 95591,
    rewards = {
        Achievement({id = 63359, criteria = 115314})
    }
}) -- Forgotten Mask

map.nodes[00000000] = Treasure({
    quest = 95976,
    rewards = {
        Achievement({id = 63359, criteria = 115293})
    }
}) -- Vul'zahn's Smuggled Treasure

map.nodes[00000000] = Treasure({
    quest = 95727,
    rewards = {
        Achievement({id = 63359, criteria = 115297})
    }
}) -- Zul'jan's Stash
