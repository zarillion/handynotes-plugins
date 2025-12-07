-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local LoreObject = ns.node.LoreObject
local PT = ns.node.ProfessionTreasures
local Rare = ns.node.Rare
local SkyridingGlyph = ns.node.SkyridingGlyph
local Telescope = ns.node.Telescope
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Pet = ns.reward.Pet
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog
local Reputation = ns.reward.Reputation

local Path = ns.poi.Path

-------------------------------------------------------------------------------

local map = Map({id = 2413, settings = true}) -- or 2480

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[51164535] = Rare({
    id = 248741,
    quest = 91832, -- 94712/91832
    rewards = {Achievement({id = 61264, criteria = 109039})}
}) -- Rhazul

map.nodes[68714070] = Rare({
    id = 249844,
    quest = 92137, -- 92137
    rewards = {Achievement({id = 61264, criteria = 109040})}
}) -- Chironex

map.nodes[69175986] = Rare({
    id = 249849,
    quest = 92142, -- 92142/94714
    rewards = {Achievement({id = 61264, criteria = 109041})}, -- [Ha'kalawe's Flawless Wing] clock
    pois = {
        Path({
            69546295, 68806295, 68146280, 67696231, 67476167, 67466099,
            68076071, 68636028, 69175986, 69666044, 70076098, 70226166,
            70196238, 69546295
        })
    }
}) -- Ha'kalawe

map.nodes[72636928] = Rare({
    id = 249902,
    quest = 92148, -- 94715
    rewards = {Achievement({id = 61264, criteria = 109042})}
}) -- Tallcap the Truthspreader

map.nodes[59934684] = Rare({
    id = 249962,
    quest = 92154, -- 92154
    rewards = {Achievement({id = 61264, criteria = 109043})}
}) -- Queen Lashtongue

map.nodes[10003500] = Rare({
    id = 249997,
    quest = 92161, -- 92161
    rewards = {Achievement({id = 61264, criteria = 109044})}
}) -- Chlorokyll

map.nodes[10004000] = Rare({
    id = 250086,
    quest = 92168, -- 92168
    rewards = {Achievement({id = 61264, criteria = 109045})}
}) -- Stumpy

map.nodes[10004500] = Rare({
    id = 250180,
    quest = 92170, -- 92170
    rewards = {Achievement({id = 61264, criteria = 109046})}
}) -- Serrasa

map.nodes[10005000] = Rare({
    id = 250226,
    quest = 92172, -- 92172
    rewards = {Achievement({id = 61264, criteria = 109047})}
}) -- Mindrot

map.nodes[40654299] = Rare({
    id = 250231,
    quest = 92176, -- 92176
    rewards = {Achievement({id = 61264, criteria = 109048})}
}) -- Dracaena

map.nodes[36597516] = Rare({
    id = 250246,
    quest = 92183, -- 94722/92183
    rewards = {Achievement({id = 61264, criteria = 109049})}
}) -- Treetop

map.nodes[28118181] = Rare({ -- review
    id = 250317,
    quest = 92190, -- 94723
    rewards = {Achievement({id = 61264, criteria = 109050})}
}) -- Oro'ohna

map.nodes[27277032] = Rare({
    id = 250321,
    quest = 92191, -- 94724, -- 92191
    rewards = {Achievement({id = 61264, criteria = 109051})}
}) -- Pterrock

map.nodes[39696070] = Rare({
    id = 250347,
    quest = 92193, -- 92193/94725
    rewards = {Achievement({id = 61264, criteria = 109052})}
}) -- Ahl'ua'huhi

map.nodes[10008000] = Rare({
    id = 250358,
    quest = 92194, -- 92194
    rewards = {Achievement({id = 61264, criteria = 109053})}
}) -- Annulus the Worldshaker

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[71683100] = Treasure({
    quest = 92424,
    rewards = {
        Achievement({id = 61263, criteria = 109033}), Toy({item = 258963})
    }
}) -- Failed Shroom Jumper's Satchel

map.nodes[47065025] = Treasure({
    quest = 92426,
    rewards = {Achievement({id = 61263, criteria = 109034})}
}) -- Burning Branch of the World Tree

