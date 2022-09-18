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

local Achievement = ns.reward.Achievement
local Mount = ns.reward.Mount
local Transmog = ns.reward.Transmog
local Toy = ns.reward.Toy
local Item = ns.reward.Item

local POI = ns.poi.POI
local Path = ns.poi.Path
-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------
local map = Map({id = 379, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[75006760] = Rare({
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

map.nodes[57006460] = Rare({
    id = 60491,
    rewards = {
        Mount({item = 87771, id = 473}), Achievement({id = 6480}), -- Settle Down, Bro
        Achievement({id = 6926, criteria = 19136}) -- Tranquil Master

    },
    pois = {POI({53916474})}
}) -- Sha of Anger

map.nodes[40804240] = Rare({
    id = 50817,
    rewards = {
        Achievement({id = 7439, criteria = 21086}), -- Glorious!
        Toy({item = 86588}), -- Pandaren Firework Launcher
        Transmog({item = 87613, slot = L['leather']}), -- Frozen Zandalari Bracer
        Transmog({item = 87614, slot = L['mail']}), -- Kafa Picker's Bracers
        Transmog({item = 87615, slot = L['cloth']}), -- Yakwasher's Bracers
        Transmog({item = 87616, slot = L['cloth']}), -- Mountain Trailblazer's Cuffs
        Transmog({item = 87617, slot = L['leather']}), -- Bracers of the Serene Mountaintop
        Transmog({item = 87618, slot = L['mail']}), -- Ice Encrusted Bracer
        Transmog({item = 87619, slot = L['plate']}), -- Terracotta Guardian's Bracer
        Transmog({item = 87620, slot = L['plate']}), -- Bracers of the Frozen Summit
        Transmog({item = 87621, slot = L['plate']}) -- Wristguards of Great Fortune
    }
}) -- Ahone the Wanderer

map.nodes[55804340] = Rare({
    id = 50341,
    rewards = {
        Achievement({id = 7439, criteria = 21072}), -- Glorious!
        Transmog({item = 87613, slot = L['leather']}), -- Frozen Zandalari Bracer
        Transmog({item = 87614, slot = L['mail']}), -- Kafa Picker's Bracers
        Transmog({item = 87615, slot = L['cloth']}), -- Yakwasher's Bracers
        Transmog({item = 87616, slot = L['cloth']}), -- Mountain Trailblazer's Cuffs
        Transmog({item = 87617, slot = L['leather']}), -- Bracers of the Serene Mountaintop
        Transmog({item = 87618, slot = L['mail']}), -- Ice Encrusted Bracer
        Transmog({item = 87619, slot = L['plate']}), -- Terracotta Guardian's Bracer
        Transmog({item = 87620, slot = L['plate']}), -- Bracers of the Frozen Summit
        Transmog({item = 87621, slot = L['plate']}) -- Wristguards of Great Fortune
    }
}) -- Borginn Darkfist

map.nodes[57607500] = Rare({
    id = 50354,
    rewards = {
        Achievement({id = 7439, criteria = 21079}), -- Glorious!
        Toy({item = 86573}), -- Shard of Archstone
        Transmog({item = 87613, slot = L['leather']}), -- Frozen Zandalari Bracer
        Transmog({item = 87614, slot = L['mail']}), -- Kafa Picker's Bracers
        Transmog({item = 87615, slot = L['cloth']}), -- Yakwasher's Bracers
        Transmog({item = 87616, slot = L['cloth']}), -- Mountain Trailblazer's Cuffs
        Transmog({item = 87617, slot = L['leather']}), -- Bracers of the Serene Mountaintop
        Transmog({item = 87618, slot = L['mail']}), -- Ice Encrusted Bracer
        Transmog({item = 87619, slot = L['plate']}), -- Terracotta Guardian's Bracer
        Transmog({item = 87620, slot = L['plate']}), -- Bracers of the Frozen Summit
        Transmog({item = 87621, slot = L['plate']}) -- Wristguards of Great Fortune
    }
}) -- Havak

map.nodes[50008060] = Rare({
    id = 50332,
    rewards = {
        Achievement({id = 7439, criteria = 21100}), -- Glorious!
        Transmog({item = 87613, slot = L['leather']}), -- Frozen Zandalari Bracer
        Transmog({item = 87614, slot = L['mail']}), -- Kafa Picker's Bracers
        Transmog({item = 87615, slot = L['cloth']}), -- Yakwasher's Bracers
        Transmog({item = 87616, slot = L['cloth']}), -- Mountain Trailblazer's Cuffs
        Transmog({item = 87617, slot = L['leather']}), -- Bracers of the Serene Mountaintop
        Transmog({item = 87618, slot = L['mail']}), -- Ice Encrusted Bracer
        Transmog({item = 87619, slot = L['plate']}), -- Terracotta Guardian's Bracer
        Transmog({item = 87620, slot = L['plate']}), -- Bracers of the Frozen Summit
        Transmog({item = 87621, slot = L['plate']}) -- Wristguards of Great Fortune
    },
    pois = {Path({47408140, 48408080, 49208060, 50408040, 51608080, 51807940})}
}) -- Korda Torros

map.nodes[63801380] = Rare({
    id = 50789,
    rewards = {
        Achievement({id = 7439, criteria = 21093}), -- Glorious!
        Toy({item = 86584}), -- Hardened Shell
        Transmog({item = 87613, slot = L['leather']}), -- Frozen Zandalari Bracer
        Transmog({item = 87614, slot = L['mail']}), -- Kafa Picker's Bracers
        Transmog({item = 87615, slot = L['cloth']}), -- Yakwasher's Bracers
        Transmog({item = 87616, slot = L['cloth']}), -- Mountain Trailblazer's Cuffs
        Transmog({item = 87617, slot = L['leather']}), -- Bracers of the Serene Mountaintop
        Transmog({item = 87618, slot = L['mail']}), -- Ice Encrusted Bracer
        Transmog({item = 87619, slot = L['plate']}), -- Terracotta Guardian's Bracer
        Transmog({item = 87620, slot = L['plate']}), -- Bracers of the Frozen Summit
        Transmog({item = 87621, slot = L['plate']}) -- Wristguards of Great Fortune
    }
}) -- Nessos the Oracle

map.nodes[46236152] = Rare({
    id = 50831,
    note = L['multiple_spawns'],
    rewards = {
        Achievement({id = 7439, criteria = 21051}), -- Glorious!
        Item({item = 86592}), -- Hozen Peace Pipe
        Transmog({item = 87613, slot = L['leather']}), -- Frozen Zandalari Bracer
        Transmog({item = 87614, slot = L['mail']}), -- Kafa Picker's Bracers
        Transmog({item = 87615, slot = L['cloth']}), -- Yakwasher's Bracers
        Transmog({item = 87616, slot = L['cloth']}), -- Mountain Trailblazer's Cuffs
        Transmog({item = 87617, slot = L['leather']}), -- Bracers of the Serene Mountaintop
        Transmog({item = 87618, slot = L['mail']}), -- Ice Encrusted Bracer
        Transmog({item = 87619, slot = L['plate']}), -- Terracotta Guardian's Bracer
        Transmog({item = 87620, slot = L['plate']}), -- Bracers of the Frozen Summit
        Transmog({item = 87621, slot = L['plate']}) -- Wristguards of Great Fortune
    },
    pois = {POI({44856373, 47246299})}
}) -- Scritch

map.nodes[36667984] = Rare({
    id = 50733,
    rewards = {
        Achievement({id = 7439, criteria = 21065}), -- Glorious!
        Transmog({item = 87613, slot = L['leather']}), -- Frozen Zandalari Bracer
        Transmog({item = 87614, slot = L['mail']}), -- Kafa Picker's Bracers
        Transmog({item = 87615, slot = L['cloth']}), -- Yakwasher's Bracers
        Transmog({item = 87616, slot = L['cloth']}), -- Mountain Trailblazer's Cuffs
        Transmog({item = 87617, slot = L['leather']}), -- Bracers of the Serene Mountaintop
        Transmog({item = 87618, slot = L['mail']}), -- Ice Encrusted Bracer
        Transmog({item = 87619, slot = L['plate']}), -- Terracotta Guardian's Bracer
        Transmog({item = 87620, slot = L['plate']}), -- Bracers of the Frozen Summit
        Transmog({item = 87621, slot = L['plate']}) -- Wristguards of Great Fortune
    }
}) -- Ski'thik

map.nodes[73807740] = Rare({
    id = 50769,
    note = L['multiple_spawns'],
    rewards = {
        Achievement({id = 7439, criteria = 21058}), -- Glorious!
        Toy({item = 86581}), -- Farwater Conch
        Transmog({item = 87613, slot = L['leather']}), -- Frozen Zandalari Bracer
        Transmog({item = 87614, slot = L['mail']}), -- Kafa Picker's Bracers
        Transmog({item = 87615, slot = L['cloth']}), -- Yakwasher's Bracers
        Transmog({item = 87616, slot = L['cloth']}), -- Mountain Trailblazer's Cuffs
        Transmog({item = 87617, slot = L['leather']}), -- Bracers of the Serene Mountaintop
        Transmog({item = 87618, slot = L['mail']}), -- Ice Encrusted Bracer
        Transmog({item = 87619, slot = L['plate']}), -- Terracotta Guardian's Bracer
        Transmog({item = 87620, slot = L['plate']}), -- Bracers of the Frozen Summit
        Transmog({item = 87621, slot = L['plate']}) -- Wristguards of Great Fortune
    },
    pois = {POI({74407920, 73207640})}
}) -- Zai the Outcast

-------------------------------------------------------------------------------
--------------------------------- Treasures -----------------------------------
-------------------------------------------------------------------------------

local hozen_warrior_spear = Treasure({
    label = '{item:86394}',
    note = L['in_cave'],
    quest = 31413,
    rewards = {
        Achievement({id = 7284, criteria = {id = 1, qty = true}}), -- Is Another Man's Treasure
        Transmog({item = 86394, slot = L['polearm']})
    }
})
map.nodes[52857151] = hozen_warrior_spear
Map({id = 384, settings = true}).nodes[24166791] = hozen_warrior_spear

map.nodes[35177631] = Treasure({
    label = '{npc:64227}',
    note = L['in_cave'],
    quest = 31304,
    rewards = {
        Achievement({id = 7284, criteria = {id = 1, qty = true}}), -- Is Another Man's Treasure
        Item({item = 86125})
    },
    pois = {POI({37367782})}
}) -- Kafa Press, Frozen Trail Packer

local sprites_cloth_chest = Treasure({
    label = L['sprites_cloth_chest'],
    note = L['in_cave'],
    quest = 31412,
    rewards = {
        Achievement({id = 7284, criteria = {id = 1, qty = true}}), -- Is Another Man's Treasure
        Transmog({item = 86223}), Transmog({item = 86222}),
        Transmog({item = 86225}), Transmog({item = 86221}),
        Transmog({item = 86224})
    }
}) -- Sprite's Cloth Chest
map.nodes[73137356] = sprites_cloth_chest
Map({id = 381, settings = true}).nodes[54866997] = sprites_cloth_chest

map.nodes[71146258] = Treasure({
    label = L['sturdy_yaungol_spear'],
    quest = 31421,
    rewards = {
        Achievement({id = 7284, criteria = {id = 1, qty = true}}), -- Is Another Man's Treasure
        Transmog({item = 88723, slot = L['polearm']}) -- Sturdy Yaungol Spear
    }
}) -- Sturdy Yaungol Spear

map.nodes[44695234] = Treasure({
    label = '{item:86393}',
    quest = 31417,
    rewards = {
        Achievement({id = 7284, criteria = {id = 1, qty = true}}), -- Is Another Man's Treasure
        Item({item = 86393})
    }
}) -- Tablet of Ren Yun

map.nodes[47907347] = Treasure({
    label = L['momos_treasure_chest'],
    note = L['momos_treasure_chest_note'],
    quest = 31868,
    rewards = {
        Achievement({id = 7284, criteria = {id = 1, qty = true}}) -- Is Another Man's Treasure
    },
    pois = {POI({48127304})}
}) -- Mo-Mo's Treasure Chest


map.nodes[64214512] = Treasure({
    label = '{item:86471}',
    note = L['in_cave'],
    quest = 31420,
    rewards = {
        Achievement({id = 7997, criteria = {id = 1, qty = true}}), -- Riches of Pandaria
        Item({item = 86471})
    },
    pois = {POI({63944969, 63234195})}
}) -- Ancient Mogu Tablet

local hozen_treasure_cache = Treasure({
    label = L['hozen_treasure_cache'],
    note = L['in_cave'] .. '\n' .. L['hozen_treasure_cache_note'],
    quest = 31414,
    rewards = {
        Achievement({id = 7997, criteria = {id = 1, qty = true}}) -- Riches of Pandaria
    }
}) -- Hozen Treasure Cache

map.nodes[50296162] = hozen_treasure_cache
Map({id = 382, settings = true}).nodes[49445943] = hozen_treasure_cache

map.nodes[36747983] = Treasure({
    label = L['lost_adventurers_belongings'],
    quest = 31418,
    note = L['lost_adventurers_belongings_note'],
    rewards = {
        Achievement({id = 7997, criteria = {id = 1, qty = true}}) -- Riches of Pandaria
    }
}) -- Lost Adventurer's Belongings

map.nodes[52575154] = Treasure({
    label = L['rikktiks_tick_remover'],
    quest = 31419,
    rewards = {
        Achievement({id = 7997, criteria = {id = 1, qty = true}}), -- Riches of Pandaria
        Item({item = 86430})
    }
}) -- Rikktik's Tick Remover

map.nodes[72003390] = Treasure({
    label = '{item:86422}',
    quest = 31416,
    rewards = {
        Achievement({id = 7997, criteria = {id = 1, qty = true}}), -- Riches of Pandaria
        Item({item = 86422})
    }
}) -- Statue of Xuen

local stolen_sprite_treasure = Treasure({
    label = L['stolen_sprite_treasure'],
    note = L['stolen_sprite_treasure_note'],
    quest = 31415,
    rewards = {
        Achievement({id = 7997, criteria = {id = 1, qty = true}}) -- Riches of Pandaria
    }
}) -- Stolen Sprite Treasure

map.nodes[59155250] = stolen_sprite_treasure
Map({id = 380, settings = true}).nodes[56804899] = hozen_treasure_cache

map.nodes[59207300] = Treasure({
    label = '{item:86427}',
    quest = 31422,
    rewards = {
        Achievement({id = 7997, criteria = {id = 1, qty = true}}), -- Riches of Pandaria
        Item({item = 86427})
    },
    pois = {POI({58407350, 59207450, 57007550, 57807630})}
}) -- Terracotta Head

-------------------------------------------------------------------------------
--------------------------------- LOREWALKER ----------------------------------
-------------------------------------------------------------------------------

map.nodes[71706300] = Lorewalker({
    rewards = {Achievement({id = 6847, criteria = 19775})}
}) -- The Song of the Yaungol - Yaungoil

map.nodes[40944256] = Lorewalker({
    rewards = {Achievement({id = 6855, criteria = 19791})}
}) -- The Seven Burdens of Shaohao - The Emperor's Burden - Part 7

map.nodes[77539531] = Lorewalker({
    rewards = {Achievement({id = 6716, criteria = 19619})}
}) -- Between a Saurok and a Hard Place - The Defiant

map.nodes[67774834] = Lorewalker({
    rewards = {Achievement({id = 6855, criteria = 19788})}
}) -- The Seven Burdens of Shaohao - The Emperor's Burden - Part 6

map.nodes[74468352] = Lorewalker({
    rewards = {Achievement({id = 6846, criteria = 19772})}
}) -- Fish Tails - Role Call

map.nodes[44725238] = Lorewalker({
    rewards = {Achievement({id = 7230, criteria = 20417})}
}) -- Legend of the Brewfathers - Ren Yun the Blind

map.nodes[50297929] = Lorewalker({
    rewards = {Achievement({id = 6847, criteria = 19773})}
}) -- The Song of the Yaungol - Yaungol Tactics

map.nodes[50614804] = Lorewalker({
    rewards = {Achievement({id = 6754, criteria = 19662})},
    pois = {POI({53004650})}
}) -- The Dark Heart of the Mogu - Valley of the Emperors

map.nodes[63024085] = Lorewalker({
    rewards = {Achievement({id = 6858, criteria = 19809})}
}) -- What is Worth Fighting For - Victory in Kun-Lai

map.nodes[43835121] = Lorewalker({
    rewards = {Achievement({id = 6855, criteria = 19790})}
}) -- The Seven Burdens of Shaohao - The Emperor's Burden - Part 2

map.nodes[45746188] = Lorewalker({
    rewards = {Achievement({id = 6850, criteria = 19784})}
}) -- Hozen in the Mist - The Hozen Ravage
