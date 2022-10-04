-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Map = ns.Map
local L = ns.locale
local Class = ns.Class

local Rare = ns.node.Rare
local Treasure = ns.node.Treasure
local Collectible = ns.node.Collectible
local Lorewalker = ns.node.Lorewalker
local Squirrel = ns.node.Squirrel

local Achievement = ns.reward.Achievement
local Mount = ns.reward.Mount
local Transmog = ns.reward.Transmog
local Item = ns.reward.Item

local POI = ns.poi.POI
-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------
local map = Map({id = 418, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[39166860] = Rare({
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

map.nodes[14145713] = Rare({
    id = 68321,
    faction = 'Alliance',
    rewards = {
        Achievement({id = 7932, criteria = 1}) -- I'm In Your Base, Killing Your Dudes
    }
}) -- Kar Warmaker <Champion of Arms>

map.nodes[10685684] = Rare({
    id = 68322,
    faction = 'Alliance',
    rewards = {
        Achievement({id = 7932, criteria = 3}) -- I'm In Your Base, Killing Your Dudes
    }
}) -- Muerta <Champion of the Light>

map.nodes[13136633] = Rare({
    id = 68320,
    faction = 'Alliance',
    rewards = {
        Achievement({id = 7932, criteria = 2}) -- I'm In Your Base, Killing Your Dudes
    }
}) -- Ubunti the Shade <Champion of the Shadows>

map.nodes[84972738] = Rare({
    id = 68318,
    faction = 'Horde',
    rewards = {
        Achievement({id = 7932, criteria = 1}) -- I'm In Your Base, Killing Your Dudes
    }
}) -- Dalan Nightbreaker <Champion of Arms>

map.nodes[87482919] = Rare({
    id = 68319,
    faction = 'Horde',
    rewards = {
        Achievement({id = 7932, criteria = 3}) -- I'm In Your Base, Killing Your Dudes
    }
}) -- Disha Fearwarden <Champion of the Light>

map.nodes[84583117] = Rare({
    id = 68317,
    faction = 'Horde',
    rewards = {
        Achievement({id = 7932, criteria = 2}) -- I'm In Your Base, Killing Your Dudes
    }
}) -- Mavis Harms <Champion of the Shadows>

map.nodes[56204680] = Rare({
    id = 50787,
    rewards = {
        Achievement({id = 7439, criteria = 21092}), -- Glorious!
        Transmog({item = 90723, slot = L['mail']}), -- Arness's Scaled Leggings
        Transmog({item = 87607, slot = L['plate']}), -- Unearthed Dojani Headcover
        Transmog({item = 87612, slot = L['plate']}), -- Ancient Krasari Helm
        Transmog({item = 87604, slot = L['cloth']}), -- Beachcomber's Hat
        Transmog({item = 87605, slot = L['leather']}), -- Crest of the Red Crane
        Transmog({item = 87608, slot = L['cloth']}), -- Korjan Mystic's Hood
        Transmog({item = 87606, slot = L['mail']}), -- Tidehunter Helm
        Transmog({item = 87609, slot = L['leather']}), -- Brushstalker Helm
        Transmog({item = 87610, slot = L['mail']}), -- Deepwild Hunting Helm
        Transmog({item = 87611, slot = L['plate']}) -- Shen-zin Shell Headguard
    }
}) -- Arness the Scale

map.nodes[30603820] = Rare({
    id = 50768,
    rewards = {
        Achievement({id = 7439, criteria = 21057}), -- Glorious!
        Transmog({item = 90721, slot = L['cloth']}), -- Cournith Waterstrider's Silken Finery
        Transmog({item = 87607, slot = L['plate']}), -- Unearthed Dojani Headcover
        Transmog({item = 87612, slot = L['plate']}), -- Ancient Krasari Helm
        Transmog({item = 87604, slot = L['cloth']}), -- Beachcomber's Hat
        Transmog({item = 87605, slot = L['leather']}), -- Crest of the Red Crane
        Transmog({item = 87608, slot = L['cloth']}), -- Korjan Mystic's Hood
        Transmog({item = 87606, slot = L['mail']}), -- Tidehunter Helm
        Transmog({item = 87609, slot = L['leather']}), -- Brushstalker Helm
        Transmog({item = 87610, slot = L['mail']}), -- Deepwild Hunting Helm
        Transmog({item = 87611, slot = L['plate']}) -- Shen-zin Shell Headguard
    }
}) -- Cournith Waterstrider

map.nodes[56203520] = Rare({
    id = 50768,
    rewards = {
        Achievement({id = 7439, criteria = 21071}), -- Glorious!
        Transmog({item = 90725, slot = L['cloth']}), -- Gaarn's Leggings of Infestation
        Transmog({item = 87607, slot = L['plate']}), -- Unearthed Dojani Headcover
        Transmog({item = 87612, slot = L['plate']}), -- Ancient Krasari Helm
        Transmog({item = 87604, slot = L['cloth']}), -- Beachcomber's Hat
        Transmog({item = 87605, slot = L['leather']}), -- Crest of the Red Crane
        Transmog({item = 87608, slot = L['cloth']}), -- Korjan Mystic's Hood
        Transmog({item = 87606, slot = L['mail']}), -- Tidehunter Helm
        Transmog({item = 87609, slot = L['leather']}), -- Brushstalker Helm
        Transmog({item = 87610, slot = L['mail']}), -- Deepwild Hunting Helm
        Transmog({item = 87611, slot = L['plate']}) -- Shen-zin Shell Headguard
    },
    pois = {POI({53603880, 54003220})}
}) -- Gaarn the Toxic

map.nodes[39402880] = Rare({
    id = 50331,
    rewards = {
        Achievement({id = 7439, criteria = 21099}), -- Glorious!
        Transmog({item = 90719, slot = L['mail']}), -- Go-Kan's Golden Trousers
        Transmog({item = 87607, slot = L['plate']}), -- Unearthed Dojani Headcover
        Transmog({item = 87612, slot = L['plate']}), -- Ancient Krasari Helm
        Transmog({item = 87604, slot = L['cloth']}), -- Beachcomber's Hat
        Transmog({item = 87605, slot = L['leather']}), -- Crest of the Red Crane
        Transmog({item = 87608, slot = L['cloth']}), -- Korjan Mystic's Hood
        Transmog({item = 87606, slot = L['mail']}), -- Tidehunter Helm
        Transmog({item = 87609, slot = L['leather']}), -- Brushstalker Helm
        Transmog({item = 87610, slot = L['mail']}), -- Deepwild Hunting Helm
        Transmog({item = 87611, slot = L['plate']}) -- Shen-zin Shell Headguard
    }
}) -- Go-Kan

map.nodes[67202300] = Rare({
    id = 50352,
    rewards = {
        Achievement({id = 7439, criteria = 21078}), -- Glorious!
        Transmog({item = 90717, slot = L['plate']}), -- Qu'nas' Apocryphal Legplates
        Transmog({item = 87607, slot = L['plate']}), -- Unearthed Dojani Headcover
        Transmog({item = 87612, slot = L['plate']}), -- Ancient Krasari Helm
        Transmog({item = 87604, slot = L['cloth']}), -- Beachcomber's Hat
        Transmog({item = 87605, slot = L['leather']}), -- Crest of the Red Crane
        Transmog({item = 87608, slot = L['cloth']}), -- Korjan Mystic's Hood
        Transmog({item = 87606, slot = L['mail']}), -- Tidehunter Helm
        Transmog({item = 87609, slot = L['leather']}), -- Brushstalker Helm
        Transmog({item = 87610, slot = L['mail']}), -- Deepwild Hunting Helm
        Transmog({item = 87611, slot = L['plate']}) -- Shen-zin Shell Headguard
    }
}) -- Qu'nas

map.nodes[39405520] = Rare({
    id = 50816,
    rewards = {
        Achievement({id = 7439, criteria = 21085}), -- Glorious!
        Transmog({item = 90720, slot = L['leather']}), -- Silent Leggings of the Ghostpaw
        Transmog({item = 87607, slot = L['plate']}), -- Unearthed Dojani Headcover
        Transmog({item = 87612, slot = L['plate']}), -- Ancient Krasari Helm
        Transmog({item = 87604, slot = L['cloth']}), -- Beachcomber's Hat
        Transmog({item = 87605, slot = L['leather']}), -- Crest of the Red Crane
        Transmog({item = 87608, slot = L['cloth']}), -- Korjan Mystic's Hood
        Transmog({item = 87606, slot = L['mail']}), -- Tidehunter Helm
        Transmog({item = 87609, slot = L['leather']}), -- Brushstalker Helm
        Transmog({item = 87610, slot = L['mail']}), -- Deepwild Hunting Helm
        Transmog({item = 87611, slot = L['plate']}) -- Shen-zin Shell Headguard
    },
    pois = {POI({41605520})}
}) -- Ruun Ghostpaw

map.nodes[52208880] = Rare({
    id = 50830,
    rewards = {
        Achievement({id = 7439, criteria = 21050}), -- Glorious!
        Transmog({item = 90724, slot = L['leather']}), -- Spriggin's Sproggin' Leggin'
        Transmog({item = 87607, slot = L['plate']}), -- Unearthed Dojani Headcover
        Transmog({item = 87612, slot = L['plate']}), -- Ancient Krasari Helm
        Transmog({item = 87604, slot = L['cloth']}), -- Beachcomber's Hat
        Transmog({item = 87605, slot = L['leather']}), -- Crest of the Red Crane
        Transmog({item = 87608, slot = L['cloth']}), -- Korjan Mystic's Hood
        Transmog({item = 87606, slot = L['mail']}), -- Tidehunter Helm
        Transmog({item = 87609, slot = L['leather']}), -- Brushstalker Helm
        Transmog({item = 87610, slot = L['mail']}), -- Deepwild Hunting Helm
        Transmog({item = 87611, slot = L['plate']}) -- Shen-zin Shell Headguard
    }
}) -- Spriggin

map.nodes[15603560] = Rare({
    id = 50388,
    rewards = {
        Achievement({id = 7439, criteria = 21064}), -- Glorious!
        Transmog({item = 90718, slot = L['plate']}), -- Torik-Ethis' Bloodied Legguards
        Transmog({item = 87607, slot = L['plate']}), -- Unearthed Dojani Headcover
        Transmog({item = 87612, slot = L['plate']}), -- Ancient Krasari Helm
        Transmog({item = 87604, slot = L['cloth']}), -- Beachcomber's Hat
        Transmog({item = 87605, slot = L['leather']}), -- Crest of the Red Crane
        Transmog({item = 87608, slot = L['cloth']}), -- Korjan Mystic's Hood
        Transmog({item = 87606, slot = L['mail']}), -- Tidehunter Helm
        Transmog({item = 87609, slot = L['leather']}), -- Brushstalker Helm
        Transmog({item = 87610, slot = L['mail']}), -- Deepwild Hunting Helm
        Transmog({item = 87611, slot = L['plate']}) -- Shen-zin Shell Headguard
    }
}) -- Torik-Ethis

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[52308870] = Treasure({
    quest = 31411,
    label = '{item:86432}',
    rewards = {
        Achievement({id = 7284, criteria = {id = 1, qty = true}}), -- Is Another Man's Treasure
        Item({item = 87266})
    }
}) -- Recipe: Banana Infused Rum

map.nodes[50804930] = Treasure({
    quest = 31409,
    label = '{item:86124}',
    rewards = {
        Achievement({id = 7284, criteria = {id = 1, qty = true}}), -- Is Another Man's Treasure
        Transmog({item = 86124, slot = L['polearm']}) -- Pandaren Fishing Spear
    }
}) -- Pandaren Fishing Spear

map.nodes[42309200] = Treasure({
    quest = 31410,
    label = L['equipment_locker'],
    rewards = {
        Achievement({id = 7284, criteria = {id = 1, qty = true}}), -- Is Another Man's Treasure
        Transmog({item = 86115, slot = L['leather']}), -- Swashbuckling Boots
        Transmog({item = 86122, slot = L['plate']}), -- Plankwalking Greaves
        Transmog({item = 86117, slot = L['cloth']}), -- Seafarer's Treads of Precision
        Transmog({item = 86116, slot = L['mail']}), -- Agile Seafarer's Jackboots
        Transmog({item = 86118, slot = L['cloth']}), -- Seafaring Advisor's Slippers
        Transmog({item = 86123, slot = L['plate']}), -- Seafarer's Sturdy Boots
        Transmog({item = 86120, slot = L['mail']}), -- Seafaring Sabatons of Meditation
        Transmog({item = 86119, slot = L['leather']}), -- Seafarer's Boots of Meditation
        Transmog({item = 86121, slot = L['plate']}) -- Radiant Seafarer's Boots
    }
}) -- Equipment Locker

map.nodes[68800700] = Treasure({
    quest = 31408,
    label = '{item:86220}',
    icon = 'chest_yw',
    rewards = {
        Achievement({id = 7997, criteria = {id = 1, qty = true}}), -- Riches of Pandaria
        Item({item = 86220})
    },
    pois = {POI({70500951})}
}) -- Saurok Stone Tablet

map.nodes[52107340] = Treasure({
    quest = 31863,
    label = '{item:87798}',
    icon = 'chest_bn',
    rewards = {Item({item = 87798})}
}) -- Stack of Papers

-------------------------------------------------------------------------------
--------------------------------- LOREWALKER ----------------------------------
-------------------------------------------------------------------------------

map.nodes[50953165] = Lorewalker({
    rewards = {Achievement({id = 6754, criteria = 19663})}
}) -- The Dark Heart of the Mogu - The Lost Dynasty

map.nodes[32822942] = Lorewalker({
    rewards = {Achievement({id = 6716, criteria = 19621})}
}) -- Between a Saurok and a Hard Place - The Last Stand

map.nodes[40475665] = Lorewalker({
    rewards = {Achievement({id = 6855, criteria = 19787})}
}) -- The Seven Burdens of Shaohao - The Emperor's Burden - Part 4

map.nodes[52398768] = Lorewalker({
    rewards = {Achievement({id = 6850, criteria = 19782})}
}) -- Hozen in the Mist - Hozen Maturiy

map.nodes[30533863] = Lorewalker({
    rewards = {Achievement({id = 6846, criteria = 19771})}
}) -- Fish Tails - Origins

map.nodes[72223100] = Lorewalker({
    rewards = {Achievement({id = 6856, criteria = 19796})}
}) -- Ballad of Liu Lang - Waiting for the Turtle

map.nodes[85550561] = Lorewalker({
    rewards = {Achievement({id = 7230, criteria = 20415})}
}) -- Legend of the Brewfathers - Quan Tou Kou the Two Fisted

-------------------------------------------------------------------------------
---------------------------- To All the Squirrels -----------------------------
-------------------------------------------------------------------------------

map.nodes[49704330] = Squirrel({
    id = 64798,
    label = '{npc:63289},{npc:64798}',
    rewards = {Achievement({id = 6350, criteria = {1, 10}})} -- To All the Squirrels I Once Caressed?
}) -- Luyu Moth, Amethyst Spiderling
