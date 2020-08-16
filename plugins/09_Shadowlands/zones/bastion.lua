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

local KYRIAN = ns.covenants.KYR

------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({ id=1533 })
local nodes = map.nodes

function map:enabled (node, coord, minimap)
    if not Map.enabled(self, node, coord, minimap) then return false end

    if node == map.intro then return true end

    -- add rlabel and warning if covenant doesn't match
    ns.processCovenant(node)

    local profile = ns.addon.db.profile
    if isinstance(node, Rare) then return profile.rare_bastion end
    if isinstance(node, Treasure) then return profile.treasure_bastion end
    return true
end

-------------------------------------------------------------------------------
----------------------------------- OPTIONS -----------------------------------
-------------------------------------------------------------------------------

defaults['rare_bastion'] = true
defaults['treasure_bastion'] = true

options.groupBastion = {
    type = "header",
    name = L["bastion"],
    order = 0,
}

options.rareBastion = {
    type = "toggle",
    arg = "rare_bastion",
    name = L["options_toggle_rares"],
    desc = L["options_toggle_rares_desc"],
    order = 1,
    width = "normal",
}

options.treasureBastion = {
    type = "toggle",
    arg = "treasure_bastion",
    name = L["options_toggle_treasures"],
    desc = L["options_toggle_treasures_desc"],
    order = 2,
    width = "normal",
}

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

nodes[51344080] = Rare({id=160629, quest=nil, covenant=KYRIAN, rewards={
    Achievement({id=14307, criteria=48828})
}, note="TODO: ACTIVATION"}) -- Baedos

nodes[55358024] = Rare({id=161527, quest=nil, covenant=KYRIAN, rewards={
    Achievement({id=14307, criteria={48825,48826,48827}}),
    Toy({item=174445}), -- Glimmerfly Cocoon
    Transmog({item=179485, slot=L["dagger"]}), -- Fang of Nemaeus
    Transmog({item=179486, slot=L["1h_mace"]}), -- Sigilback's Smashshell
    Transmog({item=179487, slot=L["warglaive"]}), -- Aethon's Horn
    Transmog({item=179488, slot=L["fist"]}), -- Cloudtail's Paw
}, label=L["beasts_of_bastion"], note=L["beasts_of_bastion_note"]}) -- Beasts of Bastion

nodes[59767229] = Rare({id=160721, quest=nil, rewards={
    Achievement({id=14307, criteria=48824})
}, note=L["TODO: MAP PATROL"]}) -- Fallen Acolyte Erisne

nodes[42908265] = Rare({id=158659, quest=nil, covenant=KYRIAN, rewards={
    Achievement({id=14307, criteria=48823})
}, note=L["herculon_note"]}) -- Herculon

nodes[51456859] = Rare({id=160882, quest=58319, rewards={
    Achievement({id=14307, criteria=48830}),
    Transmog({item=183608, slot=L["offhand"]}) -- Evernote Vesper
}, note=L["nikara_note"]}) -- Nikara Blackheart

nodes[40705290] = Rare({id=167078, quest=nil, covenant=KYRIAN, rewards={
    Achievement({id=14307, criteria=48829}),
    Item({item=182749}) -- Regurgitated Kyrian Wings
}, note=L["wingflayer_note"]}) -- Wingflayer the Cruel

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

nodes[58667135] = Treasure({quest=60478, label=L["vesper_of_virtues"], rewards={
    Item({item=179982}) -- Kyrian Bell
}}) -- Vesper of Virtues

-------------------------------------------------------------------------------

ns.maps[map.id] = map
