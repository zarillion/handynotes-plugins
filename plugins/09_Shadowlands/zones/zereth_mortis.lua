-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...

local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible
local Rare = ns.node.Rare
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

local Arrow = ns.poi.Arrow
local Path = ns.poi.Path
local POI = ns.poi.POI

-------------------------------------------------------------------------------

local map = Map({id = 1970, settings = true})
local microd = Map({id = 2030}) -- Nexus of Actualization
local bfdry = Map({id = 2027}) -- Blooming Foundry

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[64743369] = Rare({
    id = 179006,
    quest = 65549,
    rlabel = ns.status.LightBlue('+30 ' .. L['rep']),
    rewards = {
        Achievement({id = 15391, criteria = 52977}), -- Adventurer of Zereth Mortis
        Transmog({item = 189903, slot = L['cloth']}), -- Sand Sifting Sandals
        Transmog({item = 189958, slot = L['plate']}), -- Tunneler's Penetrating Greathelm
        Transmog({item = 190053, slot = L['crossbow']}) -- Underground Circler's Crossbow
    }
}) -- Akkaris

map.nodes[49566751] = Rare({
    id = 183596,
    quest = 65553,
    rlabel = ns.status.LightBlue('+15 ' .. L['rep']),
    rewards = {
        Achievement({id = 15391, criteria = 52978}), -- Adventurer of Zereth Mortis
        Transmog({item = 189947, slot = L['mail']}), -- Majestic Watcher's Girdle
        Transmog({item = 189906, slot = L['cloth']}), -- Mask of the Resolute Cervid
        Transmog({item = 189994, slot = L['2h_mace']}) -- Chitali's Command
    }
}) -- Chitali the Eldest

map.nodes[47486228] = Rare({
    id = 183953,
    quest = 65273,
    note = L['corrupted_architect_note'],
    rlabel = ns.status.LightBlue('+15 ' .. L['rep']),
    rewards = {
        Achievement({id = 15391, criteria = 53047}), -- Adventurer of Zereth Mortis
        Transmog({item = 189907, slot = L['cloth']}), -- Crown of Contorted Thought
        Transmog({item = 189940, slot = L['mail']}), -- Architect's Polluting Touch
        Transmog({item = 190009, slot = L['2h_mace']}) -- Hammer of Shattered Works
    }
}) -- Corrupted Architect

map.nodes[53634435] = Rare({
    id = 180917,
    quest = 64716,
    rlabel = ns.status.LightBlue('+15 ' .. L['rep']),
    rewards = {
        Achievement({id = 15391, criteria = 52974}), -- Adventurer of Zereth Mortis
        Transmog({item = 189910, slot = L['cloth']}), -- Adornment of Jingling Fractals
        Transmog({item = 189985, slot = L['cloak']}), -- Curtain of Untold Realms
        Transmog({item = 189999, slot = L['1h_mace']}), -- Dark Sky Gavel
        Item({item = 187837}) -- Schematic: Erratic Genesis Matrix
    }
}) -- Destabilized Core

map.nodes[47474516] = Rare({
    id = 184409,
    quest = nil,
    rlabel = ns.status.LightBlue('+15 ' .. L['rep']),
    rewards = {
        Achievement({id = 15391, criteria = 52982}), -- Adventurer of Zereth Mortis
        Transmog({item = 189949, slot = L['mail']}), -- Shackles of the Bound Guardian
        Transmog({item = 190047, slot = L['staff']}) -- Converted Broker's Staff
    }
}) -- Euv'ouk

map.nodes[61826060] = Rare({
    id = 178229,
    quest = 65557,
    note = L['feasting_note'],
    rlabel = ns.status.LightBlue('+15 ' .. L['rep']),
    rewards = {
        Achievement({id = 15391, criteria = 52973}), -- Adventurer of Zereth Mortis
        Transmog({item = 189969, slot = L['mail']}), -- Vespoid's Clanging Legguards
        Transmog({item = 189970, slot = L['plate']}), -- Visor of Visceral Cravings
        Transmog({item = 189936, slot = L['cloak']}), -- Feasting's Feeding Cloak
        Item({item = 187848}) -- Recipe: Sustaining Armor Polish
    }
}) -- Feasting

map.nodes[64585865] = Rare({
    id = 183646,
    quest = 65544,
    note = L['furidian_note'],
    rlabel = ns.status.LightBlue('+15 ' .. L['rep']),
    rewards = {
        Achievement({id = 15391, criteria = 53031}), -- Adventurer of Zereth Mortis
        Transmog({item = 189920, slot = L['leather']}), -- Viperid Keeper's Gloves
        Transmog({item = 189932, slot = L['mail']}), -- Slick Scale Chitin
        Transmog({item = 189963, slot = L['plate']}), -- Sculpted Ouroboros Clasp
        Transmog({item = 190004, slot = L['dagger']}) -- Furidian's Inscribed Barb
    }
}) -- Furidian

map.nodes[69073662] = Rare({
    id = 180924,
    quest = 64719,
    note = L['garudeon_note'],
    rlabel = ns.status.LightBlue('+30 ' .. L['rep']),
    rewards = {
        Achievement({id = 15391, criteria = 53025}), -- Adventurer of Zereth Mortis
        Transmog({item = 189951, slot = L['plate']}), -- Sunbathed Avian Armor
        Transmog({item = 189937, slot = L['cloak']}), -- Garudeon's Blanket of Feathers
        Item({item = 187832}) -- Schematic: Pure-Air Sail Extensions
    },
    pois = {
        POI({68333834, 68153594, 66343802, 67553892, 67554019}) -- Energizing Leporid
    }
}) -- Garudeon

