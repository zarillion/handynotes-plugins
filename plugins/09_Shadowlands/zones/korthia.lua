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
local Toy = ns.reward.Toy
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
        Item({item=187103, quest=63917}), -- Everliving Statuette
        Achievement({id=15066, criteria=52262}) --Everliving Statuette
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
        Achievement({id=15066, criteria=52263})
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

map.nodes[59335221] = Rare({
    id=179913,
    quest=64285,
    requires=ns.requirement.Item(186731),
    note=L["korthia_rift_note"],
    rewards={
        Achievement({id=15107, criteria=52275}),
        Toy({item=187174}) -- Shaded Judgement Stone

    }
}) -- Deadsoul Hatcher


map.nodes[51822081] = Rare({
    id=177903,
    quest=63830,
    rewards={
        Achievement({id=15107, criteria=52277})
    }
}) -- Dominated Protector

map.nodes[33183938] = Rare({
    id=180014,
    quest=64320,
    covenant=NIGHTFAE,
    note=L["wilderling_note"],
    rewards={
        Achievement({id=15107, criteria=52298}),
        Mount({item=186492, id=1487}) --Summer Wilderling
    }
}) -- Escaped Wilderling

-- map.nodes[] = Rare({
--     id=177903,
--     quest=nil,
--     rewards={
--         Achievement({id=15107, criteria=52292}),
--         Mount({item=186658, id=}) --Fallen Charger's Reins
--     }
-- }) -- Fallen Charger

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

map.nodes[50307590] = Rare({
    id=179914,
    quest=nil,
    requires=ns.requirement.Item(186731),
    note=L["korthia_rift_note"],
    rewards={
        Achievement({id=15107, criteria=52294})
    }
}) -- Observer Yorik

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
        Toy({item=187176}), -- Vesper of Harmony
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
    quest=64263,
    requires=ns.requirement.Item(186731),
    note=L["korthia_rift_note"],
    rewards={
        Achievement({id=15107, criteria=52273})
    }
}) -- Screaming Shade

map.nodes[57607040] = Rare({
    id=179911,
    quest=nil,
    requires=ns.requirement.Item(186731),
    note=L["korthia_rift_note"],
    rewards={
        Achievement({id=15107, criteria=52274})
    }
}) -- Silent Soulstalker

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
        Toy({item=187339}) -- Silver Shardhide Whistle
    }
}) -- Dislodged Nest

map.nodes[50478446] = Treasure({
    quest=64252,
    rewards={
        Achievement({id=15099, criteria=52242}),
        Item({item=187350}) --Displaced Relic
    }
}) -- Displaced Relic

map.nodes[68902990] = Treasure({
    quest=64234,
    note=L["forgetten_feather_note"],
    rewards={
        Achievement({id=15099, criteria=52237}),
        Toy({item=187051}) -- Forgotten Feather
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
    note=L["in_cave"],
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
        Toy({item=187344}) -- Offering Kit Maker
    }
}) -- Offering Box

