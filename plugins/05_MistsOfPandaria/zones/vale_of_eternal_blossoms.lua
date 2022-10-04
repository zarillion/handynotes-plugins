-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Map = ns.Map
local L = ns.locale
local Class = ns.Class

local Rare = ns.node.Rare
local Collectible = ns.node.Collectible
local Lorewalker = ns.node.Lorewalker
local Squirrel = ns.node.Squirrel

local Achievement = ns.reward.Achievement
local Mount = ns.reward.Mount
local Transmog = ns.reward.Transmog
local Toy = ns.reward.Toy

local Path = ns.poi.Path
local POI = ns.poi.POI
-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------
local map = Map({id = 390, settings = true})
local guolai_halls = Map({id = 395, settings = true})

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

map.nodes[42606900] = Rare({
    id = 50822,
    note = L['in_small_cave'],
    rewards = {
        Achievement({id = 7439, criteria = 21089}), -- Glorious!
        Toy({item = 86590}), -- Essence of the Breeze
        Transmog({item = 87636, slot = L['cloak']}), -- Cloak of the Forgotten Emperor
        Transmog({item = 87637, slot = L['cloak']}), -- Jade Harbinger's Cloak
        Transmog({item = 87638, slot = L['cloak']}), -- Cloak of Tranquil Clouds
        Transmog({item = 87639, slot = L['cloak']}), -- Tattered Guo-Lai Dynasty Cloak
        Transmog({item = 87640, slot = L['cloak']}) -- Softfoot's Drape
    },
    pois = {POI({41006848})}
}) -- Ai-Ran the Shifting Cloud

map.nodes[14005860] = Rare({
    id = 50749,
    rewards = {
        Achievement({id = 7439, criteria = 21068}), -- Glorious!
        Toy({item = 134023}), -- Bottled Tornado
        Transmog({item = 87636, slot = L['cloak']}), -- Cloak of the Forgotten Emperor
        Transmog({item = 87637, slot = L['cloak']}), -- Jade Harbinger's Cloak
        Transmog({item = 87638, slot = L['cloak']}), -- Cloak of Tranquil Clouds
        Transmog({item = 87639, slot = L['cloak']}), -- Tattered Guo-Lai Dynasty Cloak
        Transmog({item = 87640, slot = L['cloak']}) -- Softfoot's Drape
    }
}) -- Kal'tik the Blight

map.nodes[15003560] = Rare({
    id = 50349,
    rewards = {
        Achievement({id = 7439, criteria = 21075}), -- Glorious!
        Toy({item = 86571}), -- Kang's Bindstone
        Transmog({item = 87636, slot = L['cloak']}), -- Cloak of the Forgotten Emperor
        Transmog({item = 87637, slot = L['cloak']}), -- Jade Harbinger's Cloak
        Transmog({item = 87638, slot = L['cloak']}), -- Cloak of Tranquil Clouds
        Transmog({item = 87639, slot = L['cloak']}), -- Tattered Guo-Lai Dynasty Cloak
        Transmog({item = 87640, slot = L['cloak']}) -- Softfoot's Drape
    }
}) -- Kang the Soul Thief

map.nodes[31009160] = Rare({
    id = 50840,
    rewards = {
        Achievement({id = 7439, criteria = 21054}), -- Glorious!
        Toy({item = 86594}), -- Helpful Wikky's Whistle
        Transmog({item = 87636, slot = L['cloak']}), -- Cloak of the Forgotten Emperor
        Transmog({item = 87637, slot = L['cloak']}), -- Jade Harbinger's Cloak
        Transmog({item = 87638, slot = L['cloak']}), -- Cloak of Tranquil Clouds
        Transmog({item = 87639, slot = L['cloak']}), -- Tattered Guo-Lai Dynasty Cloak
        Transmog({item = 87640, slot = L['cloak']}) -- Softfoot's Drape
    }
}) -- Major Nanners

