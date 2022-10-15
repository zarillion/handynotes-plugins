-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map
local Class = ns.Class

local Collectible = ns.node.Collectible
local PetBattle = ns.node.PetBattle
local Treasure = ns.node.Treasure
local Rare = ns.node.Rare
local Squirrel = ns.node.Squirrel

local Achievement = ns.reward.Achievement
local Currency = ns.reward.Currency
local Transmog = ns.reward.Transmog
local Mount = ns.reward.Mount
local Item = ns.reward.Item
local Pet = ns.reward.Pet
local Toy = ns.reward.Toy

local Path = ns.poi.Path
local POI = ns.poi.POI

local wod_treasures = Achievement({
    id = 9728,
    criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
})

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({id = 542, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[33552187] = Rare({
    id = 84805,
    rewards = {
        Transmog({item = 116858, slot = L['mail']}), -- Stonespite Scale Leggings
        Currency({id = 824})
    }
}) -- Stonespite

map.nodes[38322797] = Rare({
    id = 85504,
    rewards = {
        Pet({item = 118107, id = 1540}) -- Brilliant Spore
    }
}) -- Rotcap

map.nodes[46422848] = Rare({
    id = 84807,
    rewards = {
        Transmog({item = 118198, slot = L['mail']}), -- Steelmaw's Stompers
        Currency({id = 824})
    }
}) -- Durkath Steelmaw

map.nodes[46822324] = Rare({
    id = 80614,
    rewards = {
        Item({item = 116839, note = '~35g'}), -- Skyreach Decree
        Currency({id = 824})
    }
}) -- Blade-Dancer Aeryx

map.nodes[51970728] = Rare({
    id = 83990,
    rewards = {
        Transmog({item = 119407, slot = L['polearm']}) -- Cloudsplitter Greatstaff
    }
}) -- Solar Magnifier

map.nodes[59281484] = Rare({
    id = 86724,
    rewards = {
        Transmog({item = 118279, slot = L['cloth']}) -- Hermit's Hood
    }
}) -- Hermit Palefur

map.nodes[36295256] = Rare({
    id = 82247,
    rewards = {
        Transmog({item = 116837, slot = L['polearm']}) -- Spooky Scythe
    }
}) -- Nas Dunberlin

map.nodes[51963556] = Rare({
    id = 79938,
    rewards = {
        Transmog({item = 118201, slot = L['shield']}) -- Shadowbark's Shin
    }
}) -- Shadowbark

map.nodes[54793699] = Rare({
    id = 84890,
    rewards = {
        Transmog({item = 118200, slot = L['offhand']}) -- Vile Branch of Festerbloom
    }
}) -- Festerbloom

map.nodes[52905497] = Rare({
    id = 85520,
    rewards = {
        Transmog({item = 116857, slot = L['staff']}) -- Stave of Buzzing Bark
    }
}) -- Swarmleaf

map.nodes[53798872] = Rare({
    id = 84417,
    rewards = {
        Transmog({item = 118206, slot = L['2h_mace']}) -- Mutafen's Mighty Maul
    }
}) -- Mutafen

map.nodes[58318444] = Rare({
    id = 84887,
    rewards = {
        Transmog({item = 116907, slot = L['gun']}) -- Betsi's Boomstick
    }
}) -- Betsi Boombasket

map.nodes[65246826] = Rare({ --
    id = 84856,
    rewards = {
        Transmog({item = 118205, slot = L['leather']}) -- Blightglow Pauldrons
    },
    pois = {Path({64086471, 64296551, 64656578, 65206718, 65246826})}
}) -- Blightglow

map.nodes[59014514] = Rare({
    id = 84912,
    note = L['sunderthorn_note'],
    rewards = {
        Transmog({item = 116855, slot = L['1h_sword']}), -- Stingtail's Toxic Stinger
        Currency({id = 824})
    }
}) -- Sunderthorn

map.nodes[64975412] = Rare({
    id = 84872,
    rewards = {
        Transmog({item = 118204, slot = L['dagger']}), -- Oskiira's Mercy
        Currency({id = 824})
    }
}) -- Oskiira the Vengeful

map.nodes[68854890] = Rare({
    id = 84833,
    rewards = {
        Transmog({item = 118203, slot = L['leather']}), -- Moultingskin Tunic
        Currency({id = 824})
    }
}) -- Sangrikass

map.nodes[62783737] = Rare({
    id = 84810,
    rewards = {
        Transmog({item = 118735, slot = L['cloth']}) -- Bloodbathed Outcast Robes
    }
}) -- Kalos the Bloodbathed

map.nodes[72631934] = Rare({
    id = 85026,
    rewards = {
        Transmog({item = 119410, slot = L['staff']}), -- Soultwisting Staff
        Toy({item = 119178}) -- Black Whirlwind
    }
}) -- Soul-Twister Torek

map.nodes[73223069] = Rare({
    id = 85078,
    rewards = {
        Transmog({item = 119392, slot = L['1h_axe']}) -- Voidreaver's Axe
    },
    pois = {
        Path({
            72993213, 73133174, 73123099, 73223069, 73373073, 73423117,
            73473151, 73833211, 74123244, 73973304, 74123244, 74533259,
            75113262, 74123244, 74493159
        })
    }
}) -- Voidreaver Urnae

map.nodes[37183845] = Rare({
    id = 83746,
    quest = 37464,
    rewards = {
        Achievement({id = 9425}), -- So Grossly Incandescent
        Achievement({id = 9838, criteria = 27650}), -- What A Strange, Interdimensional Trip It's Been
        Mount({id = 634, item = 116771}), -- Solar Spirehawk
        Transmog({item = 120113, slot = L['mail']}), -- Talongrip Spurs
        Transmog({item = 115435, slot = L['mail']}), -- Leggings of Flowing Feathers
        Transmog({item = 120114, slot = L['plate']}), -- Wing-Forged Greatboots
        Transmog({item = 115433, slot = L['cloth']}), -- Solarflame Legwraps
        Transmog({item = 120111, slot = L['cloth']}), -- Featherflame Sandals
        Transmog({item = 120112, slot = L['leather']}), -- Phoenix-Rider Boots
        Transmog({item = 115434, slot = L['leather']}), -- Down-Lined Leggings
        Transmog({item = 115436, slot = L['plate']}) -- Phoenixfire Legplates
    }
}) -- Rukhmar

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[36821715] = Treasure({
    quest = 36243,
    label = L['outcasts_belongings'],
    rewards = {wod_treasures}
}) -- Outcast's Belongings

map.nodes[42172169] = Treasure({
    quest = 36447,
    label = L['outcasts_belongings'],
    rewards = {wod_treasures}
}) -- Outcast's Belongings

map.nodes[33292727] = Treasure({
    quest = 36422,
    label = L['sun_touched_cache'],
    note = L['Requires'] .. ' {spell:158762}',
    rewards = {wod_treasures}
}) -- Sun-Touched Cache

map.nodes[34152752] = Treasure({
    quest = 36421,
    label = L['sun_touched_cache'],
    rewards = {wod_treasures}
}) -- Sun-Touched Cache

map.nodes[44331204] = Treasure({
    quest = 36377,
    label = '{npc:85206}',
    rewards = {
        wod_treasures, Item({item = 118693}) -- Rukhmar's Image
    }
}) -- Rukhmar's Image

local elixir = Class('AncientRare', Treasure, {
    label = '{item:115463}',
    note = L['elixir_note'],
    fgroup = 'elixir',
    quest = {36388, 36381, 36390, 36392, 36386, 36389},
    rewards = {
        wod_treasures, Item({item = 115463}) -- Elixir of Shadow Sight
    }
})

map.nodes[43901501] = elixir() -- Elixir of Shadow Sight
map.nodes[43822463] = elixir()
map.nodes[69154333] = elixir()
map.nodes[48976256] = elixir({note = L['in_small_cave']})
map.nodes[55662209] = elixir()
map.nodes[53148451] = elixir({note = L['in_water']})

map.nodes[42392667] = Treasure({
    quest = 36388,
    label = '{npc:86961}',
    rewards = {
        wod_treasures, Transmog({item = 118242, slot = L['wand']}) -- Anzu's Scorn
    }
}) -- Gift of Anzu

map.nodes[61105536] = Treasure({
    quest = 36381,
    label = '{npc:86961}',
    rewards = {
        wod_treasures, Transmog({item = 118240, slot = L['1h_sword']}) -- Anzu's Scything Talon
    }
}) -- Gift of Anzu

map.nodes[57027896] = Treasure({
    quest = 36390,
    label = '{npc:86961}',
    rewards = {
        wod_treasures, Transmog({item = 118241, slot = L['1h_sword']}) -- Anzu's Piercing Talon
    }
}) -- Gift of Anzu

map.nodes[52031965] = Treasure({
    quest = 36392,
    label = '{npc:86961}',
    rewards = {
        wod_treasures, Transmog({item = 118239, slot = L['staff']}) -- Anzu's Stoicism
    }
}) -- Gift of Anzu

map.nodes[48604451] = Treasure({
    quest = 36386,
    label = '{npc:86961}',
    rewards = {
        wod_treasures, Transmog({item = 118237, slot = L['crossbow']}) -- Anzu's Malice
    }
}) -- Gift of Anzu

map.nodes[46864048] = Treasure({
    quest = 36389,
    label = '{npc:86961}',
    rewards = {
        wod_treasures, Transmog({item = 118238, slot = L['polearm']}) -- Anzu's Reach
    }
}) -- Gift of Anzu

map.nodes[42961637] = Treasure({
    quest = 36245,
    label = L['relics_of_the_outcasts'],
    note = L['Requires'] .. ' {spell:158762}',
    rewards = {wod_treasures}
}) -- Relics of the Outcasts

map.nodes[67383983] = Treasure({
    quest = 36356,
    label = L['relics_of_the_outcasts'],
    note = L['Requires'] .. ' {spell:158762}',
    rewards = {wod_treasures}
}) -- Relics of the Outcasts

map.nodes[60215391] = Treasure({
    quest = 36359,
    label = L['relics_of_the_outcasts'],
    note = L['Requires'] .. ' {spell:158762}',
    rewards = {wod_treasures}
}) -- Relics of the Outcasts

map.nodes[51894892] = Treasure({
    quest = 36360,
    label = L['relics_of_the_outcasts'],
    note = L['Requires'] .. ' {spell:158762}',
    rewards = {wod_treasures}
}) -- Relics of the Outcasts

map.nodes[43162725] = Treasure({
    quest = 36355,
    label = L['relics_of_the_outcasts'],
    note = L['Requires'] .. ' {spell:158762}',
    rewards = {wod_treasures}
}) -- Relics of the Outcasts

map.nodes[45944417] = Treasure({
    quest = 36354,
    label = L['relics_of_the_outcasts'],
    note = L['Requires'] .. ' {spell:158762}',
    rewards = {wod_treasures}
}) -- Relics of the Outcasts

map.nodes[42691832] = Treasure({
    quest = 36244,
    label = L['misplaced_scrolls'],
    note = L['Requires'] .. ' {spell:158762}',
    rewards = {wod_treasures}
}) -- Misplaced Scrolls

map.nodes[56304530] = Treasure({
    quest = 36433,
    label = L['smuggled_apexis_artifacts'],
    note = L['Requires'] .. ' {spell:158762}',
    rewards = {wod_treasures}
}) -- Smuggled Apexis Artifacts

map.nodes[50502209] = Treasure({
    quest = 36246,
    label = '{item:116919}',
    rewards = {
        wod_treasures, Item({item = 116919, note = '~41g'}) -- Fractured Sunstone
    }
}) -- Fractured Sunstone

map.nodes[50332580] = Treasure({
    quest = 36444,
    label = '{item:118691}',
    rewards = {
        wod_treasures, Item({item = 118691}), -- Iron Horde Explosives
        Currency({id = 824})
    }
}) -- Iron Horde Explosives

map.nodes[56242878] = Treasure({
    quest = 36362,
    label = L['shattered_hand_cache'],
    rewards = {wod_treasures, Currency({id = 824})}
}) -- Shattered Hand Cache

map.nodes[54363255] = Treasure({
    quest = 36364,
    label = '{item:118695}',
    rewards = {
        wod_treasures, Item({item = 118695}) -- Toxicfang Venom
    }
}) -- Toxicfang Venom

map.nodes[50782874] = Treasure({
    quest = 36247,
    label = L['lost_herb_satchel'],
    rewards = {wod_treasures}
}) -- Lost Herb Satchel

map.nodes[47933067] = Treasure({
    quest = 36361,
    label = L['shattered_hand_lockbox'],
    rewards = {
        wod_treasures, Item({item = 116920}) -- True Steel Lockbox
    }
}) -- Shattered Hand Lockbox

map.nodes[36293934] = Treasure({
    quest = 36402,
    label = L['orcish_signaling_horn'],
    rewards = {wod_treasures}
}) -- Orcish Signaling Horn

map.nodes[00000000] = Treasure({
    quest = 12345,
    label = L['varashas_egg'],
    note = L['in_cave'],
    rewards = {
        wod_treasures, Pet({item = 118207, id = 1541}), -- Hydraling
        Currency({id = 824})
    },
    pois = {POI({31194308})}
}) -- Name

map.nodes[37154750] = Treasure({
    quest = 36420,
    label = L['garrison-supplies'],
    rewards = {wod_treasures, Currency({id = 824})}
}) -- Garrison Supplies

map.nodes[37455083] = Treasure({
    quest = 36657,
    label = '{npc:84332}',
    note = L['roobys_roo_note'],
    rewards = {wod_treasures}
}) -- Rooby's Roo

map.nodes[36445779] = Treasure({
    quest = 36418,
    label = L['ephials_dark_grimoire'],
    rewards = {
        wod_treasures, Transmog({item = 116914, slot = L['offhand']}) -- Ephial's Grimoire
    }
}) -- Ephial's Dark Grimoire

map.nodes[37715632] = Treasure({
    quest = 36462,
    label = '{item:116020}',
    note = L['an_old_key_note'],
    rewards = {wod_treasures},
    pois = {POI({36195446})}
}) -- An Old Key

map.nodes[40605497] = Treasure({
    quest = 36458,
    label = L['abandoned_mining_pick'],
    rewards = {
        wod_treasures, Transmog({item = 116913, slot = L['1h_axe']}) -- Peon's Mining Pick
    }
}) -- Abandoned Mining Pick

map.nodes[41855042] = Treasure({
    quest = 36451,
    label = '{item:116918}',
    rewards = {
        wod_treasures, Transmog({item = 116918, slot = L['1h_mace']}) -- Garrison Workman's Hammer
    }
}) -- Garrison Workman's Hammer

map.nodes[49223720] = Treasure({
    quest = 36445,
    label = '{item:116835}',
    rewards = {
        wod_treasures, Transmog({item = 116835, slot = L['polearm']}) -- Assassin's Spear
    }
}) -- Assassin's Spear

map.nodes[47773612] = Treasure({
    quest = 36411,
    label = '{item:45994}',
    note = L['in_water'],
    rewards = {
        wod_treasures, Item({item = 116911}) -- Outcast Decoder Ring
    }
}) -- Lost Ring

map.nodes[46913405] = Treasure({
    quest = 36446,
    label = L['outcasts_pouch'],
    rewards = {wod_treasures}
}) -- Outcast's Pouch

map.nodes[52474280] = Treasure({
    quest = 36416,
    label = L['misplaced_scroll'],
    note = L['Requires'] .. ' {spell:158762}',
    rewards = {wod_treasures}
}) -- Misplaced Scroll

local raven_mother_offering = Class('raven_mother_offering', Treasure, {
    label = L['offering-to-the-raven-mother'],
    rewards = {
        wod_treasures, Item({item = 118267}) -- Ravenmother Offering
    }
}) -- Offering to the Raven Mother

map.nodes[53315552] = raven_mother_offering({quest = 36403}) -- Offering to the Raven Mother
map.nodes[48355261] = raven_mother_offering({quest = 36405})
map.nodes[48915470] = raven_mother_offering({quest = 36406})
map.nodes[51886465] = raven_mother_offering({quest = 36407})
map.nodes[60986387] = raven_mother_offering({quest = 36410})

map.nodes[55539085] = Treasure({
    quest = 36367,
    label = L['campaign_contributions'],
    note = L['campaign_contributions_note'],
    rewards = {wod_treasures}
}) -- Campaign Contributions

map.nodes[59169063] = Treasure({
    quest = 36366,
    label = '{item:116917}',
    rewards = {
        wod_treasures, Item({item = 116917}) -- Sailor Zazzuk's 180-Proof Rum
    }
}) -- Sailor Zazzuk's 180-Proof Rum

map.nodes[68418897] = Treasure({
    quest = 36453,
    label = L['coinbenders_payment'],
    note = L['coinbenders_payment_note'],
    rewards = {wod_treasures}
}) -- Coinbender's Payment

map.nodes[60868460] = Treasure({
    quest = 36456,
    label = L['shredder_parts'],
    rewards = {wod_treasures, Currency({id = 824})}
}) -- Shredder Parts

map.nodes[59638134] = Treasure({
    quest = 36365,
    label = L['spray_o_matic_5000_xt'],
    rewards = {wod_treasures, Currency({id = 824})}
}) -- Spray-O-Matic 5000 XT

map.nodes[63576737] = Treasure({
    quest = 36454,
    label = L['mysterious_mushrooms'],
    rewards = {wod_treasures}
}) -- Mysterious Mushrooms

map.nodes[58706024] = Treasure({
    quest = 36340,
    label = L['ogron-plunder'],
    rewards = {wod_treasures}
}) -- Ogron Plunder

map.nodes[66475652] = Treasure({
    quest = 36455,
    label = L['waterlogged_satchel'],
    note = L['in_water'],
    rewards = {wod_treasures}
}) -- Waterlogged Satchel

map.nodes[71634859] = Treasure({
    quest = 36450,
    label = L['sethekk_ritual_brew'],
    rewards = {wod_treasures}
}) -- Sethekk Ritual Brew

map.nodes[68333893] = Treasure({
    quest = 36375,
    label = '{npc:85190}',
    rewards = {wod_treasures}
}) -- Sethekk Idol

map.nodes[60878778] = Treasure({
    quest = 35481,
    label = L['nizzixs_chest'],
    note = L['nizzixs_chest_note'],
    rewards = {wod_treasures, Currency({id = 824})}
}) -- Nizzix's Chest

map.nodes[57962229] = Treasure({
    quest = 36374,
    label = '{npc:85165}',
    rewards = {
        wod_treasures, Item({item = 118694, note = '~33g'}) -- Statue of Anzu
    }
}) -- Statue of Anzu

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[46404520] = PetBattle({
    id = 87123,
    rewards = {Achievement({id = 9724, criteria = 27014})}
}) -- Vesharr

-------------------------------------------------------------------------------
------------------------- WOULD YOU LIKE A PAMPHLET? --------------------------
-------------------------------------------------------------------------------

local ForbiddenTome = Collectible({
    id = 85992,
    icon = 'peg_bl',
    scale = 1.5,
    group = ns.groups.WOULD_YOU_LIKE_A_PAMPLET,
    note = L['forbidden_tome_note'],
    rewards = {Achievement({id = 9432})} -- Would You Like A Pamplet?
})

map.nodes[74623122] = ForbiddenTome
map.nodes[74272773] = ForbiddenTome
map.nodes[71702790] = ForbiddenTome
map.nodes[70512415] = ForbiddenTome
map.nodes[71202285] = ForbiddenTome

-------------------------------------------------------------------------------
---------------------------------- VOIDTALON ----------------------------------
-------------------------------------------------------------------------------

local Voidtalon = Collectible({
    icon = 1094600,
    label = L['edge_of_reality'],
    note = L['edge_of_reality_note'],
    rewards = {
        Mount({id = 682, item = 121815}) -- Voidtalon of the Dark Star
    }
})

map.nodes[36431830] = Voidtalon
map.nodes[46822021] = Voidtalon
map.nodes[50430631] = Voidtalon
map.nodes[60901122] = Voidtalon

map.nodes[50502940] = Squirrel({
    id = 83674,
    rewards = {Achievement({id = 14728, criteria = 14})} -- To All the Squirrels Through Time and Space
}) -- Mud Jumper

map.nodes[54206295] = Collectible({
    icon = 1033590,
    label = '{npc:87561}',
    note = L['in_cave'],
    quest = 37168,
    rewards = {ns.reward.Follower({id = 219})},
    pois = {POI({54966513})}
}) -- Leorajh

map.nodes[54128361] = Treasure({
    quest = 39268,
    icon = 1044996,
    label = L['pirate_pepe'],
    rewards = {
        Achievement({id = 10053, criteria = 28185}), -- I Found Pepe!
        Item({item = 127870}) -- A Tiny Pirate Hat
    }
}) -- Pirate Pepe