map.nodes[59862111] = Rare({
    id = 182318,
    quest = 65583,
    rlabel = ns.status.LightBlue('+30 ' .. L['rep']),
    rewards = {
        Achievement({id = 15391, criteria = 52985}), -- Adventurer of Zereth Mortis
        Transmog({item = 189968, slot = L['leather']}), -- Dreadlord General's Tunic
        Transmog({item = 189948, slot = L['mail']}) -- Strangulating Chainlink Lasso
    }
}) -- General Zarathura

map.nodes[53089305] = Rare({
    id = 178778,
    quest = nil,
    note = L['gluttonous_overgrowth_note'],
    rlabel = ns.status.LightBlue('+15 ' .. L['rep']),
    rewards = {
        Achievement({id = 15391, criteria = 52971}), -- Adventurer of Zereth Mortis
        Transmog({item = 189929, slot = L['leather']}), -- Vinebound Strap
        Transmog({item = 190008, slot = L['1h_sword']}), -- Enlightened Botanist's Machete
        Transmog({item = 190049, slot = L['fist']}) -- Perennial Punching Dagger
    },
    pois = {POI({53219302, 54019118, 52019377, 52389280, 53469081})} -- Bulging Root
}) -- Gluttonous Overgrowth

map.nodes[80384706] = Rare({
    id = 178963,
    quest = 63988,
    rlabel = ns.status.LightBlue('+15 ' .. L['rep']),
    rewards = {
        Achievement({id = 15391, criteria = 52986}), -- Adventurer of Zereth Mortis
        Transmog({item = 190001, slot = L['shield']}) -- Gorkek's Glistening Throatguard
    },
    pois = {Path({80324594, 80384706, 80844886})}
}) -- Gorkek

map.nodes[52612503] = Rare({
    id = 178563,
    quest = 65581,
    rlabel = ns.status.LightBlue('+15 ' .. L['rep']),
    rewards = {
        Achievement({id = 15391, criteria = 52984}), -- Adventurer of Zereth Mortis
        Transmog({item = 189919, slot = L['leather']}), -- Skittering Scarabid Treads
        Transmog({item = 189942, slot = L['mail']}), -- Hadeon's Indomitable Faceguard
        Transmog({item = 190051, slot = L['staff']}), -- Elder's Opulent Stave
        Transmog({item = 190000, slot = L['shield']}) -- Carapace of Gliding Sands
    }
}) -- Hadeon the Stonebreaker

map.nodes[58186837] = Rare({
    id = 183748,
    quest = 65551,
    rlabel = ns.status.LightBlue('+15 ' .. L['rep']),
    rewards = {
        Achievement({id = 15391, criteria = 53048}), -- Adventurer of Zereth Mortis
        Transmog({item = 189931, slot = L['leather']}), -- Annelid's Hinge Wrappings
        Transmog({item = 189965, slot = L['plate']}), -- Armored Cuffs of Helmix
        Transmog({item = 190054, slot = L['crossbow']}), -- Facet Sharpening Crossbow
        Transmog({item = 190056, slot = L['offhand']}) -- Enlightened Explorer's Lantern
    }
}) -- Helmix

map.nodes[52287541] = Rare({
    id = 180978,
    quest = nil,
    rlabel = ns.status.LightBlue('+15 ' .. L['rep']),
    rewards = {
        Achievement({id = 15391, criteria = 52990}), -- Adventurer of Zereth Mortis
        Transmog({item = 189905, slot = L['cloth']}), -- Hirukon's Syrupy Squeezers
        Transmog({item = 189946, slot = L['mail']}), -- Jellied Aurelid Mantle
        Mount({id = 1434, item = 187676}) -- Deepstar Aurelid
    }
}) -- Hirukon

map.nodes[58654039] = Rare({
    id = 183814,
    quest = 65257,
    note = L['in_small_cave'],
    rlabel = ns.status.LightBlue('+15 ' .. L['rep']),
    rewards = {
        Achievement({id = 15391, criteria = 53046}), -- Adventurer of Zereth Mortis
        Transmog({item = 189909, slot = L['cloth']}), -- Pantaloons of Cold Recesses
        Transmog({item = 189945, slot = L['plate']}) -- Shoulders of the Missing Giant
    }
}) -- Otaris the Provoked

map.nodes[54083493] = Rare({
    id = 178508,
    quest = 65547,
    rlabel = ns.status.LightBlue('+30 ' .. L['rep']),
    rewards = {
        Achievement({id = 15391, criteria = 53020}), -- Adventurer of Zereth Mortis
        Transmog({item = 189923, slot = L['leather']}), -- Tarachnid's Terrifying Visage
        Transmog({item = 189950, slot = L['mail']}), -- Constrained Prey's Binds
        Transmog({item = 190045, slot = L['staff']}) -- Flowing Sandbender's Staff
    },
    pois = {POI({55963261})} -- Cave entrance
}) -- Mother Phestis

map.nodes[57998454] = Rare({
    id = 179043,
    quest = 65582,
    rlabel = ns.status.LightBlue('+15 ' .. L['rep']),
    rewards = {
        Achievement({id = 15391, criteria = 52981}), -- Adventurer of Zereth Mortis
        Transmog({item = 189912, slot = L['cloth']}), -- Orixal's Moist Sash
        Transmog({item = 189934, slot = L['mail']}), -- Slime-Wake Sabatons
        Transmog({item = 189952, slot = L['plate']}) -- Celestial Mollusk's Chestshell
    },
    pois = {Path({57998454, 57968395, 58558374, 58808289})}
}) -- Orixal

