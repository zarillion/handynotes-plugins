-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
-- local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible
local Rare = ns.node.Rare
local Treasure = ns.node.Treasure
-- local Vendor = ns.node.Vendor

local Achievement = ns.reward.Achievement
-- local Item = ns.reward.Item
-- local Mount = ns.reward.Mount
-- local Pet = ns.reward.Pet
-- local Toy = ns.reward.Toy
-- local Transmog = ns.reward.Transmog

-- local Circle = ns.poi.Circle
-- local Entrance = ns.poi.Entrance
-- local Path = ns.poi.Path
-- local POI = ns.poi.POI

-- local QuestStatus = ns.tooltip.QuestStatus

-------------------------------------------------------------------------------

local map = Map({id = 9999, patch = 111000, settings = true}) -- Undermine

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[00000000] = Rare({
    id = 230931,
    rewards = {
        Achievement({id = 41216, criteria = 1}) -- Adventurer of Undermine
    }
}) -- Scrap Beak

map.nodes[00000000] = Rare({
    id = 230934,
    rewards = {
        Achievement({id = 41216, criteria = 2}) -- Adventurer of Undermine
    }
}) -- Ratspit

map.nodes[00000000] = Rare({
    id = 230940,
    rewards = {
        Achievement({id = 41216, criteria = 3}) -- Adventurer of Undermine
    }
}) -- Tally Doublespeak

map.nodes[00000000] = Rare({
    id = 230947,
    rewards = {
        Achievement({id = 41216, criteria = 4}) -- Adventurer of Undermine
    }
}) -- Slimesby

map.nodes[00000000] = Rare({
    id = 230946,
    rewards = {
        Achievement({id = 41216, criteria = 5}) -- Adventurer of Undermine
    }
}) -- V.V. Goosworth

map.nodes[00000000] = Rare({
    id = 230951,
    rewards = {
        Achievement({id = 41216, criteria = 6}) -- Adventurer of Undermine
    }
}) -- Thwack

map.nodes[00000000] = Rare({
    id = 230979,
    rewards = {
        Achievement({id = 41216, criteria = 7}) -- Adventurer of Undermine
    }
}) -- S.A.L.

map.nodes[00000000] = Rare({
    id = 230995,
    rewards = {
        Achievement({id = 41216, criteria = 8}) -- Adventurer of Undermine
    }
}) -- Nitro

map.nodes[00000000] = Rare({
    id = 231012,
    rewards = {
        Achievement({id = 41216, criteria = 9}) -- Adventurer of Undermine
    }
}) -- Candy Stickemup

map.nodes[00000000] = Rare({
    id = 231017,
    rewards = {
        Achievement({id = 41216, criteria = 10}) -- Adventurer of Undermine
    }
}) -- Grimewick

map.nodes[00000000] = Rare({
    id = 231288,
    rewards = {
        Achievement({id = 41216, criteria = 11}) -- Adventurer of Undermine
    }
}) -- Swigs Farsight

map.nodes[00000000] = Rare({
    id = 230746,
    rewards = {
        Achievement({id = 41216, criteria = 12}) -- Adventurer of Undermine
    }
}) -- Ephemeral Agent Lathyd

map.nodes[00000000] = Rare({
    id = 230793,
    rewards = {
        Achievement({id = 41216, criteria = 13}) -- Adventurer of Undermine
    }
}) -- The Junk-Wall

map.nodes[00000000] = Rare({
    id = 230800,
    rewards = {
        Achievement({id = 41216, criteria = 14}) -- Adventurer of Undermine
    }
}) -- Slugger the Smart

map.nodes[00000000] = Rare({
    id = 230828,
    rewards = {
        Achievement({id = 41216, criteria = 15}) -- Adventurer of Undermine
    }
}) -- Chief Foreman Gutso

map.nodes[00000000] = Rare({
    id = 230840,
    rewards = {
        Achievement({id = 41216, criteria = 16}) -- Adventurer of Undermine
    }
}) -- Flyboy Snooty

map.nodes[00000000] = Rare({
    id = 234480,
    rewards = {
        Achievement({id = 41216, criteria = 17}) -- Adventurer of Undermine
    }
}) -- Aurumensis

map.nodes[00000000] = Rare({
    id = 234499,
    rewards = {
        Achievement({id = 41216, criteria = 18}) -- Adventurer of Undermine
    }
}) -- Giovante

map.nodes[00000000] = Rare({
    id = 233471,
    rewards = {
        Achievement({id = 41216, criteria = 19}) -- Adventurer of Undermine
    }
}) -- Scrapchewer

map.nodes[00000000] = Rare({
    id = 233472,
    rewards = {
        Achievement({id = 41216, criteria = 20}) -- Adventurer of Undermine
    }
}) -- Volstrike the Charged

map.nodes[00000000] = Rare({
    id = 231310,
    rewards = {
        Achievement({id = 41216, criteria = 21}) -- Adventurer of Undermine
    }
}) -- The Darkfuse Precipitant

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-------------------------------- MISCELLEANOUS --------------------------------
-------------------------------------------------------------------------------
