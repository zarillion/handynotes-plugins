-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Rare = ns.node.Rare
local Treasure = ns.node.Treasure
local SkyridingGlyph = ns.node.SkyridingGlyph
local Telescope = ns.node.Telescope
local LoreObject = ns.node.LoreObject

local Achievement = ns.reward.Achievement
local Toy = ns.reward.Toy

-------------------------------------------------------------------------------

local map = Map({id = 2413, settings = true}) -- or 2480

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[10001000] = Rare({
    id = 248741,
    quest = nil, -- 91832
    rewards = {Achievement({id = 61264, criteria = 109039})}
}) -- Rhazul

map.nodes[10001500] = Rare({
    id = 249844,
    quest = nil, -- 92137
    rewards = {Achievement({id = 61264, criteria = 109040})}
}) -- Chironex

map.nodes[10002000] = Rare({
    id = 249849,
    quest = nil, -- 92142
    rewards = {Achievement({id = 61264, criteria = 109041})}
}) -- Ha'kalawe

map.nodes[10002500] = Rare({
    id = 249902,
    quest = nil, -- 92148
    rewards = {Achievement({id = 61264, criteria = 109042})}
}) -- Tallcap the Truthspreader

map.nodes[10003000] = Rare({
    id = 249962,
    quest = nil, -- 92154
    rewards = {Achievement({id = 61264, criteria = 109043})}
}) -- Queen Lashtongue

map.nodes[10003500] = Rare({
    id = 249997,
    quest = nil, -- 92161
    rewards = {Achievement({id = 61264, criteria = 109044})}
}) -- Chlorokyll

map.nodes[10004000] = Rare({
    id = 250086,
    quest = nil, -- 92168
    rewards = {Achievement({id = 61264, criteria = 109045})}
}) -- Stumpy

map.nodes[10004500] = Rare({
    id = 250180,
    quest = nil, -- 92170
    rewards = {Achievement({id = 61264, criteria = 109046})}
}) -- Serrasa

map.nodes[10005000] = Rare({
    id = 250226,
    quest = nil, -- 92172
    rewards = {Achievement({id = 61264, criteria = 109047})}
}) -- Mindrot

map.nodes[10005500] = Rare({
    id = 250231,
    quest = nil, -- 92176
    rewards = {Achievement({id = 61264, criteria = 109048})}
}) -- Dracaena

map.nodes[10006000] = Rare({
    id = 250246,
    quest = nil, -- 92183
    rewards = {Achievement({id = 61264, criteria = 109049})}
}) -- Treetop

map.nodes[28128184] = Rare({ -- review
    id = 250317,
    quest = 92190, -- 94723
    rewards = {Achievement({id = 61264, criteria = 109050})}
}) -- Oro'ohna

map.nodes[10007000] = Rare({
    id = 250321,
    quest = nil, -- 92191
    rewards = {Achievement({id = 61264, criteria = 109051})}
}) -- Pterrock

map.nodes[10007500] = Rare({
    id = 250347,
    quest = nil, -- 92193
    rewards = {Achievement({id = 61264, criteria = 109052})}
}) -- Ahl'ua'huhi

map.nodes[10008000] = Rare({
    id = 250358,
    quest = nil, -- 92194
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

map.nodes[20002000] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 61263, criteria = 109035})}
}) -- Sporelord's Fight Prize

map.nodes[20002500] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 61263, criteria = 109036})}
}) -- Reliquary's Lost Paintbrush

map.nodes[20003000] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 61263, criteria = 109037})}
}) -- Kemet's Simmering Cauldron

map.nodes[20003500] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 61263, criteria = 110254})}
}) -- Gift of the Cycle

map.nodes[20004000] = Treasure({
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

-------------------------------------------------------------------------------
----------------------------- HARANDAR GLYPH HUNTER ---------------------------
-------------------------------------------------------------------------------
map.nodes[25001000] = SkyridingGlyph({
    rewards = {Achievement({id = 61582, criteria = 110364})}
}) -- Blossoming Terrace, Harandar

map.nodes[47075321] = SkyridingGlyph({
    rewards = {Achievement({id = 61582, criteria = 110365})}
}) -- The Cradle, Harandar

map.nodes[30001000] = SkyridingGlyph({
    rewards = {Achievement({id = 61582, criteria = 110366})}
}) -- Roots of Teldrassil, Harandar

map.nodes[69304593] = SkyridingGlyph({
    rewards = {Achievement({id = 61582, criteria = 110367})}
}) -- Roots of Amirdrassil, Harandar

map.nodes[35001000] = SkyridingGlyph({
    rewards = {Achievement({id = 61582, criteria = 110368})}
}) -- Blooming Lattice, Harandar

map.nodes[73012599] = SkyridingGlyph({
    rewards = {Achievement({id = 61582, criteria = 110369})}
}) -- Roots of Nordrassil, Harandar

map.nodes[40001000] = SkyridingGlyph({
    rewards = {Achievement({id = 61582, criteria = 110370})}
}) -- Fungara Village, Harandar

map.nodes[42501000] = SkyridingGlyph({
    rewards = {Achievement({id = 61582, criteria = 110366})}
}) -- Roots of Shaladrassil, Harandar

map.nodes[45001000] = SkyridingGlyph({
    rewards = {Achievement({id = 61582, criteria = 110371})}
}) -- Rift of Aln, Harandar

-------------------------------------------------------------------------------
------------------------- MIDNIGHT: THE HIGHEST PEAKS -------------------------
-------------------------------------------------------------------------------

map.nodes[49407592] = Telescope({quest = 94548})
map.nodes[53495855] = Telescope({quest = 94550})
map.nodes[69602132] = Telescope({quest = 94547})
map.nodes[70524356] = Telescope({quest = 94546})

---------------------------- MIDNIGHT LORE HUNTER -----------------------------

map.nodes[33336084] = LoreObject({
    quest = 93556,
    rewards = {Achievement({id = 62104, criteria = 111824})}
}) -- Ancient Runestone

map.nodes[47604723] = LoreObject({
    quest = 93559,
    rewards = {Achievement({id = 62104, criteria = 111827})}
}) -- A Frayed Scroll

map.nodes[17507500] = LoreObject({
    quest = nil,
    rewards = {Achievement({id = 62104, criteria = 111823})}
}) -- Tarnished Mural

map.nodes[72443809] = LoreObject({
    quest = 93557,
    rewards = {Achievement({id = 62104, criteria = 111825})}
}) -- Derelict Mural

map.nodes[68212379] = LoreObject({
    quest = 93558,
    rewards = {Achievement({id = 62104, criteria = 111826})}
}) -- Forgotten Mural

-------------------------------------------------------------------------------

-- Glowing Moth, first moth triggered quest 92231 and gives item 251881 which starts quest 92448
-- moths give 1x currency 3385 (Luminous Dust)
-- not on minimap

-- 47634696 92231
-- 40433446 92300

