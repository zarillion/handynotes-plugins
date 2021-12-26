-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...

local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Rare = ns.node.Rare
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Transmog = ns.reward.Transmog

local Arrow = ns.poi.Arrow
local Path = ns.poi.Path
local POI = ns.poi.POI

-------------------------------------------------------------------------------

local map = Map({id = 1970, settings = true})
local microd = Map({id = 2030}) -- name pending

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[64743369] = Rare({
    id = 179006,
    quest = nil,
    rewards = {
        Achievement({id = 15391, criteria = 52977}) -- Adventurer of Zereth Mortis
    }
}) -- Akkaris

map.nodes[49566751] = Rare({
    id = 183596,
    quest = nil,
    rewards = {
        Achievement({id = 15391, criteria = 52978}) -- Adventurer of Zereth Mortis
    }
}) -- Chitali the Eldest

map.nodes[47486228] = Rare({
    id = 183953,
    quest = 65273,
    note = L['corrupted_architect_note'],
    rewards = {
        Achievement({id = 15391, criteria = 53047}) -- Adventurer of Zereth Mortis
    }
}) -- Corrupted Architect

map.nodes[53634435] = Rare({
    id = 180917,
    quest = 64716,
    rewards = {
        Achievement({id = 15391, criteria = 52974}) -- Adventurer of Zereth Mortis
    }
}) -- Destabilized Core

map.nodes[47474516] = Rare({
    id = 184409,
    quest = nil,
    rewards = {
        Achievement({id = 15391, criteria = 52982}) -- Adventurer of Zereth Mortis
    }
}) -- Euv'ouk

map.nodes[61826060] = Rare({
    id = 178229,
    quest = 65557,
    rewards = {
        Achievement({id = 15391, criteria = 52973}) -- Adventurer of Zereth Mortis
    }
}) -- Feasting

map.nodes[69073662] = Rare({
    id = 180924,
    quest = 64719,
    note = L['garudeon_note'],
    rewards = {
        Achievement({id = 15391, criteria = 53025}), -- Adventurer of Zereth Mortis
        Transmog({item = 189937, slot = L['cloak']}) -- Garudeon's Blanket of Feathers
    },
    pois = {
        POI({68333834, 68153594, 66343802, 67553892, 67554019}) -- Energizing Leporid
    }
}) -- Garudeon

map.nodes[59862111] = Rare({
    id = 182318,
    quest = nil,
    rewards = {
        Achievement({id = 15391, criteria = 52985}) -- Adventurer of Zereth Mortis
    }
}) -- General Zarathura

map.nodes[53089305] = Rare({
    id = 178778,
    quest = nil,
    rewards = {
        Achievement({id = 15391, criteria = 52971}) -- Adventurer of Zereth Mortis
    }
}) -- Gluttonous Overgrowth

map.nodes[52612503] = Rare({
    id = 178563,
    quest = nil,
    rewards = {
        Achievement({id = 15391, criteria = 52984}) -- Adventurer of Zereth Mortis
    }
}) -- Hadeon the Stonebreaker

map.nodes[52287541] = Rare({
    id = 180978,
    quest = nil,
    rewards = {
        Achievement({id = 15391, criteria = 52990}) -- Adventurer of Zereth Mortis
    }
}) -- Hirukon

microd.nodes[38100710] = Rare({
    id = 183814,
    parent = map.id,
    quest = nil,
    rewards = {
        -- Achievement?
    }
}) -- Interred Colossus

map.nodes[54083493] = Rare({
    id = 178508,
    quest = 65547,
    rewards = {
        Achievement({id = 15391, criteria = 53020}) -- Adventurer of Zereth Mortis
    },
    pois = {POI({55963261})} -- Cave entrance
}) -- Mother Phestis

map.nodes[57998454] = Rare({
    id = 179043,
    quest = nil,
    rewards = {
        Achievement({id = 15391, criteria = 52981}) -- Adventurer of Zereth Mortis
    },
    pois = {Path({57998454, 57968395, 58558374, 58808289})}
}) -- Orixal

map.nodes[43308762] = Rare({
    id = 183746,
    quest = nil,
    rewards = {
        Achievement({id = 15391, criteria = 52972}) -- Adventurer of Zereth Mortis
    }
}) -- Otiosen

map.nodes[38872762] = Rare({
    id = 180746,
    quest = 64668,
    note = L['protector_first_ones_note'],
    rewards = {
        Achievement({id = 15391, criteria = 52989}), -- Adventurer of Zereth Mortis
        Transmog({item = 189984, slot = L['cloak']}) -- Drape of Idolized Symmetry
    }
}) -- Protector of the First Ones

