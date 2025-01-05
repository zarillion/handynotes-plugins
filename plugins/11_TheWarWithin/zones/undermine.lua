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

local map = Map({id = 7206, patch = 111000, settings = true}) -- Undermine

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

map.nodes[00000000] = Treasure({
    rewards = {
        Achievement({id = 41217, criteria = 1}) -- Treasures of Undermine
    }
}) -- Unexploded Fireworks

map.nodes[00000000] = Treasure({
    rewards = {
        Achievement({id = 41217, criteria = 2}) -- Treasures of Undermine
    }
}) -- Suspicious Book

map.nodes[00000000] = Treasure({
    rewards = {
        Achievement({id = 41217, criteria = 3}) -- Treasures of Undermine
    }
}) -- Fireworks Hat

map.nodes[00000000] = Treasure({
    rewards = {
        Achievement({id = 41217, criteria = 4}) -- Treasures of Undermine
    }
}) -- Exploded Plunger

map.nodes[00000000] = Treasure({
    rewards = {
        Achievement({id = 41217, criteria = 5}) -- Treasures of Undermine
    }
}) -- Blackened Dice

map.nodes[00000000] = Treasure({
    rewards = {
        Achievement({id = 41217, criteria = 6}) -- Treasures of Undermine
    }
}) -- Lonely Tub

map.nodes[00000000] = Treasure({
    rewards = {
        Achievement({id = 41217, criteria = 7}) -- Treasures of Undermine
    }
}) -- Potent Potable

map.nodes[00000000] = Treasure({
    rewards = {
        Achievement({id = 41217, criteria = 8}) -- Treasures of Undermine
    }
}) -- Abandoned Toolbox

map.nodes[00000000] = Treasure({
    rewards = {
        Achievement({id = 41217, criteria = 9}) -- Treasures of Undermine
    }
}) -- Papa's Prized Putter

map.nodes[00000000] = Treasure({
    rewards = {
        Achievement({id = 41217, criteria = 10}) -- Treasures of Undermine
    }
}) -- Unsupervised Takeout

map.nodes[00000000] = Treasure({
    rewards = {
        Achievement({id = 41217, criteria = 11}) -- Treasures of Undermine
    }
}) -- Particularly Nice Lamp

map.nodes[00000000] = Treasure({
    rewards = {
        Achievement({id = 41217, criteria = 12}) -- Treasures of Undermine
    }
}) -- Uncracked Cold Ones

map.nodes[00000000] = Treasure({
    rewards = {
        Achievement({id = 41217, criteria = 13}) -- Treasures of Undermine
    }
}) -- Marooned Floatmingo

map.nodes[00000000] = Treasure({
    rewards = {
        Achievement({id = 41217, criteria = 14}) -- Treasures of Undermine
    }
}) -- Trick Deck of Cards

map.nodes[00000000] = Treasure({
    rewards = {
        Achievement({id = 41217, criteria = 15}) -- Treasures of Undermine
    }
}) -- Crumpled Schematics

-------------------------------------------------------------------------------
--------------------- ACHIEVEMENT: READ BETWEEN THE LINES ---------------------
-------------------------------------------------------------------------------

local UndermineLoreBook = Class('UndermineLoreBook', Collectible, {
    icon = 4549129,
    group = ns.groups.BETWEEN_THE_LINES
})

map.nodes[00000000] = UndermineLoreBook({
    rewards = {Achievement({id = 41588, criteria = 1})}
}) -- Rocket Drill Safety Manual

map.nodes[00000000] = UndermineLoreBook({
    rewards = {Achievement({id = 41588, criteria = 2})}
}) -- A Threatening Letter

map.nodes[00000000] = UndermineLoreBook({
    rewards = {Achievement({id = 41588, criteria = 3})}
}) -- First Half of Noggenfogger's Journal

map.nodes[00000000] = UndermineLoreBook({
    rewards = {Achievement({id = 41588, criteria = 4})}
}) -- Second Half of Noggenfogger's Journal

map.nodes[00000000] = UndermineLoreBook({
    rewards = {Achievement({id = 41588, criteria = 5})}
}) -- Extractor Drill X-78 Safety Guide

map.nodes[00000000] = UndermineLoreBook({
    rewards = {Achievement({id = 41588, criteria = 6})}
}) -- Gallywix's Notes

map.nodes[00000000] = UndermineLoreBook({
    rewards = {Achievement({id = 41588, criteria = 7})}
}) -- Misplaced Work Order

-------------------------------------------------------------------------------
----------------------------- WORLDSOUL MEMORIES ------------------------------
-------------------------------------------------------------------------------

map.nodes[00000000] = ns.node.WorldsoulMemory({areaPoiID = 9998}) -- Early Cartel Wars
map.nodes[00000000] = ns.node.WorldsoulMemory({areaPoiID = 9999}) -- Kaja'mite Contact

-------------------------------------------------------------------------------
-------------------------------- MISCELLEANOUS --------------------------------
-------------------------------------------------------------------------------
