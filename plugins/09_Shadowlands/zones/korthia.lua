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

map.nodes[] = Rare({
    id=180014,
    quest=64320,
    rewards={
        Achievement({id=15107, criteria=52298}),
        Item({id=187278}) --Talon-pierced Mawsworn Lockbox
    }
}) -- Escaped Wilderling

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

map.nodes[44872902] = Rare({
    id=179472,
    quest=64246,64280,
    rewards={
        Achievement({id=15107, criteria=52303}),
        Item({id=187054}) --Lost Razorwing Egg
    }
}) -- Konthrogz the Obliterator

map.nodes[59203580] = Rare({
    id=179108,
    quest=64428,
    rewards={
        Achievement({id=15107, criteria=52304}),
        Transmog({item=187250, slot=L["Shoulder"]}) -- Kroke's Wingspiked Pauldrons

    },
    pois={
        Path({
            60893687, 62273605, 61313445, 59953388, 59053603, 58253784, 57033778, 56863623, 57923572, 59093603
        })
    }
}) -- Kroke the Tormented

-- map.nodes[] = Rare({
--     id=179985,
--     quest=,
--     rewards={
--         Achievement({id=15107, criteria=52276})
--     }
-- }) -- No Stoneborn Left Behind

map.nodes[32544305] = Rare({
    id=180162,
    quest=64457,
    rewards={
        Achievement({id=15107, criteria=52319}),
        Item({id=187264}) -- Ve'rayn's Head
    }
}) -- Pop Quiz

map.nodes[47003560] = Rare({
    id=180032,
    quest=64338,
    rewards={
        Achievement({id=15107, criteria=52300})
    }
}) -- Popo's Potion Patrol

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

map.nodes[27755885] = Rare({
    id=177336,
    quest=64442,
    note=L["in_cave"]
    rewards={
        Achievement({id=15107, criteria=52301}),
        Pet({id=186542}) --Korthian Specimen
    },
    pois={
        POI({30385480}) -- Entrance
    }
}) -- Zelnithop

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

map.nodes[29485345] = Treasure({
    quest=64244,
    rewards={
        Item({item=187349}) -- Anima Laden Egg
        })
    },
}) -- Anima Laden Egg

map.nodes[42515596] = Treasure({
    quest=64264,
    rewards={
        Item({item=187354}) -- Abandoned Broker Satchel
        })
    },
}) -- Infected Vestige

map.nodes[53783793] = Treasure({
    quest=64354,
    rewards={
        Item({item=187244}) -- Questionable Mawshrooms
        })
    },
}) -- Invasive Mawshroom

map.nodes[42505482] = Treasure({
    quest=64359,
    rewards={

        })
    },
}) -- Nest of Unusual Materials

map.nodes[25725108] = Treasure({
    quest=nil,
    rewards={
        Item({item=nil, quest=nil}) --
        })
    },
}) -- Raorwing Nest

map.nodes[53783793] = Treasure({
    quest=nil,
    rewards={
        Item({item=nil, quest=nil}) --
        })
    },
}) -- Spectral Bound Chest
