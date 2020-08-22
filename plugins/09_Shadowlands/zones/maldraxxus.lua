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

nodes[52663542] = Rare({id=162727, quest=nil, rewards={
    Achievement({id=14308, criteria=48876})
}}) -- Bubbleblood

nodes[49012351] = Rare({id=159105, quest=58005, rewards={
    Achievement({id=14308, criteria=48866})
}}) -- Collector Kash

-- nodes[] = Rare({id=157058, quest=nil, rewards={
--     Achievement({id=14308, criteria=48872})
-- }}) -- Corpsecutter (Bonebreaker) Moroc

nodes[76135625] = Rare({id=162711, quest=58868, rewards={
    Achievement({id=14308, criteria=48851}),
    Pet({id=2953, item=181263}) -- Shy Melvin
}}) -- Deadly Dapperling

nodes[46734550] = Rare({id=162797, quest=58878, rewards={
    Achievement({id=14308, criteria=48852}),
    Transmog({item=182191, slot=L["1h_mace"]}) -- Slobber-Soaked Chew Toy
}}) -- Deepscar

nodes[45052842] = Rare({id=162669, quest=58835, rewards={
    Achievement({id=14308, criteria=48855})
}}) -- Devour'us

nodes[31603540] = Rare({id=162741, quest=nil, rewards={
    Achievement({id=14308, criteria=48871})
}}) -- Gieger

nodes[57795155] = Rare({id=162588, quest=58837, rewards={
    Achievement({id=14308, criteria=48853}),
    Transmog({item=182196, slot=L["crossbow"]}) -- Arbalest of the Colossal Predator
}, note=L["gristlebeak_note"]}) -- Gristlebeak

nodes[38794333] = Rare({id=161105, quest=58332, rewards={
    Achievement({id=14308, criteria=48848}),
    Transmog({item=182192, slot=L["plate"]}) -- Knee-Obstructing Legguards
}, note=L["schmitd_note"]}) -- Indomitable Schmitd

-- nodes[] = Rare({id=162759, quest=nil, rewards={
--     Achievement({id=14308, criteria=48856})
-- }}) -- Moregorger

nodes[53726132] = Rare({id=162767, quest=58875, rewards={
    Achievement({id=14308, criteria=48849}),
    Transmog({item=182205, slot=L["mail"]}) -- Scarab-Shell Faceguard
}}) -- Nirvaska the Summoner

nodes[50346328] = Rare({id=161857, quest=58629, rewards={
    Achievement({id=14308, criteria=48868})
}}) -- Pesticide

-- nodes[] = Rare({id=159753, quest=nil, rewards={
--     Achievement({id=14308, criteria=48865})
-- }}) -- Ravenomous

-- nodes[] = Rare({id=168147, quest=nil, rewards={
--     Achievement({id=14308, criteria=48874})
-- }}) -- Sabreil the Bonecleaver

nodes[62107580] = Rare({id=158406, quest=nil, rewards={
    Achievement({id=14308, criteria=48857})
}}) -- Scunner

nodes[55502361] = Rare({id=159886, quest=58003, rewards={
    Achievement({id=14308, criteria=48873})
}, note=L["chelicerae_note"]}) -- Sister Chelicerae

nodes[42465345] = Rare({id=162528, quest=58768, rewards={
    Achievement({id=14308, criteria=48869}),
}}) -- Smorgas the Feaster

nodes[44215132] = Rare({id=162586, quest=58783, rewards={
    Achievement({id=14308, criteria=48850}),
    Transmog({item=182190, slot=L["leather"]}) -- Tauralus Hide Collar
}}) -- Tahonta

-- nodes[] = Rare({id=160059, quest=nil, rewards={
--     Achievement({id=14308, criteria=48867})
-- }}) -- Taskmaster Xox

-- nodes[] = Rare({id=162180, quest=nil, rewards={
--     Achievement({id=14308, criteria=48870})
-- }}) -- Thread Mistress Leeda

nodes[33538086] = Rare({id=162819, quest=nil, rewards={
    Achievement({id=14308, criteria=48875})
}, note=L["malkorak_note"]}) -- Warbringer Mal'Korak

-- nodes[] = Rare({id=157125, quest=nil, rewards={
--     Achievement({id=14308, criteria=48864})
-- }}) -- Zargox the Reborn

-------------------------------------------------------------------------------

local MISCIBLE_OOZE = "|T646670:0|t"
local MEPHITIC_GOO = "|T136007:0|t"
local VISCOUS_OIL = "|T136124:0|t"

local MONSTROSITY_QUESTS = {
    61718, -- Pulsing Leech
    61719, -- Corrupted Sediment
    61720, -- Violet Mistake
    61721, -- Gelloh
    61722, -- Boneslurp
    61723, -- Burnblister
    61724, -- Oily Invertebrate
}

nodes[58197421] = Rare({id=157226, quest=MONSTROSITY_QUESTS, rewards={
    Achievement({id=14721, criteria={
        {id=48858, note=MISCIBLE_OOZE..' > '..MEPHITIC_GOO..' '..VISCOUS_OIL},-- Gelloh
        {id=48863, note=MEPHITIC_GOO..' > '..MISCIBLE_OOZE..' '..VISCOUS_OIL},-- Corrupted Sediment
        {id=48854, note=VISCOUS_OIL..' > '..MISCIBLE_OOZE..' '..MEPHITIC_GOO}, -- Pulsing Leech
        {id=48860, note='('..MISCIBLE_OOZE..' = '..MEPHITIC_GOO..') > '..VISCOUS_OIL},-- Boneslurp
        {id=48862, note='('..MISCIBLE_OOZE..' = '..VISCOUS_OIL..') > '..MEPHITIC_GOO},-- Burnblister
        {id=48861, note='('..MEPHITIC_GOO..' = '..VISCOUS_OIL..') > '..MISCIBLE_OOZE},-- Violet Mistake
        {id=48859, note=MISCIBLE_OOZE..' = '..MEPHITIC_GOO..' = '..VISCOUS_OIL},-- Oily Invertebrate
    }}),
    Pet({item=181270, id=2960}) -- Decaying Oozewalker
}, note="TODO: MOBS TO KILL, SHOW KILLED STATUS"}) -- Pool of Mixed Monstrosities

--[[

Pulsing Leech 157294 quest=61718
    Undulating Blood Burrower 182198 => Symbiotic Relationship 338506
    Engorged Blood Burrower 182200 => Symbiotic Relationship 338507
Gelloh 157307 quest=61721
Corrupted Sediment 157308 quest=61719
Violet Mistake 157309 quest=61720
Boneslurp 157310 quest=61722
Burnblister 157311 quest=61723
Oily Invertebrate 157312 quest=61724
    Decaying Oozewalker

]]

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

nodes[55893897] = Treasure({quest={59428,59429}, rewards={
    Item({item=182607}), -- Hairy Egg
    Pet({item=182606, id=3013}) -- Bloodlouse Larva
}, label='unit:Creature-0-0-0-0-165037'}) -- Strange Growth

-- nodes[] = Treasure({quest=, label=L[""], rewards={
--     Item({item=}) --
-- }}) --

-------------------------------------------------------------------------------

ns.maps[map.id] = map