map.nodes[53384707] = Rare({
    id = 183927,
    quest = 65574,
    rewards = {
        Achievement({id = 15391, criteria = 52975}) -- Adventurer of Zereth Mortis
    }
}) -- Sand Matriarch Ileus

map.nodes[42302099] = Rare({
    id = 184413,
    quest = 65549,
    rewards = {
        Achievement({id = 15391, criteria = 52988}), -- Adventurer of Zereth Mortis
        Transmog({item = 189908, slot = L['cloth']}) -- Gorger's Leggings of Famine
    }
}) -- Shifting Stargorger

map.nodes[35877121] = Rare({
    id = 183722,
    quest = 65240,
    rewards = {
        Achievement({id = 15391, criteria = 52980}) -- Adventurer of Zereth Mortis
    }
}) -- Sorranos

map.nodes[49783914] = Rare({
    id = 183925,
    quest = 65272,
    rewards = {
        Achievement({id = 15391, criteria = 52979}) -- Adventurer of Zereth Mortis
    }
}) -- Tahkwitz

map.nodes[54507344] = Rare({
    id = 181249,
    quest = 65550,
    rewards = {
        Achievement({id = 15391, criteria = 52987}), -- Adventurer of Zereth Mortis
        Transmog({item = 190055, slot = L['offhand']}) -- Coalescing Energy Implement
    }
}) -- Tethos

map.nodes[39555737] = Rare({
    id = 181360,
    quest = 65239,
    rewards = {
        Achievement({id = 15391, criteria = 53049}) -- Adventurer of Zereth Mortis
    }
}) -- Vexis

map.nodes[47044698] = Rare({
    id = 183747,
    quest = 65584,
    rewards = {
        Achievement({id = 15391, criteria = 52983}), -- Adventurer of Zereth Mortis
        Transmog({item = 189901, slot = L['cloth']}) -- Vitiane's Defiled Vestment
    }
}) -- Vitiane

map.nodes[64054975] = Rare({
    id = 183737,
    quest = 65241,
    rewards = {
        Achievement({id = 15391, criteria = 52976}) -- Adventurer of Zereth Mortis
    }
}) -- Xy'rath the Covetous

map.nodes[43513294] = Rare({
    id = 183764,
    quest = 65251,
    rewards = {
        Achievement({id = 15391, criteria = 53044}) -- Adventurer of Zereth Mortis
    }
}) -- Zatojin

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

-- Unknown/Mystery Treasures:
-- 42025181 Provis Cache (requires Provis Cache Key)
-- 60011798 Domination Cache (second one? this one requires Dominance Key)
-- 60022583 Sandworn Chest (quest=65611) (requires 5x 190198 => 1x 190197) (dropped 5x 190189)

-- Pocopoc Puzzle Treasures:
-- 39184665 Fugueal Cache (quest=65322)
-- 43624033 Mezzonic Cache (quest=65320)
-- 55675002 Mezzonic Cache (quest=65091)
-- 54264279 Glissandian Cache (quest=65092)

map.nodes[56746416] = Treasure({
    quest = nil,
    rewards = {
        Achievement({id = 15331, criteria = 53054}) -- Treasures of Zereth Mortis
    }
}) -- Crushed Supply Crate

map.nodes[38253724] = Treasure({
    quest = 64667,
    rewards = {
        Achievement({id = 15331, criteria = 52965}) -- Treasures of Zereth Mortis
    }
}) -- Damaged Jiro Stash

map.nodes[51550989] = Treasure({
    quest = 65487,
    rewards = {
        Achievement({id = 15331, criteria = 53016}) -- Treasures of Zereth Mortis
    }
}) -- Fallen Vault

map.nodes[38977321] = Treasure({
    quest = 65480,
    rewards = {
        Achievement({id = 15331, criteria = 53017}) -- Treasures of Zereth Mortis
    }
}) -- Gnawed Valise

map.nodes[58847706] = Treasure({
    quest = 64667,
    rewards = {
        Achievement({id = 15331, criteria = 52887}) -- Treasures of Zereth Mortis
    },
    pois = {POI({59238144})} -- Cave entrance
}) -- Library Vault (Lost Scroll)

map.nodes[60593053] = Treasure({
    quest = 65441,
    rewards = {
        Achievement({id = 15331, criteria = 52969}) -- Treasures of Zereth Mortis
    }
}) -- Mawsworn Cache

map.nodes[53557223] = Treasure({
    quest = 65522,
    note = L['mistaken_ovoid_note'],
    rewards = {
        Achievement({id = 15331, criteria = 53060}) -- Treasures of Zereth Mortis
    }
}) -- Mistaken Ovoid

map.nodes[35244411] = Treasure({
    quest = 65536,
    rewards = {
        Achievement({id = 15331, criteria = 53056}) -- Treasures of Zereth Mortis
    }
}) -- Overgrown Protofruit

