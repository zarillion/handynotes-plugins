-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local DisturbedDirt = ns.node.DisturbedDirt
local PT = ns.node.ProfessionTreasures
local Rare = ns.node.Rare
local Treasure = ns.node.Treasure

local LoreObject = ns.node.LoreObject
local SkyridingGlyph = ns.node.SkyridingGlyph

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

local Path = ns.poi.Path
local POI = ns.poi.POI

local ReputationGain = ns.tooltip.ReputationGain

-------------------------------------------------------------------------------

local map = Map({id = 2248, settings = true})
local dor = Map({id = 2339, settings = true}) -- Dornogal

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[23335817] = Rare({
    id = 219281,
    quest = nil,
    note = L['alunira_note'],
    rewards = {
        Achievement({id = 40435, criteria = 68225}),
        Mount({item = 223270, id = 2176}) -- Alunira
    }
}) -- Alunira

map.nodes[41077616] = Rare({ -- get path
    id = 219264,
    quest = 81893,
    rewards = {
        Achievement({id = 40435, criteria = 68214}),
        Transmog({item = 223351, slot = L['leather']}) -- Wolf Packleader's Hood
    }
}) -- Bloodmaw

map.nodes[55762753] = Rare({
    id = 221128,
    quest = nil,
    rewards = {Achievement({id = 40435, criteria = 68224})}
}) -- Clawbreaker K'zithix

map.nodes[47946014] = Rare({
    id = 219265,
    quest = 81895,
    note = L['in_cave'], -- more like a mine
    rewards = {
        Achievement({id = 40435, criteria = 68215}),
        Transmog({item = 223345, slot = L['leather']}) -- Viper's Stone Grips
    },
    pois = {
        POI({45936001, 46206206, 47726173}) -- Entries
    }
}) -- Emperor Pitfang

map.nodes[25784503] = Rare({
    id = 219266,
    quest = nil,
    rewards = {Achievement({id = 40435, criteria = 68218})}
}) -- Escaped Cutthroat

map.nodes[63984054] = Rare({ -- get path
    id = 219279,
    quest = 81905, -- 84034 ?
    rlabel = ReputationGain(150, 2590), -- Council of Dornogal
    rewards = {Achievement({id = 40435, criteria = 68223})}
    -- pois = {Path({})}
}) -- Flamekeeper Graz

map.nodes[53527998] = Rare({
    id = 219268,
    quest = nil,
    rewards = {Achievement({id = 40435, criteria = 68217})}
}) -- Gar'loc

map.nodes[48212701] = Rare({
    id = 219270,
    quest = nil,
    rewards = {Achievement({id = 40435, criteria = 68220})}
}) -- Kronolith, Might of the Mountain

map.nodes[73004009] = Rare({
    id = 220890,
    quest = nil,
    rewards = {Achievement({id = 40435, criteria = 68231})}
}) -- Matriarch Charfuria

map.nodes[50876975] = Rare({ -- review
    id = 219267,
    quest = 81897, -- 84026 ?
    rlabel = ReputationGain(150, 2590), -- Council of Dornogal
    rewards = {Achievement({id = 40435, criteria = 68216})}
}) -- Plaguehart

map.nodes[35657489] = Rare({ -- get path
    id = 213115,
    quest = 78619,
    rewards = {
        Achievement({id = 40435, criteria = 68210}), --
        Transmog({item = 223367, slot = L['leather']}) -- Cuffs of the Titancap
    },
    pois = {
        Path({
            35657489, 35987492, 36407502, 36747513, 36997533, 37007556,
            36887580, 36597614, -- check this path
            36177642, 35777617, 35357609, 35307597, 35397581, 35587547,
            35037495, 34897468, 34897403, 35357368, 35627338, 36137351,
            36617424, 37137470, 36997533
        })
    }
}) -- Rustul Titancap

map.nodes[62776842] = Rare({
    id = 217534,
    quest = 79685,
    rewards = {Achievement({id = 40435, criteria = 68211})}
}) -- Sandres the Relicbearer

map.nodes[74422804] = Rare({
    id = 219278,
    quest = nil,
    rewards = {Achievement({id = 40435, criteria = 68221})}
}) -- Shallowshell the Clacker

map.nodes[58776068] = Rare({
    id = 219262,
    quest = 81892,
    rewards = {
        Achievement({id = 40435, criteria = 68212}),
        Transmog({item = 223356, slot = L['leather']}) -- Shoulderpads of the Steamsurger
    }
}) -- Springbubble

