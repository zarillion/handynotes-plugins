-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Rare = ns.node.Rare
local SkyridingGlyph = ns.node.SkyridingGlyph
local Telescope = ns.node.Telescope
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Transmog = ns.reward.Transmog

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

map.nodes[51801862] = Rare({
    id = 242024, -- Placeholder
    quest = 89570, -- 94697
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

map.nodes[46295113] = Rare({
    id = 242032,
    quest = 94703, -- 89579
    rewards = {
        Achievement({id = 62122, criteria = 111846}),
        Transmog({item = 264541, type = L['leather']}) -- Egg-Swaddling Sash
    }
}) -- Oophaga

map.nodes[47773422] = Rare({
    id = 242033, -- Placeholder
    quest = 89580, -- 94704
    rewards = {
        Achievement({id = 62122, criteria = 111847}),
        Transmog({item = 264648, type = L['1h_mace']}) -- Verminscale Gavel
    }
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

map.nodes[33718897] = Rare({
    id = 242026,
    quest = 89572, -- 94707
    rewards = {
        Achievement({id = 62122, criteria = 111850}),
        ns.reward.Item({item = 265543})
    }
}) -- Elder Oaktalon

map.nodes[47682056] = Rare({
    id = 242027,
    quest = 94708, -- 89573
    rewards = {
        Achievement({id = 62122, criteria = 111851}),
        ns.reward.Item({item = 265560})
    }
}) -- Depthborn Eelamental

map.nodes[46484359] = Rare({
    id = 245691,
    quest = nil,
    rewards = {Achievement({id = 62122, criteria = 111852})}
}) -- The Decaying Diamondback

map.nodes[45294170] = Rare({
    id = 245692,
    quest = nil,
    rewards = {Achievement({id = 62122, criteria = 111853})}
}) -- Asha the Empowered

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[44724409] = Treasure({
    requires = ns.requirement.Item(259361, 1000), -- Vile Essence
    quest = nil,
    rewards = {Achievement({id = 62125, criteria = 111854})}
}) -- Abandoned Ritual Skull

map.nodes[46838186] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 62125, criteria = 111855})}
}) -- Honored Warrior's Cache
-- 93560 Triggered when clicking the cache
-- To prove yourself worthy, retrieve the four tokens from each
-- of the great warriors of old at their final resting places
-- in the sacred grounds of their loa.

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

map.nodes[51482357] = SkyridingGlyph({
    rewards = {Achievement({id = 61581, criteria = 110356})}
}) -- Temple of Jan'alai

map.nodes[20003000] = SkyridingGlyph({
    rewards = {Achievement({id = 61581, criteria = 110357})}
}) -- Strait of Hexx'alor

map.nodes[39551977] = SkyridingGlyph({
    rewards = {Achievement({id = 61581, criteria = 110358})}
}) -- Witherbark Bluffs

map.nodes[30418478] = SkyridingGlyph({
    rewards = {Achievement({id = 61581, criteria = 110359})}
}) -- Nalorakk's Prowl

map.nodes[20004500] = SkyridingGlyph({
    rewards = {Achievement({id = 61581, criteria = 110360})}
}) -- Zeb'Alar Lumberyard

map.nodes[20005000] = SkyridingGlyph({
    rewards = {Achievement({id = 61581, criteria = 110361})}
}) -- Amani Pass

map.nodes[46698217] = SkyridingGlyph({
    rewards = {Achievement({id = 61581, criteria = 110362})}
}) -- Solemn Valley

map.nodes[42748014] = SkyridingGlyph({
    rewards = {Achievement({id = 61581, criteria = 110363})}
}) -- Spiritpaw Burrow

---------------------------- MIDNIGHT LORE HUNTER -----------------------------

map.nodes[30178466] = Treasure({
    quest = 94632,
    rewards = {Achievement({id = 62104, criteria = 111775})},
    pois = {ns.poi.Entrance({31258397})}
}) -- Tablet of Nalorakk

map.nodes[53108211] = Treasure({
    quest = 94627,
    rewards = {Achievement({id = 62104, criteria = 111772})}
}) -- Tablet of Akil'zon

map.nodes[37492669] = Treasure({
    quest = 94633,
    rewards = {Achievement({id = 62104, criteria = 111776})}
}) -- Tablet of the Witherbark

map.nodes[55131762] = Treasure({
    quest = 94631,
    rewards = {Achievement({id = 62104, criteria = 111774})}
}) -- Tablet of Jan'alai

------------------------- MIDNIGHT: THE HIGHEST PEAKS -------------------------

map.nodes[53018202] = Telescope({quest = 94542})
map.nodes[41854163] = Telescope({quest = 94545})
