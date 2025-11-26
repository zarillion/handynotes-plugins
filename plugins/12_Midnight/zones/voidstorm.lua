-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local LoreObject = ns.node.LoreObject
local Rare = ns.node.Rare
local SkyridingGlyph = ns.node.SkyridingGlyph
local Telescope = ns.node.Telescope
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Transmog = ns.reward.Transmog

-------------------------------------------------------------------------------

local map = Map({id = 2405, settings = true}) -- or 2479
local slr = Map({id = 2444, settings = true}) -- Slayer's Rise

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[29515008] = Rare({
    id = 244272,
    quest = 94728, -- 90805
    rewards = {Achievement({id = 62130, criteria = 111877})}
}) -- Sundereth the Caller

map.nodes[10001500] = Rare({
    id = 238498,
    quest = nil, -- 91050
    rewards = {Achievement({id = 62130, criteria = 111878})}
}) -- Territorial Voidscythe

map.nodes[10002000] = Rare({
    id = 241443,
    quest = nil, -- 91048
    rewards = {Achievement({id = 62130, criteria = 111879})}
}) -- Tremora

map.nodes[10002500] = Rare({
    id = 130210, -- Placeholder
    quest = nil, -- 93966
    rewards = {Achievement({id = 62130, criteria = 111880})}
}) -- Screamara the Matriarch

map.nodes[10003000] = Rare({
    id = 256923,
    quest = nil, -- 93946
    rewards = {Achievement({id = 62130, criteria = 111881})}
}) -- Bane of the Vilebloods

map.nodes[39236392] = Rare({
    id = 256924,
    location = L['in_small_cave'],
    quest = nil, -- 93944
    rewards = {Achievement({id = 62130, criteria = 111882})}
}) -- Aeonelle Blackstar

map.nodes[10004000] = Rare({
    id = 256925,
    quest = nil, -- 93947
    rewards = {Achievement({id = 62130, criteria = 111883})}
}) -- Lotus Darkblossom

map.nodes[10004500] = Rare({
    id = 256926,
    quest = nil, -- 93934
    rewards = {Achievement({id = 62130, criteria = 111884})}
}) -- Queen o' War

map.nodes[48815326] = Rare({
    id = 256808,
    quest = nil, -- 93895
    rewards = {Achievement({id = 62130, criteria = 111885})}
}) -- Ravengerus

map.nodes[10005500] = Rare({
    id = 257027,
    quest = nil, -- 93953
    rewards = {Achievement({id = 62130, criteria = 111886})}
}) -- Rakshur the Bonegrinder

map.nodes[10006000] = Rare({
    id = 256770,
    quest = nil, -- 93884
    rewards = {Achievement({id = 62130, criteria = 111887})}
}) -- Bilemaw the Gluttonous

map.nodes[41609320] = Rare({ -- wowhead beta coords
    id = 245182,
    quest = nil, -- 91047
    rewards = {Achievement({id = 62130, criteria = 111888})}
}) -- Eruundi

map.nodes[10007000] = Rare({
    id = 245044,
    quest = nil, -- 91051
    rewards = {Achievement({id = 62130, criteria = 111889})}
}) -- Nightbrood

map.nodes[10007500] = Rare({
    id = 256821,
    quest = nil, -- 93896
    rewards = {Achievement({id = 62130, criteria = 111890})}
}) -- Far'thana the Mad

-- Hardin Steellock @map 2444 28.35 57.11, Horde only?
-- Gar'chak Skullcleave @map 2444 69.68 77.30, Alliance only?

-- map.nodes[30336652] = Rare({
--     id = 248791,
--     quest = nil,
--     rewards = {},
--     pois = {ns.poi.Line({30006658, 30336652, 3067661})}
-- }) -- Voidseer Orivane

-- map.nodes[30186940] = Rare({
--     id = 248791,
--     quest = nil,
--     rewards = {},
--     pois = {ns.poi.Line({29906904, 30186940, 30516971})}
-- }) -- Voidseer Orivane

-- map.nodes[29796787] = Rare({id = 248068, quest = nil, rewards = {}}) -- Nullspiral

-- map.nodes[28847023] = Rare({id = 248459, quest = nil, rewards = {}}) -- The Many-Broken

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[20001000] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 62126, criteria = 111863})}
}) -- Final Clutch of Predaxas

