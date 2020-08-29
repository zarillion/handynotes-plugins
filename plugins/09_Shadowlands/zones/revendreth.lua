-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local L = ns.locale
local Class = ns.Class
local Map = ns.Map
local isinstance = ns.isinstance

local NPC = ns.node.NPC
local Rare = ns.node.Rare
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Transmog = ns.reward.Transmog
local Toy = ns.reward.Toy

local Path = ns.poi.Path

local options = ns.options.args.VisibilityGroup.args
local defaults = ns.optionDefaults.profile

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({ id=1525 })
local nodes = map.nodes

-------------------------------------------------------------------------------
----------------------------------- OPTIONS -----------------------------------
-------------------------------------------------------------------------------

defaults['rare_revendreth'] = true
defaults['treasure_revendreth'] = true
defaults['carriage_revendreth'] = true

options.groupRevendreth = {
    type = "header",
    name = C_Map.GetMapInfo(map.id).name,
    order = 30,
}

options.rareRevendreth = {
    type = "toggle",
    arg = "rare_revendreth",
    name = L["options_toggle_rares"],
    desc = L["options_toggle_rares_desc"],
    order = 31,
    width = "normal",
}

options.treasureRevendreth = {
    type = "toggle",
    arg = "treasure_revendreth",
    name = L["options_toggle_treasures"],
    desc = L["options_toggle_treasures_desc"],
    order = 32,
    width = "normal",
}

options.carriageRevendreth = {
    type = "toggle",
    arg = "carriage_revendreth",
    name = L["options_toggle_carriages"],
    desc = L["options_toggle_carriages_desc"],
    order = 33,
    width = "normal",
}

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

-- nodes[] = Rare({id=, quest=nil, rewards={
--     Achievement({id=14310, criteria=})
-- }}) --

-- nodes[] = Rare({id=166393, quest=nil, rewards={
--     Achievement({id=14310, criteria=48814})
-- }}) -- Amalgamation of Filth

nodes[25304850] = Rare({id=164388, quest=nil, rewards={
    Achievement({id=14310, criteria=48811})
}}) -- Amalgamation of Light

-- nodes[] = Rare({id=170434, quest=nil, rewards={
--     Achievement({id=14310, criteria=50029})
-- }}) -- Amalgamation of Sin

nodes[35817052] = Rare({id=166576, quest=59893, rewards={
    Achievement({id=14310, criteria=48816}),
    Transmog({item=183731, slot=L["plate"]}) -- Smolder-Tempered Legplates
}}) -- Azgar

nodes[35003230] = Rare({id=166292, quest=nil, rewards={
    Achievement({id=14310, criteria=48818})
}}) -- Bog Beast
--World Quest required

nodes[66555946] = Rare({id=165206, quest=59582, rewards={
    Achievement({id=14310, criteria=48810}),
    Item({item=179927, note=L["trinket"]}) -- Glowing Endmire Stinger
}, note=L["endlurker_note"]}) -- Endlurker

nodes[37084742] = Rare({id=166710, quest=59913, rewards={
    Achievement({id=14310, criteria=48819}),
    Transmog({item=183737, slot=L["plate"]}) -- Aatron's Stone Girdle
}, note=L["executioner_aatron_note"]}) -- Executioner Aatron

-- nodes[] = Rare({id=161310, quest=nil, rewards={
--     Achievement({id=14310, criteria=48807})
-- }}) -- Executioner Adrastia

nodes[62484716] = Rare({id=166521, quest=59869, rewards={
    Achievement({id=14310, criteria=48815}),
    Mount({item=180582, id=1379}), -- Endmire Flyer
}, note=L["famu_note"]}) -- Famu the Infinite

-- nodes[] = Rare({id=159496, quest=nil, rewards={
--     Achievement({id=14310, criteria=48804})
-- }}) -- Forgemaster Madalav

nodes[20905440] = Rare({id=167464, quest=nil, rewards={
    Achievement({id=14310, criteria=48821})
}}) -- Grand Arcanist Dimitri

-- nodes[] = Rare({id=165290, quest=nil, rewards={
--     Achievement({id=14310, criteria=48813})
-- }}) -- Harika the Horrid

nodes[51985179] = Rare({id=166679, quest=nil, rewards={
    Achievement({id=14310, criteria=48817})
}}) -- Hopecrusher

