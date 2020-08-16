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
local Pet = ns.reward.Pet
local Transmog = ns.reward.Transmog
local Toy = ns.reward.Toy

local options = ns.options.args.VisibilityGroup.args
local defaults = ns.optionDefaults.profile

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({ id=1536 })
local nodes = map.nodes

function map:enabled (node, coord, minimap)
    if not Map.enabled(self, node, coord, minimap) then return false end

    if node == map.intro then return true end

    local profile = ns.addon.db.profile
    if isinstance(node, Rare) then return profile.rare_maldraxxus end
    if isinstance(node, Treasure) then return profile.treasure_maldraxxus end
    return true
end

-------------------------------------------------------------------------------
----------------------------------- OPTIONS -----------------------------------
-------------------------------------------------------------------------------

defaults['rare_maldraxxus'] = true
defaults['treasure_maldraxxus'] = true

options.groupMaldraxxus = {
    type = "header",
    name = L["maldraxxus"],
    order = 0,
}

options.rareMaldraxxus = {
    type = "toggle",
    arg = "rare_maldraxxus",
    name = L["options_toggle_rares"],
    desc = L["options_toggle_rares_desc"],
    order = 1,
    width = "normal",
}

options.treasureMaldraxxus = {
    type = "toggle",
    arg = "treasure_maldraxxus",
    name = L["options_toggle_treasures"],
    desc = L["options_toggle_treasures_desc"],
    order = 2,
    width = "normal",
}

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

nodes[76135625] = Rare({id=162711, quest=58868, rewards={
    Achievement({id=14308, criteria=48851}),
    Pet({id=2953, item=181263}) -- Shy Melvin
}}) -- Deadly Dapperling

nodes[38794333] = Rare({id=161105, quest=nil, note=L["schmitd_note"], rewards={
    Achievement({id=14308, criteria=48848}),
    Transmog({item=182192, slot=L["plate"]}) -- Knee-Obstructing Legguards
}}) -- Indomitable Schmitd

nodes[53726132] = Rare({id=162767, quest=58875, rewards={
    Achievement({id=14308, criteria=48849}),
    Transmog({item=182205, slot=L["mail"]}) -- Scarab-Shell Faceguard
}}) -- Nirvaska the Summoner

nodes[50346328] = Rare({id=161857, quest=58629, rewards={
    Achievement({id=14308, criteria=48868})
}}) -- Pesticide

nodes[42465345] = Rare({id=162528, quest=58768, rewards={
    Achievement({id=14308, criteria=48869}),
}}) -- Smorgas the Feaster

nodes[44215132] = Rare({id=162586, quest=58783, rewards={
    Achievement({id=14308, criteria=48850}),
    Transmog({item=182190, slot=L["leather"]}) -- Tauralus Hide Collar
}}) -- Tahonta

-- nodes[] = Rare({id=, quest=nil, note=nil, rewards={
--     Achievement({id=, criteria=})
-- }}) --

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

-- nodes[58667135] = Treasure({quest=60478, label=L["vesper_of_virtues"], rewards={
--     Item({item=179982}) -- Kyrian Bell
-- }}) -- Vesper of Virtues

-------------------------------------------------------------------------------

ns.maps[map.id] = map