map.nodes[73656535] = Treasure({
    quest = 92427,
    rewards = {
        Achievement({id = 61263, criteria = 109035}),
        Transmog({item = 263289, type = L['cosmetic']})
    }
}) -- Sporelord's Fight Prize

map.nodes[62905124] = Treasure({
    quest = 92431,
    rewards = {
        Achievement({id = 61263, criteria = 109036}),
        Transmog({item = 263287, type = L['cosmetic']}) -- [Reliquary-Keeper's Lost Shortbow]
    }
}) -- Reliquary's Lost Paintbrush

map.nodes[55693943] = Treasure({
    quest = 92436,
    rewards = {
        Achievement({id = 61263, criteria = 109037}),
        Pet({item = 258903, id = 4927}) -- [Percival]

    }
}) -- Kemet's Simmering Cauldron

map.nodes[20003500] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 61263, criteria = 110254})}
}) -- Gift of the Cycle

map.nodes[26736759] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 61263, criteria = 110255})}
}) -- Impenatrably Sealed Gourd

map.nodes[20004500] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 61263, criteria = 110256})}
}) -- Sporespawned Cache

map.nodes[40642802] = Treasure({
    requires = ns.requirement.Item(260531, 150), -- Crystalized Resin Fragment
    quest = nil,
    rewards = {Achievement({id = 61263, criteria = 110257})}
}) -- Peculiar Cauldron

-- Flame Harded Sap of Teldrassil @40862753 in water under a water lily, probably all over the zone, not on minimap
-- gives 3-7 Resin, was lootable multiple times, sometimes said "there is no loot" but was lootable a seconds laiter. despawned after some time

-------------------------------------------------------------------------------
----------------------------- PROFESSION TREASURES ----------------------------
-------------------------------------------------------------------------------
map.nodes[34772469] = PT.Alchemy({quest = 89113, id = 238534})
-- Spare Expedition Torch (Mining) @38836586 quest 89151

-------------------------------------------------------------------------------
----------------------------- HARANDAR GLYPH HUNTER ---------------------------
-------------------------------------------------------------------------------
map.nodes[60244436] = SkyridingGlyph({
    rewards = {Achievement({id = 61582, criteria = 110364})}
}) -- Blossoming Terrace, Harandar

map.nodes[47075321] = SkyridingGlyph({
    rewards = {Achievement({id = 61582, criteria = 110365})}
}) -- The Cradle, Harandar

map.nodes[69304593] = SkyridingGlyph({
    rewards = {Achievement({id = 61582, criteria = 110367})}
}) -- Roots of Amirdrassil, Harandar

map.nodes[54123558] = SkyridingGlyph({
    rewards = {Achievement({id = 61582, criteria = 110368})}
}) -- Blooming Lattice, Harandar

map.nodes[73012599] = SkyridingGlyph({
    rewards = {Achievement({id = 61582, criteria = 110369})}
}) -- Roots of Nordrassil, Harandar

map.nodes[44546280] = SkyridingGlyph({
    rewards = {Achievement({id = 61582, criteria = 110370})}
}) -- Fungara Village, Harandar

map.nodes[26536139] = SkyridingGlyph({
    rewards = {Achievement({id = 61582, criteria = 110366})}
}) -- Roots of Shaladrassil, Harandar

map.nodes[61866750] = SkyridingGlyph({
    rewards = {Achievement({id = 61582, criteria = 110371})}
}) -- Rift of Aln, Harandar

-------------------------------------------------------------------------------
------------------------- MIDNIGHT: THE HIGHEST PEAKS -------------------------
-------------------------------------------------------------------------------

map.nodes[49407592] = Telescope({quest = 94548})
map.nodes[53495855] = Telescope({quest = 94550})
map.nodes[69602132] = Telescope({quest = 94547})
map.nodes[70524356] = Telescope({quest = 94546})
map.nodes[69406339] = Telescope({quest = 94549})

---------------------------- MIDNIGHT LORE HUNTER -----------------------------

map.nodes[33336084] = LoreObject({
    quest = 93556,
    rewards = {
        Achievement({id = 62104, criteria = 111824}),
        Reputation({id = 2704, gain = 275, quest = 93556})
    }
}) -- Ancient Runestone

