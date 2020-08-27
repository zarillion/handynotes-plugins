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

local Path = ns.poi.Path
local POI = ns.poi.POI

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
    name = C_Map.GetMapInfo(map.id).name,
    order = 10,
}

options.rareBastion = {
    type = "toggle",
    arg = "rare_bastion",
    name = L["options_toggle_rares"],
    desc = L["options_toggle_rares_desc"],
    order = 11,
    width = "normal",
}

options.treasureBastion = {
    type = "toggle",
    arg = "treasure_bastion",
    name = L["options_toggle_treasures"],
    desc = L["options_toggle_treasures_desc"],
    order = 12,
    width = "normal",
}

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

-- nodes[] = Rare({id=, quest=nil, rewards={
--     Achievement({id=14307, criteria=})
-- }}) --

nodes[32592336] = Rare({id=171211, quest=nil, rewards={
    Achievement({id=14307, criteria=48844})
}}) -- Aspirant Eolis

nodes[51344080] = Rare({id=160629, quest=nil, covenant=KYRIAN, rewards={
    Achievement({id=14307, criteria=48828})
}, note="TODO: ACTIVATION"}) -- Baedos

nodes[48605110] = Rare({id=170659, quest=nil, rewards={
    Achievement({id=14307, criteria=48833})
}}) -- Basilofos, King of the Hill

nodes[55358024] = Rare({id=161527, quest=nil, covenant=KYRIAN, rewards={
    Achievement({id=14307, criteria={48825,48826,48827}}),
    Toy({item=174445}), -- Glimmerfly Cocoon
    Transmog({item=179485, slot=L["dagger"]}), -- Fang of Nemaeus
    Transmog({item=179486, slot=L["1h_mace"]}), -- Sigilback's Smashshell
    Transmog({item=179487, slot=L["warglaive"]}), -- Aethon's Horn
    Transmog({item=179488, slot=L["fist"]}), -- Cloudtail's Paw
}, label=L["beasts_of_bastion"], note=L["beasts_of_bastion_note"]}) -- Beasts of Bastion

nodes[57206370] = Rare({id=171189, quest=nil, rewards={
    Achievement({id=14307, criteria=48843})
}}) -- Bookkeeper Mnemis

-- nodes[] = Rare({id=170932, quest=nil, rewards={
--     Achievement({id=14307, criteria=48835})
-- }}) -- Cloudfeather Patriarch

-- nodes[] = Rare({id=171014, quest=nil, rewards={
--     Achievement({id=14307, criteria=48841})
-- }}) -- Collector Astorestes

nodes[56424614] = Rare({id=171010, quest=nil, rewards={
    Achievement({id=14307, criteria=48846})
}}) -- Corrupted Clawguard

-- nodes[] = Rare({id=170623, quest=nil, rewards={
--     Achievement({id=14307, criteria=48834})
-- }}) -- Dark Watcher

-- nodes[] = Rare({id=171011, quest=nil, rewards={
--     Achievement({id=14307, criteria=48842})
-- }}) -- Demi the Relic Hoarder

nodes[40944738] = Rare({id=163460, quest=nil, rewards={
    Achievement({id=14307, criteria=48831})
}}) -- Dionae

nodes[45546459] = Rare({id=171255, quest={61082,61091,62251}, rewards={
    Achievement({id=14307, criteria=48845}),
    Item({item=180062}) -- Heavenly Drum
}, pois={
    Path({45546459, 44656486, 44766596, 45366670, 45866643, 45616562})
}}) -- Echo of Aella <Hand of Courage>

nodes[48004290] = Rare({id=171013, quest=nil, rewards={
    Achievement({id=14307, criteria=48838})
}}) -- Embodied Hunger

-- nodes[] = Rare({id=171009, quest=nil, rewards={
--     Achievement({id=14307, criteria=48836})
-- }}) -- Enforcer Aegeon

nodes[59767229] = Rare({id=160721, quest=nil, rewards={
    Achievement({id=14307, criteria=48824})
}, note=L["TODO: MAP PATROL"]}) -- Fallen Acolyte Erisne

nodes[42908265] = Rare({id=158659, quest={57705,57708}, rewards={
    Achievement({id=14307, criteria=48823})
}, note=L["herculon_note"]}) -- Herculon

nodes[51456859] = Rare({id=160882, quest=58319, rewards={
    Achievement({id=14307, criteria=48830}),
    Transmog({item=183608, slot=L["offhand"]}) -- Evernote Vesper
}, note=L["nikara_note"]}) -- Nikara Blackheart

-- nodes[] = Rare({id=171327, quest=nil, rewards={
--     Achievement({id=14307, criteria=48847})
-- }}) -- Reekmonger

nodes[61409050] = Rare({id=170548, quest=nil, rewards={
    Achievement({id=14307, criteria=48832})
}, pois={
    Path({
        58209700, 61009560, 61609340, 61409050,
        61708710, 62808430, 62508060, 61107910
    }),
    POI({60049398})
}}) -- Sundancer

-- nodes[] = Rare({id=171008, quest=nil, rewards={
--     Achievement({id=14307, criteria=48837})
-- }}) -- Unstable Memory

nodes[40705290] = Rare({id=167078, quest=nil, covenant=KYRIAN, rewards={
    Achievement({id=14307, criteria=48829}),
    Item({item=182749}) -- Regurgitated Kyrian Wings
}, note=L["wingflayer_note"]}) -- Wingflayer the Cruel

nodes[48004290] = Rare({id=171041, quest=nil, rewards={
    Achievement({id=14307, criteria=48840})
}}) -- Worldfeaster Chronn

nodes[63503590] = Rare({id=171040, quest=61046, rewards={
    Achievement({id=14307, criteria=48839}),
    Transmog({item=183605, slot=L["warglaive"]}) -- Devourer Wrought Warglaive
}}) -- Xixin the Ravening

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

-- nodes[] = Treasure({quest=nil, rewards={
--     Achievement({id=14311, criteria=})
-- }}) --

nodes[70473645] = Treasure({quest=nil, rewards={
    Achievement({id=14311, criteria=50060})
}, pois={
    POI({69374031, scale=0.75})
}}) -- Gift of Chyrus

nodes[58233999] = Treasure({quest=61049, rewards={
    Achievement({id=14311, criteria=50051}),
    Item({item=182652})
}, note=L["larion_harness"]}) -- Larion Tamer's Harness

nodes[59336092] = Treasure({quest=61048, rewards={
    Achievement({id=14311, criteria=50050}),
    Item({item=182693, quest=62170}) -- You'll Never Walk Alone
}}) -- Lost Disciple's Notes

nodes[52038607] = Treasure({quest=58329, rewards={
    Achievement({id=14311, criteria=50049}),
    Item({item=174007})
}}) -- Purifying Draught

-- 58292 (purians), 58294 (first offer), 58293 (second offer)
nodes[53508037] = Treasure({quest=58298, rewards={
    Achievement({id=14311, criteria=50047}),
    Toy({item=173984}) -- Scroll of Aeons
}, pois={
    POI({54428387, 56168305})
}, note=L["scroll_of_aeons"]}) -- Scroll of Aeons

nodes[58667135] = Treasure({quest=60478, rewards={
    Achievement({id=14311, criteria=50048}),
    Item({item=179982}) -- Kyrian Bell
}}) -- Vesper of Virtues

-------------------------------------------------------------------------------
----------------------------- ANIMA CRYSTAL SHARDS ----------------------------
-------------------------------------------------------------------------------

-- 61048566 61244

-------------------------------------------------------------------------------

ns.maps[map.id] = map