map.nodes[38605500] = Rare({
    id = 50806,
    rewards = {
        Achievement({id = 7439, criteria = 21096}), -- Glorious!
        Toy({item = 86586}), -- Panflute of Pandaria
        Transmog({item = 87636, slot = L['cloak']}), -- Cloak of the Forgotten Emperor
        Transmog({item = 87637, slot = L['cloak']}), -- Jade Harbinger's Cloak
        Transmog({item = 87638, slot = L['cloak']}), -- Cloak of Tranquil Clouds
        Transmog({item = 87639, slot = L['cloak']}), -- Tattered Guo-Lai Dynasty Cloak
        Transmog({item = 87640, slot = L['cloak']}) -- Softfoot's Drape
    },
    pois = {
        Path({
            35006160, 35805960, 37605720, 39205360, 40205360, 42605380, 44005160
        })
    }
}) -- Moldo One-Eye

map.nodes[69603080] = Rare({
    id = 50780,
    rewards = {
        Achievement({id = 7439, criteria = 21061}), -- Glorious!
        Toy({item = 86582}), -- Aqua Jewel
        Transmog({item = 87636, slot = L['cloak']}), -- Cloak of the Forgotten Emperor
        Transmog({item = 87637, slot = L['cloak']}), -- Jade Harbinger's Cloak
        Transmog({item = 87638, slot = L['cloak']}), -- Cloak of Tranquil Clouds
        Transmog({item = 87639, slot = L['cloak']}), -- Tattered Guo-Lai Dynasty Cloak
        Transmog({item = 87640, slot = L['cloak']}) -- Softfoot's Drape
    }
}) -- Sahn Tidehunter

map.nodes[39802500] = Rare({
    id = 50359,
    rewards = {
        Achievement({id = 7439, criteria = 21082}), -- Glorious!
        Toy({item = 86575}), -- Chalice of Secrets
        Transmog({item = 87636, slot = L['cloak']}), -- Cloak of the Forgotten Emperor
        Transmog({item = 87637, slot = L['cloak']}), -- Jade Harbinger's Cloak
        Transmog({item = 87638, slot = L['cloak']}), -- Cloak of Tranquil Clouds
        Transmog({item = 87639, slot = L['cloak']}), -- Tattered Guo-Lai Dynasty Cloak
        Transmog({item = 87640, slot = L['cloak']}) -- Softfoot's Drape
    }
}) -- Urgolax

map.nodes[87804460] = Rare({
    id = 50336,
    rewards = {
        Achievement({id = 7439, criteria = 21103}), -- Glorious!
        Toy({item = 86568}), -- Mr. Smite's Brass Compass
        Transmog({item = 87636, slot = L['cloak']}), -- Cloak of the Forgotten Emperor
        Transmog({item = 87637, slot = L['cloak']}), -- Jade Harbinger's Cloak
        Transmog({item = 87638, slot = L['cloak']}), -- Cloak of Tranquil Clouds
        Transmog({item = 87639, slot = L['cloak']}), -- Tattered Guo-Lai Dynasty Cloak
        Transmog({item = 87640, slot = L['cloak']}) -- Softfoot's Drape
    }
}) -- Yorik Sharpeye

map.nodes[35008960] = Rare({
    id = 58778,
    rewards = {
        Achievement({id = 7317, criteria = 20521}) -- One Many Army
    }
}) -- Aetha

map.nodes[16804900] = Rare({
    id = 58949,
    rewards = {
        Achievement({id = 7317, criteria = 20530}) -- One Many Army
    }
}) -- Bai-Jin the Butcher

map.nodes[28804280] = Rare({
    id = 63695,
    rewards = {
        Achievement({id = 7317, criteria = 20524}) -- One Many Army
    }
}) -- Baolai the Immolator

map.nodes[4665900] = Rare({
    id = 58768,
    rewards = {
        Achievement({id = 7317, criteria = 20517}) -- One Many Army
    }
}) -- Cracklefang

map.nodes[28605660] = Rare({
    id = 63101,
    rewards = {
        Achievement({id = 7317, criteria = 20519}) -- One Many Army
    },
    pois = {
        Path({
            26605140, 27605400, 28605660, 28605660, 30005720, 30605820, 30805980
        })
    }
}) -- General Temuja

map.nodes[27001360] = Rare({
    id = 62880,
    rewards = {
        Achievement({id = 7317, criteria = 20528}) -- One Many Army
    }
}) -- Gochao the Ironfist