-- nodes[] = Rare({id=166993, quest=nil, rewards={
--     Achievement({id=14310, criteria=48820})
-- }}) -- Huntmaster Petrus

nodes[21803590] = Rare({id=160640, quest=nil, rewards={
    Achievement({id=14310, criteria=48801})
}}) -- Innervus

nodes[67978179] = Rare({id=165152, quest=59580, rewards={
    Achievement({id=14310, criteria=48809}),
    Transmog({item=183736, slot=L["cloth"]})
}, note=L["leeched_soul_note"]}) -- Leeched Soul

nodes[75976161] = Rare({id=161891, quest=nil, rewards={
    Achievement({id=14310, criteria=48808})
}}) -- Lord Mortegore

nodes[49003490] = Rare({id=170048, quest=nil, rewards={
    Achievement({id=14310, criteria=48822})
}}) -- Manifestation of Wrath
-- World Quest required

nodes[38316914] = Rare({id=160675, quest=58213, rewards={
    Achievement({id=14310, criteria=48800}),
--    Pet({item=180587, id=}) -- Animated Tome
}, note=L["scrivener_lenua_note"]}) -- Scrivener Lenua

-- nodes[] = Rare({id=162481, quest=nil, rewards={
--     Achievement({id=14310, criteria=50030})
-- }}) -- Sinstone Hoarder

-- nodes[] = Rare({id=160857, quest=nil, rewards={
--     Achievement({id=14310, criteria=48806})
-- }}) -- Sire Ladinas

nodes[78934975] = Rare({id=160385, quest=58130, rewards={
    Achievement({id=14310, criteria=48799}),
    Item({item=180692}) -- Box of Stalker Traps
}, note=L["soulstalker_doina_note"]}) -- Soulstalker Doina

nodes[31312324] = Rare({id=159503, quest=nil, rewards={
    Achievement({id=14310, criteria=48803})
}}) -- Stonefist

nodes[66507080] = Rare({id=165253, quest=nil, rewards={
    Achievement({id=14310, criteria=48812})
}}) -- Tollkeeper Varaboss

nodes[43007910] = Rare({id=155779, quest=nil, rewards={
    Achievement({id=14310, criteria=48802})
}}) -- Tomb Burster

-- nodes[] = Rare({id=160821, quest=nil, rewards={
--     Achievement({id=14310, criteria=48805})
-- }}) -- Worldedge Gorger

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

-- nodes[] = Treasure({
--     quest=nil,
--     rewards={
--         Achievement({id=14314, criteria=})
--     }
-- }) --

-- Stoneguard Satchel (76226410) (60896,60939)
-- Unimplemented treasure? (50244910)

nodes[69327795] = Treasure({
    quest=59833,
    label=L["chest_of_envious_dreams"],
    rewards={
        Toy({item=179393}) -- Mirror of Envious Dreams
    }
}) -- Chest of Envious Dreams

nodes[37726925] = Treasure({quest=61990, rewards={
    Achievement({id=14314, criteria=50076}),
    -- Pet({item=182613, id=}) -- Lost Quill
}, note=L["lost_quill_note"]}) -- Lost Quill

nodes[38394424] = Treasure({quest=61999, rewards={
    Achievement({id=14314, criteria=50077}),
    Toy({item=182694}) -- Stylish Black Parasol
}}) --Stylish Parasol

nodes[57374337] = Treasure({quest=nil, rewards={
    Achievement({id=14314, criteria=50078})
}}) -- The Count

nodes[70176005] = Treasure({quest=62164, rewards={
    Achievement({id=14314, criteria=50080}),
    Transmog({item=177807, slot=L["warglaive"]}) -- Vyrtha's Dredglaive
}, note=L["dredglaive_note"]}) -- Vrytha's Dredglaive

nodes[30342472] = Treasure({quest=60665, rewards={
    Transmog({item=182720, slot=L["mail"]}), -- Mail Courier's Tunic
    Transmog({item=180398, slot=L["polearm"]}) -- Stonewrought Legion Halberd
}, label=L["bleakwood_chest"]}) -- Bleakwood Chest

-------------------------------------------------------------------------------
---------------------------- THE AFTERLIFE EXPRESS ----------------------------
-------------------------------------------------------------------------------

