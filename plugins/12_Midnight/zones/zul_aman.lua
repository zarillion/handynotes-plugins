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
local Item = ns.reward.Item
local Transmog = ns.reward.Transmog
local Reputation = ns.reward.Reputation

local POI = ns.poi.POI

-------------------------------------------------------------------------------

local map = Map({id = 2437, settings = true})
local aam = Map({id = 2536, settings = true}) -- Atal'Aman

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[34413305] = Rare({
    id = 242023,
    quest = 94683, -- 89569
    rewards = {Achievement({id = 62122, criteria = 111839})}
}) -- Necrohexxer Raz'ka

map.nodes[51801862] = Rare({
    id = 242024,
    quest = 89570, -- 94697
    rewards = {Achievement({id = 62122, criteria = 111840})}
}) -- The Snapping Scourge

map.nodes[51857291] = Rare({
    id = 242025,
    quest = 89571, -- 94698, -- 89571
    rewards = {
        Achievement({id = 62122, criteria = 111841}),
        Transmog({item = 256231, type = L['2h_sword']})
    }
}) -- Skullcrusher Harak

map.nodes[28952444] = Rare({
    id = 242028,
    quest = nil, -- 89575
    rewards = {Achievement({id = 62122, criteria = 111842})}
}) -- Lightwood Borer enterance 28732403

map.nodes[50876514] = Rare({
    id = 245975,
    quest = 91174, -- 94700, -- 91174
    rewards = {
        Achievement({id = 62122, criteria = 111843}),
        Transmog({item = 264580, type = L['plate']})
    }
}) -- Mrrlokk

map.nodes[38994997] = Rare({
    id = 247976,
    quest = 91634, -- 94701
    rewards = {
        Achievement({id = 62122, criteria = 111844}),
        Transmog({item = 264627, type = L['polearm']}) -- Rav'ik's Space Hunting Spear
    },
    parent = aam.id
}) -- Poacher Rav'ik

map.nodes[30484456] = Rare({
    id = 242031,
    quest = 89578, -- 94702
    rewards = {Achievement({id = 62122, criteria = 111845})}
}) -- Spinefrill

map.nodes[46295113] = Rare({
    id = 242032,
    quest = 89579, -- 94703, -- 89579
    rewards = {
        Achievement({id = 62122, criteria = 111846}),
        Transmog({item = 264541, type = L['leather']}) -- Egg-Swaddling Sash
    }
}) -- Oophaga

map.nodes[47773422] = Rare({
    id = 242033,
    quest = 89580, -- 94704
    rewards = {
        Achievement({id = 62122, criteria = 111847}),
        Transmog({item = 264648, type = L['1h_mace']}) -- Verminscale Gavel
    }
}) -- Tiny Vermin

map.nodes[21307055] = Rare({
    id = 242034,
    quest = 94705, -- 89581
    rewards = {Achievement({id = 62122, criteria = 111848})}
}) -- Voidtouched Crustacean

map.nodes[39402040] = Rare({ -- wowhead beta coords
    id = 242035,
    quest = 89583, -- 89583/94706
    rewards = {Achievement({id = 62122, criteria = 111849})}
}) -- The Devouring Invader

map.nodes[33718897] = Rare({
    id = 242026,
    quest = 89572, -- 94707
    rewards = {
        Achievement({id = 62122, criteria = 111850}), Item({item = 265543})
    }
}) -- Elder Oaktalon

map.nodes[47682056] = Rare({
    id = 242027,
    quest = 89573, -- 94708, -- 89573
    rewards = {
        Achievement({id = 62122, criteria = 111851}), Item({item = 265560})
    }
}) -- Depthborn Eelamental

map.nodes[46394339] = Rare({
    id = 245691,
    quest = nil, -- 91072
    rewards = {Achievement({id = 62122, criteria = 111852})}
}) -- The Decaying Diamondback

map.nodes[45294170] = Rare({
    id = 245692,
    quest = nil, -- 91073
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
    rewards = {Achievement({id = 62125, criteria = 111855})},
    pois = {
        POI({points = 54772240}) -- Honored Warrior's Urn. Spawns 255233, after you kill him he says "You have proven ... worthy" no quest triggered
    }
}) -- Honored Warrior's Cache
-- 93560 Triggered when clicking the cache
-- To prove yourself worthy, retrieve the four tokens from each
-- of the great warriors of old at their final resting places
-- in the sacred grounds of their loa.

-- Node also appears on the minimap at 21507728, but i cant find it.

map.nodes[21897738] = Treasure({
    quest = 93871,
    rewards = {
        Achievement({id = 62125, criteria = 111856}), Item({item = 265362}) -- Arsenal: Twilight Blade
    },
    pois = { -- sealing orbs
        POI({points = 24027566, label = L['sealing_orb'], quest = 93918}),
        POI({points = 26097401, label = L['sealing_orb'], quest = 93919}),
        POI({points = 26098074, label = L['sealing_orb'], quest = 93916}),
        POI({points = 23957895, label = L['sealing_orb'], quest = 93917})
    }
}) -- Sealed Twilight Blade Bounty

map.nodes[20846654] = Treasure({
    quest = 90795,
    rewards = {Achievement({id = 62125, criteria = 111857})}
}) -- Bait and Tackle

map.nodes[41994779] = Treasure({
    quest = 90796,
    location = L['small_cave'],
    rewards = {Achievement({id = 62125, criteria = 111858})}
}) -- Burrow Bounty

