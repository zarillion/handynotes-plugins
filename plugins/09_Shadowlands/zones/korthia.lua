-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible
local NPC = ns.node.NPC
local Rare = ns.node.Rare
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
--local Quest = ns.reward.Quest
--local Section = ns.reward.Section
--local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

--local Arrow = ns.poi.Arrow
local Line = ns.poi.Line
local Path = ns.poi.Path
local POI = ns.poi.POI

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local KYRIAN = ns.covenants.KYR
local NECROLORD = ns.covenants.NEC
local NIGHTFAE = ns.covenants.FAE
local VENTHYR = ns.covenants.VEN

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

map.nodes[58211773] = Rare({
    id=180246,
    quest=64258, 64439,
    rewards={
        Achievement({id=15107, criteria=52290})
    }
}) -- Assault Supply Carriage

map.nodes[39405240] = Rare({
    id=179802,
    quest=64257,
    requires=ns.requirement.Item(186718),
    note=L["chamber_note"],
    rewards={
        Achievement({id=15107, criteria=52295}),
        Item({item=187103, quest=63917}) -- Everliving Statuette
    }
}) -- Chamber of Knowledge

map.nodes[44983552] = Rare({
    id=179859,
    quest=64278,
    requires=ns.requirement.Item(186718),
    note=L["chamber_note"],
    rewards={
        Achievement({id=15107, criteria=52296}),
        Pet({item=186538, id=3140}), -- Gnashtooth
        Item({item=187104, quest=63918}), -- Obelisk of Dark Tidings
    }
}) -- Chamber of Wisdom

map.nodes[51164167] = Rare({
    id=179768,
    quest=64243,
    rewards={
        Achievement({id=15107, criteria=52285}),
        Transmog({item=187247, slot=L["Shoulder"]}) -- Death-Enveloped Shoulder Spikes
    }
}) -- Consumption

map.nodes[59934371] = Rare({
    id=180042,
    quest=64349,
    covenant=NECROLORD,
    note=L["corpse_heap_note"],
    rewards={
        Achievement({id=15107, criteria=52299}),
        Mount({item=186489, id=1449}) -- Lord of the Corpseflies
    }
}) -- Corpse Heap

-- map.nodes[] = Rare({
--     id=179913,
--     quest=,
--     rewards={
--         Achievement({id=15107, criteria=52275})
--     }
-- }) -- Deadsoul Hatcher


map.nodes[51822081] = Rare({
    id=177903,
    quest=63830,
    rewards={
        Achievement({id=15107, criteria=52277})
    }
}) -- Dominated Protector

map.nodes[33083941] = Rare({
    id=180014,
    quest=64320,
    covenant=NIGHTFAE,
    note=L["wilderling_note"],
    rewards={
        Achievement({id=15107, criteria=52298}),
        Item({item=187278}), --Talon-pierced Mawsworn Lockbox
        Mount({item=186492, id=1487}) --Summer Wilderling
    }
}) -- Escaped Wilderling


map.nodes[60652315] = Rare({
    id=179684,
    quest=64233,
    note=L["hunting_hunter_note"],
    rewards={
        Achievement({id=15107, criteria=52283}),
        Mount({item=186645, id=1506}) -- Crimson Shardhide
    }
}) -- Hunting the Hunter

map.nodes[71001212] = Rare({
    id=179472,
    quest=64246,64280,
    note=L["konthrogz_note"],
    rewards={
        Achievement({id=15107, criteria=52303}),
        Mount({item=187183, id=1514}), -- Rampaging Mauler
        Transmog({item=187378, slot=L["head"]}) --Visage of the Obliterator
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
            59203580, 60893687, 62273605, 61313445, 59953388, 59053603, 58253784, 57033778, 56863623, 57923572, 59203580
        })
    }
}) -- Kroke the Tormented

map.nodes[46507959] = Rare({
    id=179985,
    quest=64313,
    covenant=VENTHYR,
    note=L["no_stoneborne_note"],
    rewards={
        Achievement({id=15107, criteria=52276})
    }
}) -- No Stoneborn Left Behind

map.nodes[71001812] = Rare({
    id=180162,
    quest=64457,
    note=L["pop_quiz_note"],
    rewards={
        Achievement({id=15107, criteria=52319}),
        Item({item=187264, quest=64513}) -- Ve'rayn's Head
    }
}) -- Pop Quiz

map.nodes[56873237] = Rare({
    id=180032,
    quest=64338,
    covenant=KYRIAN,
    note=L["popo_note"],
    rewards={
        Achievement({id=15107, criteria=52300}),
        Item({item=187176}), -- Vesper of Harmony
        Mount({item=186483, id=1493}) -- Foresworn Aquilon
    }
}) -- Popo's Potion Patrol

map.nodes[22604140] = Rare({
    id=179931,
    quest=64291,
    rewards={
        Achievement({id=15107, criteria=52291})
    }
}) -- Relic Breaker Krelva

map.nodes[56276617] = Rare({
    id=180160,
    quest=64455,
    note=L["reliwik_note"],
    rewards={
        Achievement({id=15107, criteria=52318}),
        Mount({item=186652, id=1509}) -- Garnet Razorwing
    }
}) -- Reliwik the Defiant

