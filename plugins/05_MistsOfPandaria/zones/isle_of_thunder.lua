-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Map = ns.Map
local L = ns.locale
local Class = ns.Class

local Rare = ns.node.Rare
local Node = ns.node.Node
local NPC = ns.node.NPC
local Collectible = ns.node.Collectible
local Lorewalker = ns.node.Lorewalker

local Achievement = ns.reward.Achievement
local Mount = ns.reward.Mount
local Transmog = ns.reward.Transmog
local Item = ns.reward.Item
local Pet = ns.reward.Pet

local POI = ns.poi.POI
local Path = ns.poi.Path
-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------
local map = Map({id = 504, settings = true})

local ritualstone = Item({item = 94221})

map.nodes[51974513] = Node({
    label = L['iot_portal'],
    icon = 'portal_pp',
    fgroup = 'iot_portal',
    pois = {Path({51974513, 62853236}), POI({50884734})}
})

map.nodes[62853236] = Node({
    label = L['iot_portal'],
    icon = 'portal_pp',
    fgroup = 'iot_portal'
})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[49098962] = Rare({
    id = 50358,
    rewards = {
        Achievement({id = 8103, criteria = 22820}), -- Champions of Lei Shen
        Pet({item = 94124, id = 1178}), ritualstone
    },
    pois = {Path({48548747, 49098962, 50159104})}
}) -- Haywire Sunreaver Construct

map.nodes[35116222] = Rare({
    id = 69664,
    rewards = {
        Achievement({id = 8103, criteria = 22821}), -- Champions of Lei Shen
        ritualstone
    }
}) -- Mumta

map.nodes[34608160] = Rare({
    id = 69996,
    rewards = {
        Achievement({id = 8103, criteria = 22822}), -- Champions of Lei Shen
        ritualstone
    },
    pois = {Path({33408160, 34608160, 36008180, 37608260})}
}) -- Ku'lai the Skyclaw

map.nodes[51317128] = Rare({
    id = 69997,
    rewards = {
        Achievement({id = 8103, criteria = 22823}), -- Champions of Lei Shen
        ritualstone
    }
}) -- Progenitus

map.nodes[53855330] = Rare({
    id = 69998,
    rewards = {
        Achievement({id = 8103, criteria = 22824}), -- Champions of Lei Shen
        ritualstone
    }
}) -- Goda

map.nodes[61504960] = Rare({
    id = 69999,
    rewards = {
        Achievement({id = 8103, criteria = 22825}), -- Champions of Lei Shen
        ritualstone
    }
}) -- God-Hulk Ramuk

map.nodes[44742981] = Rare({
    id = 70000,
    rewards = {
        Achievement({id = 8103, criteria = 22826}), -- Champions of Lei Shen
        ritualstone
    }
}) -- Al'tabim the All-Seeing

map.nodes[48582555] = Rare({
    id = 70001,
    rewards = {
        Achievement({id = 8103, criteria = 22827}), -- Champions of Lei Shen
        ritualstone
    }
}) -- Backbreaker Uru

map.nodes[54343551] = Rare({
    id = 70002,
    rewards = {
        Achievement({id = 8103, criteria = 22828}), -- Champions of Lei Shen
        ritualstone
    }
}) -- Lu-Ban

map.nodes[58543407] = Rare({
    id = 70003,
    rewards = {
        Achievement({id = 8103, criteria = 22829}), -- Champions of Lei Shen
        ritualstone
    },
    pois = {POI({62404037})}
}) -- Molthor

map.nodes[39488149] = Rare({
    id = 70530,
    rewards = {ritualstone},
    pois = {POI({40618017})}
}) -- Ra'sha

map.nodes[68913928] = Rare({
    id = 70080,
    note = L['ritualstone_needed'],
    rewards = {
        Achievement({id = 8101, criteria = 22759}), -- It Was Worth Every Ritual Stone
        Transmog({item = 94709, slot = L['1h_sword']}) -- Talonblade of Akil'amon
    }
}) -- Windweaver Akil'amon

map.nodes[48002597] = Rare({
    id = 69749,
    note = L['ritualstone_needed'],
    rewards = {
        Achievement({id = 8101, criteria = 22763}), -- It Was Worth Every Ritual Stone
        Transmog({item = 94824, slot = L['staff']}) -- Gaze of Qi'nor
    }
}) -- Qi'nor <Mogu Slave Master>

map.nodes[55188772] = Rare({
    id = 69341,
    note = L['ritualstone_needed'],
    rewards = {
        Achievement({id = 8101, criteria = 22812}), -- It Was Worth Every Ritual Stone
        Transmog({item = 94708, slot = L['dagger']}) -- Saurok Ritualist's Sacrificial Dagger
    }
}) -- Echo of Kros

map.nodes[57857922] = Rare({
    id = 69396,
    note = L['ritualstone_needed'],
    rewards = {
        Achievement({id = 8101, criteria = 22813}), -- It Was Worth Every Ritual Stone
        Transmog({item = 94706, slot = L['dagger']}) -- Cera's Impalers
    },
    pois = {POI({58967964})}
}) -- Cera

map.nodes[35676386] = Rare({
    id = 69471,
    note = L['ritualstone_needed'],
    rewards = {
        Achievement({id = 8101, criteria = 22814}), -- It Was Worth Every Ritual Stone
        Transmog({item = 94707, slot = L['polearm']}) -- Teng's Reach
    },
    pois = {POI({33436305})}
}) -- Spirit of Warlord Teng