map.nodes[52577147] = Treasure({
    quest = 65546,
    rewards = {
        Achievement({id = 15331, criteria = 53067}) -- Treasures of Zereth Mortis
    }
}) -- Protoflora Harvester

map.nodes[46643094] = Treasure({
    quest = 65540,
    rewards = {
        Achievement({id = 15331, criteria = 53063}) -- Treasures of Zereth Mortis
    }
}) -- Protomineral Extractor

map.nodes[37906520] = Treasure({
    quest = 65447,
    note = L['stolen_relic_note'],
    rewards = {
        Achievement({id = 15331, criteria = 52970}) -- Treasures of Zereth Mortis
    }
}) -- Stolen Relic

map.nodes[34046764] = Treasure({
    quest = 65543,
    rewards = {
        Achievement({id = 15331, criteria = 53065}) -- Treasures of Zereth Mortis
    },
    pois = {Path({34046764, 33636720, 33566585, 33466475})}
}) -- Stolen Scroll

-- Not going to give answer in the note for now, instead I explain how to solve it
-- Solution: 183951 (se) => 183950 (nw) => 183948 (sw) => 183952 (ne)
map.nodes[52596297] = Treasure({
    quest = 65270,
    note = L['symphonic_vault_note'],
    rewards = {
        Achievement({id = 15331, criteria = 52968}) -- Treasures of Zereth Mortis
    }
}) -- Symphonic Vault

microd.nodes[51618820] = Treasure({
    quest = 65175,
    parent = map.id,
    note = L['template_archive_note'],
    rewards = {
        Achievement({id = 15331, criteria = 52966}) -- Treasures of Zereth Mortis
    },
    pois = {POI({72024882}), Arrow({72024882, 63855973})}
}) -- Template Archive

-------------------------------------------------------------------------------

map.nodes[60022583] = Treasure({
    quest = 65611,
    requires = ns.requirement.Item(190197), -- Sandworn Chest Key
    label = 'Sandworn Chest',
    note = 'Loot 5x {item:190198} from mobs in the area to construct the {item:190197}.',
    rewards = {
        ns.reward.Item({item = 190189, note = '5x'}) -- Sandworn Relic
    }
}) -- Sandworn Chest (not localizing until purpose is known)

-------------------------------------------------------------------------------
----------------------------------- CACHES ------------------------------------
-------------------------------------------------------------------------------

-- Treasures that give 2x cyphers and flip no quest id
local Cache = Class('Cache', ns.node.Node, {
    group = ns.groups.ZERETH_CACHE,
    icon = 'chest_gy',
    scale = 0.8,
    fgroup = 'zereth_cache'
})

map.nodes[59106467] = Cache({label = L['cache_avian_nest']})

map.nodes[37853246] = Cache({label = L['cache_cypher_bound']})
map.nodes[38113112] = Cache({label = L['cache_cypher_bound']})
map.nodes[39835646] = Cache({label = L['cache_cypher_bound']})
map.nodes[42792135] = Cache({label = L['cache_cypher_bound']})
map.nodes[44815079] = Cache({label = L['cache_cypher_bound']})
map.nodes[52045296] = Cache({label = L['cache_cypher_bound']})
map.nodes[52075444] = Cache({labeel = L['cache_cypher_bound']})
map.nodes[54027253] = Cache({label = L['cache_cypher_bound']})
map.nodes[54326958] = Cache({label = L['cache_cypher_bound']})
map.nodes[59326420] = Cache({label = L['cache_cypher_bound']})
map.nodes[60866960] = Cache({label = L['cache_cypher_bound']})
map.nodes[65553675] = Cache({label = L['cache_cypher_bound']})
map.nodes[66843569] = Cache({label = L['cache_cypher_bound']})

map.nodes[48834480] = Cache({label = L['cache_discarded_automa']})
map.nodes[58966093] = Cache({label = L['cache_discarded_automa']})
map.nodes[65764042] = Cache({label = L['cache_discarded_automa']})

map.nodes[56542540] = Cache({label = L['cache_forgotten_vault']})
map.nodes[69083683] = Cache({label = L['cache_forgotten_vault']})

map.nodes[47394352] = Cache({label = L['cache_mawsworn_supply']})
map.nodes[59841661] = Cache({label = L['cache_mawsworn_supply']})
map.nodes[62952498] = Cache({label = L['cache_mawsworn_supply']})

map.nodes[54253357] = Cache({label = L['cache_tarachnid_eggs']})

-------------------------------------------------------------------------------
-------------------------------- MISCELLANEOUS --------------------------------
-------------------------------------------------------------------------------

-- 68695320 Interior Locus Arrangement (quest=65330)