map.nodes[69853850] = Rare({
    id = 220883,
    quest = nil,
    rewards = {Achievement({id = 40435, criteria = 68230})}
}) -- Sweetspark the Oozeful

map.nodes[56891601] = Rare({
    id = 219269,
    quest = nil,
    rewards = {Achievement({id = 40435, criteria = 68219})},
    pois = {Path({56891601, 57401625, 57761653})}
}) -- Tempest Lord Incarnus

map.nodes[72913794] = Rare({ -- get path
    id = 221126,
    quest = nil,
    rewards = {Achievement({id = 40435, criteria = 68229})}
}) -- Tephratennae

map.nodes[57122241] = Rare({
    id = 219271,
    quest = nil,
    rewards = {Achievement({id = 40435, criteria = 68222})}
}) -- Twice-Stinger the Wretched

map.nodes[30905239] = Rare({
    id = 219284,
    label = L['violet_hold_prisoner'],
    quest = {82203, 82204, 82205},
    questCount = true,
    rewards = {
        Achievement({
            id = 40435,
            criteria = {
                {id = 68227, quest = 82204}, -- Kereke
                {id = 68228, quest = 82205}, -- Rotfist
                {id = 68226, quest = 82203} -- Zovex
            }
        }), --
        Transmog({item = 226117, type = L['offhand']}) -- Dalaran Guardian's Arcanotool
    }
}) -- Violet Hold Prisoner (Kereke, Rotfist, Zovex)

map.nodes[56833477] = Rare({
    id = 219263,
    quest = 81894,
    rewards = {
        Achievement({id = 40435, criteria = 68213}),
        Transmog({item = 223344, slot = L['leather']}) -- Warphorn's Resilient Vest
    },
    pois = {
        Path({
            58053488, 58253574, 58303662, 58163725, 57903774, 57623801,
            57343819, 57053828, 56573823, 56293757, 56363707, 56553649,
            56683592, 56723554, 56583488, 56833477, 57093443, 57313441,
            57813457, 58053488
        })
    }
}) -- Warphorn

-------------------------------------------------------------------------------

map.nodes[46153217] = Rare({id = 220846, quest = 81515}) -- Rowdy Rubble

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[59122348] = Treasure({ -- You may have to wait until it spawns.
    quest = 82715,
    -- vignette = 6293,
    rlabel = ReputationGain(150, 2590), -- Council of Dornogal
    note = L['in_building'],
    rewards = {
        Achievement({id = 40434, criteria = 68209}),
        Transmog({item = 224290, slot = L['1h_axe']}) -- Storm Defender's Axe
    }
}) -- Defender's Axe (Web-wrapped Axe)

map.nodes[56226094] = Treasure({ -- You may have to wait until it spawns.
    quest = 82714,
    -- vignette = 6292,
    rlabel = ReputationGain(150, 2590), -- Council of Dornogal
    rewards = {
        Achievement({id = 40434, criteria = 68208}), --
        Item({item = 224263}) -- Infused Cinderbrew
    }
}) -- Infused Cinderbrew

map.nodes[77232445] = Treasure({ -- You may have to wait until it spawns.
    quest = 82287,
    -- vignette = 6262,
    rlabel = ReputationGain(150, 2590), -- Council of Dornogal
    rewards = {
        Achievement({id = 40434, criteria = 68206}), --
        Item({item = 223280}) -- Jade Pearl (500g)
    }
}) -- Jade Pearl

map.nodes[62574327] = Treasure({ -- You may have to wait until it spawns.
    quest = 82325,
    -- vignette = 6273,
    rlabel = ReputationGain(150, 2590), -- Council of Dornogal
    rewards = {
        Achievement({id = 40434, criteria = 68205}),
        Transmog({item = 223484, slot = L['2h_axe']}) -- Kobold Mastermind's "Pivel"
    }
}) -- Kobold Pickaxe

map.nodes[40625986] = Treasure({
    quest = {82212, 82227, 83243}, -- feed, opend, ?
    -- vignette = 6224,
    rlabel = ReputationGain(150, 2590), -- Council of Dornogal
    note = L['magical_treasure_chest_note'],
    rewards = {
        Achievement({id = 40434, criteria = 68199}),
        Pet({item = 224579, id = 3362}) -- Sapphire Crab
    }
}) -- Magical Treasure Chest (Lionel)

