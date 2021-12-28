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
local microd = Map({id = 2030}) -- Nexus of Actualization

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[64743369] = Rare({
    id = 179006,
    quest = 65549,
    rewards = {
        Achievement({id = 15391, criteria = 52977}) -- Adventurer of Zereth Mortis
    }
}) -- Akkaris

map.nodes[49566751] = Rare({
    id = 183596,
    quest = 65553,
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
        Achievement({id = 15391, criteria = 52974}), -- Adventurer of Zereth Mortis
        Transmog({item = 189985, slot = L['cloak']}) -- Curtain of Untold Realms
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

map.nodes[64585865] = Rare({
    id = 183646,
    quest = 65544,
    note = L['furidian_note'],
    rewards = {
        Achievement({id = 15391, criteria = 53031}), -- Adventurer of Zereth Mortis
        Transmog({item = 190004, slot = L['dagger']}), -- Furidian's Inscribed Barb
        Transmog({item = 189963, slot = L['plate']}) -- Sculpted Ouroboros Clasp
    }
}) -- Furidian

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
    quest = 65583,
    rewards = {
        Achievement({id = 15391, criteria = 52985}), -- Adventurer of Zereth Mortis
        Transmog({item = 189968, slot = L['leather']}) -- Dreadlord General's Tunic
    }
}) -- General Zarathura

map.nodes[53089305] = Rare({
    id = 178778,
    quest = nil,
    rewards = {
        Achievement({id = 15391, criteria = 52971}) -- Adventurer of Zereth Mortis
    }
}) -- Gluttonous Overgrowth

map.nodes[80384706] = Rare({
    id = 178963,
    quest = 63988,
    rewards = {
        Achievement({id = 15391, criteria = 52986}), -- Adventurer of Zereth Mortis
        Transmog({item = 190001, slot = L['shield']}) -- Gorkek's Glistening Throatguard
    },
    pois = {Path({80324594, 80384706, 80844886})}
}) -- Gorkek

map.nodes[52612503] = Rare({
    id = 178563,
    quest = nil,
    rewards = {
        Achievement({id = 15391, criteria = 52984}) -- Adventurer of Zereth Mortis
    }
}) -- Hadeon the Stonebreaker

-- Probably requires activation of Coreless Helicid (181558) 52617494
map.nodes[52287541] = Rare({
    id = 180978,
    quest = nil,
    rewards = {
        Achievement({id = 15391, criteria = 52990}) -- Adventurer of Zereth Mortis
    }
}) -- Hirukon

map.nodes[58654039] = Rare({
    id = 183814,
    quest = 65257,
    note = L['in_small_cave'],
    rewards = {
        Achievement({id = 15391, criteria = 53046}), -- Adventurer of Zereth Mortis
        Transmog({item = 189909, slot = L['cloth']}) -- Pantaloons of Cold Recesses
    }
}) -- Otaris the Provoked

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
    quest = 65582,
    rewards = {
        Achievement({id = 15391, criteria = 52981}), -- Adventurer of Zereth Mortis
        Transmog({item = 189912, slot = L['cloth']}), -- Orixal's Moist Sash
        Transmog({item = 189952, slot = L['plate']}) -- Celestial Mollusk's Chestshell
    },
    pois = {Path({57998454, 57968395, 58558374, 58808289})}
}) -- Orixal

