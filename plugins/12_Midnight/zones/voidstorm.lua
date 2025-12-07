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
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog
local Reputation = ns.reward.Reputation

local Path = ns.poi.Path
local POI = ns.poi.POI

-------------------------------------------------------------------------------

local map = Map({id = 2405, settings = true}) -- or 2479
local slr = Map({id = 2444, settings = true}) -- Slayer's Rise

local lop_t = Map({id = 2526, settings = true}) -- Lair of Predaxas - Top
local lop_b = Map({id = 2527, settings = true}) -- Lair of Predaxas - Bottom

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[29515008] = Rare({
    id = 244272,
    quest = 94728, -- 90805
    rewards = {Achievement({id = 62130, criteria = 111877})}
}) -- Sundereth the Caller

map.nodes[34058198] = Rare({
    id = 238498,
    quest = 94729, -- 91050
    rewards = {
        Achievement({id = 62130, criteria = 111878}),
        Transmog({item = 264564, type = L['mail']}) -- Voidscale Shoulderpads
    }
}) -- Territorial Voidscythe

map.nodes[36168355] = Rare({
    id = 241443,
    location = L['in_small_cave'],
    quest = 94730, -- 91048
    rewards = {Achievement({id = 62130, criteria = 111879})},
    pois = {POI({35698120})}
}) -- Tremora

map.nodes[43665154] = Rare({
    id = 256922,
    quest = 94731, -- 93966
    rewards = {Achievement({id = 62130, criteria = 111880})}
}) -- Screammaxa the Matriarch

map.nodes[47058063] = Rare({
    id = 256923,
    location = L['in_small_cave'],
    quest = 94732, -- 93946
    rewards = {Achievement({id = 62130, criteria = 111881})}
}) -- Bane of the Vilebloods

map.nodes[39236392] = Rare({
    id = 256924,
    location = L['in_small_cave'],
    quest = nil, -- 93944
    rewards = {Achievement({id = 62130, criteria = 111882})}
}) -- Aeonelle Blackstar

map.nodes[37897177] = Rare({
    id = 256925,
    quest = 94758, -- 93947
    rewards = {Achievement({id = 62130, criteria = 111883})}
}) -- Lotus Darkblossom

map.nodes[55727945] = Rare({
    id = 256926,
    quest = 94761, -- 93934
    rewards = {
        Achievement({id = 62130, criteria = 111884}),
        Transmog({item = 267136, type = L['cloth']}) -- Queen's Tentacle Sash
    }
}) -- Queen o' War -- Crown of the Lost Queen

map.nodes[48815326] = Rare({
    id = 256808,
    quest = nil, -- 93895
    rewards = {Achievement({id = 62130, criteria = 111885})}
}) -- Ravengerus

slr.nodes[46334094] = Rare({
    id = 257027,
    quest = 94762, -- 93953
    rewards = {Achievement({id = 62130, criteria = 111886})},
    parent = map.id
}) -- Rakshur the Bonegrinder

map.nodes[35495023] = Rare({
    id = 256770,
    location = L['in_small_cave'],
    quest = 94752, -- 93884
    rewards = {Achievement({id = 62130, criteria = 111887})},
    pois = {POI({35604940})}
}) -- Bilemaw the Gluttonous

slr.nodes[39049231] = Rare({ -- wowhead beta coords
    id = 245182,
    quest = 94754, -- 91047
    rewards = {Achievement({id = 62130, criteria = 111888})},
    pois = {
        Path({
            39319097, 39099054, 38559100, 38649176, 39049231, 39499288,
            39649360, 39759435, 40069375, 39819309, 39579242, 39429173, 39319097
        })
    },
    parent = map.id
}) -- Eruundi

map.nodes[40174130] = Rare({
    id = 245044,
    quest = nil, -- 91051
    rewards = {Achievement({id = 62130, criteria = 111889})},
    parent = slr.id
}) -- Nightbrood

