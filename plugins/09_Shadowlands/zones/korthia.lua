-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local NPC = ns.node.NPC
local Rare = ns.node.Rare
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Pet = ns.reward.Pet
local Quest = ns.reward.Quest
local Section = ns.reward.Section
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

local Arrow = ns.poi.Arrow
local Line = ns.poi.Line
local Path = ns.poi.Path
local POI = ns.poi.POI

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({ id=1961, settings=true })


-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------
-- map.nodes[] = Rare({
--     id=,
--     quest=,
--     rewards={
--         Achievement({id=15107, criteria=})
--     }
-- }) --

-- map.nodes[] = Rare({
--     id=,
--     quest=,
--     rewards={
--         Achievement({id=15107, criteria=52290})
--     }
-- }) -- Assault Supply Carriage

-- map.nodes[] = Rare({
--     id=179853,
--     quest=,
--     rewards={
--         Achievement({id=15107, criteria=52297})
--     }
-- }) -- Blinding Shadow

-- map.nodes[] = Rare({
--     id=,
--     quest=,
--     rewards={
--         Achievement({id=15107, criteria=52295})
--     }
-- }) -- Chamber of Knowledge

-- map.nodes[] = Rare({
--     id=,
--     quest=,
--     rewards={
--         Achievement({id=15107, criteria=52296})
--     }
-- }) -- Chamber of Wisdom

map.nodes[51164167] = Rare({
    id=179768,
    quest=64243,
    rewards={
        Achievement({id=15107, criteria=52285}),
        Transmog({item=187247, slot=L["Shoulder"]}) -- Death-Enveloped Shoulder Spikes
    }
}) -- Consumption

-- map.nodes[] = Rare({
--     id=180042,
--     quest=,
--     rewards={
--         Achievement({id=15107, criteria=52299})
--     }
-- }) -- Corpse Heap

-- map.nodes[] = Rare({
--     id=179913,
--     quest=,
--     rewards={
--         Achievement({id=15107, criteria=52275})
--     }
-- }) -- Deadsoul Hatcher

-- map.nodes[] = Rare({
--     id=179779,
--     quest=,
--     rewards={
--         Achievement({id=15107, criteria=52286})
--     }
-- }) -- Deomen the Vortex

-- map.nodes[52602160] = Rare({
--     id=177903,
--     quest=,
--     rewards={
--         Achievement({id=15107, criteria=52277})
--     }
-- }) -- Dominated Protector

-- map.nodes[] = Rare({
--     id=180014,
--     quest=,
--     rewards={
--         Achievement({id=15107, criteria=52298})
--     }
-- }) -- Escaped Wilderling

-- map.nodes[] = Rare({
--     id=179851,
--     quest=,
--     rewards={
--         Achievement({id=15107, criteria=52293})
--     }
-- }) -- Guard Orguluus

map.nodes[60652315] = Rare({
    id=179684,
    quest=64233,
    rewards={
        Achievement({id=15107, criteria=52283})
    }
}) -- Hunting the Hunter

-- map.nodes[] = Rare({
--     id=179472,
--     quest=,
--     rewards={
--         Achievement({id=15107, criteria=52303})
--     }
-- }) -- Konthrogz the Obliterator

-- map.nodes[59203580] = Rare({
--     id=179108,
--     quest=,
--     rewards={
--         Achievement({id=15107, criteria=52304})
--     }
-- }) -- Kroke the Tormented

-- map.nodes[] = Rare({
--     id=179985,
--     quest=,
--     rewards={
--         Achievement({id=15107, criteria=52276})
--     }
-- }) -- No Stoneborn Left Behind

-- map.nodes[] = Rare({
--     id=,
--     quest=,
--     rewards={
--         Achievement({id=15107, criteria=52319})
--     }
-- }) -- Pop Quiz

-- map.nodes[47003560] = Rare({
--     id=180032,
--     quest=64338,
--     rewards={
--         Achievement({id=15107, criteria=52300})
--     }
-- }) -- Popo's Potion Patrol

-- map.nodes[22604140] = Rare({
--     id=179931,
--     quest=,
--     rewards={
--         Achievement({id=15107, criteria=52291})
--     }
-- }) -- Relic Breaker Krelva

-- map.nodes[] = Rare({
--     id=180160,
--     quest=,
--     rewards={
--         Achievement({id=15107, criteria=52318})
--     }
-- }) -- Reliwik the Defiant

-- map.nodes[44604240] = Rare({
--     id=179608,
--     quest=,
--     rewards={
--         Achievement({id=15107, criteria=52273})
--     }
-- }) -- Screaming Shade

-- map.nodes[] = Rare({
--     id=179911,
--     quest=,
--     rewards={
--         Achievement({id=15107, criteria=52274})
--     }
-- }) -- Silent Soulstalker

-- map.nodes[68604660] = Rare({
--     id=179805,
--     quest=,
--     rewards={
--         Achievement({id=15107, criteria=52289})
--     }
-- }) -- Traitor Balthier

-- map.nodes[] = Rare({
--     id=179735,
--     quest=,
--     rewards={
--         Achievement({id=15107, criteria=52284})
--     }
-- }) -- Torglluun

-- map.nodes[59603440] = Rare({
--     id=179760,
--     quest=,
--     rewards={
--         Achievement({id=15107, criteria=522302})
--     }
-- }) -- Towering Exterminator

-- map.nodes[66404400] = Rare({
--     id=177444,
--     quest=,
--     rewards={
--         Achievement({id=15107, criteria=52287})
--     }
-- }) -- Ylva, Mate of Guarm

-- map.nodes[] = Rare({
--     id=177336,
--     quest=,
--     rewards={
--         Achievement({id=15107, criteria=52301})
--     }
-- }) -- Zelnithop

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

-- map.nodes[46114536] = Treasure({
--     quest=61006,
--     note=L["in_cave"],
--     rewards={
--         Achievement({id=14311, criteria=50053})
--     },
--     pois={
--         POI({46454661}) -- Entrance
--     }
-- }) -- Abandoned Stockpile

--map.nodes[52981474] = Treasure({
--     quest=64238,
--     rewards={
--         })
--     },
-- }) -- Lost Momento
