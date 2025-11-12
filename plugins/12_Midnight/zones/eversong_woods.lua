-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Rare = ns.node.Rare

-------------------------------------------------------------------------------

local map = Map({id = 2395, settings = true})
local smc = Map({id = 2393, settings = true}) -- Silvermoon City

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[10001000] = Rare({
    id = 250841,
    quest = nil, -- 92404 ?
    rewards = {}
}) -- Bad Zed

map.nodes[10001500] = Rare({
    id = 250826,
    quest = nil, -- 92403 ?
    rewards = {}
}) -- Banuran

map.nodes[10002000] = Rare({
    id = 250582,
    quest = nil, -- 92366 ?
    rewards = {}
}) -- Bloated Snapdragon

map.nodes[10002500] = Rare({
    id = 250683,
    quest = nil, -- 92389 ?
    rewards = {}
}) -- Coralfang

map.nodes[10003000] = Rare({
    id = 250719,
    quest = nil, -- 92391 ?
    rewards = {}
}) -- Cre'van

map.nodes[10003500] = Rare({
    id = 255348,
    quest = nil, -- 93561 ?
    rewards = {}
}) -- Dame Bloodshed

map.nodes[10004000] = Rare({
    id = 255302,
    quest = nil, -- 93550 ?
    rewards = {}
}) -- Duskburn

map.nodes[10004500] = Rare({
    id = 246633,
    quest = nil, -- 91315 ?
    rewards = {}
}) -- Harried Hawkstrider

map.nodes[10005000] = Rare({
    id = 250754,
    quest = nil, -- 92393 ?
    rewards = {}
}) -- Lady Liminus

map.nodes[59207920] = Rare({ -- wowhead beta
    id = 250806,
    quest = nil, -- 92399 ?
    rewards = {}
}) -- Lost Guardian

map.nodes[10006000] = Rare({
    id = 255329,
    quest = nil, -- 93555 ?
    rewards = {}
}) -- Malfunctioning Construct

map.nodes[10006500] = Rare({
    id = 240129,
    quest = nil, -- 92392 ?
    rewards = {}
}) -- Overfester Hydra

map.nodes[10007000] = Rare({
    id = 250876,
    quest = nil, -- 92409 ?
    rewards = {}
}) -- Terrinor

map.nodes[10007500] = Rare({
    id = 246332,
    quest = nil, -- 91280 ?
    rewards = {}
}) -- Warden of Weeds

map.nodes[10008000] = Rare({
    id = 250780,
    quest = nil, -- 92395 ?
    rewards = {}
}) -- Waverly

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
----------------------------- PROFESSION TREASURES ----------------------------
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
------------------------- EVERSONG WOODS GLYPH HUNTER -------------------------
-------------------------------------------------------------------------------

-- map.nodes[58921954]

---------------------------- MIDNIGHT LORE HUNTER -----------------------------

-- Unfinished Sheet Music, in smc @38107699 inside a house on the table. Quest 93570
-- Shrine of Dath'Rrmar, @37601378. Quest 93563