map.nodes[53946272] = Rare({
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

map.nodes[49947936] = Treasure({
    quest = 93237,
    location = L['in_small_cave'],
    rewards = {
        Achievement({id = 62126, criteria = 111863}),
        Mount({item = 257446, id = 2790}) -- Insatiable Shredclaw
    },
    pois = {POI({48967833})}
}) -- Final Clutch of Predaxas

map.nodes[25766728] = Treasure({
    requires = ns.requirement.Item(251519), -- Key of Fused Darkness
    quest = nil,
    rewards = {Achievement({id = 62126, criteria = 111864})},
    pois = {
        POI({25746749}), -- Potion of Dissociation
        POI({25976867}) -- Key of Fused Darkness
    }
}) -- Void-Shielded Tomb
-- Required Level 90

map.nodes[64537547] = Treasure({
    quest = 93431,
    note = L['bloody_sack_note'], -- Collect Dripping Meat from nearby bone piles
    rewards = {
        Achievement({id = 62126, criteria = 111866}), Toy({item = 267139}) -- Hungry Black Hole
    }
}) -- Bloody Sack

map.nodes[53364266] = Treasure({
    quest = 93840,
    rewards = {Achievement({id = 62126, criteria = 111867})}
}) -- Malignant Chest (93812,93813,93814,93815 triggers from the maligant nodes around the cave that you need to activate)

slr.nodes[53133228] = Treasure({
    quest = 93996, -- 94005 after you pull out the stash
    rewards = {Achievement({id = 62126, criteria = 111868})},
    parent = map.id
}) -- Stellar Stash --rewards [Void Elf Round Table] housing decor

lop_b.nodes[23748369] = Treasure({
    quest = 94454,
    rewards = {
        Achievement({id = 62126, criteria = 111869}), Toy({item = 250319}) -- Shadowgraft
    }
}) -- Forgotten Researcher's Cache

map.nodes[47937851] = Treasure({
    quest = 94454,
    location = L['in_cave'],
    rewards = {
        Achievement({id = 62126, criteria = 111869}), Toy({item = 250319}) -- Shadowgraft
    }
}) -- Forgotten Researcher's Cache -- Entrance
-- TODO: recheck on live servers, beta has no translation to main map coords for this map

map.nodes[20004000] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 62126, criteria = 111870})}
}) -- Scout's Pack

map.nodes[55377542] = Treasure({
    quest = 93553,
    rewards = {
        Achievement({id = 62126, criteria = 111871}),
        Transmog({item = 266075, type = L['cosmetic']}) -- Harpoon of Extirpation
    }
}) -- Embedded Spear

map.nodes[31504451] = Treasure({
    quest = 93500,
    rewards = {
        Achievement({id = 62126, criteria = 111872}),
        Pet({item = 266076, id = 4881})
    }
}) -- Quivering Egg

map.nodes[28337290] = Treasure({
    quest = 93569,
    note = L['exaliburn_note'], -- Use Potion of Unquestionable Strength nearby
    rewards = {
        Achievement({id = 62126, criteria = 111873}),
        Transmog({item = 266099, type = L['cosmetic']}) -- Extinguished Exaliburn
    }
}) -- Exaliburn

map.nodes[35774141] = Treasure({
    quest = 93496,
    rewards = {
        Achievement({id = 62126, criteria = 111874}),
        Transmog({item = 266100, type = L['cosmetic']}) -- Barbed Riftwalker Dirk
    },
    parent = slr.id
}) -- Discarded Energy Pike

map.nodes[43018194] = Treasure({
    quest = 93493,
    rewards = {
        Achievement({id = 62126, criteria = 111875}),
        Transmog({item = 266098, type = L['cosmetic']}) -- Faindel's Longbow
    }
}) -- Faindel's Quiver

map.nodes[37696976] = Treasure({
    quest = 93467,
    location = L['in_small_cave'],
    rewards = {
        Achievement({id = 62126, criteria = 111876}),
        Pet({item = 264303, id = 4972}) -- Willie
    },
    pois = {POI({38066877})}
}) -- Half-Digested Viscera

map.nodes[24827001] = Treasure({
    quest = 94742,
    label = 'Hoarders Corpse?', -- todo: needs recheck
    rewards = {
        Item({item = 246951}) -- Stormarion Core
    }
})

-- 64457565 Oceanic Vortex
-- fishing pool, looted Abundant Token (currency 3376)

