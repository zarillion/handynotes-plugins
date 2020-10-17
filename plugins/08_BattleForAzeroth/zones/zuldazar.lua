-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local L = ns.locale

local Class = ns.Class
local Map = ns.Map
local NPC = ns.node.NPC
local Rare = ns.node.Rare
local Treasure = ns.node.Treasure
local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Pet = ns.reward.Pet
local Transmog = ns.reward.Transmog
local Line = ns.poi.Line
local Path = ns.poi.Path
local POI = ns.poi.POI

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({ id=862, settings=true })
local daz = Map({ id=1165, settings=true })

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[80972163] = Rare({
    id=129961,
    quest=50280,
    rewards={
        Achievement({id=12944, criteria=41850}),
        Transmog({item=161042, slot=L["plate"]}) -- Gotaka's Wallopers
    }
}) -- Atal'zul Gotaka

map.nodes[49855744] = Rare({
    id=129343,
    quest=49410,
    note=L["in_cave"],
    rewards={
        Achievement({id=12944, criteria=41871}),
        Transmog({item=161034, slot=L["mail"]}) -- Thunderhowl Gauntlets
    },
    pois={
        POI({49555904}) -- Cave entrance
    }
}) -- Avatar of Xolotal

map.nodes[59821830] = Rare({
    id=128699,
    quest=49267,
    rewards={
        Achievement({id=12944, criteria=41872}),
        Transmog({item=161104, slot=L["mail"]}) -- Blood Feast Gauntlets
    }
}) -- Bloodbulge

map.nodes[66743228] = Rare({
    id=131718,
    quest=50034,
    rewards={
        Achievement({id=12944, criteria=41867}),
        Transmog({item=161020, slot=L["cloth"]}) -- Sky-Hunter Breeches
        --Item({item=157782, quest=nil}) -- Pterrordax Egg
    }
}) -- Bramblewing

map.nodes[74203930] = Rare({
    id=133190,
    quest=50269,
    rewards={
        Achievement({id=12944, criteria=41864}),
        Transmog({item=160952, slot=L["dagger"]}) -- Daggerjaw's Incisor
    }
}) -- Daggerjaw

map.nodes[44157652] = Rare({
    id=136428,
    quest=51083,
    note=L["in_small_cave"],
    rewards={
        Achievement({id=12944, criteria=41852}),
        Transmog({item=160979, slot=L["offhand"]}) -- Ancient Chronicler's Focus
    }
}) -- Dark Chronicler

map.nodes[65411022] = Rare({
    id=134760,
    quest=50693,
    rewards={
        Achievement({id=12944, criteria=41855}),
        Transmog({item=160958, slot=L["1h_mace"]}) -- Darkspeaker Scepter
    }
}) -- Darkspeaker Jo'la

map.nodes[64253271] = Rare({
    id=129954,
    quest=50439,
    rewards={
        Achievement({id=12944, criteria=41851}),
        Transmog({item=161043, slot=L["plate"]}) -- Relentless Hydra Legguards
    }
}) -- Gahz'ralka

map.nodes[74112850] = Rare({
    id=124185,
    quest=47792,
    rewards={
        Achievement({id=12944, criteria=41876}),
        Transmog({item=161035, slot=L["mail"]}) -- Thundercrash Footguards
    }
}) -- Golrakahn

map.nodes[79973597] = Rare({
    id=133155,
    quest=50260,
    rewards={
        Achievement({id=12944, criteria=41865}),
        Transmog({item=161048, slot=L["cloth"]}) -- Brutish Tidecaller Armwraps
    }
}) -- G'Naat

map.nodes[42003620] = Rare({
    id=134738,
    quest=50677,
    rewards={
        Achievement({id=12944, criteria=41856}),
        Transmog({item=160978, slot=L["shield"]}) -- Golden Tomb Defender
    }
}) -- Hakbi the Risen

map.nodes[68664874] = Rare({
    id=126637,
    quest=48543,
    note=L["in_cave"],
    rewards={
        Achievement({id=12944, criteria=41874}),
        Transmog({item=160984, slot=L["cloak"]}) -- Sauroscale Cloak of Adaptation
    },
    pois={
        POI({68824710}) -- Cave entrance
    }
}) -- Kandak