map.nodes[20001500] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 62126, criteria = 111864})}
}) -- Void-Shielded Tomb

map.nodes[20002000] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 62126, criteria = 111866})}
}) -- Bloody Sack

map.nodes[20002500] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 62126, criteria = 111867})}
}) -- Malignant Chest

slr.nodes[53133228] = Treasure({
    quest = 93996, -- 94005 after you pull out the stash
    rewards = {Achievement({id = 62126, criteria = 111868})},
    parent = map.id
}) -- Stellar Stash

map.nodes[20003500] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 62126, criteria = 111869})}
}) -- Forgotten Researcher's Cache

map.nodes[20004000] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 62126, criteria = 111870})}
}) -- Scout's Pack

map.nodes[20004500] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 62126, criteria = 111871})}
}) -- Embedded Spear

map.nodes[20005000] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 62126, criteria = 111872})}
}) -- Quivering Egg

map.nodes[20005500] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 62126, criteria = 111873})}
}) -- Exaliburn

map.nodes[35774141] = Treasure({
    quest = 93496,
    rewards = {
        Achievement({id = 62126, criteria = 111874}),
        Transmog({item = 266100, type = L['cosmetic']}) -- Barbed Riftwalker Dirk
    }
}) -- Discarded Energy Pike

map.nodes[20006500] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 62126, criteria = 111875})}
}) -- Faindel's Quiver

map.nodes[20007000] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 62126, criteria = 111876})}
}) -- Half-Digested Viscera

---------------------------- MIDNIGHT LORE HUNTER -----------------------------

map.nodes[40485863] = LoreObject({
    quest = 94395,
    rewards = {Achievement({id = 62104, criteria = 111836})}
}) -- Abandoned Telescope

map.nodes[27835402] = LoreObject({
    quest = 94398,
    rewards = {Achievement({id = 62104, criteria = 111838})}
}) -- Shadowgraft Harness

-------------------------------------------------------------------------------
------------------------- MIDNIGHT: THE HIGHEST PEAKS -------------------------
-------------------------------------------------------------------------------

map.nodes[39686116] = Telescope({quest = 94551})

-------------------------------------------------------------------------------
----------------------------- PROFESSION TREASURES ----------------------------
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
---------------------------- VOIDSTORM GLYPH HUNTER ---------------------------
-------------------------------------------------------------------------------

map.nodes[25001000] = SkyridingGlyph({
    rewards = {Achievement({id = 61583, criteria = 110372})}
}) -- The Voidspire, Voidstorm

map.nodes[27501000] = SkyridingGlyph({
    rewards = {Achievement({id = 61583, criteria = 110373})}
}) -- The Molt, Voidstorm

map.nodes[30001000] = SkyridingGlyph({
    rewards = {Achievement({id = 61583, criteria = 110374})}
}) -- The Ingress, Voidstorm

map.nodes[32501000] = SkyridingGlyph({
    rewards = {Achievement({id = 61583, criteria = 110375})}
}) -- The Bladeburrows, Voidstorm

map.nodes[35001000] = SkyridingGlyph({
    rewards = {Achievement({id = 61583, criteria = 110376})}
}) -- Gnawing Reach, Voidstorm

map.nodes[37501000] = SkyridingGlyph({
    rewards = {Achievement({id = 61583, criteria = 110377})}
}) -- Hanaar Outpost, Voidstorm

map.nodes[40001000] = SkyridingGlyph({
    rewards = {Achievement({id = 61583, criteria = 110378})}
}) -- Ethereum Refinery, Voidstorm

map.nodes[42501000] = SkyridingGlyph({
    rewards = {Achievement({id = 61583, criteria = 110379})}
}) -- Master's Perch, Voidstorm

map.nodes[45001000] = SkyridingGlyph({
    rewards = {Achievement({id = 61583, criteria = 110380})}
}) -- Obscurion Citadel, Voidstorm

map.nodes[47501000] = SkyridingGlyph({
    rewards = {Achievement({id = 61583, criteria = 110381})}
}) -- Shadowguard Point, Voidstorm

map.nodes[50001000] = SkyridingGlyph({
    rewards = {Achievement({id = 61583, criteria = 110382})}
}) -- The Gorging Pit, Voidstorm

