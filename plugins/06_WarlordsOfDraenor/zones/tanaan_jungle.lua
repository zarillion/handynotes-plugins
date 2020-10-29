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

local Path = ns.poi.Path

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