map.nodes[25725108] = Treasure({
    quest=64274,
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
---------------------------------- Relics -------------------------------------
-------------------------------------------------------------------------------
local Relic = Class('Relic', ns.node.Treasure, {
    group=ns.groups.RELIC,
    icon='chest_nv',
    scale=1.3
})

map.nodes[27305670] = Relic({
    quest=63899,
    note=L["mad_witch_note"],
    rewards={
        Achievement({id=15066, criteria=52131})
    }
}) -- Book of Binding: The Mad Witch

map.nodes[60803490] = Relic({
    quest=63919,
    note=L["tormented_sorcerer_note"],
    requires=ns.requirement.Item(186731),
    rewards={
        Achievement({id=15066, criteria=52264})
    }
}) -- Book of Binding: The Tormented Sorcerer

map.nodes[18503800] = Relic({
    quest=63908,
    note=L["korthian_shrine_note"],
--    requires=ns.requirement.Quest(64511),
    rewards={
        Achievement({id=15066, criteria=52254})
    }
}) -- Bulwark of Divine Intent

map.nodes[45105610] = Relic({
    quest=63912,
    rewards={
        Achievement({id=15066, criteria=52258})
    }
}) -- Celestial Shadowlands Chart

map.nodes[29005420] = Relic({
    quest=63914,
    note=L["korthia_rift_note"],
    requires=ns.requirement.Item(186731),
    rewards={
        Achievement({id=15066, criteria=52260})
    }
}) -- Cipher of Understanding

-- map.nodes[] = Relic({
--     quest=63892,
--     note=L[""],
--     requires=ns.requirement.Item(),
--     rewards={
--         Achievement({id=15066, criteria=52130})
--     }
-- }) -- Diviner's Rune Chits (Drops from all the single use shared treasures in all of korthia. Do we mark these?)

map.nodes[39405240] = Relic({
    quest=63915,
    note=L["chamber_note"],
    requires=ns.requirement.Item(186718),
    rewards={
        Achievement({id=15066, criteria=52269})
    }
}) -- Drum of Driving

map.nodes[52005260] = Relic({
    quest=63920,
    note=L["korthia_rift_note"],
    requires=ns.requirement.Item(186731),
    rewards={
        Achievement({id=15066, criteria=52270})
    }
}) -- Enigmatic Decrypting Device

map.nodes[41146015] = Relic({
    quest=63924,
    note=L["archivist_key_note"],
   requires=ns.requirement.Item(186984),
    rewards={
        Achievement({id=15066, criteria=52268})
    }
}) -- Gorak Claw Fetish

map.nodes[41304330] = Relic({
    quest=63909,
    note=L["archivist_key_note"],
    requires=ns.requirement.Item(186984),
    rewards={
        Achievement({id=15066, criteria=52255}),
        Toy({item=187155}) -- Guise of the Changeling
    }
}) -- Guise of the Changeling

map.nodes[42305660] = Relic({
    quest=63923,
    note=L["korthian_shrine_note"],
--    requires=ns.requirement.Quest(64511),
    rewards={
        Achievement({id=15066, criteria=52267})
    }
}) -- Lang Family Wood-Carving

map.nodes[33004190] = Relic({
    quest=63910,
    note=L["archivist_key_note"],
    requires=ns.requirement.Item(186984),
    rewards={
        Achievement({id=15066, criteria=52256}),
    }
}) -- The Netherstar

map.nodes[43847698] = Relic({
    quest=63921,
    note=L["archivist_key_note"],
    requires=ns.requirement.Item(186984),
    rewards={
        Achievement({id=15066, criteria=52265}),
        Toy({item=187140}) -- Ring of Duplicity
    }
}) -- Ring of Self-Reflection

map.nodes[45003550] = Relic({
    quest=63916,
    note=L["chamber_note"],
    requires=ns.requirement.Item(186718),
    rewards={
        Achievement({id=15066, criteria=52261})
    }
}) -- Sack of Strange Soil

map.nodes[39404270] = Relic({
    quest=63922,
    note=L["korthian_shrine_note"],
--    requires=ns.requirement.Quest(64511),
    rewards={
        Achievement({id=15066, criteria=52266})
    }
}) -- Shadow Slicing Sword

map.nodes[62005680] = Relic({
    quest=63911,
    rewards={
        Achievement({id=15066, criteria=52257})
    }
}) -- Singing Steel Ingot

map.nodes[40504140] = Relic({
    quest=63860,
    note=L["in_cave"],
    rewards={
        Achievement({id=15066, criteria=52126})
    }
}) -- Talisman of the Eternal Scholar

map.nodes[51402010] = Relic({
    quest=63913,
    note=L["korthia_rift_note"],
    requires=ns.requirement.Item(186731),
    rewards={
        Achievement({id=15066, criteria=52259})
    }
}) -- Unstable Sin'dorei Explosive

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

-- local function GetMaelieStatus ()
--     local count = select(4, GetQuestObjectiveInfo(nil, 0, false))
--     if count ~= nil then return ns.status.Gray(tostring(count)..'/7') end
-- end


local maelie = Class('Maelie', Collectible, {
    id=179912,
    icon=3155422,
    quest=nil,
    note=L["maelie_wanderer"],
    pois={POI({
            39703480, 41103980, 49304170, 59801510
        })},
    rewards={Item({item=186643})}, -- Reins of the Wanderer
--    getters={rlabel=GetMaelieStatus}
})()

map.nodes[60562103] = maelie

map.nodes[42873269] = Collectible({
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
--Fix notes for all rares
--add Nilgahmet's Hand
--Find Fallen Charger