map.nodes[43308762] = Rare({
    id = 183746,
    quest = 65556,
    rewards = {
        Achievement({id = 15391, criteria = 52972}), -- Adventurer of Zereth Mortis
        Transmog({item = 189995, slot = L['1h_mace']}) -- Builder's Alignment Hammer
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

map.nodes[43947530] = Rare({
    id = 183516,
    quest = 65580,
    note = L['the_engulfer_note'],
    rewards = {
        Achievement({id = 15391, criteria = 53050}), -- Adventurer of Zereth Mortis
        Transmog({item = 190006, slot = L['1h_sword']}) -- Anima-Siphoning Sword
    }
}) -- The Engulfer

map.nodes[58186837] = Rare({
    id = 183748,
    quest = 65551,
    rewards = {
        Achievement({id = 15391, criteria = 53050}), -- Adventurer of Zereth Mortis
        Transmog({item = 190056, slot = L['offhand']}) -- Enlightened Explorer's Lantern
    }
}) -- The Unbroken

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
    note = L['zatojin_note'],
    rewards = {
        Achievement({id = 15391, criteria = 53044}), -- Adventurer of Zereth Mortis
        Transmog({item = 189902, slot = L['cloth']}), -- Hapless Traveler's Treads
        Transmog({item = 189924, slot = L['leather']}) -- Buzzing Predator's Legs
    }
}) -- Zatojin

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

-- Unknown/Mystery Treasures:
-- 42025181 Provis Cache (requires Provis Cache Key)

map.nodes[61163709] = Treasure({
    quest = nil,
    rewards = {
        Achievement({id = 15331, criteria = 53053}) -- Treasures of Zereth Mortis
    }
}) -- Architect's Reserve

-- map.nodes[] = Treasure({
--     quest = nil,
--     rewards = {
--         Achievement({id = 15331, criteria = 53071}) -- Treasures of Zereth Mortis
--     }
-- }) -- Bushel of Progenitor Produce

map.nodes[56746416] = Treasure({
    quest = 65489,
    note = L['crushed_crate_note'],
    rewards = {
        Achievement({id = 15331, criteria = 53054}) -- Treasures of Zereth Mortis
    },
    pois = {POI({57656236})} -- Repair Tool
}) -- Crushed Supply Crate

map.nodes[38253724] = Treasure({
    quest = 64667,
    rewards = {
        Achievement({id = 15331, criteria = 52965}) -- Treasures of Zereth Mortis
    }
}) -- Damaged Jiro Stash

map.nodes[60011798] = Treasure({
    quest = nil,
    requires = ns.requirement.Item(189704),
    rewards = {
        Achievement({id = 15331, criteria = 53018}) -- Treasures of Zereth Mortis
    }
}) -- Domination Cache

-- Probably requires activation of Coreless Aurelid (185282) 34497053
map.nodes[35167020] = Treasure({
    quest = nil,
    rewards = {
        Achievement({id = 15331, criteria = 53061}) -- Treasures of Zereth Mortis
    }
}) -- Drowned Broker Supplies

map.nodes[51550989] = Treasure({
    quest = 65487,
    rewards = {
        Achievement({id = 15331, criteria = 53016}) -- Treasures of Zereth Mortis
    }
}) -- Fallen Vault

map.nodes[49758723] = Treasure({
    quest = 65503,
    note = L['sphere_treasure_note'],
    rewards = {
        Achievement({id = 15331, criteria = 53052}) -- Treasures of Zereth Mortis
    }
}) -- Filched Artifact

map.nodes[67016935] = Treasure({
    quest = nil,
    note = L['forgotten_protovault_note'],
    rewards = {
        Achievement({id = 15331, criteria = 52967}) -- Treasures of Zereth Mortis
    }
}) -- Forgotten Proto-Vault

map.nodes[77535820] = Treasure({
    quest = 65565,
    rewards = {
        Achievement({id = 15331, criteria = 53068}) -- Treasures of Zereth Mortis
    }
}) -- Fractal Sealed Vault

map.nodes[38977321] = Treasure({
    quest = 65480,
    rewards = {
        Achievement({id = 15331, criteria = 53017}) -- Treasures of Zereth Mortis
    }
}) -- Gnawed Valise

-- map.nodes[] = Treasure({
--     quest = nil,
--     rewards = {
--         Achievement({id = 15331, criteria = 53066}) -- Treasures of Zereth Mortis
--     }
-- }) -- Grateful Boon

map.nodes[58847706] = Treasure({
    quest = 65173,
    note = L['library_vault_note'],
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

map.nodes[34815604] = Treasure({
    quest = 65537,
    rewards = {
        Achievement({id = 15331, criteria = 53062}) -- Treasures of Zereth Mortis
    }
}) -- Offering to the First Ones

map.nodes[35244411] = Treasure({
    quest = 65536,
    rewards = {
        Achievement({id = 15331, criteria = 53056}) -- Treasures of Zereth Mortis
    }
}) -- Overgrown Protofruit

map.nodes[60874295] = Treasure({
    quest = 65542,
    rewards = {
        Achievement({id = 15331, criteria = 53064}) -- Treasures of Zereth Mortis
    }
}) -- Pilfered Curio

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

-- map.nodes[] = Treasure({
--     quest = nil,
--     rewards = {
--         Achievement({id = 15331, criteria = 53051}) -- Treasures of Zereth Mortis
--     }
-- }) -- Pulp-Covered Relic

map.nodes[37906520] = Treasure({
    quest = 65447,
    note = L['sphere_treasure_note'],
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

-- map.nodes[] = Treasure({
--     quest = nil,
--     rewards = {
--         Achievement({id = 15331, criteria = 52964}) -- Treasures of Zereth Mortis
--     }
-- }) -- Submerged Chest

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

local function GetLockStatus()
    local count = 0
    for i, quest in ipairs {65589, 65590, 65591, 65592} do
        if C_QuestLog.IsQuestFlaggedCompleted(quest) then
            count = count + 1
        end
    end
    return ns.status.Gray(tostring(count) .. '/4')
end

map.nodes[51687956] = Class('Foliage', Treasure,
    {getters = {rlabel = GetLockStatus}})({
    quest = 65572,
    note = L['undulating_foliage_note'],
    rewards = {
        Achievement({id = 15331, criteria = 53070}) -- Treasures of Zereth Mortis
    },
    pois = {
        POI({50017671, 50988209, 52498344, 53198092}) -- Teleporter Locks
    }
}) -- Undulating Foliage

-- map.nodes[] = Treasure({
--     quest = nil,
--     rewards = {
--         Achievement({id = 15331, criteria = 53069}) -- Treasures of Zereth Mortis
--     }
-- }) -- Unpollinated Bud

-------------------------------------------------------------------------------

local SANDWORN = Treasure({
    quest = 65611,
    requires = ns.requirement.Item(190197), -- Sandworn Chest Key
    label = 'Sandworn Chest',
    note = 'Loot 5x {item:190198} from mobs in the area to construct the {item:190197}.',
    rewards = {
        ns.reward.Item({item = 190189, note = '5x'}) -- Sandworn Relic
    }
}) -- Sandworn Chest (not localizing until purpose is known)

map.nodes[60022583] = SANDWORN
map.nodes[60863786] = SANDWORN

-------------------------------------------------------------------------------
-------------------------------- CYPHER CACHES --------------------------------
-------------------------------------------------------------------------------

-- quest=65115?

-- Treasures that give 2x cyphers and flip no quest id
local Cache = Class('CypherCache', ns.node.Node, {
    group = ns.groups.ZERETH_CACHE,
    icon = 'chest_gy',
    scale = 0.8,
    fgroup = 'zereth_cache'
})

map.nodes[40455663] = Cache({label = L['cache_avian_nest']})
map.nodes[42327311] = Cache({label = L['cache_avian_nest']})
map.nodes[43274369] = Cache({label = L['cache_avian_nest']})
map.nodes[48196646] = Cache({label = L['cache_avian_nest']})
map.nodes[51106454] = Cache({label = L['cache_avian_nest']})
map.nodes[54298169] = Cache({label = L['cache_avian_nest']})
map.nodes[55185594] = Cache({label = L['cache_avian_nest']})
map.nodes[56647484] = Cache({label = L['cache_avian_nest']})
map.nodes[59106467] = Cache({label = L['cache_avian_nest']})
map.nodes[76305020] = Cache({label = L['cache_avian_nest']})
map.nodes[76895037] = Cache({label = L['cache_avian_nest']})

map.nodes[37853246] = Cache({label = L['cache_cypher_bound']})
map.nodes[38044543] = Cache({label = L['cache_cypher_bound']})
map.nodes[38113112] = Cache({label = L['cache_cypher_bound']})
map.nodes[38464188] = Cache({label = L['cache_cypher_bound']})
map.nodes[39154226] = Cache({label = L['cache_cypher_bound']})
map.nodes[39835646] = Cache({label = L['cache_cypher_bound']})
map.nodes[42627646] = Cache({label = L['cache_cypher_bound']})
map.nodes[42792135] = Cache({label = L['cache_cypher_bound']})
map.nodes[43158972] = Cache({label = L['cache_cypher_bound']})
map.nodes[44682237] = Cache({label = L['cache_cypher_bound']})
map.nodes[44815079] = Cache({label = L['cache_cypher_bound']})
map.nodes[45393141] = Cache({label = L['cache_cypher_bound']})
map.nodes[47044529] = Cache({label = L['cache_cypher_bound']})
map.nodes[47702634] = Cache({label = L['cache_cypher_bound']})
map.nodes[47766683] = Cache({label = L['cache_cypher_bound']})
map.nodes[48976532] = Cache({label = L['cache_cypher_bound']})
map.nodes[48993205] = Cache({label = L['cache_cypher_bound']})
map.nodes[49606573] = Cache({label = L['cache_cypher_bound']})
map.nodes[49970368] = Cache({label = L['cache_cypher_bound']})
map.nodes[50544680] = Cache({label = L['cache_cypher_bound']})
map.nodes[51914364] = Cache({label = L['cache_cypher_bound']})
map.nodes[52045296] = Cache({label = L['cache_cypher_bound']})
map.nodes[52075444] = Cache({label = L['cache_cypher_bound']})
map.nodes[52456163] = Cache({label = L['cache_cypher_bound']})
map.nodes[52707519] = Cache({label = L['cache_cypher_bound']})
map.nodes[53066373] = Cache({label = L['cache_cypher_bound']})
map.nodes[53469408] = Cache({label = L['cache_cypher_bound']})
map.nodes[54027253] = Cache({label = L['cache_cypher_bound']})
map.nodes[54247629] = Cache({label = L['cache_cypher_bound']})
map.nodes[54326958] = Cache({label = L['cache_cypher_bound']})
map.nodes[57198183] = Cache({label = L['cache_cypher_bound']})
map.nodes[58462026] = Cache({label = L['cache_cypher_bound']})
map.nodes[59326420] = Cache({label = L['cache_cypher_bound']})
map.nodes[59777940] = Cache({label = L['cache_cypher_bound']})
map.nodes[60866960] = Cache({label = L['cache_cypher_bound']})
map.nodes[61444816] = Cache({label = L['cache_cypher_bound']})
map.nodes[62931954] = Cache({label = L['cache_cypher_bound']})
map.nodes[65553675] = Cache({label = L['cache_cypher_bound']})
map.nodes[66843569] = Cache({label = L['cache_cypher_bound']})
map.nodes[77574508] = Cache({label = L['cache_cypher_bound']})
map.nodes[77934573] = Cache({label = L['cache_cypher_bound']})

microd.nodes[62764399] = Cache({
    label = L['cache_cypher_bound'],
    parent = map.id
})

map.nodes[40657591] = Cache({label = L['cache_discarded_automa']})
map.nodes[44089028] = Cache({label = L['cache_discarded_automa']})
map.nodes[48834480] = Cache({label = L['cache_discarded_automa']})
map.nodes[58966093] = Cache({label = L['cache_discarded_automa']})
map.nodes[59625113] = Cache({label = L['cache_discarded_automa']})
map.nodes[65764042] = Cache({label = L['cache_discarded_automa']})

map.nodes[36707142] = Cache({label = L['cache_forgotten_vault']})
map.nodes[46459579] = Cache({label = L['cache_forgotten_vault']})
map.nodes[46854450] = Cache({label = L['cache_forgotten_vault']})
map.nodes[48891010] = Cache({label = L['cache_forgotten_vault']})
map.nodes[49567522] = Cache({label = L['cache_forgotten_vault']})
map.nodes[50559346] = Cache({label = L['cache_forgotten_vault']})
map.nodes[51177705] = Cache({label = L['cache_forgotten_vault']})
map.nodes[52002941] = Cache({label = L['cache_forgotten_vault']})
map.nodes[52315560] = Cache({label = L['cache_forgotten_vault']})
map.nodes[53875975] = Cache({label = L['cache_forgotten_vault']})
map.nodes[56542540] = Cache({label = L['cache_forgotten_vault']})
map.nodes[58585707] = Cache({label = L['cache_forgotten_vault']})
map.nodes[65236419] = Cache({label = L['cache_forgotten_vault']})
map.nodes[69083683] = Cache({label = L['cache_forgotten_vault']})
map.nodes[75766263] = Cache({label = L['cache_forgotten_vault']})
map.nodes[78215435] = Cache({label = L['cache_forgotten_vault']})

map.nodes[45820524] = Cache({label = L['cache_mawsworn_supply']})
map.nodes[47394352] = Cache({label = L['cache_mawsworn_supply']})
map.nodes[58444036] = Cache({label = L['cache_mawsworn_supply']})
map.nodes[59841661] = Cache({label = L['cache_mawsworn_supply']})
map.nodes[62952498] = Cache({label = L['cache_mawsworn_supply']})

map.nodes[54253357] = Cache({label = L['cache_tarachnid_eggs']})
map.nodes[55263288] = Cache({label = L['cache_tarachnid_eggs']})

-------------------------------------------------------------------------------
-------------------------------- PUZZLE CACHES --------------------------------
-------------------------------------------------------------------------------

local Puzzle = Class('PuzzleCache', ns.node.Node, {
    group = ns.groups.PUZZLE_CACHE,
    icon = 'star_chest_g',
    scale = 1.2

})

map.nodes[38546364] = Puzzle({quest = 65094, label = L['cache_cantaric']})
map.nodes[44767608] = Puzzle({quest = 65323, label = L['cache_cantaric']})
map.nodes[52984558] = Puzzle({quest = 65416, label = L['cache_cantaric']}) -- 65418
map.nodes[39184665] = Puzzle({quest = 65322, label = L['cache_fugueal']})
map.nodes[63103738] = Puzzle({quest = 65093, label = L['cache_fugueal']})
map.nodes[54264279] = Puzzle({quest = 65092, label = L['cache_glissandian']})
map.nodes[39346043] = Puzzle({quest = 65091, label = L['cache_mezzonic']})
map.nodes[43624033] = Puzzle({quest = 65320, label = L['cache_mezzonic']})
map.nodes[55675002] = Puzzle({quest = 65091, label = L['cache_mezzonic']})
map.nodes[64695282] = Puzzle({quest = 65315, label = L['cache_mezzonic']})
map.nodes[65594762] = Puzzle({quest = 65091, label = L['cache_toccatian']})

-------------------------------------------------------------------------------
--------------------------------- ECHOED JIRO ---------------------------------
-------------------------------------------------------------------------------

-- Creatian (Metrial talent)
-- Rank 1 = SW
-- Rank 2 = SE
-- Rank 3 = ??
-- Rank 4 = ??

-- 39144256 Echoed Jiro Creatii (184942)
-- 53634382 Echoed Jiro Creatii (184945)
-- 52406156 Echoed Jiro Creatii (184939)
-- ???????? Echoed Jiro Genesii (183262) -- Increased Progenium Essentia from gathering and treasures (spell=362022, 15m)
-- 46656747 Echoed Jiro Genesii (183262) -- Increased Progenium Essentia from gathering and treasures (spell=362022, 15m)
-- 38313215 Echoed Jiro Genesii (184943)
-- 63675613 Echoed Jiro Genesii (184940)
-- 52482899 Echoed Jiro Genesii (184946)
-- 42883191 Echoed Jiro Nascii (184944)

-------------------------------------------------------------------------------
-------------------------------- MISCELLANEOUS --------------------------------
-------------------------------------------------------------------------------

-- Lore (Concordances) -- quests may flip after you have read enough of them, wasn't initially marking them
-- 38953127 Excitable Concordance
-- 50405096 Excitable Concordance
-- 64616035 Excitable Concordance
-- 35037144 Mercurial Concordance
-- 51579134 Mercurial Concordance
-- 64262397 Mercurial Concordance
-- 38844857 Tranquil Concordance (quest=65212)
-- 49367149 Tranquil Concordance (quest=65209)
-- 60204707 Tranquil Concordance (quest=65215)

-- 68695320 Interior Locus Arrangement (quest=65330)
-- 50852686 Quartus Locus Arrangement (quest=65340)
-- 48513388 Primus Locus Arrangement (quest=65337)
-- 48523035 Quintus Locus Arrangement (quest=65341)
-- 48322984 Tertius Locus Arrangement (quest=65338)
-- 49903233 Ultimus Locus Arrangement (quest=65342)
