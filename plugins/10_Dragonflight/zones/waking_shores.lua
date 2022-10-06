-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible
local Disturbeddirt = ns.node.Disturbeddirt
local Dragonglyph = ns.node.Dragonglyph
local Flag = ns.node.Flag
local Rare = ns.node.Rare
local Scoutpack = ns.node.Scoutpack
local Treasure = ns.node.Treasure
-- local PetBattle = ns.node.PetBattle

local Achievement = ns.reward.Achievement
-- local Mount = ns.reward.Mount
local Pet = ns.reward.Pet

local Path = ns.poi.Path
local POI = ns.poi.POI

-------------------------------------------------------------------------------

local map = Map({id = 2022, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[18001600] = Rare({ -- review -- required 67030
    id = 193132,
    quest = 69838,
    rewards = {Achievement({id = 16676, criteria = 56045})}
}) -- Amethyzar the Glittering

map.nodes[20001600] = Rare({ -- review
    id = 187945,
    quest = nil,
    rewards = {Achievement({id = 16676, criteria = 56035})}
}) -- Anhydros the Tidetaker

map.nodes[54517174] = Rare({ -- review -- required 67030
    id = 193135,
    quest = 69839,
    rewards = {Achievement({id = 16676, criteria = 56041})}
}) -- Azra's Prized Peony

map.nodes[22001600] = Rare({ -- review
    id = 190986,
    quest = nil,
    rewards = {Achievement({id = 16676, criteria = 56059})}
}) -- Battlehorn Pyrhus

map.nodes[52916529] = Rare({
    id = 192738,
    quest = nil,
    note = L['brundin_the_dragonbane_note'],
    rewards = {Achievement({id = 16676, criteria = 56038})},
    pois = {
        Path({
            52916529, 53126596, 52996668, 51666681, 49796541, 48726550,
            48326651, 47886773, 47946932, 47937123, 46887338, 46507372,
            45637384, 43397311, 42667232, 42037065, 41256910, 40906872,
            39516811, 35897202, 33547067, 33146983
        })
    }
}) -- Brundin the Dragonbane (Qalashi War Party)

map.nodes[26847642] = Rare({
    id = 193198,
    quest = 72127,
    rewards = {Achievement({id = 16676, criteria = 56050})}
}) -- Captain Lancer

map.nodes[26285788] = Rare({
    id = 186783,
    quest = nil,
    rewards = {Achievement({id = 16676, criteria = 56056})},
    pois = {
        Path({
            26285788, 26545827, 25985955, 26315995, 26585932, 27316007,
            27396026, 29306229
        })
    }
}) -- Cauldronbearer Blakor

map.nodes[26001600] = Rare({ -- review
    id = 190991,
    quest = nil,
    rewards = {Achievement({id = 16676, criteria = 56060})}
}) -- Char

map.nodes[31785474] = Rare({ -- review -- required 67030
    id = 190985,
    quest = nil,
    rewards = {
        Achievement({id = 16676, criteria = 56053}),
        Achievement({id = 16496, criteria = 55867})
    }
}) -- Death's Shadow

map.nodes[18001800] = Rare({ -- review
    id = 193217,
    quest = nil,
    rewards = {Achievement({id = 16676, criteria = 56039})}
}) -- Drakewing

map.nodes[21626478] = Rare({ -- review
    id = 193134,
    quest = 72128,
    rewards = {Achievement({id = 16676, criteria = 56049})}
}) -- Enkine the Voracious

map.nodes[33127632] = Rare({
    id = 193154,
    quest = 72130,
    rewards = {Achievement({id = 16676, criteria = 56048})}
}) -- Forgotten Gryphon

map.nodes[52345829] = Rare({ -- review
    id = 196056,
    quest = 70718,
    rewards = {Achievement({id = 16676, criteria = 56033})}
}) -- Gushgut the Beaksinker

map.nodes[43007465] = Rare({ -- review
    id = 193263,
    quest = nil,
    rewards = {Achievement({id = 16676, criteria = 56037})}
}) -- Helmet Missingway

map.nodes[20001800] = Rare({ -- review
    id = 193266,
    quest = nil,
    rewards = {Achievement({id = 16676, criteria = 56055})}
}) -- Lepidoralia the Resplendent

map.nodes[39596353] = Rare({ -- review -- required 67030
    id = 186827,
    quest = 70979,
    rewards = {Achievement({id = 16676, criteria = 56046})}
}) -- Magmaton

map.nodes[22207649] = Rare({ -- review -- required 67030
    id = 193152,
    quest = 69848,
    rewards = {Achievement({id = 16676, criteria = 56047})}
}) -- Massive Magmashell

map.nodes[22001800] = Rare({ -- review
    id = 193256,
    quest = nil,
    rewards = {Achievement({id = 16676, criteria = 56034})}
}) -- Nulltheria the Void Gazer

map.nodes[81634820] = Rare({ -- review -- required 67030
    id = 193118,
    quest = 70983,
    rewards = {Achievement({id = 16676, criteria = 56043})}
}) -- O'nank Shorescour

map.nodes[24001800] = Rare({ -- review
    id = 192362,
    quest = nil,
    rewards = {Achievement({id = 16676, criteria = 56051})}
}) -- Possessive Hornswog

map.nodes[26001800] = Rare({ -- review
    id = 193232,
    quest = nil,
    rewards = {Achievement({id = 16676, criteria = 56061})}
}) -- Rasnar the War Ender

map.nodes[25366070] = Rare({
    id = 187598,
    quest = nil,
    rewards = {Achievement({id = 16676, criteria = 56057})}
}) -- Rohzor Forgesmash

map.nodes[23755734] = Rare({ -- review -- required 67030
    id = 189822,
    quest = nil,
    note = L['shasith_note'],
    rewards = {
        Achievement({id = 16676, criteria = 56054}),
        Achievement({id = 16496, criteria = 55869})
    },
    pois = {POI({27226096})} -- Entrance
}) -- Shas'ith

map.nodes[22002000] = Rare({ -- review
    id = 193181,
    quest = nil,
    rewards = {Achievement({id = 16676, criteria = 56036})}
}) -- Skewersnout

map.nodes[69486653] = Rare({ -- review -- required 67030
    id = 193120,
    quest = 69668,
    rewards = {Achievement({id = 16676, criteria = 56044})}
}) -- Smogswog the Firebreather

map.nodes[24002000] = Rare({ -- review
    id = 193228,
    quest = nil,
    rewards = {Achievement({id = 16676, criteria = 56042})}
}) -- Snappy

map.nodes[26002000] = Rare({ -- review
    id = 193148,
    quest = 69841,
    rewards = {Achievement({id = 16676, criteria = 56040})}
}) -- Thunderous Matriarch

map.nodes[33525576] = Rare({
    id = 187886,
    quest = nil,
    note = L['in_small_cave'],
    rewards = {Achievement({id = 16676, criteria = 56058})}
}) -- Turboris

map.nodes[18002200] = Rare({ -- review
    id = 186859,
    quest = 70763,
    rewards = {Achievement({id = 16676, criteria = 56052})}
}) -- Worldcarver A'tir

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

-- https://www.wowhead.com/beta/achievement=16297/treasures-of-the-waking-shores#comments

map.nodes[40454136] = Treasure({ -- required 65537, 70599, 70527
    quest = 70599,
    requires = ns.requirement.Item(199061), -- A Guide to Rare Fish
    rewards = {
        Achievement({id = 16297, criteria = 54699}),
        Pet({item = 193852, id = 3269}) -- Azure Frillfish
    }
}) -- Bubble Drifter

map.nodes[69314658] = Treasure({
    quest = 70346,
    rewards = {Achievement({id = 16297, criteria = 54702})}
}) -- Dead Man's Chestplate

map.nodes[20002200] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 16297, criteria = 55403})}
}) -- Misty Treasure Chest

