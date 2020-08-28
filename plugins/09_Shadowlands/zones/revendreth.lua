-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map
local isinstance = ns.isinstance

local Rare = ns.node.Rare
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Transmog = ns.reward.Transmog
local Toy = ns.reward.Toy

local options = ns.options.args.VisibilityGroup.args
local defaults = ns.optionDefaults.profile

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({ id=1525 })
local nodes = map.nodes

function map:enabled (node, coord, minimap)
    if not Map.enabled(self, node, coord, minimap) then return false end

    if node == map.intro then return true end

    local profile = ns.addon.db.profile
    if isinstance(node, Rare) then return profile.rare_revendreth end
    if isinstance(node, Treasure) then return profile.treasure_revendreth end
    return true
end

-------------------------------------------------------------------------------
----------------------------------- OPTIONS -----------------------------------
-------------------------------------------------------------------------------

defaults['rare_revendreth'] = true
defaults['treasure_revendreth'] = true

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

-- nodes[] = Rare({id=166679, quest=nil, rewards={
--     Achievement({id=14310, criteria=48817})
-- }}) -- Hopecrusher

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
    Achievement({id=14310, criteria=48799})
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

-- nodes[] = Treasure({quest=nil, rewards={
--     Achievement({id=14314, criteria=})
-- }}) --

-- Stoneguard Satchel (76226410) (60896,60939)

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

ns.maps[map.id] = map
