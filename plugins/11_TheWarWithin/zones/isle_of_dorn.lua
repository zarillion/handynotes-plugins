-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local DisturbedEarth = ns.node.DisturbedEarth
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
    quest = 82196, -- suspect One Time Kill
    note = L['alunira_note'],
    rewards = {
        Achievement({id = 40435, criteria = 68225}),
        Mount({item = 223270, id = 2176}) -- Alunira
    }
}) -- Alunira

map.nodes[41077616] = Rare({ -- get path
    id = 219264,
    quest = 81893, -- One Time Kill
    rewards = {
        Achievement({id = 40435, criteria = 68214}),
        Transmog({item = 223349, slot = L['cloth']}), -- Wolf Packleader's Cowl
        Transmog({item = 223351, slot = L['leather']}), -- Wolf Packleader's Hood
        Transmog({item = 223350, slot = L['mail']}), -- Wolf Packleader's Helm
        Transmog({item = 223370, slot = L['plate']}) -- Wolf Packleader's Visor
    },
    pois = {
        Path({
            41407593, 42067630, 42457672, 42437726, 41327767, 40897738,
            40627685, 40927619, 41407593
        })
    }
}) -- Bloodmaw

map.nodes[55762753] = Rare({
    id = 221128,
    quest = 81920, -- 84036
    rlabel = ReputationGain(150, 2590), -- Council of Dornogal
    rewards = {Achievement({id = 40435, criteria = 68224})}
}) -- Clawbreaker K'zithix

map.nodes[47946014] = Rare({
    id = 219265,
    quest = 81895, -- One Time Kill
    note = L['in_cave'], -- more like a mine
    rewards = {
        Achievement({id = 40435, criteria = 68215}),
        Transmog({item = 223347, slot = L['cloth']}), -- Viper's Stone Mitts
        Transmog({item = 223345, slot = L['leather']}), -- Viper's Stone Grips
        Transmog({item = 223348, slot = L['mail']}), -- Viper's Stone Gauntlets
        Transmog({item = 223346, slot = L['plate']}) -- Viper's Stone Handguards
    },
    pois = {
        POI({45936001, 46206206, 47726173}) -- Entries
    }
}) -- Emperor Pitfang

map.nodes[25784503] = Rare({
    id = 219266,
    quest = 81907, -- 84029
    rlabel = ReputationGain(150, 2590), -- Council of Dornogal
    rewards = {
        Achievement({id = 40435, criteria = 68218}),
        Transmog({item = 221208, slot = L['leather']}) -- Unseen Cutthroat's Tunic
    }
}) -- Escaped Cutthroat

map.nodes[63984054] = Rare({ -- get path
    id = 219279,
    quest = 81905, -- 84034
    rlabel = ReputationGain(150, 2590), -- Council of Dornogal
    rewards = {
        Achievement({id = 40435, criteria = 68223}),
        Transmog({item = 221244, slot = L['mail']}) -- Flamekeeper's Footpads
    }
}) -- Flamekeeper Graz

map.nodes[53527998] = Rare({
    id = 219268,
    quest = 81899, -- 84028
    rlabel = ReputationGain(150, 2590), -- Council of Dornogal
    rewards = {Achievement({id = 40435, criteria = 68217})}
}) -- Gar'loc

map.nodes[48212701] = Rare({
    id = 219270,
    quest = 81902, -- 84031
    rlabel = ReputationGain(150, 2590), -- Council of Dornogal
    rewards = {
        Achievement({id = 40435, criteria = 68220}),
        Transmog({item = 221210, slot = L['plate']}) -- Grips of the Earth
    }
}) -- Kronolith, Might of the Mountain

map.nodes[73004009] = Rare({
    id = 220890,
    quest = 81921, -- 84039
    rlabel = ReputationGain(150, 2590), -- Council of Dornogal
    rewards = {Achievement({id = 40435, criteria = 68231})}
}) -- Matriarch Charfuria

map.nodes[50876975] = Rare({
    id = 219267,
    quest = 81897, -- 84026
    rlabel = ReputationGain(150, 2590), -- Council of Dornogal
    rewards = {
        Achievement({id = 40435, criteria = 68216}),
        Transmog({item = 221213, slot = L['cloth']}), -- Shawl of the Plagued
        Transmog({item = 221247, slot = L['crossbow']}) -- Cavernous Critter Shooter
    }
}) -- Plaguehart