map.nodes[22002200] = Treasure({ -- required 72021, 72020
    quest = nil,
    note = L['onyx_gem_cluster_note'],
    requires = ns.requirement.Item(200738), -- Onyx Gem Cluster Map
    rewards = {Achievement({id = 16297, criteria = 55448})},
    pois = {POI({46948289})}
}) -- Onyx Gem Cluster

map.nodes[48865180] = Treasure({
    quest = 70600, -- 70409
    note = L['replica_dragon_goblet_note'],
    requires = ns.requirement.Item(198854), -- Archeologist Artifact Notes
    rewards = {Achievement({id = 16297, criteria = 54698})},
    pois = {POI({75423397})}
}) -- Replica Dragon Goblet

map.nodes[24002200] = Treasure({ -- required 70528, 70598
    quest = nil,
    requires = ns.requirement.Item(199062), -- Ruby Gem Cluster Map
    rewards = {Achievement({id = 16297, criteria = 54713})}
}) -- Ruby Gem Cluster

map.nodes[26002200] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 16297, criteria = 54703})}
}) -- Torn Riding Pack

map.nodes[46713121] = Treasure({
    quest = 70345,
    rewards = {Achievement({id = 16297, criteria = 54701})}
}) -- Yennu's Kite

-------------------------------------------------------------------------------