map.nodes[44604240] = Rare({
    id=179608,
    quest=nil,
    requires=ns.requirement.Item(186731),
    note=L["screaming_shade_note"],
    rewards={
        Achievement({id=15107, criteria=52273})
    }
}) -- Screaming Shade

-- map.nodes[] = Rare({
--     id=179911,
--     quest=nil,
--     rewards={
--         Achievement({id=15107, criteria=52274})
--     }
-- }) -- Silent Soulstalker

map.nodes[71001512] = Rare({
    id=179760,
    quest=64245,
    note=L["towering_exterminator_note"],
    rewards={
        Achievement({id=15107, criteria=52302})
    }
}) -- Towering Exterminator

map.nodes[27755885] = Rare({
    id=177336,
    quest=64442,
    note=L["in_cave"],
    rewards={
        Achievement({id=15107, criteria=52301}),
       Pet({item=186542, id=3136}) --Korthian Specimen
    },
    pois={
        POI({30385480}) -- Entrance
    }
}) -- Zelnithop

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[29485345] = Treasure({
    quest=64244,
    rewards={
        Achievement({id=15099, criteria=52241}),
        Item({item=187349}) -- Anima Laden Egg
    }
}) -- Anima Laden Egg

map.nodes[47502920] = Treasure({
    quest=64241,
    note=L["dislodged_nest_note"],
    rewards={
        Achievement({id=15099, criteria=52240}),
        Item({item=187339}) -- Silver Shardhide Whistle
    }
}) -- Dislodged Nest

-- map.nodes[] = Treasure({
--     quest=,
--     rewards={
--         Achievement({id=15099, criteria=52242})
--     }
-- }) -- Displaced Relic

map.nodes[68902990] = Treasure({
    quest=64234,
    note=L["forgetten_feather_note"],
    rewards={
        Achievement({id=15099, criteria=52237}),
        Item({item=187051}) -- Forgotten Feather
    }
}) -- Forgotten Feather

map.nodes[38344296] = Treasure({
    quest=64222,
    rewards={
        Achievement({id=15099, criteria=52236})
    }
}) -- Glittering Nest Materials

map.nodes[42515596] = Treasure({
    quest=64264,
    rewards={
        Achievement({id=15099, criteria=52245}),
        Item({item=187354}) -- Abandoned Broker Satchel
    }
}) -- Infected Vestige

map.nodes[52991477] = Treasure({
    quest=64238,
    rewards={
        Achievement({id=15099, criteria=52238})
    }
}) -- Lost Momento

map.nodes[45336714] = Treasure({
    quest=64268,
    note=L["offering_box_note"],
    rewards={
        Achievement({id=15099, criteria=52246}),
        Item({item=187344}) -- Offering Kit Maker
    }
}) -- Offering Box

map.nodes[25725108] = Treasure({
    quest=nil,
    label=L["razorwing_nest"],
    note=L["razorwing_note"],
    rewards={
        Mount({item=186651, id=1510}) -- Dusklight Razorwing
    }
}) -- Razorwing Nest

-- map.nodes[53783793] = Treasure({
--     quest=nil,
--     rewards={
--     }
-- }) -- Spectral Bound Chest

-------------------------------------------------------------------------------
---------------------------------- TRANSPORT ----------------------------------
-------------------------------------------------------------------------------

map.nodes[47283992] = NPC({
    id=178633,
    note=L["flayedwing_transporter_note"],
    icon='flight_point_y',
    scale=1.25,
    fgroup='flayedwing_transporter1',
   pois={Line({47283992, 49356386})}
})

map.nodes[49356386] = NPC({
    id=178637,
    note=L["flayedwing_transporter_note"],
    icon='flight_point_y',
    scale=1.25,
    fgroup='flayedwing_transporter1'
})


-------------------------------------------------------------------------------
---------------------------------- Collectibles -------------------------------
-------------------------------------------------------------------------------

local function GetMaelieStatus ()
    local count = select(4, GetQuestObjectiveInfo(64298, 0, false))
    if count ~= nil then return ns.status.Gray(tostring(count)..'/7') end
end


local maelie = Class('Maelie', Collectible, {
    id=179912,
    icon=3155422,
    quest=64298,
    note=L["maelie_wanderer"],
    pois={POI({
            39703480, 41103980, 49304170, 59801510
        })},
    rewards={Item({item=186643})}, -- Reins of the Wanderer
    getters={rlabel=GetMaelieStatus}
})()

map.nodes[60562103] = maelie

map.nodes[42803270] = Collectible({
    id=180063,
    icon=3931157,
    quest=nil,
    rewards={Mount({item=186646, id=1507})}, -- Darkmaul
    note=L["darkmaul_note"],
    pois={POI({
            54204120, 53703790, 45603430, 39703480, 39603000
        })},
})






--TODO
-- Add Etherwyrm Cage
--Fix notes for all rares
--add Nilgahmet's Hand
--Find Deadsoul Hatcher and Silent Stalker
--Nests of Unusual Materials?
--Mawsworn Caches?
--Find all of little Abom and make better entry?