map.nodes[59732868] = Treasure({ -- 59602460, 59102708  follow {npc:222963}
    quest = {82145, 82251, 83246},
    rlabel = ReputationGain(150, 2590), -- Council of Dornogal
    -- vignette = 6212,
    note = L['mosswool_flower_note'],
    rewards = {
        Achievement({id = 40434, criteria = 68204}),
        Pet({item = 224450, id = 4527}) -- Lil' Moss Rosy
    },
    pois = {
        POI({59602460, 59102708, 59732868}), -- Lost Mosswool
        Path({59602460, 59102708, 59732868}) -- Walking Path
    }
}) -- Mosswool Flower (Lost Mosswool)

map.nodes[55006564] = Treasure({ -- more Boskroot Cap locations ?
    quest = {
        82142, -- Cap handed
        82253, -- looted
        83245 -- looted
    },
    -- vignette = 6209,
    rlabel = ReputationGain(150, 2590), -- Council of Dornogal
    note = L['mushroom_cap_note'],
    rewards = {Achievement({id = 40434, criteria = 68202})},
    pois = {
        POI({51837032, 52326982, 52466780, 52687038, 52346737, 52646562}) -- Boskroot Caps
    }
}) -- Mushroom Cap (U'llwort The Self-Exiled)

map.nodes[53951920] = Treasure({
    quest = {82134, 82252, 83244},
    -- vignette = 6208,
    rlabel = ReputationGain(150, 2590), -- Council of Dornogal
    note = L['mysterious_orb_note'],
    rewards = {Achievement({id = 40434, criteria = 68201})},
    pois = {
        POI({53081855}) -- Elemental Pearl {item:221504}
    }
}) -- Mysterious Orb (Weary Water Elemental)

map.nodes[48896087] = Treasure({ -- You may have to wait until it spawns.
    quest = 82326,
    -- vignette = 6274,
    rlabel = ReputationGain(150, 2590), -- Council of Dornogal
    note = L['in_cave'], -- more like a mine
    rewards = {Achievement({id = 40434, criteria = 68207})},
    pois = {
        POI({45936001, 46206206, 47726173}) -- Entries
    }
}) -- Shimmering Opal Lily

map.nodes[38074358] = Treasure({
    quest = 82246, -- 82245 ?
    -- vignette = 6236,
    rlabel = ReputationGain(150, 2590), -- Council of Dornogal
    note = L['thaks_treasure_note'],
    rewards = {Achievement({id = 40434, criteria = 68203})}
}) -- Thak's Treasure

map.nodes[48513004] = Treasure({
    quest = {82160, 83242},
    -- vignette = 6210
    rlabel = ReputationGain(150, 2590), -- Council of Dornogal
    note = L['in_small_cave'] .. '\n\n' .. L['trees_treasure_note'],
    rewards = {
        Achievement({id = 40434, criteria = 68197}), --
        Toy({item = 224585}) -- Hanna's Locket
    },
    pois = {
        POI({48683103}), -- Entrance
        POI({19735843, quest = 82755, color = 'Green'}), -- Pearlescent Shellcrab
        POI({38264202, quest = 82756, color = 'Green'}), -- Pearlescent Shellcrab / Up in the Tree
        POI({41852701, quest = 82754, color = 'Green'}), -- Pearlescent Shellcrab
        POI({50717057, quest = 82751, color = 'Green'}), -- Pearlescent Shellcrab / under a root
        POI({70771999, quest = 82753, color = 'Green'}), -- Pearlescent Shellcrab
        POI({74924939, quest = 82752, color = 'Green'}) -- Pearlescent Shellcrab / on a root
    }
}) -- Tree's Treasure (Pearlescent Shellcrab)

local TurtlesThanks = Class('TurtlesThanks', Treasure, {
    rlabel = ReputationGain(150, 2590), -- Council of Dornogal
    rewards = {
        Achievement({id = 40434, criteria = 68198}),
        Pet({item = 224549, id = 4594}) -- Sewer Turlte Whistle
    }
}) -- Turtle's Thanks (Dalaran Sewer Turtle)

function TurtlesThanks.getters:note()
    local note = ns.tooltip.ItemStatus(220143, 5, L['turtles_thanks_1_note'],
        false)
    note = note .. ns.tooltip.ItemStatus(222533, 1, L['turtles_thanks_2_note'])
    return note .. '\n\n' .. L['turtles_thanks_3_note']
end

map.nodes[40917377] = TurtlesThanks({
    quest = 79586
    -- vignette = 6244, 6245
})

dor.nodes[58283026] = TurtlesThanks({
    quest = {82255, 82716},
    questDeps = 79586,
    parent = map.id,
    -- vignette = 6246
    note = L['turtles_thanks_3_note']
})

-------------------------------------------------------------------------------

-- map.nodes[61901680] = Treasure({
--     quest = nil,
--     rewards = {Achievement({id = 40434, criteria = nil})}
-- }) -- Earthen Coffer

map.nodes[73693706] = Treasure({
    lable = L['elemental_geode_label'],
    quest = nil,
    note = L['in_small_cave']
}) -- Elemental Geode

-- map.nodes[63804310] = Treasure({
--     quest = nil,
--     rewards = {Achievement({id = 40434, criteria = nil})}
-- }) -- Forgotten Axe

-- map.nodes[82204570] = Treasure({
--     quest = nil,
--     rewards = {Achievement({id = 40434, criteria = nil})}
-- }) -- Keeper's Stash

-------------------------------------------------------------------------------
----------------------------- PROFESSION TREASURES ----------------------------
-------------------------------------------------------------------------------

dor.nodes[32456032] = PT.Alchemy({quest = 83840, id = 226265, parent = map.id}) -- Earthen Iron Powder
dor.nodes[57174685] =
    PT.Inscription({quest = nil, id = 226308, parent = map.id}) -- Dornogal Scribe's Quill -- review
map.nodes[58186204] = PT.Mining({quest = 83906, id = 226332}) -- Earthen Miner's Gavel
dor.nodes[35359194] = PT.Mining({quest = 83907, id = 226333, parent = map.id}) -- Dornogal Chisel -- review
map.nodes[59836191] = PT.Blacksmithing({quest = 83848, id = 226276}) -- Ancient Earthen Anvil
map.nodes[47613191] = PT.Blacksmithing({quest = 83849, id = 226277}) -- Dornogal Hammer
map.nodes[60042800] = PT.Skinning({quest = nil, id = 226341}) -- Earthen Worker's Beams -- review
dor.nodes[54616373] = PT.Tailoring({quest = nil, id = 226348}) -- Dornogal Seam Ripper -- review

-------------------------------------------------------------------------------
-------------------------- ISLE OF DORN GLYPH HUNTER --------------------------
-------------------------------------------------------------------------------

map.nodes[75752222] = SkyridingGlyph({
    rewards = {Achievement({id = 40166, criteria = 67178})}
}) -- The Three Shields

map.nodes[23145854] = SkyridingGlyph({
    rewards = {Achievement({id = 40166, criteria = 69237})}
}) -- Dhar Oztan

map.nodes[37954091] = SkyridingGlyph({
    rewards = {Achievement({id = 40166, criteria = 69238})}
}) -- Storm's Watch

map.nodes[44467981] = SkyridingGlyph({
    rewards = {Achievement({id = 40166, criteria = 69239})}
}) -- Dhar Durgaz

map.nodes[68247178] = SkyridingGlyph({
    rewards = {Achievement({id = 40166, criteria = 69240})}
}) -- Sunken Shield

map.nodes[47762670] = SkyridingGlyph({
    rewards = {Achievement({id = 40166, criteria = 69241})}
}) -- Thul Medran

map.nodes[56251778] = SkyridingGlyph({
    rewards = {Achievement({id = 40166, criteria = 69242})}
}) -- Thunderhead Peak

map.nodes[78224276] = SkyridingGlyph({
    rewards = {Achievement({id = 40166, criteria = 69243})}
}) -- Cinderbrew Meadery

map.nodes[62114493] = SkyridingGlyph({
    rewards = {Achievement({id = 40166, criteria = 69244})}
}) -- Mourning Rise

map.nodes[71904721] = SkyridingGlyph({
    rewards = {Achievement({id = 40166, criteria = 69245})}
}) -- Ironwold

-------------------------------------------------------------------------------
--------------------- ACHIEVEMENT: KHAZ ALGAR LORE HUNTER ---------------------
-------------------------------------------------------------------------------

map.nodes[37295254] = LoreObject({
    rlabel = ReputationGain(250, 2590), -- Council of Dornogal
    note = L['in_water'],
    rewards = {Achievement({id = 40762, criteria = 69369})}
}) -- Galan's Edict

map.nodes[44083014] = LoreObject({
    rlabel = ReputationGain(250, 2590), -- Council of Dornogal
    rewards = {Achievement({id = 40762, criteria = 69371})}
}) -- Stone of The Unbound

map.nodes[78132785] = LoreObject({
    rlabel = ReputationGain(250, 2590), -- Council of Dornogal
    rewards = {Achievement({id = 40762, criteria = 69370})}
}) -- Titan Console

map.nodes[57222001] = LoreObject({
    rlabel = ReputationGain(250, 2590), -- Council of Dornogal
    rewards = {Achievement({id = 40762, criteria = 69372})}
}) -- Watcher of the North

map.nodes[42128025] = LoreObject({
    rlabel = ReputationGain(250, 2590), -- Council of Dornogal
    rewards = {Achievement({id = 40762, criteria = 69373})}
}) -- Watcher of the South

-------------------------------------------------------------------------------
-------------------------------- DISTURBED DIRT -------------------------------
-------------------------------------------------------------------------------

map.nodes[27026815] = DisturbedDirt()
map.nodes[38187892] = DisturbedDirt()
map.nodes[44767702] = DisturbedDirt()
map.nodes[57493429] = DisturbedDirt()
map.nodes[57975529] = DisturbedDirt()
map.nodes[58405778] = DisturbedDirt()
map.nodes[58695763] = DisturbedDirt()
map.nodes[58793702] = DisturbedDirt()
map.nodes[58865571] = DisturbedDirt()
map.nodes[59517165] = DisturbedDirt()
map.nodes[60165487] = DisturbedDirt()
map.nodes[61893557] = DisturbedDirt()
map.nodes[61966015] = DisturbedDirt()
map.nodes[62162647] = DisturbedDirt()
map.nodes[62272828] = DisturbedDirt()
map.nodes[62522512] = DisturbedDirt()
map.nodes[62723522] = DisturbedDirt()
map.nodes[63826247] = DisturbedDirt()
map.nodes[63895331] = DisturbedDirt()
map.nodes[64776839] = DisturbedDirt()
map.nodes[65076588] = DisturbedDirt()
map.nodes[65337065] = DisturbedDirt()
map.nodes[65585521] = DisturbedDirt()
map.nodes[65696586] = DisturbedDirt()
map.nodes[68563233] = DisturbedDirt()
map.nodes[69003300] = DisturbedDirt()
map.nodes[69993181] = DisturbedDirt()
map.nodes[70653055] = DisturbedDirt()
map.nodes[70812854] = DisturbedDirt()
map.nodes[70902974] = DisturbedDirt()
map.nodes[71553114] = DisturbedDirt()
map.nodes[72613005] = DisturbedDirt()

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[38337882] = ns.node.PetBattle({
    id = 223446,
    rewards = {
        Achievement({id = 40153, criteria = 67135, oneline = true}), -- Battle on Khaz Algar
        ns.reward.Spacer(),
        Achievement({id = 40154, criteria = 67139, oneline = true}), -- Aquatic Battler of Khaz Algar
        Achievement({id = 40155, criteria = 67143, oneline = true}), -- Beast Battler of Khaz Algar
        Achievement({id = 40156, criteria = 67147, oneline = true}), -- Critter Battler of Khaz Algar
        Achievement({id = 40157, criteria = 67151, oneline = true}), -- Dragonkin Battler of Khaz Algar
        Achievement({id = 40158, criteria = 67155, oneline = true}), -- Elemental Battler of Khaz Algar
        Achievement({id = 40161, criteria = 67159, oneline = true}), -- Flying Battler of Khaz Algar
        Achievement({id = 40162, criteria = 67163, oneline = true}), -- Humanoid Battler of Khaz Algar
        Achievement({id = 40163, criteria = 67166, oneline = true}), -- Magic Battler of Khaz Algar
        Achievement({id = 40164, criteria = 67170, oneline = true}), -- Mechanical Battler of Khaz Algar
        Achievement({id = 40165, criteria = 67174, oneline = true}) -- Undead Battler of Khaz Algar
    }
}) -- Collector Dyna

-------------------------------------------------------------------------------

dor.nodes[50006188] = ns.node.Collectible({
    icon = 4620670,
    label = '{achievement:40606}',
    group = ns.groups.FLAT_EARTHEN,
    rewards = {Achievement({id = 40606, criteria = 0})},
    parent = map.id
}) -- Flat Earthen