map.nodes[35657489] = Rare({ -- get path
    id = 213115,
    quest = 78619, -- One Time Kill
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
    quest = 79685, -- One Time Kill
    rewards = {Achievement({id = 40435, criteria = 68211})}
}) -- Sandres the Relicbearer

map.nodes[74422804] = Rare({
    id = 219278,
    quest = 81903, -- 84032
    rlabel = ReputationGain(150, 2590), -- Council of Dornogal
    rewards = {
        Achievement({id = 40435, criteria = 68221}),
        Transmog({item = 221224, slot = L['plate']})
    }
}) -- Shallowshell the Clacker

map.nodes[58776068] = Rare({
    id = 219262,
    quest = 81892, -- One Time Kill
    rewards = {
        Achievement({id = 40435, criteria = 68212}),
        Transmog({item = 223358, slot = L['cloth']}), -- Mantle of the Steamsurger
        Transmog({item = 223356, slot = L['leather']}), -- Shoulderpads of the Steamsurger
        Transmog({item = 223359, slot = L['mail']}), -- Spaulders of the Steamsurger
        Transmog({item = 223357, slot = L['plate']}) -- Spaulders of the Steamsurger
    }
}) -- Springbubble

map.nodes[69853850] = Rare({
    id = 220883,
    quest = 81922, -- 84038
    rlabel = ReputationGain(150, 2590), -- Council of Dornogal
    rewards = {Achievement({id = 40435, criteria = 68230})}
}) -- Sweetspark the Oozeful

map.nodes[56891601] = Rare({
    id = 219269,
    quest = 81901, -- 84030
    rlabel = ReputationGain(150, 2590), -- Council of Dornogal
    rewards = {Achievement({id = 40435, criteria = 68219})},
    pois = {Path({56891601, 57401625, 57761653})}
}) -- Tempest Lord Incarnus

map.nodes[72913794] = Rare({
    id = 221126,
    quest = 81923, -- 84037
    rlabel = ReputationGain(150, 2590), -- Council of Dornogal
    rewards = {Achievement({id = 40435, criteria = 68229})},
    pois = {Path({73823883, 73463864, 71373784})}
}) -- Tephratennae

map.nodes[57122241] = Rare({
    id = 219271,
    quest = 81904, -- 84033
    rlabel = ReputationGain(150, 2590), -- Council of Dornogal
    rewards = {
        Achievement({id = 40435, criteria = 68222}),
        Transmog({item = 221219, slot = L['leather']}) -- Silkwing Trousers
    }
}) -- Twice-Stinger the Wretched

map.nodes[30905239] = Rare({
    id = 219284,
    label = L['violet_hold_prisoner'],
    quest = {82203, 82204, 82205}, -- No Rep
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
        Transmog({item = 226111, type = L['staff']}), -- Arakkoan Ritual Staff
        Transmog({item = 226112, type = L['1h_sword']}), -- Rotfist Flesh Carver
        Transmog({item = 226113, type = L['1h_sword']}), -- Kereke's Flourishing Sabre
        Transmog({item = 226117, type = L['offhand']}), -- Dalaran Guardian's Arcanotool
        Transmog({item = 226118, type = L['fist']}), -- Arcane Prisoner's Puncher
        Transmog({item = 226119, type = L['crossbow']}) -- Arcane Sharpshooter's Crossbow
    }
}) -- Violet Hold Prisoner (Kereke, Rotfist, Zovex)

