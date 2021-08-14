-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

local Rare = ns.node.Rare

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Toy = ns.reward.Toy

local Path = ns.poi.Path
local POI = ns.poi.POI

-------------------------------------------------------------------------------

local map = Map({ id=534, settings=true })

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[23004020] = Rare({
    id=95053,
    quest=39287,
    note=L["deathtalon_note"],
    rewards={
        Achievement({id=10061, criteria=28220}),
        Item({item=128315}), -- Medallion of the Legion
        Item({item=128025}), -- Rattling Iron Cage
        Mount({item=116658, id=611}), -- Tundra Icehoof
        Mount({item=116669, id=622}), -- Armored Razorback
        Mount({item=116780, id=643}) -- Warsong Direfang
    }
}) -- Deathtalon

map.nodes[47005260] = Rare({
    id=95056,
    quest=39289,
    note=L["doomroller_note"],
    rewards={
        Achievement({id=10061, criteria=28218}),
        Item({item=128315}), -- Medallion of the Legion
        Item({item=128025}), -- Rattling Iron Cage
        Mount({item=116658, id=611}), -- Tundra Icehoof
        Mount({item=116669, id=622}), -- Armored Razorback
        Mount({item=116780, id=643}) -- Warsong Direfang
    }
}) -- Doomroller

map.nodes[13405960] = Rare({
    id=95044,
    quest=39288,
    note=L["terrorfist_note"],
    rewards={
        Achievement({id=10061, criteria=28221}),
        Item({item=128315}), -- Medallion of the Legion
        Item({item=128025}), -- Rattling Iron Cage
        Mount({item=116658, id=611}), -- Tundra Icehoof
        Mount({item=116669, id=622}), -- Armored Razorback
        Mount({item=116780, id=643}) -- Warsong Direfang
    },
    pois={
        Path({13405960, 13806020, 14206060, 14406180, 14606280, 15206360, 15806380})
    }
}) -- Terrorfist

map.nodes[32607400] = Rare({
    id=95054,
    quest=39290,
    note=L["vengeance_note"],
    rewards={
        Achievement({id=10061, criteria=28219}),
        Item({item=128315}), -- Medallion of the Legion
        Item({item=128025}), -- Rattling Iron Cage
        Mount({item=116658, id=611}), -- Tundra Icehoof
        Mount({item=116669, id=622}), -- Armored Razorback
        Mount({item=116780, id=643}) -- Warsong Direfang
    }
}) -- Vengeance

map.nodes[83604360] = Rare({
    id=98283,
    note=L["iron_armada_note"],
    rewards={
        Toy({item=108631}), -- Crashin' Thrashin' Roller Controller
    }
}) -- Drakum

map.nodes[80605640] = Rare({
    id=98284,
    note=L["iron_armada_note"],
    rewards={
        Toy({item=108633}), -- Crashin' Thrashin' Cannon Controller
    }
}) -- Gondar

map.nodes[88005580] = Rare({
    id=98285,
    note=L["iron_armada_note"],
    rewards={
        Toy({item=108634}), -- Crashin' Thrashin' Mortar Controller
    }
}) -- Smashum Grabb

map.nodes[31507350] = Rare({
    id=90429,
    rewards={
        Toy({item=127655}), -- Sassy Imp
    }
}) -- Imp-Master Valessa

map.nodes[35607990] = Rare({
    id=93076,
    note=L["in_cave"],
    rewards={
        Item({item=128257, quest=39365}), -- Equipment Blueprint: Ghostly Spyglass
        Toy({item=127659}), -- Ghostly Iron Buccaneer's Hat
    },
    pois={
        POI({37507600}) -- Entrance
    }
}) -- Captain Ironbeard

map.nodes[40706980] = Rare({
    id=91093,
    rewards={
        Toy({item=127652}), -- Felflame Campfire
    }
}) -- Bramblefell

map.nodes[22003780] = Rare({
    id=90777,
    rewards={
        Toy({item=122117}), -- Cursed Feather of Ikzan
    },
    pois={
        Path({22604000, 20804160, 20803760, 22003780, 22604000})
    }
}) -- High Priest Ikzan