---------------------------- MIDNIGHT LORE HUNTER -----------------------------

map.nodes[40485863] = LoreObject({
    quest = 94395,
    rewards = {
        Achievement({id = 62104, criteria = 111836}),
        Reputation({id = 2699, gain = 275, quest = 94395})
    }
}) -- Abandoned Telescope

map.nodes[27835402] = LoreObject({
    quest = 94398,
    rewards = {
        Achievement({id = 62104, criteria = 111838}),
        Reputation({id = 2699, gain = 275, quest = 94398})
    }
}) -- Shadowgraft Harness

map.nodes[63427822] = LoreObject({
    quest = 94389,
    rewards = {
        Achievement({id = 62104, criteria = 111834}),
        Reputation({id = 2699, gain = 275, quest = 94389})
    }
}) -- Void Armor

map.nodes[28156593] = LoreObject({
    quest = 94397,
    rewards = {
        Achievement({id = 62104, criteria = 111837}),
        Reputation({id = 2699, gain = 275, quest = 94397})
    }
}) -- Tainted Page/Tattered Page -- review

map.nodes[28156593] = LoreObject({
    quest = 94394,
    rewards = {
        Achievement({id = 62104, criteria = 111835}),
        Reputation({id = 2699, gain = 275, quest = 94394})
    }
}) -- Ancient Tablet

-------------------------------------------------------------------------------
------------------------- MIDNIGHT: THE HIGHEST PEAKS -------------------------
-------------------------------------------------------------------------------

map.nodes[39686116] = Telescope({quest = 94551})
map.nodes[36504430] = Telescope({quest = 94552})
map.nodes[55466717] = Telescope({quest = 94553})
map.nodes[41767022] = Telescope({quest = 94554})
map.nodes[37815497] = Telescope({quest = 94555})

-------------------------------------------------------------------------------
----------------------------- PROFESSION TREASURES ----------------------------
-------------------------------------------------------------------------------

slr.nodes[41964062] = PT.Alchemy({quest = 89112, id = 238533, parent = map.id})
-------------------------------------------------------------------------------
---------------------------- VOIDSTORM GLYPH HUNTER ---------------------------
-------------------------------------------------------------------------------

map.nodes[51356271] = SkyridingGlyph({
    rewards = {Achievement({id = 61583, criteria = 110372})}
}) -- The Voidspire, Voidstorm

map.nodes[37164996] = SkyridingGlyph({
    rewards = {Achievement({id = 61583, criteria = 110373})}
}) -- The Molt, Voidstorm

map.nodes[35676109] = SkyridingGlyph({
    rewards = {Achievement({id = 61583, criteria = 110374})}
}) -- The Ingress, Voidstorm

map.nodes[39907098] = SkyridingGlyph({
    rewards = {Achievement({id = 61583, criteria = 110375})}
}) -- The Bladeburrows, Voidstorm

map.nodes[54954554] = SkyridingGlyph({
    rewards = {Achievement({id = 61583, criteria = 110376})}
}) -- Gnawing Reach, Voidstorm

slr.nodes[36224497] = SkyridingGlyph({
    parent = map.id,
    rewards = {Achievement({id = 61583, criteria = 110377})}
}) -- Hanaar Outpost, Voidstorm

map.nodes[38917611] = SkyridingGlyph({
    rewards = {Achievement({id = 61583, criteria = 110378})}
}) -- Ethereum Refinery, Voidstorm

map.nodes[45305226] = SkyridingGlyph({
    rewards = {Achievement({id = 61583, criteria = 110379})}
}) -- Master's Perch, Voidstorm

map.nodes[65087193] = SkyridingGlyph({
    rewards = {Achievement({id = 61583, criteria = 110380})}
}) -- Obscurion Citadel, Voidstorm

map.nodes[36053726] = SkyridingGlyph({
    rewards = {Achievement({id = 61583, criteria = 110381})}
}) -- Shadowguard Point, Voidstorm

map.nodes[49278746] = SkyridingGlyph({
    rewards = {Achievement({id = 61583, criteria = 110382})}
}) -- The Gorging Pit, Voidstorm