map.nodes[43308762] = Rare({
    id = 183746,
    quest = 65556,
    rlabel = ns.status.LightBlue('+15 ' .. L['rep']),
    rewards = {
        Achievement({id = 15391, criteria = 52972}), -- Adventurer of Zereth Mortis
        Transmog({item = 189914, slot = L['cloth']}), -- Otiosen's Regenerative Wristwraps
        Transmog({item = 189925, slot = L['leather']}), -- Amphibian's Nimble Leggings
        Transmog({item = 190046, slot = L['staff']}), -- Broker's Stolen Cane
        Transmog({item = 189995, slot = L['1h_mace']}) -- Builder's Alignment Hammer
    }
}) -- Otiosen

map.nodes[38872762] = Rare({
    id = 180746,
    quest = 64668,
    note = L['protector_first_ones_note'],
    rlabel = ns.status.LightBlue('+15 ' .. L['rep']),
    rewards = {
        Achievement({id = 15391, criteria = 52989}), -- Adventurer of Zereth Mortis
        Transmog({item = 189984, slot = L['cloak']}), -- Drape of Idolized Symmetry
        Transmog({item = 190002, slot = L['shield']}) -- Bulwark of the Broken
    }
}) -- Protector of the First Ones

map.nodes[53384707] = Rare({
    id = 183927,
    quest = 65574,
    rlabel = ns.status.LightBlue('+15 ' .. L['rep']),
    rewards = {
        Achievement({id = 15391, criteria = 52975}), -- Adventurer of Zereth Mortis
        Transmog({item = 189927, slot = L['leather']}), -- Broker's Gnawed Spaulders
        Transmog({item = 189955, slot = L['plate']}), -- Scarabid's Clattering Handguards
        Transmog({item = 189998, slot = L['1h_mace']}) -- Ornate Stone Mallet
    }
}) -- Sand Matriarch Ileus

map.nodes[42302099] = Rare({
    id = 184413,
    quest = 65549,
    rlabel = ns.status.LightBlue('+15 ' .. L['rep']),
    rewards = {
        Achievement({id = 15391, criteria = 52988}), -- Adventurer of Zereth Mortis
        Transmog({item = 189908, slot = L['cloth']}), -- Gorger's Leggings of Famine
        Transmog({item = 189916, slot = L['leather']}), -- Mutated Devourer's Harness
        Transmog({item = 189941, slot = L['mail']}) -- Voracious Diadem
    }
}) -- Shifting Stargorger

map.nodes[35877121] = Rare({
    id = 183722,
    quest = 65240,
    rlabel = ns.status.LightBlue('+15 ' .. L['rep']),
    rewards = {
        Achievement({id = 15391, criteria = 52980}), -- Adventurer of Zereth Mortis
        Transmog({item = 189911, slot = L['cloth']}), -- Sublime Fur Mantle
        Transmog({item = 189944, slot = L['mail']}), -- Immovable Stance of the Vombata
        Transmog({item = 189962, slot = L['plate']}), -- Sorranos' Gleaming Pauldrons
        Item({item = 187826}) -- Formula: Cosmic Protoweave
    }
}) -- Sorranos

map.nodes[49783914] = Rare({
    id = 183925,
    quest = 65272,
    rlabel = ns.status.LightBlue('+15 ' .. L['rep']),
    rewards = {
        Achievement({id = 15391, criteria = 52979}), -- Adventurer of Zereth Mortis
        Transmog({item = 189915, slot = L['cloth']}), -- Tahkwitz' Cloth Ribbon
        Transmog({item = 189933, slot = L['mail']}), -- Vigilant Raptora's Crest
        Transmog({item = 189954, slot = L['plate']}), -- Lustrous Sentinel's Sabatons
        Item({item = 187832}) -- Schematic: Pure-Air Sail Extensions
    }
}) -- Tahkwitz

map.nodes[54507344] = Rare({
    id = 181249,
    quest = 65550,
    rlabel = ns.status.LightBlue('+15 ' .. L['rep']),
    rewards = {
        Achievement({id = 15391, criteria = 52987}), -- Adventurer of Zereth Mortis
        Transmog({item = 189928, slot = L['leather']}), -- Centripetal Waistband
        Transmog({item = 189966, slot = L['plate']}), -- Singing Metal Wristbands
        Transmog({item = 190055, slot = L['offhand']}), -- Coalescing Energy Implement
        Item({item = 187830}) -- Design: Aealic Harmonizing Stone
    }
}) -- Tethos

map.nodes[43947530] = Rare({
    id = 183516,
    quest = 65580,
    note = L['the_engulfer_note'],
    rlabel = ns.status.LightBlue('+15 ' .. L['rep']),
    rewards = {
        Achievement({id = 15391, criteria = 53050}), -- Adventurer of Zereth Mortis
        Transmog({item = 190006, slot = L['1h_sword']}) -- Anima-Siphoning Sword
    }
}) -- The Engulfer

map.nodes[39555737] = Rare({
    id = 181360,
    quest = 65239,
    rlabel = ns.status.LightBlue('+15 ' .. L['rep']),
    rewards = {
        Achievement({id = 15391, criteria = 53049}), -- Adventurer of Zereth Mortis
        Transmog({item = 190048, slot = L['fist']}) -- Vexis' Wisest Fang
    }
}) -- Vexis

map.nodes[47044698] = Rare({
    id = 183747,
    quest = 65584,
    rlabel = ns.status.LightBlue('+15 ' .. L['rep']),
    rewards = {
        Achievement({id = 15391, criteria = 52983}), -- Adventurer of Zereth Mortis
        Transmog({item = 189901, slot = L['cloth']}), -- Vitiane's Defiled Vestment
        Transmog({item = 189922, slot = L['leather']}), -- Cowl of Shameful Proliferation
        Transmog({item = 189935, slot = L['mail']}) -- Harrowing Hope Squashers
    }
}) -- Vitiane

