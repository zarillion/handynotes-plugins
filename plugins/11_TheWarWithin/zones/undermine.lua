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
    location = L['unexploded_fireworks_location'],
    quest = 85683,
    rewards = {
        Achievement({id = 41217, criteria = 71613}) -- Treasures of Undermine
    }
}) -- Unexploded Fireworks

map.nodes[49896613] = Treasure({
    location = L['in_building'],
    quest = 85866,
    rewards = {
        Achievement({id = 41217, criteria = 71624}) -- Treasures of Undermine
    }
}) -- Suspicious Book

map.nodes[56015171] = Treasure({
    note = L['fireworks_hat_note'],
    pois = {POI({57845269}), Path({57845269, 56015171})},
    quest = {
        85838, -- location 1
        85839, -- location 2
        85856 -- pickup
    },
    rewards = {
        Achievement({id = 41217, criteria = 71614}) -- Treasures of Undermine
    }
}) -- Fireworks Hat

local Plunger = Class('Plunger', Treasure, {
    quest = 85698, -- Exploded Plunger
    rewards = {
        Achievement({id = 41217, criteria = 71615}) -- Treasures of Undermine
    }
}) -- Plunger

function Plunger.getters:label()
    local complete = C_QuestLog.IsQuestFlaggedCompleted(85694)
    if complete then return L['exploded_plunger_label'] end
    return L['inert_plunger_label']
end

map.nodes[49699025] = Plunger() -- Exploded Plunger

-- map.nodes[00000000] = Treasure({
--     rewards = {
--         Achievement({id = 41217, criteria = 71625}) -- Treasures of Undermine
--     }
-- }) -- Blackened Dice

map.nodes[59351912] = Treasure({
    note = L['lonely_tub_note'],
    pois = {POI({58751798, color = 'Blue'})}, -- fire extinguisher
    quest = {
        85860, -- fire extinguished
        85858
    },
    rewards = {
        Achievement({id = 41217, criteria = 71626}), -- Treasures of Undermine
        Transmog({item = 235279, slot = L['legs']}) -- Scorched Shorts
    }
}) -- Lonely Tub

map.nodes[69652164] = Treasure({
    location = L['impotent_potable_location'],
    quest = 85426,
    rewards = {
        Achievement({id = 41217, criteria = 71627}), -- Treasures of Undermine
        Item({item = 235230}) -- Impotant Potable
    }
}) -- Potent Potable

map.nodes[40852126] = Treasure({
    location = L['abandoned_toolbox_location'],
    pois = {Entrance({39312588})}, -- Entrance
    quest = 85422,
    rewards = {
        Achievement({id = 41217, criteria = 71628}) -- Treasures of Undermine
    }
}) -- Abandoned Toolbox

map.nodes[74677988] = Treasure({
    quest = 85424,
    rewards = {
        Achievement({id = 41217, criteria = 71629}), -- Treasures of Undermine
        Transmog({item = 234821, slot = L['trinket']}) -- Papa's Prized Putter
    }
}) -- Papa's Prized Putter

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

map.nodes[53405272] = Treasure({
    quest = 85495,
    rewards = {
        Achievement({id = 41217, criteria = 71632}), -- Treasures of Undermine
        Toy({item = 234951}) -- Uncracked Cold Ones
    }
}) -- Uncracked Cold Ones

map.nodes[63773219] = Treasure({
    quest = 854894,
    rewards = {
        Achievement({id = 41217, criteria = 71633}), -- Treasures of Undermine
        Item({item = 235273}) -- Distracting Floatmingo
    }
}) -- Marooned Floatmingo

map.nodes[43665154] = Treasure({
    location = L['trick_deck_of_cards_location'],
    quest = 85496,
    rewards = {
        Achievement({id = 41217, criteria = 71634}) -- Treasures of Undermine
    }
}) -- Trick Deck of Cards

map.nodes[42308231] = Treasure({
    location = L['in_building'],
    quest = 86487,
    rewards = {
        Achievement({id = 41217, criteria = 71635}) -- Treasures of Undermine
    }
}) -- Crumpled Schematics

-------------------------------------------------------------------------------
--------------------- ACHIEVEMENT: NINE-TENTHS OF THE LAW ---------------------
-------------------------------------------------------------------------------

local MuffsAutoLocker = Class('MuffsAutoLocker', Collectible, {
    icon = 2201832,
    label = L['muffs_auto_locker_label'],
    group = ns.groups.NINE_TENTHS
}) -- Muff's Auto-Locker

function MuffsAutoLocker.getters:note()
    local note = L['muffs_auto_locker_note']
    note = note .. ItemStatus(234427, 1, '{item:234427}') -- Gorillion Fork
    note = note .. ItemStatus(234432, 1, '{item:234432}') -- Gorillion Engine
    note = note .. ItemStatus(234433, 1, '{item:234433}') -- Gorillion Chasis
    note = note .. ItemStatus(234430, 1, '{item:234430}') -- Gorillion Grease
    note = note .. ItemStatus(234431, 1, '{item:234431}') -- Gorillion Batteries
    return note
end

function MuffsAutoLocker.getters:rewards()
    return {
        Achievement({
            id = 40948,
            criteria = {
                id = 1,
                qty = true,
                suffix = L['muffs_auto_locker_suffix']
            }
        }), Pet({item = 232843, id = 4642}) -- Gorillion
    }
end

map.nodes[23804538] = MuffsAutoLocker({quest = 85072}) -- Gorillion Fork
map.nodes[56665546] = MuffsAutoLocker({quest = 85116}) -- Gorillion Engine
map.nodes[34318285] = MuffsAutoLocker({quest = 85117}) -- Gorillion Chasis
map.nodes[71458588] = MuffsAutoLocker({quest = 85114}) -- Gorillion Grease
map.nodes[75142295] = MuffsAutoLocker({quest = 85115}) -- Gorillion Batteries

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

map.nodes[65611420] = UndermineLoreBook({
    quest = 86568,
    rewards = {Achievement({id = 41588, criteria = 103112})}
}) -- Misplaced Work Order

-------------------------------------------------------------------------------
----------------------------- WORLDSOUL MEMORIES ------------------------------
-------------------------------------------------------------------------------

map.nodes[00000000] = ns.node.WorldsoulMemory({areaPoiID = 8200}) -- Early Cartel Wars
map.nodes[58196864] = ns.node.WorldsoulMemory({areaPoiID = 8201}) -- Kaja'mite Contact

-------------------------------------------------------------------------------
-------------------------------- MISCELLEANOUS --------------------------------
-------------------------------------------------------------------------------