map.nodes[75613582] = Rare({
    id=132244,
    quest=50159,
    rewards={
        Achievement({id=12944, criteria=41866}),
        Transmog({item=161112, slot=L["plate"]}) -- Hillshaker Armplates
    }
}) -- Kiboku

local kulkrazahn = Rare({
    id=120899,
    quest=48333,
    rewards={
        Achievement({id=12944, criteria=41875}),
        Transmog({item=160947, slot=L["1h_axe"]}) -- Amani Berserker's Chopper
    }
}) -- Kul'krazahn

daz.nodes[54988253] = kulkrazahn
map.nodes[59605640] = kulkrazahn

map.nodes[58677417] = Rare({
    id=131233,
    quest=49911,
    rewards={
        Achievement({id=12944, criteria=41870}),
        Transmog({item=161033, slot=L["mail"]}) -- Jolting Leap Legguards
    }
}) -- Lei-zhi

map.nodes[60626627] = Rare({
    id=134782,
    quest=50281,
    note=L["murderbeak_note"],
    rewards={
        Achievement({id=12944, criteria=41863}),
        Transmog({item=161022, slot=L["cloth"]}) -- Gusting Axebeak Anklewraps
    }
}) -- Murderbeak

map.nodes[69563691] = Rare({
    id=149147,
    quest=54770,
    rewards={
        Pet({item=166345, id=2538}) -- Dasher
    },
    pois={
        Path({69503569, 69563691, 69603800})
    }
}) -- N'chala the Egg Thief

local syrawon = Rare({
    id=136413,
    quest=51080,
    note=L["in_small_cave"],
    rewards={
        Achievement({id=12944, criteria=41853}),
        Transmog({item=161047, slot=L["cloth"]}) -- Shadow Wind Leggings
    }
}) -- Syrawon the Dominus

daz.nodes[36004620] = syrawon
map.nodes[53404465] = syrawon

map.nodes[77711029] = Rare({
    id=131687,
    quest=50013,
    rewards={
        Achievement({id=12944, criteria=41868}),
        Transmog({item=161109, slot=L["plate"]}) -- Coastal Hardshell Girdle
    }
}) -- Tambano

map.nodes[46616533] = Rare({
    id=127939,
    quest=49004,
    rewards={
        Achievement({id=12944, criteria=41873}),
        Transmog({item=161029, slot=L["leather"]}) -- Ageless Toxin Grips
    }
}) -- Torraske the Eternal

map.nodes[71423239] = Rare({
    id=122004,
    quest=47567,
    note=L["in_cave"],
    rewards={
        Achievement({id=12944, criteria=41877}),
        Transmog({item=161091, slot=L["leather"]}) -- Swift-Talon Striders
    }
}) -- Umbra'jin

local vukuba = Rare({
    id=134048,
    quest=50508,
    note=L["vukuba_note"],
    rewards={
        Achievement({id=12944, criteria=41858}),
        Transmog({item=162613, slot=L["cloth"]}) -- Mantle of Brood Mimicry
    }
}) -- Vukuba

daz.nodes[61705120] = vukuba
map.nodes[61904622] = vukuba

map.nodes[43952544] = Rare({
    id=133842,
    quest=50438,
    rewards={
        Achievement({id=12944, criteria=41859}),
        Transmog({item=161040, slot=L["plate"]}) -- Arid Dune Stompers
    }
}) -- Warcrawler Karkithiss

map.nodes[48005424] = Rare({
    id=131476,
    quest=49972,
    rewards={
        Achievement({id=12944, criteria=41869}),
        Item({item=161125, note=L["trinket"]}) -- Kaja-fied Banana
    }
}) -- Zayoos

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

-- Daily treasures? Junk?
-- 52564719  862 50722 Treasure Chest
-- 67943651  862 50716 Treasure Chest
-- 42031415 1165 49142 Treasure Chest

-------------------------------------------------------------------------------

local voodoo = Treasure({
    label='{item:161443}',
    quest=52269,
    note=L["tiny_voodoo_mask_note"],
    rewards={
        Item({item=161443, quest=52269})
    }
}) -- A Tiny Voodoo Mask

daz.nodes[39001580] = voodoo
map.nodes[54303440] = voodoo