map.nodes[64054975] = Rare({
    id = 183737,
    quest = 65241,
    rlabel = ns.status.LightBlue('+15 ' .. L['rep']),
    rewards = {
        Achievement({id = 15391, criteria = 52976}), -- Adventurer of Zereth Mortis
        Transmog({item = 190052, slot = L['dagger']}), -- Xy'rath's Letter Opener
        Transmog({item = 190007, slot = L['1h_sword']}), -- Xy'rath's Signature Saber
        Toy({item = 190238}), -- Xy'rath's Booby-Trapped Cache
        Item({item = 187828}) -- Recipe: Infusion: Corpse Purification
    }
}) -- Xy'rath the Covetous

map.nodes[43513294] = Rare({
    id = 183764,
    quest = 65251,
    note = L['zatojin_note'],
    rlabel = ns.status.LightBlue('+15 ' .. L['rep']),
    rewards = {
        Achievement({id = 15391, criteria = 53044}), -- Adventurer of Zereth Mortis
        Transmog({item = 189902, slot = L['cloth']}), -- Hapless Traveler's Treads
        Transmog({item = 189924, slot = L['leather']}), -- Buzzing Predator's Legs
        Transmog({item = 189939, slot = L['mail']}) -- Zatojin's Paralytic Grip
    }
}) -- Zatojin

------------------------------- DUNE DOMINANCE --------------------------------

map.nodes[63202603] = Rare({
    id = 182114,
    label = '{achievement:15392}',
    -- quest = {nil, nil, nil},
    -- questCount = true,
    note = L['dune_dominance_note'],
    rewards = {
        Achievement({
            id = 15392,
            criteria = {
                {id = 52992, quest = nil}, -- Iska, Outrider of Ruin
                {id = 52993, quest = nil}, -- High Reaver Damaris
                {id = 52994, quest = nil} -- Reanimatrox Marzan
            }
        }), -- Dune Dominance
        Transmog({item = 190104, slot = L['crossbow']}), -- Deadeye's Spirit Piercer
        Transmog({item = 190126, slot = L['polearm'], note = '{npc:182114}'}), -- Rotculler's Encroaching Shears
        Transmog({item = 190459, slot = L['shield'], note = '{npc:182155}'}), -- Cold Dispiriting Barricade
        Transmog({item = 190460, slot = L['polearm'], note = '{npc:182155}'}), -- High Reaver's Sickle
        Transmog({item = 190107, slot = L['staff'], note = '{npc:182155}'}), -- Staff of Broken Coils
        Mount({item = 190765, id = 1584, note = '{npc:182114}'}) -- Iska's Mawrat Leash
    }
})

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

-- Unknown/Mystery Treasures:
-- 42025181 Provis Cache (requires Provis Cache Key)

map.nodes[61163709] = Treasure({
    quest = nil,
    rewards = {
        Achievement({id = 15331, criteria = 53053}), -- Treasures of Zereth Mortis
        Achievement({id = 15508, criteria = 53290}), -- Fashion of the First Ones
        Item({item = 187833, quest = nil}) -- Dapper Pocopoc
    }
}) -- Architect's Reserve

map.nodes[47449524] = Treasure({
    quest = 65573,
    note = L['bushel_of_produce_note'],
    rewards = {
        Achievement({id = 15331, criteria = 53071}), -- Treasures of Zereth Mortis
        Achievement({id = 15508, criteria = 53286}), -- Fashion of the First Ones
        Toy({item = 190853}), -- Bushel of Mysterious Fruit
        Item({item = 190059, quest = 65524}) -- Chef Pocopoc
    }
}) -- Bushel of Progenitor Produce

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
    note = L['domination_cache_note'],
    requires = ns.requirement.Item(189704),
    rewards = {
        Achievement({id = 15331, criteria = 53018}) -- Treasures of Zereth Mortis
    }
}) -- Domination Cache