map.nodes[30705857] = Rare({
    id = 69633,
    note = L['ritualstone_needed'],
    rewards = {
        Achievement({id = 8101, criteria = 22815}), -- It Was Worth Every Ritual Stone
        Transmog({item = 94720, slot = L['1h_sword']}) -- Vengeance of Kor'dok
    }
}) -- Kor'dok

map.nodes[53114705] = Rare({
    id = 69767,
    note = L['ritualstone_needed'],
    rewards = {
        Achievement({id = 8101, criteria = 22817}), -- It Was Worth Every Ritual Stone
        Transmog({item = 94826, slot = L['bow']}) -- Name
    }
}) -- Ancient Mogu Guardian

map.nodes[44476103] = Rare({
    id = 69339,
    note = L['ritualstone_needed'],
    rewards = {
        Achievement({id = 8101, criteria = 23205}), -- It Was Worth Every Ritual Stone
        Transmog({item = 94825, slot = L['1h_mace']}) -- Lightning Snare
    }
}) -- Electromancer Ju'le

map.nodes[49942065] = Rare({
    id = 69347,
    note = L['ritualstone_needed'],
    rewards = {
        Achievement({id = 8101, criteria = 23206}), -- It Was Worth Every Ritual Stone
        Transmog({item = 94823, slot = L['2h_axe']}) -- Drakkari Decapitator
    }
}) -- Incomplete Drakkari Colossus

map.nodes[57993733] = Rare({
    id = 69099,
    rewards = {
        Achievement({id = 8028}), -- Praise the Sun!
        Mount({item = 95057, id = 542})
    }
}) -- Nalak <The Storm Lord>

-------------------------------------------------------------------------------
--------------------------------- LOREWALKER ----------------------------------
-------------------------------------------------------------------------------

map.nodes[35307020] = Lorewalker({
    rewards = {Achievement({id = 8049, criteria = 22708})}
}) -- Zandalari Prophecy - Coming of Age

map.nodes[66024462] = Lorewalker({
    rewards = {Achievement({id = 8049, criteria = 22709})}
}) -- Zandalari Prophecy - For Council and King

map.nodes[36307035] = Lorewalker({
    rewards = {Achievement({id = 8049, criteria = 22710})}
}) -- Zandalari Prophecy - Shadows of the Loa

map.nodes[52654138] = Lorewalker({
    rewards = {Achievement({id = 8049, criteria = 22711})}
}) -- Zandalari Prophecy - The Dark Prophet Zul

map.nodes[40184075] = Lorewalker({
    rewards = {Achievement({id = 8050, criteria = 22714})}
}) -- Rumbles of Thunder - Lei Shen

map.nodes[47075991] = Lorewalker({
    rewards = {Achievement({id = 8050, criteria = 22714})}
}) -- Rumbles of Thunder - The Sacred Mount

map.nodes[34896559] = Lorewalker({
    rewards = {Achievement({id = 8050, criteria = 22715})},
    pois = {POI({35126190})}
}) -- Rumbles of Thunder - Unity at a Price

map.nodes[60756878] = Lorewalker({
    rewards = {Achievement({id = 8050, criteria = 22716})}
}) -- Rumbles of Thunder-  The Pandaren Problem

map.nodes[35835471] = Lorewalker({
    rewards = {Achievement({id = 8051, criteria = 22717})}
}) -- Gods and Monsters - Agents of Order

map.nodes[59292626] = Lorewalker({
    rewards = {Achievement({id = 8051, criteria = 22718})}
}) -- Gods and Monsters - Shadow, Storm, and Stone

map.nodes[49922035] = Lorewalker({
    rewards = {Achievement({id = 8051, criteria = 22719})}
}) -- Gods and Monsters - The Curse and the Silence

map.nodes[62533772] = Lorewalker({
    rewards = {Achievement({id = 8051, criteria = 22720})}
}) -- Gods and Monsters - Age of a Hundred Kings

-------------------------------------------------------------------------------
------------- Achievement: When in Ihgaluk, Do as the Skumblade Do ------------
-------------------------------------------------------------------------------

local Kroshik = Class('Kroshik', Collectible,
    {icon = 458255, group = ns.groups.KROSHIK})

map.nodes[51307104] = Kroshik({
    id = 69907,
    note = L['kroshik_bow'],
    rewards = {
        Achievement({id = 8108, criteria = 22832}) -- When in Ihgaluk, Do as the Skumblade Do
    },
    pois = {POI({49917575})}
}) -- Kroshik Egg

map.nodes[51227413] = Kroshik({
    id = 69908,
    note = L['kroshik_baby'],
    rewards = {
        Achievement({id = 8108, criteria = 22833}) -- When in Ihgaluk, Do as the Skumblade Do
    }
}) -- Baby Kroshik

map.nodes[52828222] = Kroshik({
    id = 69218,
    note = L['kroshik_adult'],
    rewards = {
        Achievement({id = 8108, criteria = 22834}) -- When in Ihgaluk, Do as the Skumblade Do
    }
}) -- Adult Kroshik

map.nodes[55078807] = Kroshik({
    id = 70226,
    note = L['kroshik_bow'],
    rewards = {
        Achievement({id = 8108, criteria = 22835}) -- When in Ihgaluk, Do as the Skumblade Do
    }
}) -- Sacrificed Kroshik