local cache_of_secrets = Treasure({
    quest=51338,
    note=L["cache_of_secrets_note"],
    rewards={
        Achievement({id=12851, criteria=40996})
    }
}) -- Cache of Secrets

daz.nodes[44472690] = cache_of_secrets
map.nodes[56123806] = cache_of_secrets

local white_shark = Treasure({
    quest=50947,
    note=L["da_white_shark_note"],
    rewards={
        Achievement({id=12851, criteria=40994})
    }
}) -- Da White Shark's Bounty

daz.nodes[59308866] = white_shark
map.nodes[61065863] = white_shark

map.nodes[38793444] = Treasure({
    quest=50707,
    note=L["dazars_forgotten_chest_note"],
    rewards={
        Achievement({id=12851, criteria=40993})
    },
    pois={
        Path({41953562, 41583471, 41063381, 40623270, 39913279, 39453364, 38793444})
    }
}) -- Dazar's Forgotten Chest

map.nodes[51442661] = Treasure({
    quest=50582,
    note=L["gift_of_the_brokenhearted_note"],
    rewards={
        Achievement({id=12851, criteria=40991})
    }
}) -- Gift of the Brokenhearted

local offerings = Treasure({
    quest=48938,
    note=L["offerings_of_the_chosen_note"],
    rewards={
        Achievement({id=12851, criteria=40988})
    }
}) -- Offerings of the Chosen

daz.nodes[38280714] = offerings
map.nodes[54093150] = offerings

local riches = Treasure({
    quest=51624,
    note=L["riches_of_tornowa_note"],
    rewards={
        Achievement({id=12851, criteria=40997})
    }
}) -- Riches of Tor'nowa

daz.nodes[34905440] = riches
map.nodes[52974719] = riches

local spoils = Treasure({
    quest=49936,
    note=L["spoils_of_pandaria_note"],
    rewards={
        Achievement({id=12851, criteria=40990})
    }
}) -- Spoils of Pandaria

map.nodes[51718690] = spoils
Map({id=1177}).nodes[23132391] = spoils

map.nodes[71821677] = Treasure({
    quest=50949,
    note=L["in_small_cave"],
    rewards={
        Achievement({id=12851, criteria=40995})
    }
}) -- The Exile's Lament

map.nodes[49506526] = Treasure({
    quest=49257,
    note=L["warlords_cache_note"],
    rewards={
        Achievement({id=12851, criteria=40992})
    }
}) -- Warlord's Cache

map.nodes[64712167] = Treasure({
    quest=50259,
    rewards={
        Achievement({id=12851, criteria=40989})
    }
}) -- Witch Doctor's Hoard

-------------------------------------------------------------------------------
--------------------------------- PAKU TOTEMS ---------------------------------
-------------------------------------------------------------------------------

local Totem = Class('Totem', NPC, {
    id=131154,
    icon='flight_point',
    scale=2,
    group=ns.groups.PAKU_TOTEMS,
    note=L["totem_of_paku_note"]
})

daz.nodes[40668427] = Totem({pois={Line({40668427, 46908558})}})
daz.nodes[40801107] = Totem({pois={Line({40801107, 42832293})}})
daz.nodes[41193782] = Totem({pois={Line({46888548, 41193782})}})
daz.nodes[41253911] = Totem({pois={Line({41253911, 49883972})}})
daz.nodes[42832293] = Totem({pois={Line({42832293, 40801107})}})
daz.nodes[44680588] = Totem({pois={Line({44680588, 52881242})}})
daz.nodes[46591999] = Totem({pois={Line({46591999, 50263259})}})
daz.nodes[46888548] = Totem({pois={Line({46888548, 41193782})}})
daz.nodes[49543283] = Totem({pois={Line({49543283, 49913955})}})
daz.nodes[51364094] = Totem({pois={Line({51364094, 49984342})}})
daz.nodes[52881242] = Totem({pois={Line({52881242, 44680588})}})
daz.nodes[52931129] = Totem({pois={Line({52931129, 59111062})}})
daz.nodes[53221892] = Totem({pois={Line({53221892, 52761184})}})
daz.nodes[58313263] = Totem({pois={Line({58313263, 75683985})}})
daz.nodes[59111062] = Totem({pois={Line({52931129, 59111062})}})
daz.nodes[72081446] = Totem({pois={Line({72081446, 59232283})}})
