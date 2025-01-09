-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible
-- local Rare = ns.node.Rare
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Pet = ns.reward.Pet
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

local Entrance = ns.poi.Entrance
local Path = ns.poi.Path
local POI = ns.poi.POI

local ItemStatus = ns.tooltip.ItemStatus

-------------------------------------------------------------------------------

local map = Map({id = 2346, patch = 110100, settings = true}) -- Undermine

local theRingingDeeps = ns.maps[2214]

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

-- map.nodes[00000000] = Rare({
--     id = 230931,
--     rewards = {
--         Achievement({id = 41216, criteria = 1}) -- Adventurer of Undermine
--     }
-- }) -- Scrap Beak

-- map.nodes[00000000] = Rare({
--     id = 230934,
--     rewards = {
--         Achievement({id = 41216, criteria = 2}) -- Adventurer of Undermine
--     }
-- }) -- Ratspit

-- map.nodes[00000000] = Rare({
--     id = 230940,
--     rewards = {
--         Achievement({id = 41216, criteria = 3}) -- Adventurer of Undermine
--     }
-- }) -- Tally Doublespeak

-- map.nodes[00000000] = Rare({
--     id = 230947,
--     rewards = {
--         Achievement({id = 41216, criteria = 4}) -- Adventurer of Undermine
--     }
-- }) -- Slimesby

-- map.nodes[00000000] = Rare({
--     id = 230946,
--     rewards = {
--         Achievement({id = 41216, criteria = 5}) -- Adventurer of Undermine
--     }
-- }) -- V.V. Goosworth

-- map.nodes[00000000] = Rare({
--     id = 230951,
--     rewards = {
--         Achievement({id = 41216, criteria = 6}) -- Adventurer of Undermine
--     }
-- }) -- Thwack

-- map.nodes[00000000] = Rare({
--     id = 230979,
--     rewards = {
--         Achievement({id = 41216, criteria = 7}) -- Adventurer of Undermine
--     }
-- }) -- S.A.L.

-- map.nodes[00000000] = Rare({
--     id = 230995,
--     rewards = {
--         Achievement({id = 41216, criteria = 8}) -- Adventurer of Undermine
--     }
-- }) -- Nitro

-- map.nodes[00000000] = Rare({
--     id = 231012,
--     rewards = {
--         Achievement({id = 41216, criteria = 9}) -- Adventurer of Undermine
--     }
-- }) -- Candy Stickemup

-- map.nodes[00000000] = Rare({
--     id = 231017,
--     rewards = {
--         Achievement({id = 41216, criteria = 10}) -- Adventurer of Undermine
--     }
-- }) -- Grimewick

-- map.nodes[00000000] = Rare({
--     id = 231288,
--     rewards = {
--         Achievement({id = 41216, criteria = 11}) -- Adventurer of Undermine
--     }
-- }) -- Swigs Farsight

-- map.nodes[00000000] = Rare({
--     id = 230746,
--     rewards = {
--         Achievement({id = 41216, criteria = 12}) -- Adventurer of Undermine
--     }
-- }) -- Ephemeral Agent Lathyd

-- map.nodes[00000000] = Rare({
--     id = 230793,
--     rewards = {
--         Achievement({id = 41216, criteria = 13}) -- Adventurer of Undermine
--     }
-- }) -- The Junk-Wall

-- map.nodes[00000000] = Rare({
--     id = 230800,
--     rewards = {
--         Achievement({id = 41216, criteria = 14}) -- Adventurer of Undermine
--     }
-- }) -- Slugger the Smart

-- map.nodes[00000000] = Rare({
--     id = 230828,
--     rewards = {
--         Achievement({id = 41216, criteria = 15}) -- Adventurer of Undermine
--     }
-- }) -- Chief Foreman Gutso

-- map.nodes[00000000] = Rare({
--     id = 230840,
--     rewards = {
--         Achievement({id = 41216, criteria = 16}) -- Adventurer of Undermine
--     }
-- }) -- Flyboy Snooty

-- map.nodes[00000000] = Rare({
--     id = 234480,
--     rewards = {
--         Achievement({id = 41216, criteria = 17}) -- Adventurer of Undermine
--     }
-- }) -- Aurumensis

-- map.nodes[00000000] = Rare({
--     id = 234499,
--     rewards = {
--         Achievement({id = 41216, criteria = 18}) -- Adventurer of Undermine
--     }
-- }) -- Giovante

-- map.nodes[00000000] = Rare({
--     id = 233471,
--     rewards = {
--         Achievement({id = 41216, criteria = 19}) -- Adventurer of Undermine
--     }
-- }) -- Scrapchewer

-- map.nodes[00000000] = Rare({
--     id = 233472,
--     rewards = {
--         Achievement({id = 41216, criteria = 20}) -- Adventurer of Undermine
--     }
-- }) -- Volstrike the Charged

-- map.nodes[00000000] = Rare({
--     id = 231310,
--     rewards = {
--         Achievement({id = 41216, criteria = 21}) -- Adventurer of Undermine
--     }
-- }) -- The Darkfuse Precipitant

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[48474307] = Treasure({
    location = 'On the roof of {location:Tailgate Park}.',
    quest = 85683,
    rewards = {
        Achievement({id = 41217, criteria = 71613}) -- Treasures of Undermine
    }
}) -- Unexploded Fireworks

map.nodes[49896613] = Treasure({
    location = L['inside_building'],
    quest = 85866,
    rewards = {
        Achievement({id = 41217, criteria = 71624}) -- Treasures of Undermine
    }
}) -- Suspicious Book

