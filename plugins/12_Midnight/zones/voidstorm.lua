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

local map = Map({id = 2405, settings = true}) -- or 2479

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[10001000] = Rare({
    id = 130210, -- Placeholder
    quest = nil,
    rewards = {Achievement({id = 62130, criteria = 111877})}
}) -- Sundereth the Caller

map.nodes[10001500] = Rare({
    id = 130210, -- Placeholder
    quest = nil,
    rewards = {Achievement({id = 62130, criteria = 111878})}
}) -- Territorial Voidscythe

map.nodes[10002000] = Rare({
    id = 130210, -- Placeholder
    quest = nil,
    rewards = {Achievement({id = 62130, criteria = 111879})}
}) -- Tremora

map.nodes[10002500] = Rare({
    id = 130210, -- Placeholder
    quest = nil,
    rewards = {Achievement({id = 62130, criteria = 111880})}
}) -- Screamara the Matriarch

map.nodes[10003000] = Rare({
    id = 130210, -- Placeholder
    quest = nil,
    rewards = {Achievement({id = 62130, criteria = 111881})}
}) -- Bane of the Vilebloods

map.nodes[10003500] = Rare({
    id = 130210, -- Placeholder
    quest = nil,
    rewards = {Achievement({id = 62130, criteria = 111882})}
}) -- Aeonelle Blackstar

map.nodes[10004000] = Rare({
    id = 130210, -- Placeholder
    quest = nil,
    rewards = {Achievement({id = 62130, criteria = 111883})}
}) -- Lotus Darkblossom

map.nodes[10004500] = Rare({
    id = 130210, -- Placeholder
    quest = nil,
    rewards = {Achievement({id = 62130, criteria = 111884})}
}) -- Queen o' War

map.nodes[10005000] = Rare({
    id = 130210, -- Placeholder
    quest = nil,
    rewards = {Achievement({id = 62130, criteria = 111885})}
}) -- Ravengerus

map.nodes[10005500] = Rare({
    id = 130210, -- Placeholder
    quest = nil,
    rewards = {Achievement({id = 62130, criteria = 111886})}
}) -- Rakshur the Bonegrinder

map.nodes[10006000] = Rare({
    id = 130210, -- Placeholder
    quest = nil,
    rewards = {Achievement({id = 62130, criteria = 111887})}
}) -- Bilemaw the Gluttonous

map.nodes[10006500] = Rare({
    id = 130210, -- Placeholder
    quest = nil,
    rewards = {Achievement({id = 62130, criteria = 111888})}
}) -- Eruundi

map.nodes[10007000] = Rare({
    id = 130210, -- Placeholder
    quest = nil,
    rewards = {Achievement({id = 62130, criteria = 111889})}
}) -- Nightbrood

map.nodes[10007500] = Rare({
    id = 130210, -- Placeholder
    quest = nil,
    rewards = {Achievement({id = 62130, criteria = 111890})}
}) -- Far'thana the Mad

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

map.nodes[20003000] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 62126, criteria = 111868})}
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

map.nodes[20006000] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 62126, criteria = 111874})}
}) -- Discarded Energy Pike

map.nodes[20006500] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 62126, criteria = 111875})}
}) -- Faindel's Quiver

map.nodes[20007000] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 62126, criteria = 111876})}
}) -- Half-Digested Viscera

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

