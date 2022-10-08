-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Map = ns.Map
local L = ns.locale

local Rare = ns.node.Rare
local Treasure = ns.node.Treasure
local Squirrel = ns.node.Squirrel
local Lorewalker = ns.node.Lorewalker

local Achievement = ns.reward.Achievement
local Mount = ns.reward.Mount
local Transmog = ns.reward.Transmog
local Toy = ns.reward.Toy
local Pet = ns.reward.Pet
local Item = ns.reward.Item

local POI = ns.poi.POI
local Path = ns.poi.Path
-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------
local map = Map({id = 388, settings = true})
local niuzao_catacombs = Map({id = 389, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[36608560] = Rare({
    id = 69842,
    note = L['zandalari_warbringer_note'],
    rewards = {
        Achievement({
            id = 8078,
            criteria = {
                {id = 2, qty = true, suffix = L['zandalari_warbringer_killed']}
            }
        }), Mount({item = 94229, id = 535}), -- Reins of the Slate Primordial Direhorn
        Mount({item = 94230, id = 534}), -- Reins of the Amber Primordial Direhorn
        Mount({item = 94231, id = 536}) -- Reins of the Jade Primordial Direhorn
    }
}) -- Zandalari Warbringer

map.nodes[66408680] = Rare({
    id = 50772,
    rewards = {
        Achievement({id = 7439, criteria = 21059}) -- Glorious!
    }
}) -- Eshelon

map.nodes[63003560] = Rare({
    id = 50355,
    rewards = {
        Achievement({id = 7439, criteria = 21080}) -- Glorious!
    }
}) -- Kah'tir

map.nodes[46407440] = Rare({
    id = 50734,
    note = L['multiple_spawns'],
    rewards = {
        Achievement({id = 7439, criteria = 21066}) -- Glorious!
    },
    pois = {POI({42007840, 47808420, 47808860})}
}) -- Lith'ik the Stalker

map.nodes[66605220] = Rare({
    id = 50333,
    rewards = {
        Achievement({id = 7439, criteria = 21101}) -- Glorious!
    },
    pois = {
        Path({
            64204980, 64405060, 65405060, 66205040, 66405100, 66405220,
            66405260, 66605280, 66605220, 66805100, 67005020, 67605000,
            67804920, 67604800, 67204700, 67404560, 66604440
        })
    }
}) -- Lon the Bull

map.nodes[54006340] = Rare({
    id = 50344,
    rewards = {
        Achievement({id = 7439, criteria = 21073}) -- Glorious!
    }
}) -- Norlaxx

map.nodes[59208560] = Rare({
    id = 50791,
    rewards = {
        Achievement({id = 7439, criteria = 21094}) -- Glorious!
    }
}) -- Siltriss the Sharpener

map.nodes[67607460] = Rare({
    id = 50832,
    rewards = {
        Achievement({id = 7439, criteria = 21052}) -- Glorious!
    }
}) -- The Yowler

map.nodes[32006180] = Rare({
    id = 50820,
    rewards = {
        Achievement({id = 7439, criteria = 21087}) -- Glorious!
    }
}) -- Yul Wildpaw

map.nodes[37205760] = Rare({
    id = 66900,
    note = L['in_cave'],
    rewards = {
        Toy({item = 90067}) -- B. F. F. Necklace
    },
    pois = {POI({32806120})}
}) -- Huggalon the Heart Watcher

niuzao_catacombs.nodes[64052206] = Rare({
    id = 66900,
    rewards = {
        Toy({item = 90067}) -- B. F. F. Necklace
    }
}) -- Huggalon the Heart Watcher

map.nodes[20400740] = Rare({
    id = 66467,
    rewards = {
        Pet({item = 94595, id = 1201}) -- Spawn of G'nathus
    }
}) -- G'nathus

-------------------------------------------------------------------------------
--------------------------------- Treasures -----------------------------------
-------------------------------------------------------------------------------

map.nodes[66204470] = Treasure({
    quest = 31425,
    label = '{item:86518}',
    rewards = {
        Achievement({id = 7284, criteria = {id = 1, qty = true}}), -- Is Another Man's Treasure
        Transmog({item = 86518, slot = L['1h_mace']})
    }
}) -- Yaungol Fire Carrier

map.nodes[62823405] = Treasure({
    label = L['abandoned_crate_of_goods'],
    note = L['abandoned_crate_of_goods_note'],
    quest = 31427,
    rewards = {
        Achievement({id = 7997, criteria = {id = 1, qty = true}}) -- Riches of Pandaria
    }
}) -- Abandoned Crate of Goods

map.nodes[65808610] = Treasure({
    label = '{item:86472}',
    quest = 31426,
    rewards = {
        Achievement({id = 7997, criteria = {id = 1, qty = true}}), -- Riches of Pandaria
        Item({item = 86472})
    }
}) -- Amber Encased Moth

map.nodes[53905840] = Treasure({
    label = '{item:86517}',
    note = L['multiple_spawns'],
    quest = 31426,
    rewards = {
        Achievement({id = 7997, criteria = {id = 1, qty = true}}), -- Riches of Pandaria
        Item({item = 86517})
    },
    pois = {
        POI({
            50905520, 51105730, 52805620, 52005870, 52806000, 53806140,
            55506100, 57505850, 57405670, 56005550, 55605410
        })
    }
}) -- Hardened Sap of Kri'vess

local fragment_of_dread = Treasure({
    label = '{item:86516}',
    note = L['in_cave'] .. '\n' .. L['multiple_spawns'],
    quest = 31426,
    rewards = {
        Achievement({id = 7997, criteria = {id = 1, qty = true}}), -- Riches of Pandaria
        Item({item = 86516})
    }
}) -- Fragment of Dread
map.nodes[32806120] = fragment_of_dread
niuzao_catacombs.nodes[37708700] = fragment_of_dread
niuzao_catacombs.nodes[47808900] = fragment_of_dread
niuzao_catacombs.nodes[56506470] = fragment_of_dread
niuzao_catacombs.nodes[64702130] = fragment_of_dread

-------------------------------------------------------------------------------
--------------------------------- LOREWALKER ----------------------------------
-------------------------------------------------------------------------------

map.nodes[84107284] = Lorewalker({
    rewards = {Achievement({id = 6847, criteria = 19776})}
}) -- The Song of the Yaungol - Trapped in a Strange Land

map.nodes[37756290] = Lorewalker({
    rewards = {Achievement({id = 6855, criteria = 19789})}
}) -- The Seven Burdens of Shaohao - The Emperor's Burden - Part 5

map.nodes[65505011] = Lorewalker({
    rewards = {Achievement({id = 6847, criteria = 19774})}
}) -- The Song of the Yaungol - Dominance

-------------------------------------------------------------------------------
---------------------------- To All the Squirrels -----------------------------
-------------------------------------------------------------------------------

map.nodes[49007170] = Squirrel({
    id = 64802,
    rewards = {Achievement({id = 6350, criteria = 17})}
}) -- Yakrat

map.nodes[51707100] = Squirrel({
    id = 65191,
    rewards = {Achievement({id = 6350, criteria = 13})}
}) -- Mongoose
