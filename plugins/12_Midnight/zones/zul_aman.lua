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

local map = Map({id = 2437, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[10001000] = Rare({
    id = 130210, -- Placeholder
    quest = nil,
    rewards = {Achievement({id = 62122, criteria = 111839})}
}) -- Necrohexxer Raz'ka

map.nodes[10001500] = Rare({
    id = 130210, -- Placeholder
    quest = nil,
    rewards = {Achievement({id = 62122, criteria = 111840})}
}) -- The Snapping Scourge

map.nodes[10002000] = Rare({
    id = 130210, -- Placeholder
    quest = nil,
    rewards = {Achievement({id = 62122, criteria = 111841})}
}) -- Skullcrusher Harak

map.nodes[10002500] = Rare({
    id = 130210, -- Placeholder
    quest = nil,
    rewards = {Achievement({id = 62122, criteria = 111842})}
}) -- Lightwood Borer

map.nodes[10003000] = Rare({
    id = 130210, -- Placeholder
    quest = nil,
    rewards = {Achievement({id = 62122, criteria = 111843})}
}) -- Mrrlokk

map.nodes[10003500] = Rare({
    id = 130210, -- Placeholder
    quest = nil,
    rewards = {Achievement({id = 62122, criteria = 111844})}
}) -- Poacher Rav'ik

map.nodes[10004000] = Rare({
    id = 130210, -- Placeholder
    quest = nil,
    rewards = {Achievement({id = 62122, criteria = 111845})}
}) -- Spinefrill

map.nodes[10004500] = Rare({
    id = 130210, -- Placeholder
    quest = nil,
    rewards = {Achievement({id = 62122, criteria = 111846})}
}) -- Oophaga

map.nodes[10005000] = Rare({
    id = 130210, -- Placeholder
    quest = nil,
    rewards = {Achievement({id = 62122, criteria = 111847})}
}) -- Tiny Vermin

map.nodes[10005500] = Rare({
    id = 130210, -- Placeholder
    quest = nil,
    rewards = {Achievement({id = 62122, criteria = 111848})}
}) -- Voidtouched Crustacean

map.nodes[10006000] = Rare({
    id = 130210, -- Placeholder
    quest = nil,
    rewards = {Achievement({id = 62122, criteria = 111849})}
}) -- The Devouring Invader

map.nodes[10006500] = Rare({
    id = 130210, -- Placeholder
    quest = nil,
    rewards = {Achievement({id = 62122, criteria = 111850})}
}) -- Elder Oaktalon

map.nodes[10007000] = Rare({
    id = 130210, -- Placeholder
    quest = nil,
    rewards = {Achievement({id = 62122, criteria = 111851})}
}) -- Depthborn Eelamental

map.nodes[10007500] = Rare({
    id = 130210, -- Placeholder
    quest = nil,
    rewards = {Achievement({id = 62122, criteria = 111852})}
}) -- The Decaying Diamondback

map.nodes[10008000] = Rare({
    id = 130210, -- Placeholder
    quest = nil,
    rewards = {Achievement({id = 62122, criteria = 111853})}
}) -- Asha the Empowered

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[20001000] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 62125, criteria = 111854})}
}) -- Abandoned Ritual Skull

map.nodes[20001500] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 62125, criteria = 111855})}
}) -- Honored Warrior's Cache

map.nodes[20002000] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 62125, criteria = 111856})}
}) -- Sealed Twilight Blade Bounty

map.nodes[20002500] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 62125, criteria = 111857})}
}) -- Bait and Tackle

map.nodes[20003000] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 62125, criteria = 111858})}
}) -- Burrow Bounty

map.nodes[20003500] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 62125, criteria = 111859})}
}) -- Mrruk's Mangy Trove

map.nodes[20004000] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 62125, criteria = 111860})}
}) -- Secret Formula

map.nodes[20004500] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 62125, criteria = 111861})}
}) -- Abandoned Nest

-------------------------------------------------------------------------------
----------------------------- PROFESSION TREASURES ----------------------------
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
---------------------------- ZUL'AMAN GLYPH HUNTER ----------------------------
-------------------------------------------------------------------------------

map.nodes[20001000] = SkyridingGlyph({
    rewards = {Achievement({id = 61581, criteria = 110353})}
}) -- Revantusk Sedge

map.nodes[20001500] = SkyridingGlyph({
    rewards = {Achievement({id = 61581, criteria = 110355})}
}) -- Shadebasin Watch

map.nodes[20002000] = SkyridingGlyph({
    rewards = {Achievement({id = 61581, criteria = 110354})}
}) -- Temple of Akil'zon

map.nodes[20002500] = SkyridingGlyph({
    rewards = {Achievement({id = 61581, criteria = 110356})}
}) -- Temple of Jan'alai

map.nodes[20003000] = SkyridingGlyph({
    rewards = {Achievement({id = 61581, criteria = 110357})}
}) -- Strait of Hexx'alor

map.nodes[20003500] = SkyridingGlyph({
    rewards = {Achievement({id = 61581, criteria = 110358})}
}) -- Witherbark Bluffs

map.nodes[20004000] = SkyridingGlyph({
    rewards = {Achievement({id = 61581, criteria = 110359})}
}) -- Nalorakk's Prowl

map.nodes[20004500] = SkyridingGlyph({
    rewards = {Achievement({id = 61581, criteria = 110360})}
}) -- Zeb'Alar Lumberyard

map.nodes[20005000] = SkyridingGlyph({
    rewards = {Achievement({id = 61581, criteria = 110361})}
}) -- Amani Pass

map.nodes[20005500] = SkyridingGlyph({
    rewards = {Achievement({id = 61581, criteria = 110362})}
}) -- Solemn Valley

map.nodes[20006000] = SkyridingGlyph({
    rewards = {Achievement({id = 61581, criteria = 110363})}
}) -- Spiritpaw Burrow

