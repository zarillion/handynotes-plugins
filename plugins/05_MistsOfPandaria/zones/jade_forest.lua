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
local Squirrel = ns.node.Squirrel
local Lorewalker = ns.node.Lorewalker

local Achievement = ns.reward.Achievement
local Mount = ns.reward.Mount
local Transmog = ns.reward.Transmog
local Item = ns.reward.Item

local POI = ns.poi.POI
local Path = ns.poi.Path
-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------
local map = Map({id = 371, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[52601900] = Rare({
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

map.nodes[54202760] = Rare({
    id = 69768,
    rewards = {
        Mount({item = 94230, id = 534}), Item({item = 94158}),
        Item({item = 94159})
    },
    pois = {
        Path({
            43201720, 44401760, 45401740, 46801880, 47402100, 47602100,
            48802140, 49402020, 49802000, 51002000, 51602000, 52601940,
            53001960, 52802080, 52602180, 52602340, 52802380, 54202760,
            53482898, 53203083, 52553207, 52853396, 52953512, 51753572, 50803680
        })
    }
}) -- Zandalari Warscout

map.nodes[33405080] = Rare({
    id = 50750,
    rewards = {
        Achievement({id = 7439, criteria = 21055}), -- Glorious!
        Transmog({item = 87649, slot = L['1h_mace']}), -- Pool-Stirrer
        Transmog({item = 87590, slot = L['cloth']}), -- Jade Heart Leggings
        Transmog({item = 87589, slot = L['plate']}), -- Leggings of Fractured Reflection
        Transmog({item = 87588, slot = L['mail']}), -- Leggings of Spiritsong Melody
        Transmog({item = 87594, slot = L['plate']}), -- Leggings of Forgotten War
        Transmog({item = 87591, slot = L['leather']}), -- Tian Trainee Leggings
        Transmog({item = 87586, slot = L['cloth']}), -- Forest Trickster's Leggings
        Transmog({item = 87593, slot = L['plate']}), -- Gan Shi Warlord Legguards
        Transmog({item = 87592, slot = L['mail']}), -- Grookin' Grookin' Trousers
        Transmog({item = 87587, slot = L['leather']}) -- Orchard Tender's Leggings
    }
}) -- Aethis

map.nodes[53804560] = Rare({
    id = 51078,
    rewards = {
        Achievement({id = 7439, criteria = 21097}), -- Glorious!
        Transmog({item = 87652, slot = L['1h_mace']}), -- Ook-Breaker Mace
        Transmog({item = 87590, slot = L['cloth']}), -- Jade Heart Leggings
        Transmog({item = 87589, slot = L['plate']}), -- Leggings of Fractured Reflection
        Transmog({item = 87588, slot = L['mail']}), -- Leggings of Spiritsong Melody
        Transmog({item = 87594, slot = L['plate']}), -- Leggings of Forgotten War
        Transmog({item = 87591, slot = L['leather']}), -- Tian Trainee Leggings
        Transmog({item = 87586, slot = L['cloth']}), -- Forest Trickster's Leggings
        Transmog({item = 87593, slot = L['plate']}), -- Gan Shi Warlord Legguards
        Transmog({item = 87592, slot = L['mail']}), -- Grookin' Grookin' Trousers
        Transmog({item = 87587, slot = L['leather']}) -- Orchard Tender's Leggings
    },
    pois = {POI({52004460, 56404800, 53604960, 54204240})}
}) -- Ferdinand

map.nodes[44007400] = Rare({
    id = 50338,
    rewards = {
        Achievement({id = 7439, criteria = 21069}), -- Glorious!
        Transmog({item = 87642, slot = L['staff']}), -- Darkstaff of Annihilation
        Transmog({item = 87590, slot = L['cloth']}), -- Jade Heart Leggings
        Transmog({item = 87589, slot = L['plate']}), -- Leggings of Fractured Reflection
        Transmog({item = 87588, slot = L['mail']}), -- Leggings of Spiritsong Melody
        Transmog({item = 87594, slot = L['plate']}), -- Leggings of Forgotten War
        Transmog({item = 87591, slot = L['leather']}), -- Tian Trainee Leggings
        Transmog({item = 87586, slot = L['cloth']}), -- Forest Trickster's Leggings
        Transmog({item = 87593, slot = L['plate']}), -- Gan Shi Warlord Legguards
        Transmog({item = 87592, slot = L['mail']}), -- Grookin' Grookin' Trousers
        Transmog({item = 87587, slot = L['leather']}) -- Orchard Tender's Leggings
    },
    pois = {Path({43607220, 43807320, 44007400, 44007500, 44007580})}
}) -- Kor'nas Nightsavage

map.nodes[39606260] = Rare({
    id = 50363,
    rewards = {
        Achievement({id = 7439, criteria = 21062}), -- Glorious!
        Transmog({item = 87646, slot = L['1h_axe']}), -- Needlefang Throatripper
        Transmog({item = 87642, slot = L['staff']}), -- Darkstaff of Annihilation
        Transmog({item = 87590, slot = L['cloth']}), -- Jade Heart Leggings
        Transmog({item = 87589, slot = L['plate']}), -- Leggings of Fractured Reflection
        Transmog({item = 87588, slot = L['mail']}), -- Leggings of Spiritsong Melody
        Transmog({item = 87594, slot = L['plate']}), -- Leggings of Forgotten War
        Transmog({item = 87591, slot = L['leather']}), -- Tian Trainee Leggings
        Transmog({item = 87586, slot = L['cloth']}), -- Forest Trickster's Leggings
        Transmog({item = 87593, slot = L['plate']}), -- Gan Shi Warlord Legguards
        Transmog({item = 87592, slot = L['mail']}), -- Grookin' Grookin' Trousers
        Transmog({item = 87587, slot = L['leather']}) -- Orchard Tender's Leggings
    }
}) -- Krax'ik

map.nodes[42603880] = Rare({
    id = 50823,
    rewards = {
        Achievement({id = 7439, criteria = 21048}), -- Glorious!
        Transmog({item = 87652, slot = L['1h_mace']}), -- Ook-Breaker Mace
        Transmog({item = 87642, slot = L['staff']}), -- Darkstaff of Annihilation
        Transmog({item = 87590, slot = L['cloth']}), -- Jade Heart Leggings
        Transmog({item = 87589, slot = L['plate']}), -- Leggings of Fractured Reflection
        Transmog({item = 87588, slot = L['mail']}), -- Leggings of Spiritsong Melody
        Transmog({item = 87594, slot = L['plate']}), -- Leggings of Forgotten War
        Transmog({item = 87591, slot = L['leather']}), -- Tian Trainee Leggings
        Transmog({item = 87586, slot = L['cloth']}), -- Forest Trickster's Leggings
        Transmog({item = 87593, slot = L['plate']}), -- Gan Shi Warlord Legguards
        Transmog({item = 87592, slot = L['mail']}), -- Grookin' Grookin' Trousers
        Transmog({item = 87587, slot = L['leather']}) -- Orchard Tender's Leggings
    }
}) -- Mister Ferocious

map.nodes[46601680] = Rare({
    id = 50350,
    rewards = {
        Achievement({id = 7439, criteria = 21076}), -- Glorious!
        Transmog({item = 87643, slot = L['2h_mace']}), -- Fangcracker Battlemace
        Transmog({item = 87642, slot = L['staff']}), -- Darkstaff of Annihilation
        Transmog({item = 87590, slot = L['cloth']}), -- Jade Heart Leggings
        Transmog({item = 87589, slot = L['plate']}), -- Leggings of Fractured Reflection
        Transmog({item = 87588, slot = L['mail']}), -- Leggings of Spiritsong Melody
        Transmog({item = 87594, slot = L['plate']}), -- Leggings of Forgotten War
        Transmog({item = 87591, slot = L['leather']}), -- Tian Trainee Leggings
        Transmog({item = 87586, slot = L['cloth']}), -- Forest Trickster's Leggings
        Transmog({item = 87593, slot = L['plate']}), -- Gan Shi Warlord Legguards
        Transmog({item = 87592, slot = L['mail']}), -- Grookin' Grookin' Trousers
        Transmog({item = 87587, slot = L['leather']}) -- Orchard Tender's Leggings
    },
    pois = {POI({40801520, 42601620, 42201760, 48001840, 48202060})}
}) -- Morgrinn Crackfang

map.nodes[64607420] = Rare({
    id = 50782,
    rewards = {
        Achievement({id = 7439, criteria = 21090}), -- Glorious!
        Transmog({item = 87650, slot = L['crossbow']}), -- Fishsticker Crossbow
        Transmog({item = 87642, slot = L['staff']}), -- Darkstaff of Annihilation
        Transmog({item = 87590, slot = L['cloth']}), -- Jade Heart Leggings
        Transmog({item = 87589, slot = L['plate']}), -- Leggings of Fractured Reflection
        Transmog({item = 87588, slot = L['mail']}), -- Leggings of Spiritsong Melody
        Transmog({item = 87594, slot = L['plate']}), -- Leggings of Forgotten War
        Transmog({item = 87591, slot = L['leather']}), -- Tian Trainee Leggings
        Transmog({item = 87586, slot = L['cloth']}), -- Forest Trickster's Leggings
        Transmog({item = 87593, slot = L['plate']}), -- Gan Shi Warlord Legguards
        Transmog({item = 87592, slot = L['mail']}), -- Grookin' Grookin' Trousers
        Transmog({item = 87587, slot = L['leather']}) -- Orchard Tender's Leggings
    }
}) -- Sarnak

map.nodes[57407140] = Rare({
    id = 50808,
    rewards = {
        Achievement({id = 7439, criteria = 21083}), -- Glorious!
        Transmog({item = 87651, slot = L['staff']}), -- Pathwalker Greatstaff
        Transmog({item = 87642, slot = L['staff']}), -- Darkstaff of Annihilation
        Transmog({item = 87590, slot = L['cloth']}), -- Jade Heart Leggings
        Transmog({item = 87589, slot = L['plate']}), -- Leggings of Fractured Reflection
        Transmog({item = 87588, slot = L['mail']}), -- Leggings of Spiritsong Melody
        Transmog({item = 87594, slot = L['plate']}), -- Leggings of Forgotten War
        Transmog({item = 87591, slot = L['leather']}), -- Tian Trainee Leggings
        Transmog({item = 87586, slot = L['cloth']}), -- Forest Trickster's Leggings
        Transmog({item = 87593, slot = L['plate']}), -- Gan Shi Warlord Legguards
        Transmog({item = 87592, slot = L['mail']}), -- Grookin' Grookin' Trousers
        Transmog({item = 87587, slot = L['leather']}) -- Orchard Tender's Leggings
    }
}) -- Urobi the Walker

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[39400730] = Treasure({
    label = '{item:85776}',
    quest = 31397,
    rewards = {
        Achievement({id = 7284, criteria = {id = 1, qty = true}}), -- Is Another Man's Treasure
        Transmog({item = 85776, slot = L['dagger']}) -- Wodin's Mantid Shanker
    }
}) -- Wodin's Mantid Shaker

map.nodes[43021161] = Treasure({
    label = '{item:86198}',
    quest = 31403,
    rewards = {
        Achievement({id = 7284, criteria = {id = 1, qty = true}}), -- Is Another Man's Treasure
        Transmog({item = 86198, slot = L['2h_mace']}) -- Hammer of Ten Thunders
    },
    pois = {POI({40171367, 41191375, 41761763})}
}) -- Hammer of Ten Thunders

local cave = Map({id = 373, settings = true})
local AncientPick = Class('AncientPick', Treasure, {
    label = '{item:85777}',
    quest = 31399,
    rewards = {
        Achievement({id = 7284, criteria = {id = 1, qty = true}}), -- Is Another Man's Treasure
        Transmog({item = 85777, slot = L['1h_axe']}) -- Ancient Pandaren Mining Pick
    }
}) -- Ancient Pandaren Mining Pick

map.nodes[45972897] = AncientPick({note = L['ancient_pick']})
cave.nodes[33107800] = AncientPick()
cave.nodes[44007050] = AncientPick()
cave.nodes[43703850] = AncientPick()
cave.nodes[38704750] = AncientPick()
cave.nodes[32606270] = AncientPick()
cave.nodes[38231394] = AncientPick()

map.nodes[47106740] = Treasure({
    label = '{item:86196}',
    quest = 31402,
    rewards = {
        Achievement({id = 7284, criteria = {id = 1, qty = true}}), -- Is Another Man's Treasure
        Transmog({item = 86196, slot = L['staff']}) -- Ancient Jinyu Staff
    },
    pois = {POI({46207120, 44906460})}
}) -- Ancient Jinyu Staff

map.nodes[39254665] = Treasure({
    label = '{item:86199}',
    quest = 31307,
    rewards = {
        Achievement({id = 7284, criteria = {id = 1, qty = true}}), -- Is Another Man's Treasure
        Transmog({item = 86199, slot = L['2h_mace']}) -- Jade Infused Blade
    }
}) -- Jade Infused Blade

-------------------------------------------------------------------------------

map.nodes[26203240] = Treasure({
    label = '{item:85780}',
    icon = 'chest_yw',
    quest = 31400,
    rewards = {
        Achievement({id = 7997, criteria = {id = 1, qty = true}}), -- Riches of Pandaria
        Item({item = 85780})
    }
}) -- Ancient Pandaren Tea Pot

map.nodes[31902780] = Treasure({
    label = '{item:85781}',
    icon = 'chest_yw',
    quest = 31401,
    rewards = {
        Achievement({id = 7997, criteria = {id = 1, qty = true}}), -- Riches of Pandaria
        Item({item = 85781})
    }
}) -- Lucky Pandaren Coin

map.nodes[23503500] = Treasure({
    label = '{item:86216}',
    icon = 'chest_yw',
    quest = 31404,
    rewards = {
        Achievement({id = 7997, criteria = {id = 1, qty = true}}), -- Riches of Pandaria
        Item({item = 86216}) -- Pandaren Ritual Stone
    }
}) -- Pandaren Ritual Stone

map.nodes[51009999] = Treasure({
    quest = 31864,
    label = L['ships_locker'],
    note = L['ships_locker_note'],
    icon = 'chest_yw',
    rewards = {
        Achievement({id = 7997, criteria = {id = 1, qty = true}}) -- Riches of Pandaria
    }
}) -- Ship's Locker

map.nodes[24605320] = Treasure({
    quest = 31864,
    label = L['chest_of_supplies'],
    icon = 'chest_bn',
    note = L['chest_of_supplies_note']
}) -- Chest of Supplies

map.nodes[46308070] = Treasure({
    quest = 31865,
    label = L['offering_of_rememberance'],
    note = L['offering_of_rememberance_note'],
    icon = 'chest_bn'
}) -- Offering of Rememberance

map.nodes[62402750] = Treasure({
    quest = 31866,
    label = 'Stash of Gems',
    note = L['stash_of_gems'],
    icon = 'chest_bn'
}) -- Stash of Gems

-------------------------------------------------------------------------------
--------------------------------- LOREWALKER ----------------------------------
-------------------------------------------------------------------------------

map.nodes[26392833] = Lorewalker({
    rewards = {Achievement({id = 6850, criteria = 19781})}
}) -- Hozen in the Mist - Hozen Speech

map.nodes[35763047] = Lorewalker({
    rewards = {Achievement({id = 6858, criteria = 19803})}
}) -- What Is Worth Fighting For - The First Monks

map.nodes[37303012] = Lorewalker({
    rewards = {Achievement({id = 7230, criteria = 20416})}
}) -- Legend of the Brewfathers - Xin Wo Yin the Broken Hearted

map.nodes[42271746] = Lorewalker({
    rewards = {Achievement({id = 6754, criteria = 19664})}
}) -- The Dark Heart of the Mogu - Spirit Binders

map.nodes[67722935] = Lorewalker({
    rewards = {Achievement({id = 6716, criteria = 19618})}
}) -- Between a Saurok and a Hard Place - The Saurok

map.nodes[47074511] = Lorewalker({
    rewards = {Achievement({id = 6855, criteria = 19785})}
}) -- The Seven Burdens of Shaohao - The Emperor's Burden - Part 1

map.nodes[42251745] = Lorewalker({
    rewards = {Achievement({id = 6754, criteria = 19664})}
}) -- The Dark Heart of the Mogu - Spirit Binders

map.nodes[66028756] = Lorewalker({
    rewards = {Achievement({id = 6846, criteria = 19768})}
}) -- Fish Tails - Watersmithing

map.nodes[55885684] = Lorewalker({
    rewards = {Achievement({id = 6855, criteria = 19786})}
}) -- The Seven Burdens of Shaohao - The Emperor's Burden - Part 3

-------------------------------------------------------------------------------
---------------------------- To All the Squirrels -----------------------------
-------------------------------------------------------------------------------

map.nodes[33135178] = Squirrel({
    id = 59770,
    fgroup = 'shrine_fly',
    rewards = {Achievement({id = 6350, criteria = 15})} -- To All the Squirrels I Once Caressed?
}) -- Shrine Fly

map.nodes[36675848] = Squirrel({
    id = 59770,
    fgroup = 'shrine_fly',
    rewards = {Achievement({id = 6350, criteria = 15})} -- To All the Squirrels I Once Caressed?
}) -- Shrine Fly

map.nodes[45116052] = Squirrel({
    id = 64774,
    rewards = {Achievement({id = 6350, criteria = 9})} -- To All the Squirrels I Once Caressed?
}) -- Leopard Tree Frog

map.nodes[66058568] = Squirrel({
    id = 59356,
    rewards = {Achievement({id = 6350, criteria = 4})} -- To All the Squirrels I Once Caressed?
}) -- Coral Adder