map.nodes[06205860] = Rare({
    id = 63978,
    rewards = {
        Achievement({id = 7317, criteria = 20531}) -- One Many Army
    }
}) -- Kri'chon

map.nodes[66603980] = Rare({
    id = 58771,
    rewards = {
        Achievement({id = 7317, criteria = 20522}) -- One Many Army
    }
}) -- Quid

map.nodes[30607860] = Rare({
    id = 63240,
    rewards = {
        Achievement({id = 7317, criteria = 20520}) -- One Many Army

    }
}) -- Shadowmaster Sydow

map.nodes[47406560] = Rare({
    id = 58817,
    rewards = {
        Achievement({id = 7317, criteria = 20523}) -- One Many Army
    }
}) -- Spirit of Lao-Fe

map.nodes[37605100] = Rare({
    id = 58769,
    rewards = {
        Achievement({id = 7317, criteria = 20518}) -- One Many Army
    }
}) -- Vicejaw

map.nodes[08203400] = Rare({
    id = 63977,
    rewards = {
        Achievement({id = 7317, criteria = 20532}) -- One Many Army
    }
}) -- Vyraxxis

map.nodes[45207620] = Rare({
    id = 63510,
    note = L['in_cave'],
    rewards = {
        Achievement({id = 7317, criteria = 20527}) -- One Many Army
    },
    pois = {POI({40227716})}
}) -- Wulon

-------------------------------------------------------------------------------
--------------------------------- LOREWALKER ----------------------------------
-------------------------------------------------------------------------------

map.nodes[26612148] = Lorewalker({
    rewards = {Achievement({id = 6858, criteria = 19804})}
}) -- What is Worth Fighting For - Together, We Are Strong

map.nodes[40257748] = Lorewalker({
    rewards = {Achievement({id = 6754, criteria = 19665})}
}) -- The Dark Heart of the Mogu - The Thunder King

map.nodes[52946864] = Lorewalker({
    rewards = {Achievement({id = 6858, criteria = 19802})}
}) -- What is Worth Fighting For - Always Remember

map.nodes[68814420] = Lorewalker({
    rewards = {Achievement({id = 6855, criteria = 19792})}
}) -- The Seven Burdens of Shaohao - The Emperor's Burden - Part 8

-------------------------------------------------------------------------------
-------------------------------- Guo-Lai Halls --------------------------------
-------------------------------------------------------------------------------

map.nodes[22452683] = Rare({
    label = '{npc:58474}, {npc:62881}, {npc:63691}',
    id = 58474,
    note = L['guolai_halls'],
    rewards = {
        Achievement({id = 7317, criteria = {20526, 20525, 20529}}) -- One Many Army
    }
}) -- Bloodtip, Gaohun the Soul-Severer, Huo-Shuang

guolai_halls.nodes[75834734] = Rare({
    id = 58474,
    rewards = {
        Achievement({id = 7317, criteria = 20526}) -- One Many Army
    }
}) -- Bloodtip

guolai_halls.nodes[53465914] = Rare({
    id = 62881,
    rewards = {
        Achievement({id = 7317, criteria = 20525}) -- One Many Army
    }
}) -- Gaohun the Soul-Severer

guolai_halls.nodes[64011916] = Rare({
    id = 63691,
    rewards = {
        Achievement({id = 7317, criteria = 20529}) -- One Many Army
    }
}) -- Huo-Shuang

guolai_halls.nodes[49233102] = Collectible({
    label = '{achievement:7318}',
    note = L['guolai_cache'],
    id = 7318,
    icon = 237379,
    rewards = {
        Achievement({id = 7318}) -- A Taste of History
    }
})

-------------------------------------------------------------------------------
---------------------------- To All the Squirrels -----------------------------
-------------------------------------------------------------------------------

map.nodes[29757780] = Squirrel({
    id = 65209,
    rewards = {Achievement({id = 6350, criteria = 5})}
}) -- Dancing Water Skimmer

map.nodes[59282788] = Squirrel({
    label = '{npc:65205}, {npc:65206}',
    rewards = {Achievement({id = 6350, criteria = {7, 8}})}
}) -- Gilded Moth, Golden Civet
