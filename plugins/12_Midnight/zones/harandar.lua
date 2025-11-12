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

local Achievement = ns.reward.Achievement

-------------------------------------------------------------------------------

local map = Map({id = 2413, settings = true}) -- or 2480

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[10001000] = Rare({
    id = 130210, -- Placeholder
    quest = nil,
    rewards = {Achievement({id = 61264, criteria = 109039})}
}) -- Rhazul

map.nodes[10001500] = Rare({
    id = 130210, -- Placeholder
    quest = nil,
    rewards = {Achievement({id = 61264, criteria = 109040})}
}) -- Chironex

map.nodes[10002000] = Rare({
    id = 130210, -- Placeholder
    quest = nil,
    rewards = {Achievement({id = 61264, criteria = 109041})}
}) -- Ha'kalawe

map.nodes[10002500] = Rare({
    id = 130210, -- Placeholder
    quest = nil,
    rewards = {Achievement({id = 61264, criteria = 109042})}
}) -- Tallcap the Truthspreader

map.nodes[10003000] = Rare({
    id = 130210, -- Placeholder
    quest = nil,
    rewards = {Achievement({id = 61264, criteria = 109043})}
}) -- Queen Lashtongue

map.nodes[10003500] = Rare({
    id = 130210, -- Placeholder
    quest = nil,
    rewards = {Achievement({id = 61264, criteria = 109044})}
}) -- Chlorokyll

map.nodes[10004000] = Rare({
    id = 130210, -- Placeholder
    quest = nil,
    rewards = {Achievement({id = 61264, criteria = 109045})}
}) -- Stumpy

map.nodes[10004500] = Rare({
    id = 130210, -- Placeholder
    quest = nil,
    rewards = {Achievement({id = 61264, criteria = 109046})}
}) -- Serrasa

map.nodes[10005000] = Rare({
    id = 130210, -- Placeholder
    quest = nil,
    rewards = {Achievement({id = 61264, criteria = 109047})}
}) -- Mindrot

map.nodes[10005500] = Rare({
    id = 130210, -- Placeholder
    quest = nil,
    rewards = {Achievement({id = 61264, criteria = 109048})}
}) -- Dracaena

map.nodes[10006000] = Rare({
    id = 130210, -- Placeholder
    quest = nil,
    rewards = {Achievement({id = 61264, criteria = 109049})}
}) -- Treetop

map.nodes[10006500] = Rare({
    id = 130210, -- Placeholder
    quest = nil,
    rewards = {Achievement({id = 61264, criteria = 109050})}
}) -- Oro'ohna

map.nodes[10007000] = Rare({
    id = 130210, -- Placeholder
    quest = nil,
    rewards = {Achievement({id = 61264, criteria = 109051})}
}) -- Pterrock

map.nodes[10007500] = Rare({
    id = 130210, -- Placeholder
    quest = nil,
    rewards = {Achievement({id = 61264, criteria = 109052})}
}) -- Ahl'ua'huhi

map.nodes[10008000] = Rare({
    id = 130210, -- Placeholder
    quest = nil,
    rewards = {Achievement({id = 61264, criteria = 109053})}
}) -- Annulus the Worldshaker

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[20001000] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 61263, criteria = 109033})}
}) -- Failed Shroom Jumper's Satchel

map.nodes[20001500] = Treasure({
    quest = nil,
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

map.nodes[20005000] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 61263, criteria = 110257})}
}) -- Peculiar Cauldron

-------------------------------------------------------------------------------
----------------------------- PROFESSION TREASURES ----------------------------
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
----------------------------- HARANDAR GLYPH HUNTER ---------------------------
-------------------------------------------------------------------------------
map.nodes[25001000] = SkyridingGlyph({
    rewards = {Achievement({id = 61582, criteria = 110364})}
}) -- Blossoming Terrace, Harandar

map.nodes[27501000] = SkyridingGlyph({
    rewards = {Achievement({id = 61582, criteria = 110365})}
}) -- The Cradle, Harandar

map.nodes[30001000] = SkyridingGlyph({
    rewards = {Achievement({id = 61582, criteria = 110366})}
}) -- Roots of Teldrassil, Harandar

map.nodes[32501000] = SkyridingGlyph({
    rewards = {Achievement({id = 61582, criteria = 110367})}
}) -- Roots of Amirdrassil, Harandar

map.nodes[35001000] = SkyridingGlyph({
    rewards = {Achievement({id = 61582, criteria = 110368})}
}) -- Blooming Lattice, Harandar

map.nodes[37501000] = SkyridingGlyph({
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