map.nodes[47604723] = LoreObject({
    quest = 93559,
    rewards = {
        Achievement({id = 62104, criteria = 111827}),
        Reputation({id = 2704, gain = 275, quest = 93559})
    }
}) -- A Frayed Scroll

map.nodes[55665402] = LoreObject({
    quest = 93554,
    rewards = {
        Achievement({id = 62104, criteria = 111823}),
        Reputation({id = 2704, gain = 275, quest = 93554})
    }
}) -- Tarnished Mural

map.nodes[72443809] = LoreObject({
    quest = 93557,
    rewards = {
        Achievement({id = 62104, criteria = 111825}),
        Reputation({id = 2704, gain = 275, quest = 93557})
    }
}) -- Derelict Mural

map.nodes[68212379] = LoreObject({
    quest = 93558,
    rewards = {
        Achievement({id = 62104, criteria = 111826}),
        Reputation({id = 2704, gain = 275, quest = 93558})
    }
}) -- Forgotten Mural

-------------------------------- GLOWING MOTHS --------------------------------

-- Glowing Moth, first moth triggered quest 92231 and gives item 251881 which starts quest 92448
-- moths give 1x currency 3385 (Luminous Dust)
-- 120 in total to find

local Moth = Class('Moth', ns.node.Collectible, {
    label = L['glowing_moth'],
    icon = 1003597,
    group = ns.groups.GLOWING_MOTH,
    rewards = {
        Achievement({id = 61052, oneline = true}),
        ns.reward.Currency({id = 3385}) -- Luminous Dust
    }
})

map.nodes[36354839] = Moth({quest = 92196})
map.nodes[36112639] = Moth({quest = 92197})
map.nodes[49882551] = Moth({quest = 92198})
map.nodes[55002755] = Moth({quest = 92199})
map.nodes[66306282] = Moth({quest = 92200})
map.nodes[33376349] = Moth({quest = 92201})
map.nodes[33377561] = Moth({quest = 92202})
map.nodes[31848176] = Moth({quest = 92203})
map.nodes[42196651] = Moth({quest = 92204})
map.nodes[59445433] = Moth({quest = 92206})
map.nodes[38334744] = Moth({quest = 92207})
map.nodes[33954404] = Moth({quest = 92208})
map.nodes[60344858] = Moth({quest = 92209})
map.nodes[43215365] = Moth({quest = 92210})
map.nodes[30317339] = Moth({quest = 92211})
map.nodes[32628477] = Moth({quest = 92212})
map.nodes[32066708] = Moth({quest = 92213})
map.nodes[52935065] = Moth({quest = 92214})
map.nodes[71385863] = Moth({quest = 92215})
map.nodes[46382488] = Moth({quest = 92225})
map.nodes[55143288] = Moth({quest = 92227})
map.nodes[66965657] = Moth({quest = 92228})
map.nodes[50266966] = Moth({quest = 92234})
map.nodes[53765910] = Moth({quest = 92229})
map.nodes[41614012] = Moth({quest = 92230})
map.nodes[47634696] = Moth({quest = 92231})
map.nodes[68693633] = Moth({quest = 92233})
map.nodes[49267552] = Moth({quest = 92235})
map.nodes[41953772] = Moth({quest = 92241})
map.nodes[43264035] = Moth({quest = 92242})
map.nodes[30806365] = Moth({quest = 92248})
map.nodes[36974830] = Moth({quest = 92256})
map.nodes[42192226] = Moth({quest = 92259})
map.nodes[39095510] = Moth({quest = 92266})
map.nodes[56584765] = Moth({quest = 92299})
map.nodes[40443446] = Moth({quest = 92300})
map.nodes[41592744] = Moth({quest = 92301})
map.nodes[50634062] = Moth({quest = 92302})
map.nodes[65432712] = Moth({quest = 92303})
map.nodes[69033120] = Moth({quest = 92304})
map.nodes[59984305] = Moth({quest = 92305})
map.nodes[67736886] = Moth({quest = 92306})
map.nodes[48545535] = Moth({quest = 92307})