-- map.nodes[00000000] = Treasure({
--     rewards = {
--         Achievement({id = 41217, criteria = 71614}) -- Treasures of Undermine
--     }
-- }) -- Fireworks Hat

-- map.nodes[00000000] = Treasure({
--     rewards = {
--         Achievement({id = 41217, criteria = 71615}) -- Treasures of Undermine
--     }
-- }) -- Exploded Plunger

-- map.nodes[00000000] = Treasure({
--     rewards = {
--         Achievement({id = 41217, criteria = 71625}) -- Treasures of Undermine
--     }
-- }) -- Blackened Dice

-- map.nodes[00000000] = Treasure({
--     rewards = {
--         Achievement({id = 41217, criteria = 71626}) -- Treasures of Undermine
--     }
-- }) -- Lonely Tub

-- map.nodes[00000000] = Treasure({
--     rewards = {
--         Achievement({id = 41217, criteria = 71627}) -- Treasures of Undermine
--     }
-- }) -- Potent Potable

map.nodes[40852126] = Treasure({
    location =
        'High on the roof of {location:The Scrapshop}.\n\nFollow the stairs to the top.',
    pois = {Entrance({39312588})}, -- Entrance
    quest = 85422,
    rewards = {
        Achievement({id = 41217, criteria = 71628}) -- Treasures of Undermine
    }
}) -- Abandoned Toolbox

-- map.nodes[00000000] = Treasure({
--     rewards = {
--         Achievement({id = 41217, criteria = 71629}) -- Treasures of Undermine
--     }
-- }) -- Papa's Prized Putter

map.nodes[26864265] = Treasure({
    quest = 85425,
    rewards = {
        Achievement({id = 41217, criteria = 71630}) -- Treasures of Undermine
    }
}) -- Unsupervised Takeout

-- map.nodes[00000000] = Treasure({
--     rewards = {
--         Achievement({id = 41217, criteria = 71631}) -- Treasures of Undermine
--     }
-- }) -- Particularly Nice Lamp

-- map.nodes[00000000] = Treasure({
--     rewards = {
--         Achievement({id = 41217, criteria = 71632}) -- Treasures of Undermine
--     }
-- }) -- Uncracked Cold Ones

-- map.nodes[00000000] = Treasure({
--     rewards = {
--         Achievement({id = 41217, criteria = 71633}) -- Treasures of Undermine
--     }
-- }) -- Marooned Floatmingo

map.nodes[43665154] = Treasure({
    location =
        'On the desk next to {npc:231045} inside {location:The Incontinental Hotel}.',
    quest = 85496,
    rewards = {
        Achievement({id = 41217, criteria = 71634}) -- Treasures of Undermine
    }
}) -- Trick Deck of Cards

-- map.nodes[00000000] = Treasure({
--     rewards = {
--         Achievement({id = 41217, criteria = 71635}) -- Treasures of Undermine
--     }
-- }) -- Crumpled Schematics

-------------------------------------------------------------------------------

map.nodes[23804538] = Treasure({
    label = 'Muff\'s Auto Locker',
    quest = 85072,
    rewards = {
        Item({item = 234427}) -- Gorillion Fork
    }
}) -- Muff's Auto Locker

-------------------------------------------------------------------------------
--------------------- ACHIEVEMENT: READ BETWEEN THE LINES ---------------------
-------------------------------------------------------------------------------

local UndermineLoreBook = Class('UndermineLoreBook', Collectible, {
    icon = 4549129,
    group = ns.groups.BETWEEN_THE_LINES
})

theRingingDeeps.nodes[77067315] = UndermineLoreBook({
    quest = 86570,
    rewards = {Achievement({id = 41588, criteria = 103107})}
}) -- Rocket Drill Safety Manual

-- map.nodes[00000000] = UndermineLoreBook({
--     rewards = {Achievement({id = 41588, criteria = 103108})}
-- }) -- A Threatening Letter

-- map.nodes[00000000] = UndermineLoreBook({
--     rewards = {Achievement({id = 41588, criteria = 103106})}
-- }) -- First Half of Noggenfogger's Journal

-- map.nodes[00000000] = UndermineLoreBook({
--     rewards = {Achievement({id = 41588, criteria = 103109})}
-- }) -- Second Half of Noggenfogger's Journal

theRingingDeeps.nodes[71419808] = UndermineLoreBook({
    quest = 86569,
    rewards = {Achievement({id = 41588, criteria = 103110})}
}) -- Extractor Drill X-78 Safety Guide

-- map.nodes[00000000] = UndermineLoreBook({
--     rewards = {Achievement({id = 41588, criteria = 103111})}
-- }) -- Gallywix's Notes

-- map.nodes[00000000] = UndermineLoreBook({
--     rewards = {Achievement({id = 41588, criteria = 103112})}
-- }) -- Misplaced Work Order

-------------------------------------------------------------------------------
----------------------------- WORLDSOUL MEMORIES ------------------------------
-------------------------------------------------------------------------------

map.nodes[00000000] = ns.node.WorldsoulMemory({areaPoiID = 8200}) -- Early Cartel Wars
map.nodes[58196864] = ns.node.WorldsoulMemory({areaPoiID = 8201}) -- Kaja'mite Contact

-------------------------------------------------------------------------------
-------------------------------- MISCELLEANOUS --------------------------------
-------------------------------------------------------------------------------
