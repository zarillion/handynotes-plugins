-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Map = ns.Map
local L = ns.locale
local Class = ns.Class

local Rare = ns.node.Rare
local Collectible = ns.node.Collectible
local Treasure = ns.node.Treasure
local Lorewalker = ns.node.Lorewalker
local Squirrel = ns.node.Squirrel

local Achievement = ns.reward.Achievement
local Mount = ns.reward.Mount
local Transmog = ns.reward.Transmog
local Toy = ns.reward.Toy
local Pet = ns.reward.Pet
local Item = ns.reward.Item

local POI = ns.poi.POI

-------------------------------------------------------------------------------

local map = Map({id = 422, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[47606160] = Rare({
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

map.nodes[55346355] = Rare({
    id = 50836,
    rewards = {
        Achievement({id = 7439, criteria = 21053}), -- Glorious!
        Toy({item = 86593}), -- Hozen Beach Ball
        Transmog({item = 87627, slot = L['plate']}), -- Kunchong Carapace Chestguard
        Transmog({item = 87628, slot = L['plate']}), -- Spinebreaker Chestpiece
        Transmog({item = 87629, slot = L['plate']}), -- Chestplate of Manifest Dread
        Transmog({item = 87630, slot = L['mail']}), -- Chestpiece of Twinkling Stars
        Transmog({item = 87631, slot = L['leather']}), -- Jiao-Skin Tunic
        Transmog({item = 87632, slot = L['mail']}), -- Fearsworn Chestpiece
        Transmog({item = 87633, slot = L['leather']}), -- Sharkskin Armor
        Transmog({item = 87634, slot = L['cloth']}), -- Mazu's Robe
        Transmog({item = 87635, slot = L['cloth']}) -- Amber-Starched Robes
    },
    pois = {POI({54856577})}
}) -- Ik-Ik the Nimble

map.nodes[64205848] = Rare({
    id = 50776,
    rewards = {
        Achievement({id = 7439, criteria = 21060}), -- Glorious!
        Pet({item = 86563, id = 836}), -- Hollow Reed
        Transmog({item = 87627, slot = L['plate']}), -- Kunchong Carapace Chestguard
        Transmog({item = 87628, slot = L['plate']}), -- Spinebreaker Chestpiece
        Transmog({item = 87629, slot = L['plate']}), -- Chestplate of Manifest Dread
        Transmog({item = 87630, slot = L['mail']}), -- Chestpiece of Twinkling Stars
        Transmog({item = 87631, slot = L['leather']}), -- Jiao-Skin Tunic
        Transmog({item = 87632, slot = L['mail']}), -- Fearsworn Chestpiece
        Transmog({item = 87633, slot = L['leather']}), -- Sharkskin Armor
        Transmog({item = 87634, slot = L['cloth']}), -- Mazu's Robe
        Transmog({item = 87635, slot = L['cloth']}) -- Amber-Starched Robes
    }
}) -- Nalash Verdantis

map.nodes[71803760] = Rare({
    id = 50347,
    rewards = {
        Achievement({id = 7439, criteria = 21074}), -- Glorious!
        Pet({item = 86564, id = 834}), -- Imbued Jade Fragment
        Transmog({item = 87627, slot = L['plate']}), -- Kunchong Carapace Chestguard
        Transmog({item = 87628, slot = L['plate']}), -- Spinebreaker Chestpiece
        Transmog({item = 87629, slot = L['plate']}), -- Chestplate of Manifest Dread
        Transmog({item = 87630, slot = L['mail']}), -- Chestpiece of Twinkling Stars
        Transmog({item = 87631, slot = L['leather']}), -- Jiao-Skin Tunic
        Transmog({item = 87632, slot = L['mail']}), -- Fearsworn Chestpiece
        Transmog({item = 87633, slot = L['leather']}), -- Sharkskin Armor
        Transmog({item = 87634, slot = L['cloth']}), -- Mazu's Robe
        Transmog({item = 87635, slot = L['cloth']}) -- Amber-Starched Robes
    }
}) -- Karr the Darkener

map.nodes[72802220] = Rare({
    id = 50356,
    rewards = {
        Achievement({id = 7439, criteria = 21081}), -- Glorious!
        Transmog({item = 87627, slot = L['plate']}), -- Kunchong Carapace Chestguard
        Transmog({item = 87628, slot = L['plate']}), -- Spinebreaker Chestpiece
        Transmog({item = 87629, slot = L['plate']}), -- Chestplate of Manifest Dread
        Transmog({item = 87630, slot = L['mail']}), -- Chestpiece of Twinkling Stars
        Transmog({item = 87631, slot = L['leather']}), -- Jiao-Skin Tunic
        Transmog({item = 87632, slot = L['mail']}), -- Fearsworn Chestpiece
        Transmog({item = 87633, slot = L['leather']}), -- Sharkskin Armor
        Transmog({item = 87634, slot = L['cloth']}), -- Mazu's Robe
        Transmog({item = 87635, slot = L['cloth']}) -- Amber-Starched Robes
    }
}) -- Krol the Blade

map.nodes[37802960] = Rare({
    id = 50739,
    rewards = {
        Achievement({id = 7439, criteria = 21067}), -- Glorious!
        Toy({item = 86578}), -- Eternal Warrior's Sigil
        Transmog({item = 87627, slot = L['plate']}), -- Kunchong Carapace Chestguard
        Transmog({item = 87628, slot = L['plate']}), -- Spinebreaker Chestpiece
        Transmog({item = 87629, slot = L['plate']}), -- Chestplate of Manifest Dread
        Transmog({item = 87630, slot = L['mail']}), -- Chestpiece of Twinkling Stars
        Transmog({item = 87631, slot = L['leather']}), -- Jiao-Skin Tunic
        Transmog({item = 87632, slot = L['mail']}), -- Fearsworn Chestpiece
        Transmog({item = 87633, slot = L['leather']}), -- Sharkskin Armor
        Transmog({item = 87634, slot = L['cloth']}), -- Mazu's Robe
        Transmog({item = 87635, slot = L['cloth']}) -- Amber-Starched Robes
    },
    pois = {POI({35603080, 39204180})}
}) -- Gar'lok

map.nodes[34712321] = Rare({
    id = 50821,
    rewards = {
        Achievement({id = 7439, criteria = 21088}), -- Glorious!
        Toy({item = 86589}), -- Ai-Li's Skymirror
        Transmog({item = 87627, slot = L['plate']}), -- Kunchong Carapace Chestguard
        Transmog({item = 87628, slot = L['plate']}), -- Spinebreaker Chestpiece
        Transmog({item = 87629, slot = L['plate']}), -- Chestplate of Manifest Dread
        Transmog({item = 87630, slot = L['mail']}), -- Chestpiece of Twinkling Stars
        Transmog({item = 87631, slot = L['leather']}), -- Jiao-Skin Tunic
        Transmog({item = 87632, slot = L['mail']}), -- Fearsworn Chestpiece
        Transmog({item = 87633, slot = L['leather']}), -- Sharkskin Armor
        Transmog({item = 87634, slot = L['cloth']}), -- Mazu's Robe
        Transmog({item = 87635, slot = L['cloth']}) -- Amber-Starched Robes
    }
}) -- Ai-Li Skymirror

map.nodes[25102840] = Rare({
    id = 50334,
    rewards = {
        Achievement({id = 7439, criteria = 21102}), -- Glorious!
        Transmog({item = 87627, slot = L['plate']}), -- Kunchong Carapace Chestguard
        Transmog({item = 87628, slot = L['plate']}), -- Spinebreaker Chestpiece
        Transmog({item = 87629, slot = L['plate']}), -- Chestplate of Manifest Dread
        Transmog({item = 87630, slot = L['mail']}), -- Chestpiece of Twinkling Stars
        Transmog({item = 87631, slot = L['leather']}), -- Jiao-Skin Tunic
        Transmog({item = 87632, slot = L['mail']}), -- Fearsworn Chestpiece
        Transmog({item = 87633, slot = L['leather']}), -- Sharkskin Armor
        Transmog({item = 87634, slot = L['cloth']}), -- Mazu's Robe
        Transmog({item = 87635, slot = L['cloth']}) -- Amber-Starched Robes
    }
}) -- Dak the Breaker

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[33003014] = Treasure({
    label = '{item:86521}',
    quest = 31431,
    rewards = {
        Achievement({id = 7284, criteria = {id = 1, qty = true}}), -- Is Another Man's Treasure
        Item({item = 86521})
    }
}) -- Lucid Amulet of the Agile Mind

map.nodes[28894198] = Treasure({
    label = '{item:86527}',
    quest = 31438,
    rewards = {
        Achievement({id = 7284, criteria = {id = 1, qty = true}}), -- Is Another Man's Treasure
        Transmog({item = 86527, slot = L['1h_sword']})
    }
}) -- Blade of the Poisoned Mind

map.nodes[26005030] = Treasure({
    label = '{item:86525}',
    quest = 31436,
    note = L['in_water_cave'],
    rewards = {
        Achievement({id = 7284, criteria = {id = 1, qty = true}}), -- Is Another Man's Treasure
        Item({item = 86525})
    },
    pois = {POI({25725384})}
}) -- Bloodsoaked Chitin Fragment

map.nodes[30209080] = Treasure({
    label = '{item:86524}',
    quest = 31435,
    rewards = {
        Achievement({id = 7284, criteria = {id = 1, qty = true}}), -- Is Another Man's Treasure
        Transmog({item = 86524, slot = L['staff']})
    }
}) -- Dissector's Staff of Mutation

map.nodes[56707770] = Treasure({
    label = '{item:86523}',
    quest = 31434,
    rewards = {
        Achievement({id = 7284, criteria = {id = 1, qty = true}}), -- Is Another Man's Treasure
        Transmog({item = 86523, slot = L['2h_sword']})
    }
}) -- Swarming Cleaver of Ka'roz

map.nodes[66306650] = Treasure({
    label = '{item:86522}',
    quest = 31433,
    rewards = {
        Achievement({id = 7284, criteria = {id = 1, qty = true}}), -- Is Another Man's Treasure
        Transmog({item = 86522, slot = L['1h_sword']})
    }
}) -- Blade of the Prime

map.nodes[54305650] = Treasure({
    label = '{item:86526}',
    quest = 31437,
    rewards = {
        Achievement({id = 7284, criteria = {id = 1, qty = true}}), -- Is Another Man's Treasure
        Item({item = 86526})
    }
}) -- Swarmkeeper's Medallion

map.nodes[42006330] = Treasure({
    label = '{item:86529}',
    quest = 31432,
    note = '{npc:65552}',
    rewards = {
        Achievement({id = 7284, criteria = {id = 1, qty = true}}), -- Is Another Man's Treasure
        Item({item = 86529})
    }
}) -- Manipulator's Talisman

map.nodes[71803610] = Treasure({
    label = '{item:86519}',
    quest = 31429,
    rewards = {
        Achievement({id = 7284, criteria = {id = 1, qty = true}}), -- Is Another Man's Treasure
        Transmog({item = 86519, slot = L['dagger']})
    }
}) -- Wind-Reaver's Dagger of Quick Strikes

map.nodes[48803000] = Treasure({
    label = '{item:86520}',
    quest = 31430,
    rewards = {
        Achievement({id = 7284, criteria = {id = 1, qty = true}}), -- Is Another Man's Treasure
        Transmog({item = 86520, slot = L['polearm']}), -- Name
    }
}) -- Malik's Stalwart Spear

-------------------------------------------------------------------------------
--------------------------------- LOREWALKER ----------------------------------
-------------------------------------------------------------------------------

map.nodes[67526091] = Lorewalker({
    rewards = {Achievement({id = 6716, criteria = 19620})}
}) -- Between a Saurok and a Hard Place - The Deserters

map.nodes[35533261] = Lorewalker({
    rewards = {Achievement({id = 6857, criteria = 19800})}
}) -- Heart of the Mantid Swarm - The Empress

map.nodes[52501003] = Lorewalker({
    rewards = {Achievement({id = 6857, criteria = 19799})},
    pois = {POI({53631564})}
}) -- Heart of the Mantid Swarm - Amber

map.nodes[48403281] = Lorewalker({
    rewards = {Achievement({id = 6857, criteria = 19797})}
}) -- Heart of the Mantid Swarm - Cycle of the Mantid

map.nodes[59915473] = Lorewalker({
    rewards = {Achievement({id = 6857, criteria = 19798})}
}) -- Heart of the Mantid Swarm - Mantid Society

-------------------------------------------------------------------------------
---------------------------- To All the Squirrels -----------------------------
-------------------------------------------------------------------------------

map.nodes[65805310] = Squirrel({
    id = 64803,
    rewards = {Achievement({id = 6350, criteria = 3})} -- To All the Squirrels I Once Caressed?
}) -- Clouded Hedgehog

map.nodes[64205520] = Squirrel({
    id = 64807,
    rewards = {Achievement({id = 6350, criteria = 14})} -- To All the Squirrels I Once Caressed?
}) -- Resilient Roach

map.nodes[44806250] = Squirrel({
    id = 63329,
    rewards = {Achievement({id = 6350, criteria = 6})} -- To All the Squirrels I Once Caressed?
}) -- Emperor Crab