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
    name = L["revendreth"],
    order = 0,
}

options.rareRevendreth = {
    type = "toggle",
    arg = "rare_revendreth",
    name = L["options_toggle_rares"],
    desc = L["options_toggle_rares_desc"],
    order = 1,
    width = "normal",
}

options.treasureRevendreth = {
    type = "toggle",
    arg = "treasure_revendreth",
    name = L["options_toggle_treasures"],
    desc = L["options_toggle_treasures_desc"],
    order = 2,
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

nodes[35707010] = Rare({id=166576, quest=nil, rewards={
    Achievement({id=14310, criteria=48816})
}}) -- Azgar

nodes[35003230] = Rare({id=166292, quest=nil, rewards={
    Achievement({id=14310, criteria=48818})
}}) -- Bog Beast

-- nodes[] = Rare({id=165206, quest=nil, rewards={
--     Achievement({id=14310, criteria=48810})
-- }}) -- Endlurker

nodes[37104860] = Rare({id=166710, quest=nil, rewards={
    Achievement({id=14310, criteria=48819})
}}) -- Executioner Aatron

-- nodes[] = Rare({id=161310, quest=nil, rewards={
--     Achievement({id=14310, criteria=48807})
-- }}) -- Executioner Adrastia

-- nodes[] = Rare({id=166521, quest=nil, rewards={
--     Achievement({id=14310, criteria=48815})
-- }}) -- Famu the Infinite

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

nodes[67508230] = Rare({id=165152, quest=nil, rewards={
    Achievement({id=14310, criteria=48809})
}}) -- Leeched Soul

nodes[75806120] = Rare({id=161891, quest=nil, rewards={
    Achievement({id=14310, criteria=48808})
}}) -- Lord Mortegore

nodes[49003490] = Rare({id=170048, quest=nil, rewards={
    Achievement({id=14310, criteria=48822})
}}) -- Manifestation of Wrath

-- nodes[] = Rare({id=160675, quest=nil, rewards={
--     Achievement({id=14310, criteria=48800})
-- }}) -- Scrivener Lenua

-- nodes[] = Rare({id=162481, quest=nil, rewards={
--     Achievement({id=14310, criteria=50030})
-- }}) -- Sinstone Hoarder

-- nodes[] = Rare({id=160857, quest=nil, rewards={
--     Achievement({id=14310, criteria=48806})
-- }}) -- Sire Ladinas

-- nodes[] = Rare({id=160392, quest=nil, rewards={
--     Achievement({id=14310, criteria=48799})
-- }}) -- Soulstalker Doina

-- nodes[] = Rare({id=159503, quest=nil, rewards={
--     Achievement({id=14310, criteria=48803})
-- }}) -- Stonefist

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

-- Stoneguard Satchel (76226410) (60896,60939)

-------------------------------------------------------------------------------

ns.maps[map.id] = map