map.nodes[64926959] = Treasure({
    quest = 67048,
    label = L['hidden_hornswog_hoard'],
    note = L['hidden_hornswog_hoard_note'],
    rewards = {
        Pet({item = 199916, id = 3365}) -- Roseate Hopper
    },
    pois = {POI({66165529, 39638468, 47728360})}
}) -- Hidden Hornswog Hoard

map.nodes[43156737] = Treasure({
    quest = nil,
    requires = ns.requirement.Item(191122), -- Fullsails Supply Chest Key
    label = L['fullsails_supply_chest']
}) -- Fullsails Supply Chest

-------------------------------------------------------------------------------
-------------------------------- DRAGON GLYPHS --------------------------------
-------------------------------------------------------------------------------

map.nodes[57655483] = Dragonglyph({rewards = {Achievement({id = 15991})}}) -- Dragon Glyphs: Crumbling Life Archway
map.nodes[69184623] = Dragonglyph({rewards = {Achievement({id = 16051})}}) -- Dragon Glyphs: Dragonheart Outpost
map.nodes[58097858] = Dragonglyph({rewards = {Achievement({id = 16669})}}) -- Dragon Glyphs: Flashfrost Enclave
map.nodes[74375751] = Dragonglyph({rewards = {Achievement({id = 16668})}}) -- Dragon Glyphs: Life-Binder Observatory Rostrum
map.nodes[52601712] = Dragonglyph({rewards = {Achievement({id = 15990})}}) -- Dragon Glyphs: Life-Binder Observatory Tower
map.nodes[40987191] = Dragonglyph({rewards = {Achievement({id = 15987})}}) -- Dragon Glyphs: Obsidian Bulwark
map.nodes[21915141] = Dragonglyph({rewards = {Achievement({id = 16053})}}) -- Dragon Glyphs: Obsidian Throne
map.nodes[54437422] = Dragonglyph({rewards = {Achievement({id = 15988})}}) -- Dragon Glyphs: Ruby Life Pools
map.nodes[48828664] = Dragonglyph({rewards = {Achievement({id = 16670})}}) -- Dragon Glyphs: Rubyscale Outpost (Ohn'ahran Plains)
map.nodes[73212051] = Dragonglyph({rewards = {Achievement({id = 16052})}}) -- Dragon Glyphs: Scalecracker Peak
map.nodes[75265707] = Dragonglyph({rewards = {Achievement({id = 15985})}}) -- Dragon Glyphs: Skytop Observatory
map.nodes[46395207] = Dragonglyph({rewards = {Achievement({id = 15989})}}) -- Dragon Glyphs: The Overflowing Spring
map.nodes[74943750] = Dragonglyph({rewards = {Achievement({id = 15986})}}) -- Dragon Glyphs: Wingrest Embassy

-------------------------------------------------------------------------------
------------------ DRAGONSCALE EXPEDITION: THE HIGHEST PEAKS ------------------
-------------------------------------------------------------------------------

map.nodes[43976294] = Flag({quest = 70825})
map.nodes[54797412] = Flag({quest = 71204})
map.nodes[56534513] = Flag({quest = 70823})
map.nodes[73353884] = Flag({quest = 70824})
-- map.nodes[] = Flag({quest = })

-------------------------------------------------------------------------------
------------------------------- SYMBOLS OF HOPE -------------------------------
-------------------------------------------------------------------------------

local Kite = Class('Kite', Collectible, {
    icon = 133837,
    label = '{npc:198118}',
    group = ns.groups.KITE
})

map.nodes[73193776] = Kite({
    quest = 72096,
    rewards = {Achievement({id = 16584, criteria = 55841})}
})
map.nodes[73035292] = Kite({
    quest = 72097,
    rewards = {Achievement({id = 16584, criteria = 55845})}
})
map.nodes[56735799] = Kite({
    quest = 72098,
    rewards = {Achievement({id = 16584, criteria = 55843})}
})
map.nodes[61698083] = Kite({
    quest = 72099,
    rewards = {Achievement({id = 16584, criteria = 55844})}
})
map.nodes[43556382] = Kite({
    quest = 72100,
    rewards = {Achievement({id = 16584, criteria = 55845})}
})
map.nodes[24048994] = Kite({
    quest = 72101,
    rewards = {Achievement({id = 16584, criteria = 55846})}
})
map.nodes[50275562] = Kite({
    quest = 72102,
    rewards = {Achievement({id = 16584, criteria = 55847})}
})
map.nodes[48863994] = Kite({
    quest = 72104,
    rewards = {Achievement({id = 16584, criteria = 55849})}
})
map.nodes[57124639] = Kite({
    quest = 72103,
    rewards = {Achievement({id = 16584, criteria = 55848})}
})
map.nodes[57011998] = Kite({
    quest = 72105,
    rewards = {Achievement({id = 16584, criteria = 55850})}
})

-------------------------------------------------------------------------------
------------------------------- DISTURBED DIRT --------------------------------
-------------------------------------------------------------------------------

map.nodes[40674138] = Disturbeddirt()
map.nodes[44743555] = Disturbeddirt()
map.nodes[50834912] = Disturbeddirt()
map.nodes[52354997] = Disturbeddirt()
map.nodes[54398542] = Disturbeddirt()
map.nodes[54895103] = Disturbeddirt()
map.nodes[57548174] = Disturbeddirt()
map.nodes[57858225] = Disturbeddirt()
map.nodes[61815501] = Disturbeddirt()
map.nodes[70746975] = Disturbeddirt()
map.nodes[78502992] = Disturbeddirt()

-------------------------------------------------------------------------------
-------------------------- EXPEDITION SCOUT'S PACKS ---------------------------
-------------------------------------------------------------------------------

map.nodes[26628764] = Scoutpack()
map.nodes[43345237] = Scoutpack()
map.nodes[44495926] = Scoutpack()
map.nodes[45663986] = Scoutpack()
map.nodes[51668253] = Scoutpack()
map.nodes[51824744] = Scoutpack()
map.nodes[52745025] = Scoutpack()
map.nodes[56857953] = Scoutpack()
map.nodes[61886605] = Scoutpack()
map.nodes[66505198] = Scoutpack()
map.nodes[68225004] = Scoutpack()
map.nodes[82055012] = Scoutpack()

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

-- map.nodes[] = PetBattle({
--     id = 196264,
--     rewards = {Achievement({id = 16464, criteria = 55485})}
-- }) -- Haniko

-- map.nodes[] = PetBattle({
--     id = 189376,
--     rewards = {Achievement({id = 16464, criteria = 55488})}
-- }) -- Swog