map.nodes[52326599] = Treasure({
    quest = 90797,
    rewards = {Achievement({id = 62125, criteria = 111859})}
}) -- Mrruk's Mangy Trove

map.nodes[40483595] = Treasure({
    quest = 90798,
    rewards = {Achievement({id = 62125, criteria = 111860})}
}) -- Secret Formula

map.nodes[42645243] = Treasure({
    quest = 90799,
    rewards = {
        Achievement({id = 62125, criteria = 111861}), Item({item = 255008}) -- Abandoned Eagle Egg - todo: probably placeholder ([DNT] in name), has duration: 3 days
    }
}) -- Abandoned Nest

map.nodes[44325620] = Treasure({
    label = 'Ruz\'avalt\'s Prized Tackle',
    quest = nil,
    rewards = {}
}) -- Ruz'avalt's Prized Tackle
-- TODO: not interactable

-------------------------------------------------------------------------------
----------------------------- PROFESSION TREASURES ----------------------------
-------------------------------------------------------------------------------

map.nodes[41994652] = PT.Mining({id = 238597, quest = 89145}) -- Spelunker's Lucky Charm

-------------------------------------------------------------------------------
---------------------------- ZUL'AMAN GLYPH HUNTER ----------------------------
-------------------------------------------------------------------------------

map.nodes[19177064] = SkyridingGlyph({
    rewards = {Achievement({id = 61581, criteria = 110353})}
}) -- Revantusk Sedge

map.nodes[42923436] = SkyridingGlyph({
    rewards = {Achievement({id = 61581, criteria = 110355})}
}) -- Shadebasin Watch

map.nodes[53008212] = SkyridingGlyph({
    rewards = {Achievement({id = 61581, criteria = 110354})}
}) -- Temple of Akil'zon

map.nodes[51482357] = SkyridingGlyph({
    rewards = {Achievement({id = 61581, criteria = 110356})}
}) -- Temple of Jan'alai

map.nodes[53205448] = SkyridingGlyph({
    rewards = {Achievement({id = 61581, criteria = 110357})}
}) -- Strait of Hexx'alor

map.nodes[39551977] = SkyridingGlyph({
    rewards = {Achievement({id = 61581, criteria = 110358})}
}) -- Witherbark Bluffs

map.nodes[30418478] = SkyridingGlyph({
    rewards = {Achievement({id = 61581, criteria = 110359})}
}) -- Nalorakk's Prowl

map.nodes[27912860] = SkyridingGlyph({
    rewards = {Achievement({id = 61581, criteria = 110360})}
}) -- Zeb'Alar Lumberyard

map.nodes[24825483] = SkyridingGlyph({
    rewards = {Achievement({id = 61581, criteria = 110361})},
    parent = {2395, aam.id}
}) -- Amani Pass

map.nodes[46698217] = SkyridingGlyph({
    rewards = {Achievement({id = 61581, criteria = 110362})}
}) -- Solemn Valley

map.nodes[42748014] = SkyridingGlyph({
    rewards = {Achievement({id = 61581, criteria = 110363})}
}) -- Spiritpaw Burrow

---------------------------- MIDNIGHT LORE HUNTER -----------------------------

map.nodes[30178466] = LoreObject({
    quest = 94632,
    rewards = {
        Achievement({id = 62104, criteria = 111775}),
        Reputation({id = 2696, gain = 275, quest = 94632})
    },
    pois = {ns.poi.Entrance({31258397})}
}) -- Tablet of Nalorakk

map.nodes[53108211] = LoreObject({
    quest = 94627,
    rewards = {
        Achievement({id = 62104, criteria = 111772}),
        Reputation({id = 2696, gain = 275, quest = 94633})
    }
}) -- Tablet of Akil'zon

map.nodes[37492669] = LoreObject({
    quest = 94633,
    rewards = {
        Achievement({id = 62104, criteria = 111776}),
        Reputation({id = 2696, gain = 275, quest = 94633})
    }
}) -- Tablet of the Witherbark

map.nodes[55131762] = LoreObject({
    quest = 94631,
    rewards = {
        Achievement({id = 62104, criteria = 111774}),
        Reputation({id = 2696, gain = 275, quest = 94631})
    }
}) -- Tablet of Jan'alai

map.nodes[39264472] = LoreObject({
    quest = 94673,
    rewards = {
        Achievement({id = 62104, criteria = 111777}),
        Reputation({id = 2696, gain = 275, quest = 94673})
    }
}) -- Tablet of Kulzi

map.nodes[32083165] = LoreObject({
    quest = 94628,
    rewards = {
        Achievement({id = 62104, criteria = 111773}),
        Reputation({id = 2696, gain = 275, quest = 94628})
    }
}) -- Tablet of Halazzi

map.nodes[52923212] = LoreObject({
    quest = 94674,
    rewards = {
        Achievement({id = 62104, criteria = 111778}),
        Reputation({id = 2696, gain = 275, quest = 94674})
    }
}) -- Tablet of Filo

------------------------- MIDNIGHT: THE HIGHEST PEAKS -------------------------

map.nodes[18477047] = Telescope({quest = 94541})
map.nodes[53018202] = Telescope({quest = 94542})
map.nodes[57692123] = Telescope({quest = 94543})
aam.nodes[07344751] = Telescope({quest = 94544, parent = map.id})
map.nodes[41854163] = Telescope({quest = 94545})