map.nodes[56833477] = Rare({
    id = 219263,
    quest = 81894, -- One Time Kill
    rewards = {
        Achievement({id = 40435, criteria = 68213}),
        Transmog({item = 223341, slot = L['cloth']}), -- Warphorn's Resilient Mane
        Transmog({item = 223344, slot = L['leather']}), -- Warphorn's Resilient Vest
        Transmog({item = 223343, slot = L['mail']}), -- Warphorn's Resilient Chainmail
        Transmog({item = 223342, slot = L['plate']}) -- Warphorn's Resilient Chestplate
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

-- map.nodes[73693706] = Treasure({ -- 51166732 second spawn
--    lable = L['elemental_geode_label'],
--    quest = nil,
--    note = L['in_small_cave']
-- }) -- Elemental Geode

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
map.nodes[57696182] = PT.Alchemy({quest = 83841, id = 226266}) -- Metal Dornogal Frame
map.nodes[59826191] = PT.Blacksmithing({quest = 83848, id = 226276}) -- Ancient Earthen Anvil
dor.nodes[47582623] = PT.Blacksmithing({
    quest = 83849,
    id = 226277,
    parent = map.id
}) -- Dornogal Hammer
map.nodes[57606164] = PT.Enchanting({quest = 83856, id = 226284}) -- Grinded Earthen Gem
dor.nodes[57945697] = PT.Enchanting({
    quest = 83859,
    id = 226285,
    parent = map.id
}) -- Silver Dornogal Rod
map.nodes[61356957] = PT.Engineering({quest = 83866, id = 226292}) -- Rock Engineer's Wrench
dor.nodes[64845284] = PT.Engineering({
    quest = 83867,
    id = 226293,
    parent = map.id
}) -- Dornogal Spectacles
map.nodes[57556146] = PT.Herbalism({quest = 83874, id = 226300}) -- Ancient Flower
dor.nodes[59242352] =
    PT.Herbalism({quest = 83875, id = 226301, parent = map.id}) -- Dornogal Gardening Scythe
dor.nodes[57254689] = PT.Inscription({
    quest = 83882,
    id = 226308,
    parent = map.id
}) -- Dornogal Scribe's Quill
map.nodes[55976001] = PT.Inscription({quest = 83883, id = 226309}) -- Historian's Dip Pen
map.nodes[63536687] = PT.Jewelcrafting({quest = 83890, id = 226316}) -- Gentle Jewel Hammer
dor.nodes[34845219] = PT.Jewelcrafting({
    quest = 83891,
    id = 226317,
    parent = map.id
}) -- Earthen Gem Pliers
dor.nodes[59242352] = PT.Leatherworking({
    quest = 83898,
    id = 226324,
    parent = map.id
}) -- Earthen Lacing Tools
map.nodes[58653077] = PT.Leatherworking({quest = 83899, id = 226325}) -- Dornogal Craftsman's Flat Knife
map.nodes[58186204] = PT.Mining({quest = 83906, id = 226332}) -- Earthen Miner's Gavel
dor.nodes[36717936] = PT.Mining({quest = 83907, id = 226333, parent = map.id}) -- Dornogal Chisel
dor.nodes[28785165] = PT.Skinning({quest = 83914, id = 226340, parent = map.id}) -- Dornogal Carving Knife
map.nodes[60042799] = PT.Skinning({quest = 83915, id = 226341}) -- Earthen Worker's Beams
dor.nodes[61561850] =
    PT.Tailoring({quest = 83922, id = 226348, parent = map.id}) -- Dornogal Seam Ripper
map.nodes[56216102] = PT.Tailoring({quest = 83923, id = 226349}) -- Earthen Tape Measure

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

map.nodes[27026815] = DisturbedEarth()
map.nodes[38187892] = DisturbedEarth()
map.nodes[44767702] = DisturbedEarth()
map.nodes[47617007] = DisturbedEarth()
map.nodes[57493429] = DisturbedEarth()
map.nodes[57975529] = DisturbedEarth()
map.nodes[58405778] = DisturbedEarth()
map.nodes[58695763] = DisturbedEarth()
map.nodes[58793702] = DisturbedEarth()
map.nodes[58865571] = DisturbedEarth()
map.nodes[59517165] = DisturbedEarth()
map.nodes[60165487] = DisturbedEarth()
map.nodes[61893557] = DisturbedEarth()
map.nodes[61966015] = DisturbedEarth()
map.nodes[62162647] = DisturbedEarth()
map.nodes[62272828] = DisturbedEarth()
map.nodes[62522512] = DisturbedEarth()
map.nodes[62723522] = DisturbedEarth()
map.nodes[63826247] = DisturbedEarth()
map.nodes[63895331] = DisturbedEarth()
map.nodes[64776839] = DisturbedEarth()
map.nodes[65076588] = DisturbedEarth()
map.nodes[65337065] = DisturbedEarth()
map.nodes[65585521] = DisturbedEarth()
map.nodes[65696586] = DisturbedEarth()
map.nodes[68563233] = DisturbedEarth()
map.nodes[69003300] = DisturbedEarth()
map.nodes[69993181] = DisturbedEarth()
map.nodes[70653055] = DisturbedEarth()
map.nodes[70812854] = DisturbedEarth()
map.nodes[70902974] = DisturbedEarth()
map.nodes[71553114] = DisturbedEarth()
map.nodes[72613005] = DisturbedEarth()

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