map.nodes[35167020] = Treasure({
    quest = 65523,
    note = L['drowned_broker_supplies_note'],
    requires = ns.requirement.GarrisonTalent(1932),
    rewards = {
        Achievement({id = 15331, criteria = 53061}), -- Treasures of Zereth Mortis
        Achievement({id = 15508, criteria = 53288}), -- Fashion of the First Ones
        Item({item = 190059, quest = 65526}) -- Pirate Pocopoc (also quest=65531)
    },
    pois = {POI({34497053})} -- Coreless Aurelid
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
    note = L['in_cave'] .. ' ' .. L['library_vault_note'],
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
        Achievement({id = 15331, criteria = 53064}), -- Treasures of Zereth Mortis
        Achievement({id = 15508, criteria = 53294}), -- Fashion of the First Ones
        Item({item = 190098, quest = nil}) -- Pepepec
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

bfdry.nodes[65645023] = Treasure({
    quest = nil,
    parent = map.id,
    requires = ns.requirement.GarrisonTalent(1931),
    rewards = {
        Achievement({id = 15331, criteria = 53069}), -- Treasures of Zereth Mortis
        Achievement({id = 15508, criteria = 53287}) -- Fashion of the First Ones
    }
}) -- Ripened Protopear

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

map.nodes[58727301] = Treasure({
    quest = nil,
    note = L['submerged_chest_note'],
    rewards = {
        Achievement({id = 15331, criteria = 52964}), -- Treasures of Zereth Mortis
        Achievement({id = 15508, criteria = 53291}) -- Fashion of the First Ones
    },
    pois = {POI({59427684})} -- Dangerous Orb of Power
}) -- Submerged Chest

-- Not going to give answer in the note for now, instead I explain how to solve it
-- Solution: 183951 (se) => 183950 (nw) => 183948 (sw) => 183952 (ne)
map.nodes[52596297] = Treasure({
    quest = 65270,
    note = L['symphonic_vault_note'],
    rewards = {
        Achievement({id = 15331, criteria = 52968}) -- Treasures of Zereth Mortis
    }
}) -- Symphonic Vault

map.nodes[77535820] = Treasure({
    quest = 65565,
    rewards = {
        Achievement({id = 15331, criteria = 53068}), -- Treasures of Zereth Mortis
        Toy({item = 190457}) -- Protopological Cube
    }
}) -- Syntactic Vault

microd.nodes[51618820] = Treasure({
    quest = 65175,
    parent = map.id,
    note = L['template_archive_note'],
    rewards = {
        Achievement({id = 15331, criteria = 52966}), -- Treasures of Zereth Mortis
        Achievement({id = 15508, criteria = 53289}) -- Fashion of the First Ones
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
        Achievement({id = 15331, criteria = 53070}), -- Treasures of Zereth Mortis
        Toy({item = 190926}) -- Infested Automa Core
    },
    pois = {
        POI({50017671, 50988209, 52498344, 53198092}) -- Teleporter Locks
    }
}) -- Undulating Foliage

-------------------------------------------------------------------------------

map.nodes[48016641] = Treasure({
    quest = 65184,
    label = L['prying_eye_discovery'],
    note = L['prying_eye_discovery_note'],
    rewards = {
        Achievement({id = 15508, criteria = 53293}) -- Fashion of the First Ones
    },
    pois = {POI({35244371, 34334431, 51767789})}
}) -- Prying Eye Discovery

-------------------------------------------------------------------------------

map.nodes[60022583] = Treasure({
    quest = 65611,
    icon = 'chest_yw',
    requires = ns.requirement.Item(190197), -- Sandworn Chest Key
    label = L['sandworn_chest'],
    note = L['sandworn_chest_note'],
    rewards = {
        Item({item = 190189, note = '12 - 23'}), -- Sandworn Relic
        Toy({item = 190734}) -- Makaris's Satchel of Mines
    },
    pois = {POI({60863786, 61401763, 63182603, 65972694})}
}) -- Sandworn Chest

-------------------------------------------------------------------------------
-------------------------------- PUZZLE CACHES --------------------------------
-------------------------------------------------------------------------------

local Puzzle = Class('PuzzleCache', ns.node.Node, {
    group = ns.groups.PUZZLE_CACHE,
    requires = ns.requirement.GarrisonTalent(1972),
    icon = 'star_chest_g',
    scale = 1.2
})

-- Can be removed after we found all quest ids
function Puzzle:GetGlow(mapID, minimap)
    local glow = ns.node.Node.GetGlow(self, mapID, minimap)
    if glow then return glow end

    if _G['HandyNotes_ZarPluginsDevelopment'] and not self.quest then
        local _, scale, alpha = self:GetDisplayInfo(mapID, minimap)
        self.glow.alpha = alpha
        self.glow.scale = scale
        self.glow.r, self.glow.g, self.glow.b = 1, 0, 0
        return self.glow
    end
end

map.nodes[38546364] = Puzzle({quest = 65094, label = L['cache_cantaric']})
map.nodes[44767608] = Puzzle({quest = 65323, label = L['cache_cantaric']})
map.nodes[47504622] = Puzzle({quest = 65323, label = L['cache_cantaric']})
map.nodes[48628747] = Puzzle({quest = 65318, label = L['cache_cantaric']})
map.nodes[52984558] = Puzzle({quest = 65094, label = L['cache_cantaric']}) -- 65418 65416
map.nodes[65674096] = Puzzle({quest = 65406, label = L['cache_cantaric']}) -- 65418
map.nodes[44229011] = Puzzle({quest = nil, label = L['cache_cantaric']})
map.nodes[56007960] = Puzzle({quest = nil, label = L['cache_cantaric']})
map.nodes[55004800] = Puzzle({quest = nil, label = L['cache_cantaric']})
map.nodes[43662152] = Puzzle({quest = 65094, label = L['cache_cantaric']})
map.nodes[36475646] = Puzzle({quest = 65322, label = L['cache_fugueal']})
map.nodes[39184665] = Puzzle({quest = 65322, label = L['cache_fugueal']})
map.nodes[59712290] = Puzzle({quest = 65317, label = L['cache_fugueal']})
map.nodes[63103738] = Puzzle({quest = 65414, label = L['cache_fugueal']}) -- 65093  65418
map.nodes[44293098] = Puzzle({quest = nil, label = L['cache_fugueal']})
map.nodes[47603910] = Puzzle({quest = nil, label = L['cache_fugueal']})
map.nodes[46006460] = Puzzle({quest = nil, label = L['cache_fugueal']})
map.nodes[47117719] = Puzzle({quest = 65093, label = L['cache_fugueal']})
map.nodes[57486576] = Puzzle({quest = 65093, label = L['cache_fugueal']})
map.nodes[42196878] = Puzzle({quest = nil, label = L['cache_fugueal']})
map.nodes[51282573] = Puzzle({quest = 65412, label = L['cache_glissandian']}) -- 65418
map.nodes[54264279] = Puzzle({quest = 65092, label = L['cache_glissandian']})
map.nodes[39937284] = Puzzle({quest = 65321, label = L['cache_glissandian']})
map.nodes[45109410] = Puzzle({quest = nil, label = L['cache_glissandian']})
map.nodes[56008410] = Puzzle({quest = nil, label = L['cache_glissandian']})
map.nodes[56636138] = Puzzle({quest = nil, label = L['cache_glissandian']})
map.nodes[33805430] = Puzzle({quest = nil, label = L['cache_glissandian']})
map.nodes[44605050] = Puzzle({quest = nil, label = L['cache_glissandian']})
map.nodes[58893634] = Puzzle({quest = 65092, label = L['cache_glissandian']})
map.nodes[41803130] = Puzzle({quest = nil, label = L['cache_glissandian']})
map.nodes[38377037] = Puzzle({quest = 65091, label = L['cache_mezzonic']})
map.nodes[39346043] = Puzzle({quest = 65091, label = L['cache_mezzonic']})
map.nodes[43624033] = Puzzle({quest = 65320, label = L['cache_mezzonic']})
map.nodes[55675002] = Puzzle({quest = 65091, label = L['cache_mezzonic']})
map.nodes[64695282] = Puzzle({quest = 65315, label = L['cache_mezzonic']})
map.nodes[35825908] = Puzzle({quest = 65315, label = L['cache_mezzonic']})
map.nodes[38503552] = Puzzle({quest = nil, label = L['cache_mezzonic']})
map.nodes[49953057] = Puzzle({quest = nil, label = L['cache_mezzonic']})
map.nodes[57863165] = Puzzle({quest = 65315, label = L['cache_mezzonic']})
map.nodes[52347202] = Puzzle({quest = nil, label = L['cache_mezzonic']})
map.nodes[37014645] = Puzzle({quest = 64972, label = L['cache_toccatian']})
map.nodes[65594762] = Puzzle({quest = 65091, label = L['cache_toccatian']})
map.nodes[53208680] = Puzzle({quest = nil, label = L['cache_toccatian']})
map.nodes[62807390] = Puzzle({quest = nil, label = L['cache_toccatian']})
map.nodes[64286332] = Puzzle({quest = 65319, label = L['cache_toccatian']})
map.nodes[46806700] = Puzzle({quest = nil, label = L['cache_toccatian']})
map.nodes[34606880] = Puzzle({quest = nil, label = L['cache_toccatian']})
map.nodes[52435706] = Puzzle({quest = 65314, label = L['cache_toccatian']})
map.nodes[32005260] = Puzzle({quest = nil, label = L['cache_toccatian']})
map.nodes[67812744] = Puzzle({quest = 65319, label = L['cache_toccatian']})

-------------------------------------------------------------------------------
-------------------------------- CYPHER CACHES --------------------------------
-------------------------------------------------------------------------------

-- Treasures that give 2x cyphers and flip no quest id
-- quest=65115?

local Cache = Class('CypherCache', ns.node.Node, {
    group = ns.groups.ZERETH_CACHE,
    icon = 'chest_gy',
    scale = 0.8
})

local AVIAN_NEST = Cache({label = L['cache_avian_nest']})
local CYPHER_BOUND = Cache({label = L['cache_cypher_bound']})
local DISCARDED_AUTOMA = Cache({label = L['cache_discarded_automa']})
local FORGOTTEN_VAULT = Cache({label = L['cache_forgotten_vault']})
local MAWSWORN_SUPPLY = Cache({
    label = L['cache_mawsworn_supply']
    -- rewards = {
    --     Mount({item = 190766, id = 1585}) -- Spectral Mawrat's Tail
    -- } -- In the journal, but don't want to list it until the drop is confirmed
})
local TARACHNID_EGGS = Cache({label = L['cache_tarachnid_eggs']})

map.nodes[35495205] = AVIAN_NEST
map.nodes[40455663] = AVIAN_NEST
map.nodes[40685050] = AVIAN_NEST
map.nodes[42327311] = AVIAN_NEST
map.nodes[43156516] = AVIAN_NEST
map.nodes[43274369] = AVIAN_NEST
map.nodes[44194279] = AVIAN_NEST
map.nodes[48196646] = AVIAN_NEST
map.nodes[49556534] = AVIAN_NEST
map.nodes[51106454] = AVIAN_NEST
map.nodes[54298169] = AVIAN_NEST
map.nodes[55185594] = AVIAN_NEST
map.nodes[56647484] = AVIAN_NEST
map.nodes[59106467] = AVIAN_NEST
map.nodes[66004281] = AVIAN_NEST
map.nodes[76305020] = AVIAN_NEST
map.nodes[76895037] = AVIAN_NEST

map.nodes[36104309] = CYPHER_BOUND
map.nodes[37853246] = CYPHER_BOUND
map.nodes[38044543] = CYPHER_BOUND
map.nodes[38113112] = CYPHER_BOUND
map.nodes[38382956] = CYPHER_BOUND
map.nodes[38464188] = CYPHER_BOUND
map.nodes[39154226] = CYPHER_BOUND
map.nodes[39835646] = CYPHER_BOUND
map.nodes[42627646] = CYPHER_BOUND
map.nodes[42792135] = CYPHER_BOUND
map.nodes[43158972] = CYPHER_BOUND
map.nodes[44682237] = CYPHER_BOUND
map.nodes[44815079] = CYPHER_BOUND
map.nodes[45393141] = CYPHER_BOUND
map.nodes[47044529] = CYPHER_BOUND
map.nodes[47702634] = CYPHER_BOUND
map.nodes[47766683] = CYPHER_BOUND
map.nodes[48976532] = CYPHER_BOUND
map.nodes[48993205] = CYPHER_BOUND
map.nodes[49606573] = CYPHER_BOUND
map.nodes[49970368] = CYPHER_BOUND
map.nodes[50544680] = CYPHER_BOUND
map.nodes[51914364] = CYPHER_BOUND
map.nodes[52045296] = CYPHER_BOUND
map.nodes[52075444] = CYPHER_BOUND
map.nodes[52456163] = CYPHER_BOUND
map.nodes[52707519] = CYPHER_BOUND
map.nodes[53066373] = CYPHER_BOUND
map.nodes[53469408] = CYPHER_BOUND
map.nodes[54027253] = CYPHER_BOUND
map.nodes[54247629] = CYPHER_BOUND
map.nodes[54326958] = CYPHER_BOUND
map.nodes[55545570] = CYPHER_BOUND
map.nodes[57198183] = CYPHER_BOUND
map.nodes[58462026] = CYPHER_BOUND
map.nodes[58885274] = CYPHER_BOUND
map.nodes[59326420] = CYPHER_BOUND
map.nodes[59603260] = CYPHER_BOUND
map.nodes[59777940] = CYPHER_BOUND
map.nodes[60866960] = CYPHER_BOUND
map.nodes[61444816] = CYPHER_BOUND
map.nodes[62931954] = CYPHER_BOUND
map.nodes[65553675] = CYPHER_BOUND
map.nodes[66843569] = CYPHER_BOUND
map.nodes[77574508] = CYPHER_BOUND
map.nodes[77934573] = CYPHER_BOUND

map.nodes[40657591] = DISCARDED_AUTOMA
map.nodes[44089028] = DISCARDED_AUTOMA
map.nodes[48834480] = DISCARDED_AUTOMA
map.nodes[52344688] = DISCARDED_AUTOMA
map.nodes[53958854] = DISCARDED_AUTOMA
map.nodes[58966093] = DISCARDED_AUTOMA
map.nodes[59625113] = DISCARDED_AUTOMA
map.nodes[65764042] = DISCARDED_AUTOMA
map.nodes[67604043] = DISCARDED_AUTOMA
map.nodes[70013420] = DISCARDED_AUTOMA

map.nodes[36707142] = FORGOTTEN_VAULT
map.nodes[40434117] = FORGOTTEN_VAULT
map.nodes[41196109] = FORGOTTEN_VAULT
map.nodes[46459579] = FORGOTTEN_VAULT
map.nodes[46854450] = FORGOTTEN_VAULT
map.nodes[48891010] = FORGOTTEN_VAULT
map.nodes[49567522] = FORGOTTEN_VAULT
map.nodes[50559346] = FORGOTTEN_VAULT
map.nodes[50632668] = FORGOTTEN_VAULT
map.nodes[51177705] = FORGOTTEN_VAULT
map.nodes[52002941] = FORGOTTEN_VAULT
map.nodes[52315560] = FORGOTTEN_VAULT
map.nodes[53875975] = FORGOTTEN_VAULT
map.nodes[56542540] = FORGOTTEN_VAULT
map.nodes[58582110] = FORGOTTEN_VAULT
map.nodes[58585707] = FORGOTTEN_VAULT
map.nodes[65236419] = FORGOTTEN_VAULT
map.nodes[69083683] = FORGOTTEN_VAULT
map.nodes[75766263] = FORGOTTEN_VAULT
map.nodes[78215435] = FORGOTTEN_VAULT

map.nodes[45820524] = MAWSWORN_SUPPLY
map.nodes[47394352] = MAWSWORN_SUPPLY
map.nodes[57562297] = MAWSWORN_SUPPLY
map.nodes[58444036] = MAWSWORN_SUPPLY
map.nodes[59841661] = MAWSWORN_SUPPLY
map.nodes[60963061] = MAWSWORN_SUPPLY
map.nodes[62952498] = MAWSWORN_SUPPLY

map.nodes[54253357] = TARACHNID_EGGS
map.nodes[55263288] = TARACHNID_EGGS

-------------------------------------------------------------------------------

microd.nodes[62764399] = Cache({
    label = L['cache_cypher_bound'],
    parent = map.id
})

-------------------------------------------------------------------------------
------------------------------ LORE CONCORDANCES ------------------------------
-------------------------------------------------------------------------------

-- NOTE: Quests may flip after you have read enough of them and are not necessarily
-- attached to individual objects. I wasn't initially marking them so we'll have to
-- learn more.

local Lore = Class('Concordance', ns.node.Node, {
    group = ns.groups.CONCORDANCES,
    icon = 4238797,
    note = L['concordance_note']
})

map.nodes[31775466] = Lore({label = L['concordance_excitable']})
map.nodes[38953127] = Lore({label = L['concordance_excitable']})
map.nodes[50405096] = Lore({label = L['concordance_excitable']})
map.nodes[64616035] = Lore({label = L['concordance_excitable']})
map.nodes[35037144] = Lore({label = L['concordance_mercurial']})
map.nodes[39702572] = Lore({label = L['concordance_mercurial']})
map.nodes[51579134] = Lore({label = L['concordance_mercurial']})
map.nodes[64262397] = Lore({label = L['concordance_mercurial']})
map.nodes[32196281] = Lore({label = L['concordance_tranquil']}) -- quest=64940
map.nodes[38844857] = Lore({label = L['concordance_tranquil']}) -- quest=65212
map.nodes[49367149] = Lore({label = L['concordance_tranquil']}) -- quest=65209
map.nodes[60204707] = Lore({label = L['concordance_tranquil']}) -- quest=65215

-------------------------------------------------------------------------------
--------------------------------- ECHOED JIRO ---------------------------------
-------------------------------------------------------------------------------

-- Creatian (Metrial talent)
-- Rank 1 = SW
-- Rank 2 = SE
-- Rank 3 = NW
-- Rank 4 = NE

local Jiro = Class('Jiro', ns.node.NPC, {
    group = ns.groups.ECHOED_JIROS,
    scale = 1.5,
    note = L['echoed_jiro_note']
})

local Creatii = Class('Creatii', Jiro,
    {spellID = 361831, icon = 'peg_gn', fgroup = 'creatii'})

local Genesii = Class('Genesii', Jiro,
    {spellID = 362022, icon = 'peg_bl', fgroup = 'genesii'})

local Nascii_ = Class('Nascii', Jiro,
    {spellID = 362023, icon = 'peg_rd', fgroup = 'nascii'})

local CREATIAN_SW = ns.requirement.GarrisonTalentRank(1976, 1)
local CREATIAN_SE = ns.requirement.GarrisonTalentRank(1976, 2)
local CREATIAN_NW = ns.requirement.GarrisonTalentRank(1976, 3)
local CREATIAN_NE = ns.requirement.GarrisonTalentRank(1976, 4)

--------------------------------- SOUTH-WEST ----------------------------------

map.nodes[40516076] = Creatii({id = 181571, requires = CREATIAN_SW})
map.nodes[43638656] = Creatii({id = 181571, requires = CREATIAN_SW})
map.nodes[34635635] = Genesii({id = 183262, requires = CREATIAN_SW})
map.nodes[46656747] = Genesii({id = 183262, requires = CREATIAN_SW})
map.nodes[33185415] = Nascii_({id = 183263, requires = CREATIAN_SW})
map.nodes[43806451] = Nascii_({id = 183263, requires = CREATIAN_SW})

--------------------------------- SOUTH-EAST ----------------------------------

map.nodes[52406156] = Creatii({id = 184939, requires = CREATIAN_SE})
map.nodes[54485576] = Creatii({id = 184939, requires = CREATIAN_SE})
map.nodes[49787650] = Genesii({id = 184940, requires = CREATIAN_SE})
map.nodes[63675613] = Genesii({id = 184940, requires = CREATIAN_SE})
map.nodes[54158396] = Nascii_({id = 184941, requires = CREATIAN_SE})
map.nodes[57116139] = Nascii_({id = 184941, requires = CREATIAN_SE})

--------------------------------- NORTH-WEST ----------------------------------

map.nodes[39144256] = Creatii({id = 184942, requires = CREATIAN_NW})
map.nodes[39995148] = Creatii({id = 184942, requires = CREATIAN_NW})
map.nodes[38313215] = Genesii({id = 184943, requires = CREATIAN_NW})
map.nodes[45363878] = Genesii({id = 184943, requires = CREATIAN_NW})
map.nodes[42744478] = Nascii_({id = 184944, requires = CREATIAN_NW})
map.nodes[42883191] = Nascii_({id = 184944, requires = CREATIAN_NW})

--------------------------------- NORTH-EAST ----------------------------------

map.nodes[53634382] = Creatii({id = 184945, requires = CREATIAN_NE})
map.nodes[56732609] = Creatii({id = 184945, requires = CREATIAN_NE})
map.nodes[52482899] = Genesii({id = 184946, requires = CREATIAN_NE})
map.nodes[63121948] = Genesii({id = 184946, requires = CREATIAN_NE})
map.nodes[59713736] = Nascii_({id = 184947, requires = CREATIAN_NE})
map.nodes[69743354] = Nascii_({id = 184947, requires = CREATIAN_NE})

-------------------------------------------------------------------------------
----------------------------- TALES OF THE EXILE ------------------------------
-------------------------------------------------------------------------------

local Tale = Class('Tale', ns.node.Collectible,
    {group = ns.groups.EXILE_TALES, icon = 4072784})

map.nodes[35755546] = Tale({
    rewards = {Achievement({id = 15509, criteria = 53299})} -- Part 1
})
map.nodes[41796247] = Tale({
    rewards = {Achievement({id = 15509, criteria = 53300})} -- Part 2
})
map.nodes[37544601] = Tale({
    rewards = {Achievement({id = 15509, criteria = 53301})} -- Part 3
})
map.nodes[49827656] = Tale({
    rewards = {Achievement({id = 15509, criteria = 53302})} -- Part 4
})
map.nodes[39033109] = Tale({
    rewards = {Achievement({id = 15509, criteria = 53303})} -- Part 5
})
map.nodes[67422518] = Tale({
    rewards = {Achievement({id = 15509, criteria = 53304})} -- Part 6
})
map.nodes[64833364] = Tale({
    rewards = {Achievement({id = 15509, criteria = 53305})} -- Part 7
})

-------------------------------------------------------------------------------
------------------------------- PATIENT BUFONID -------------------------------
-------------------------------------------------------------------------------

local Bufonid = Class('Bufonid', Collectible, {
    id = 185798,
    icon = 3778581,
    quest = {65727, 65725, 65726, 65728, 65729, 65730, 65731}, -- daily: 65724
    questCount = true,
    rewards = {Mount({item = 188808, id = 1569})}
})

function Bufonid.getters:note()
    local function status(i)
        if C_QuestLog.IsQuestFlaggedCompleted(self.quest[i]) then
            return ns.status.Green(i)
        else
            return ns.status.Red(i)
        end
    end

    local note = L['patient_bufonid_note']
    note = note .. '\n\n' .. status(1) .. ' ' .. L['patient_bufonid_note_day1']
    note = note .. '\n\n' .. status(2) .. ' ' .. L['patient_bufonid_note_day2']
    note = note .. '\n\n' .. status(3) .. ' ' .. L['patient_bufonid_note_day3']
    note = note .. '\n\n' .. status(4) .. ' ' .. L['patient_bufonid_note_day4']
    note = note .. '\n\n' .. status(5) .. ' ' .. L['patient_bufonid_note_day5']
    note = note .. '\n\n' .. status(6) .. ' ' .. L['patient_bufonid_note_day6']
    note = note .. '\n\n' .. status(7) .. ' ' .. L['patient_bufonid_note_day7']
    return note
end

map.nodes[34506548] = Bufonid()