local Carriage = Class('Carriage', NPC, { icon='horseshoe', scale=1.2 })

nodes[50217067] = Carriage({
    id=158365,
    rewards={ Achievement({id=14771, criteria=50170}) },
    pois={
        Path({
            61646948, 61317022, 60747099, 60097166, 59487245, 58747306,
            57937314, 57107308, 56317325, 55527318, 54907229, 54227157,
            53457133, 52567129, 51737135, 51037104, 50217067, 49777078,
            49087176, 48297197, 47527241, 46707290, 45867344, 45057385,
            44307361, 43667254, 43147164, 42447066, 41696959, 40976873,
            40386790, 40606672, 41056578, 41446465, 41596336, 41756230,
            42116124, 42836046, 43485973, 43605910
        })
    }
}) -- Banewood Carriage

nodes[54784842] = Carriage({
    id=174750,
    rewards={ Achievement({id=14771, criteria=50168}) },
    pois={
        Path({
            54784842, 53944909, 53044932, 52084962, 51335050, 50535120,
            49945193, 49285216, 48765143, 48035069, 47394964, 46944832,
            46764721, 47104691, 47564794, 47924913, 48475001, 48905053,
            49435025, 50045066, 50774996, 51544918, 52294866, 53184838,
            53994806, 54544773, 54784842
        })
    }
}) -- Chalice Carriage

nodes[63865885] = Carriage({
    id=158336,
    rewards={ Achievement({id=14771, criteria=50172}) },
    pois={
        Path({
            62535921, 62426040, 61806117, 61156162, 61326239, 62046252,
            62726224, 63436223, 64086263, 64866323, 65776393, 66626458,
            67516524, 68276591, 68206736, 67676828, 66806772, 65846757,
            65046796, 64276882, 63336907, 62526932, 61796934, 62216827,
            62706719, 63046602, 63436485, 63976392, 64526285, 64706183,
            64566066, 64405968, 63865885, 63015872, 62535921
        })
    }
}) -- Darkhaven Carriage

nodes[57263726] = Carriage({
    id=174751,
    rewards={ Achievement({id=14771, criteria=50169}) },
    pois={
        Path({
            57263726, 57513861, 57823963, 58434056, 58944093, 59414007,
            59173914, 58973790, 58983663, 59123533, 59563411, 59973304,
            60483221, 59913144, 59443176, 59063262, 58533367, 58083468,
            57583592, 57263726, 56503725, 55923724, 55293621, 54563601,
            53773623, 53713765, 53843907, 54674041, 55173969, 55593869,
            55923724
        })
    }
}) -- Old Gate Carriage

nodes[66727652] = Carriage({
    id=161879,
    rewards={ Achievement({id=14771, criteria=50171}) },
    pois={
        Path({
            73116864, 72506873, 71626856, 70786928, 69946991, 69096963,
            68356880, 67766840, 67166922, 66346979, 65297056, 65067173,
            65217324, 65447461, 66117565, 66727652, 67047776, 67487904,
            68358046, 68348124, 68568163, 68918168, 69188130, 69148075,
            68838042, 68358046
        })
    }
}) -- Pridefall Carriage

nodes[52634155] = Carriage({
    id=174754,
    rewards={ Achievement({id=14771, criteria=50173}) },
    pois={
        Path({
            46644671, 45864613, 45784494, 45354378, 44844287, 44374202,
            44394091, 44844006, 45353914, 45743800, 45723704, 45583628,
            46173554, 46853531, 47573540, 48223570, 48883619, 49673623,
            50393626, 51023641, 51573725, 52173818, 52383928, 52404036,
            52634155, 52384269, 52394388, 52024500, 51474591, 50764667,
            49954673, 49174676, 48464699, 47694787, 47134703, 46644671
        })
    }
}) -- The Castle Carriage

-------------------------------------------------------------------------------

function map:enabled (node, coord, minimap)
    if not Map.enabled(self, node, coord, minimap) then return false end

    if node == map.intro then return true end

    local profile = ns.addon.db.profile
    if isinstance(node, Rare) then return profile.rare_revendreth end
    if isinstance(node, Treasure) then return profile.treasure_revendreth end
    if isinstance(node, Carriage) then return profile.carriage_revendreth end
    return true
end

ns.maps[map.id] = map
