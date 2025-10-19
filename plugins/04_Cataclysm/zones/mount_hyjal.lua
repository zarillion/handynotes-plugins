-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local Group = ns.Group
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible
local NPC = ns.node.NPC
local Rare = ns.node.Rare
local Safari = ns.node.Safari

local Achievement = ns.reward.Achievement
local Transmog = ns.reward.Transmog

local POI = ns.poi.POI
local Path = ns.poi.Path

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({id = 198, settings = true})
local mf = Map({id = 338, settings = true}) -- Molten Front

-------------------------------------------------------------------------------
----------------------------------- GROUPS ------------------------------------
-------------------------------------------------------------------------------

ns.groups.UNBEATABLE_PTERODACTYL = Group('unbeatable_pterodactyl', 132200, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 5860,
    label = '{achievement:5860}'
})

ns.groups.LUDICROUS_SPEED = Group('ludicrous_speed', 132172, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 5862,
    label = '{achievement:5862}'
})

ns.groups.HAVE_WE_MET = Group('have_we_met', 135646, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 5865,
    label = '{achievement:5865}'
})

ns.groups.SPIDER_HILL = Group('spider_hill', 132196, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 5872,
    label = '{achievement:5872}'
})

ns.groups.R4R_2 = Group('r4r_2', 135789, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 5873,
    label = '{achievement:5873}'
})

ns.groups.FLAWLESS_VICTORY = Group('flawless_victory', 459027, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 5867,
    label = '{achievement:5867}'
})

ns.groups.GANG_WAR = Group('gang_war', 135415, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 5864,
    label = '{achievement:5864}'
})

ns.groups.MOLTEN_FLOW_MASTER = Group('molten_flow_master', 135822, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 5871,
    label = '{achievement:5871}'
})

ns.groups.CRITTER_REVENGE = Group('critter_revenge', 132200, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 5868,
    label = '{achievement:5868}'
})

ns.groups.FIERY_LORDS = Group('fiery_lords', 135790, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 5861,
    label = '{achievement:5861}'
})

ns.groups.INFERNAL_AMBASSADORS = Group('infernal_ambassadors', 236191, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 5869,
    label = '{achievement:5869}'
})

ns.groups.FIRESIDE_CHAT = Group('fireside_chat', 236450, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 5870,
    label = '{achievement:5870}'
})

ns.groups.GANG_WAR = Group('gang_war', 135415, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 5864,
    label = '{achievement:5864}'
})
ns.groups.DEATH_FROM_ABOVE = Group('death_from_above', 512904, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 5874,
    label = '{achievement:5874}'
})

-------------------------------------------------------------------------------
--------------------------------- PHASE NODES ---------------------------------
-------------------------------------------------------------------------------

local HyjalPhase = Class('HyjalPhase', ns.requirement.Requirement)

function HyjalPhase:Initialize(phase) self.phase = phase end

function HyjalPhase:GetText()
    local phase = {
        [0] = L['hyjal_phase0'],
        [1] = L['hyjal_phase1'],
        [2] = L['hyjal_phase2'],
        [3] = L['hyjal_phase3'],
        [41] = L['hyjal_phase4a'],
        [42] = L['hyjal_phase4b'],
        [5] = L['hyjal_phase5']
    }
    return phase[self.phase] or UNKNOWN
end

function HyjalPhase:IsMet()
    local qc = C_QuestLog.IsQuestFlaggedCompleted
    if self.phase == 0 and qc(25372) then return true end -- Phase 0 - Pre Invasion
    if self.phase == 1 and qc(29389) then return true end -- Phase 1 - Invasion
    if self.phase == 2 and qc(29198) then return true end -- Phase 2 - The Sanctuary of Malorne
    if self.phase == 3 and qc(29201) then return true end -- Phase 3 - The Molten Front
    if self.phase == 41 and qc(29182) then return true end -- Phase 4a - The Druids of the Talon Area
    if self.phase == 42 and qc(29215) then return true end -- Phase 4b - The Shadow Wardens Area
    if self.phase == 5 and qc(29182) and qc(29215) then return true end -- Phase 5 - The Regrowth
    return false
end

map.nodes[19563787] = ns.node.Intro({
    note = L['hyjal_phase1_note'],
    quest = 29389,
    requires = HyjalPhase(0)
}) -- starts Phase 1 - Invasion

map.nodes[27116281] = NPC({
    id = 52135, -- review
    note = L['hyjal_phase2_note'],
    icon = 513195,
    quest = 29198,
    requires = HyjalPhase(1)
}) -- starts Phase 2 - The Sanctuary of Malorne

map.nodes[27116282] = NPC({
    id = 52135, -- review
    note = L['hyjal_phase3_note'],
    icon = 513195,
    quest = 29201,
    requires = HyjalPhase(2)
}) -- starts Phase 3 - The Molten Front

mf.nodes[47039139] = NPC({
    id = 52135,
    note = L['hyjal_phase4_note'],
    icon = 513195,
    quest = {29182, 29215},
    requires = HyjalPhase(3),
    rewards = {Achievement({id = 5870, criteria = 17878})}
}) -- starts Phase 4a/b - The Druids of the Talon Area / The Shadow Wardens Area

mf.nodes[10001400] = ns.node.Node({
    label = L['hyjal_phase5'],
    note = L['hyjal_phase5_note'],
    icon = 513195,
    quest = {29182, 29215},
    requires = {HyjalPhase(41), HyjalPhase(42)}
}) -- changes Molten Front to Phase 5 - The Regrowth

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[50453327] = Rare({
    id = 50053,
    rewards = {Transmog({item = 67234, slot = L['leather']})},
    pois = {
        Path({
            59033759, 58053582, 56883404, 56993140, 57572894, 56342791,
            55072888, 52243056, 50453327, 48363441, 46373314, 44773216,
            42583190, 41222983, 39912578, 38982323, 36162274, 34102488
        })
    }
}) -- Thartuk the Exile

map.nodes[37107233] = Rare({
    id = 50056,
    rewards = {
        Transmog({item = 69842, slot = L['plate']}),
        Transmog({item = 67148, slot = L['mail']}),
        Transmog({item = 67131, slot = L['cloak']}),
        Transmog({item = 67143, slot = L['plate']}),
        Transmog({item = 67135, slot = L['leather']}),
        Transmog({item = 67133, slot = L['cloth']}),
        Transmog({item = 67140, slot = L['cloak']})
    },
    pois = {
        Path({
            37107233, 37287552, 38077817, 38308154, 38938338, 40478252,
            40278044, 38927892, 38077817
        })
    }
}) -- Garr

map.nodes[47795645] = Rare({
    id = 50057,
    rewards = {Transmog({item = 67236, slot = L['leather']})},
    pois = {
        Path({
            69415618, 66105467, 63505657, 60415847, 58105628, 54815508,
            50675482, 48075604, 47795645, 45805957, 43296079
        })
    }
}) -- Blazewing

-------------------------------------------------------------------------------
-------------------------------- FIRESIDE CHAT --------------------------------
-------------------------------------------------------------------------------

local FiresideChat = Class('FiresideChat', Collectible,
    {icon = 236450, group = ns.groups.FIRESIDE_CHAT})

map.nodes[27176257] = FiresideChat({
    id = 52669,
    requires = HyjalPhase(1),
    rewards = {Achievement({id = 5870, criteria = 17879})}
}) -- Matoclaw

map.nodes[27536251] = FiresideChat({
    id = 52986,
    requires = HyjalPhase(1),
    rewards = {Achievement({id = 5870, criteria = 17882})}
}) -- Dorda'en Nightweaver

mf.nodes[47458356] = FiresideChat({
    id = 52134,
    requires = HyjalPhase(3),
    rewards = {Achievement({id = 5870, criteria = 17880})},
    pois = {
        Path({
            47169110, 47318695, 49688553, 45548439, 45158286, 45808403,
            47458356, 47318695
        })
    }
}) -- Commander Jarod Shadowsong

mf.nodes[10001000] = FiresideChat({ -- TODO
    id = 52444,
    requires = HyjalPhase(41),
    rewards = {Achievement({id = 5870, criteria = 17883})}
}) -- Thisalee Crow

mf.nodes[11501000] = FiresideChat({ -- TODO
    id = 53259,
    requires = HyjalPhase(41),
    rewards = {Achievement({id = 5870, criteria = 17884})}
}) -- Arthorn Windsong

mf.nodes[13001000] = FiresideChat({ -- TODO
    id = 52921,
    requires = HyjalPhase(41),
    rewards = {Achievement({id = 5870, criteria = 17886})}
}) -- Deldren Ravenelm

mf.nodes[45598583] = FiresideChat({
    id = 52921,
    requires = HyjalPhase(3),
    rewards = {Achievement({id = 5870, criteria = 17889})}
}) -- General Taldris Moonfall

-------------------------------------------------------------------------------
---------------------------- INFERNAL AMBASSADORS -----------------------------
-------------------------------------------------------------------------------

local Ambassador = Class('Ambassador', Collectible, {
    icon = 236191,
    group = ns.groups.INFERNAL_AMBASSADORS
})

map.nodes[13294490] = Ambassador({
    id = 52749,
    quest = 29162,
    requires = {
        HyjalPhase(2), ns.requirement.Quest(29161, nil, true) -- Those Bears Up There
    },
    rewards = {Achievement({id = 5869, criteria = 17829})}
}) -- Pyrachnis

map.nodes[13184472] = Ambassador({
    id = 52649,
    quest = 29148,
    requires = {
        HyjalPhase(2), ns.requirement.Quest(29147, nil, true) -- Call the Flock
    },
    rewards = {Achievement({id = 5869, criteria = 17831})}
}) -- Millagazor

map.nodes[41945604] = Ambassador({
    id = 52766,
    quest = 29165,
    requires = {
        HyjalPhase(2), ns.requirement.Quest(29164, nil, true) -- Perfecting Your Howl
    },
    rewards = {Achievement({id = 5869, criteria = 17832})}
}) -- Lylagar

map.nodes[41795575] = Ambassador({
    id = 52399,
    quest = 19126,
    requires = {
        HyjalPhase(2), ns.requirement.Quest(29125, nil, true) -- Between the Trees
    },
    rewards = {Achievement({id = 5869, criteria = 17833})}
}) -- Galenges

map.nodes[24785525] = Ambassador({
    id = 52383,
    quest = 29122,
    requires = {
        HyjalPhase(2), ns.requirement.Quest(29101, nil, true) -- Punting Season
    },
    rewards = {Achievement({id = 5869, criteria = 17834})}
}) -- Nemesis

-------------------------------------------------------------------------------
--------------------- THE FIERY LORDS OF SETHRIA'S ROOST ----------------------
-------------------------------------------------------------------------------

local FieryLord = Class('FieryLord', Collectible, {
    note = L['fiery_lords_note'],
    icon = 135790,
    group = ns.groups.FIERY_LORDS,
    requires = {HyjalPhase(3)}
})

map.nodes[35509781] = FieryLord({
    id = 53264,
    rewards = {Achievement({id = 5861, criteria = 17799})},
    pois = {Path({35509781, 31979504})}
}) -- Searris

map.nodes[30528090] = FieryLord({
    id = 53265,
    rewards = {Achievement({id = 5861, criteria = 17800})}
}) -- Kelbnar

map.nodes[34649194] = FieryLord({
    id = 53267,
    rewards = {Achievement({id = 5861, criteria = 17801})},
    pois = {
        Path({
            36269911, 34159810, 32119636, 31339394, 31498842, 31868415,
            32137795, 31457410, 30557450, 29907795, 29898221, 30668611,
            32268927, 34649194, 36179395, 36599663, 36959928, 36269911
        })
    }
}) -- Andrazor

map.nodes[30858706] = FieryLord({
    id = 53271,
    rewards = {Achievement({id = 5861, criteria = 17802})}
}) -- Fah Jarakk

-------------------------------------------------------------------------------
--------------------- AND THE MEEK SHALL INHERIT KALIMDOR ---------------------
-------------------------------------------------------------------------------

local CritterRevenge = Class('CritterRevenge', Collectible, {
    icon = 132328,
    group = ns.groups.CRITTER_REVENGE,
    requires = {HyjalPhase(3)}
})

map.nodes[40835715] = CritterRevenge({
    id = 52195,
    note = L['angry_little_squirrel_note'],
    rewards = {Achievement({id = 5868, criteria = 17824})}
}) -- Angry Little Squirrel

map.nodes[13184473] = CritterRevenge({
    id = 52649,
    rewards = {Achievement({id = 5868, criteria = 17826})}
}) -- Alpine Songbird

Achievement({id = 5868, criteria = 17826})

map.nodes[14303313] = CritterRevenge({
    id = 52688,
    note = L['hyjal_bear_cub_note'],
    rewards = {Achievement({id = 5868, criteria = 17825})}
}) -- Hyjal Bear Cub

map.nodes[23285899] = CritterRevenge({
    id = 52688,
    note = L['child_of_tortolla_note'],
    rewards = {Achievement({id = 5868, criteria = 17827})}
}) -- Child of Tortolla

-------------------------------------------------------------------------------
------------------------------ DEATH FROM ABOVE -------------------------------
-------------------------------------------------------------------------------

local dfa = Class('death_from_above', Collectible, {
    icon = 512904,
    note = L['death_from_above_note'],
    requires = {HyjalPhase(41)}
})

mf.nodes[10001200] = dfa({
    id = 54252,
    rewards = {Achievement({id = 5874, criteria = 17857})}
}) -- Ragepyre

mf.nodes[11501200] = dfa({
    id = 54254,
    rewards = {Achievement({id = 5874, criteria = 17859})}
}) -- Flashfire

mf.nodes[13001200] = dfa({
    id = 54256,
    rewards = {Achievement({id = 5874, criteria = 17861})}
}) -- Heatflayer

mf.nodes[14501200] = dfa({
    id = 54253,
    rewards = {Achievement({id = 5874, criteria = 17858})}
}) -- Blazefury

mf.nodes[16001200] = dfa({
    id = 54255,
    rewards = {Achievement({id = 5874, criteria = 17860})}
}) -- Hatespark

mf.nodes[17501200] = dfa({
    id = 54257,
    rewards = {Achievement({id = 5874, criteria = 17862})}
}) -- Singeslayer

-------------------------------------------------------------------------------
-------------------------- MASTER OF THE MOLTEN FLOW --------------------------
-------------------------------------------------------------------------------

local MoltenFlowMaster = Class('MoltenFlowMaster', NPC, {
    icon = 135822,
    group = ns.groups.MOLTEN_FLOW_MASTER,
    requires = {HyjalPhase(41), ns.requirement.Quest(29206)},
    pois = {Path({ns.poi.Circle({origin = 48005000, radius = 10})})}
})

mf.nodes[46005000] = MoltenFlowMaster({
    id = 53085,
    note = L['flamewaker_sentinel_note'],
    rewards = {Achievement({id = 5871, criteria = 17836})}
}) -- Sentinel

mf.nodes[48005000] = MoltenFlowMaster({
    id = 53093,
    note = L['flamewaker_shaman_note'],
    rewards = {Achievement({id = 5871, criteria = 17835})}
}) -- Shaman

mf.nodes[50005000] = MoltenFlowMaster({
    id = 53143,
    rewards = {Achievement({id = 5871, criteria = 17837})}
}) -- Hunter

-------------------------------------------------------------------------------
------------------------------------ MISC -------------------------------------
-------------------------------------------------------------------------------

map.nodes[27495634] = ns.node.Node({
    label = L['portal_molten_front'],
    icon = 'portal_rd',
    scale = 2,
    requires = {HyjalPhase(1), ns.requirement.Quest(29200)},
    rewards = {
        Achievement({id = 5867}),
        Achievement(
            {id = 5870, criteria = {17878, 17880, 17883, 17884, 17886, 17889}}),
        Achievement({id = 5872}),
        Achievement({id = 5873, criteria = {17840, 17841, 17842, 17843, 17844}}),
        Achievement(
            {id = 5874, criteria = {17857, 17859, 17861, 17858, 17860, 17862}})
    },
    OnClick = function() WorldMapFrame:SetMapID(mf.id) end,
    clabel = L['change_map']
}) -- Portal to the Molten Front

mf.nodes[54308550] = ns.node.Node({
    label = L['portal_mount_hyjal'],
    scale = 2,
    icon = 'portal_rd',
    OnClick = function() WorldMapFrame:SetMapID(map.id) end,
    clabel = L['change_map']
})

map.nodes[37225618] = Collectible({
    id = 40578,
    quest = 29177,
    icon = 132200,
    group = ns.groups.UNBEATABLE_PTERODACTYL,
    requires = {
        HyjalPhase(1), -- review
        ns.requirement.Quest(25560)
    },
    rewards = {Achievement({id = 5860, criteria = {id = 17798, qty = true}})},
    pois = {POI({39185826, icon = 'portal_bl'})}
}) -- The 'Unbeatable?' Pterodactyl: BEATEN.

map.nodes[12003900] = Collectible({
    id = 40578,
    note = L['ludicrous_speed_note'],
    quest = 29177,
    icon = 132172,
    group = ns.groups.LUDICROUS_SPEED,
    requires = {HyjalPhase(3)},
    rewards = {Achievement({id = 5862})},
    pois = {Path({ns.poi.Circle({origin = 12003900, radius = 5})})}
}) -- Ludicrous Speed

map.nodes[27336160] = Collectible({
    id = 53073,
    quest = 29128,
    icon = 135646,
    note = L['have_we_met_note'],
    group = ns.groups.HAVE_WE_MET,
    requires = {HyjalPhase(3)},
    rewards = {
        Achievement({id = 5865, criteria = {17806, 17807, 17808, 17809, 17810}})
    },
    pois = {Path({26746181, 27336160, 27816159})}
}) -- Have... Have We Met?

mf.nodes[66035682] = Collectible({
    label = '{achievement:5872}',
    note = L['spider_hill_note'],
    icon = 132196,
    group = ns.groups.SPIDER_HILL,
    requires = {HyjalPhase(3)},
    rewards = {Achievement({id = 5872})},
    pois = {Path({ns.poi.Circle({origin = 66035600, radius = 2.25})})}
}) -- King of the Spider-Hill

mf.nodes[50381958] = Collectible({
    label = '{achievement:5873}',
    note = L['ready_for_raiding_2_note'],
    icon = 135789,
    group = ns.groups.R4R_2,
    requires = {HyjalPhase(5), ns.requirement.Quest(29244)},
    rewards = {
        Achievement({id = 5873, criteria = {17840, 17841, 17842, 17843, 17844}})
    }
}) -- Ready for Raiding II

mf.nodes[44004900] = Collectible({
    id = 52552,
    icon = 459027,
    note = L['flawless_victory_note'],
    group = ns.groups.FLAWLESS_VICTORY,
    requires = {HyjalPhase(3)},
    rewards = {Achievement({id = 5867})}
}) -- Flawless Victory

map.nodes[31007700] = Collectible({
    label = '{achievement:5864}',
    icon = 135415,
    note = L['gang_war_note'],
    group = ns.groups.GANG_WAR,
    requires = {HyjalPhase(3)},
    rewards = {Achievement({id = 5864})}
}) -- Gang War

-------------------------------------------------------------------------------
------------------------------------ SAFARI -----------------------------------
-------------------------------------------------------------------------------

map.nodes[72805900] = Safari.AshLizard({
    pois = {
        POI({
            35205520, 35408100, 35605780, 36005200, 36205960, 36405940,
            36407900, 36408300, 36608320, 36807780, 37207480, 37405360,
            37407100, 37608380, 38205660, 38205800, 38408140, 38408160,
            39005220, 39007900, 39207420, 39608360, 39808000, 40005780,
            40808160, 41007560, 41807760, 42207540, 42207560, 42607260,
            43807120, 45606920, 46608680, 48006840, 53808800, 55808700,
            59406880, 60607480, 61407240, 61607240, 62207600, 62607740,
            62607760, 63007120, 63207400, 63807300, 64807600, 65806300,
            65806660, 67806420, 68006620, 68407020, 69207200, 70206620,
            70606940, 71805960, 72606520, 72805900, 73606180, 74005960,
            74205940, 74406260, 74605760, 74606260, 74805740, 75206120,
            76605920, 76805960, 77604760, 78005660, 78405920, 78605160,
            78606240, 78606260, 78805440, 78805460, 78806360, 79004800,
            79206020, 79405820, 79606480, 79805420, 80005140, 80404940,
            80604940, 80605160, 80804960, 80805300, 80805360, 80806020,
            81006640, 81406480, 82606280, 83005600, 83405460, 83405940,
            83405980, 83605700, 83806340, 84006480, 84405760, 84405960,
            84605800, 85005940, 85005960, 85006120, 85405580, 85804680,
            86005740, 86205800, 87405440, 87405640, 87805340, 88205020,
            88405840, 88405860, 88605220, 89004940, 89005600, 89805200,
            89805620, 91004820
        })
    }
}) -- Ash Lizard

map.nodes[78204900] = Safari.CarrionRat({
    pois = {
        POI({
            30407580, 30407680, 30407800, 30407940, 30407980, 30607580,
            30607940, 30608000, 30807840, 32007480, 54408600, 54808600,
            55208540, 58807840, 58807860, 78204900, 78405020, 78605040,
            78804900, 80204940, 80604920
        })
    }
}) -- Carrion Rat

map.nodes[30603900] = Safari.DeathsHeadCockroach({
    pois = {
        POI({
            25403640, 25403660, 25603640, 26003740, 26003760, 26604040,
            26803260, 27003400, 27403580, 27603460, 27803600, 27804140,
            28004000, 28603600, 29403960, 29803960, 30603900, 32203980,
            42402160, 42402340, 42402360, 42602120, 42602180, 43602040,
            43802080, 44002200, 44401900, 44602180, 45002120, 55006600,
            56406780, 56806980, 56808480, 57208300, 57406700, 57407920,
            57607920, 57806740, 57806760, 57807000, 57808000, 58208220,
            58407120, 58608340, 58807980, 59007840, 59807080, 60207300,
            60207720, 60608040
        })
    }
}) -- Death's Head Cockroach

map.nodes[58201660] = Safari.ElfinRabbit({
    pois = {
        POI({
            18604220, 19003920, 19203640, 21003920, 22803200, 31603600,
            38804400, 43804400, 47601740, 47801760, 49801680, 50402200,
            50602220, 56203460, 56403640, 56403660, 56603680, 57201720,
            57401580, 57402280, 58001980, 58201640, 58201660, 58202320,
            58203680, 58602640, 58602660, 58603720, 58801780, 59003620,
            59202100, 59203220, 59203260, 60401780, 60603600, 61001940,
            61201960, 61203440, 61203460, 61402920, 61602240, 61602260,
            61802840, 61802860, 62402040, 62603240, 62603260, 63002100,
            63003400, 63202940, 63202960, 63403060, 63602500, 63603080,
            64002580, 64801960, 64802120, 65802080, 66003060, 66201880,
            66202540, 66202560, 66402220, 66602820, 68002180, 68202300, 68202420
        })
    }
}) -- Elfin Rabbit

map.nodes[48407340] = Safari.FireBeetle({
    pois = {
        POI({
            30408040, 30608060, 30807840, 31208280, 32007320, 32407360,
            32607180, 32609660, 32807140, 33009060, 33409440, 34809560,
            35805780, 36406300, 36609700, 37207500, 37608380, 37805940,
            38405440, 38405660, 38805220, 38805940, 39007900, 39207420,
            39806360, 40205800, 41808640, 42008380, 42407700, 42408060,
            42606180, 42606960, 42607280, 42608640, 43208480, 43406740,
            43807120, 44006080, 44208420, 44608820, 45008600, 45406040,
            45808480, 46206680, 46407240, 46408680, 47005660, 47406560,
            47606560, 48006400, 48205440, 48205460, 48405320, 48407340,
            48606680, 48805420, 49407420, 50407300, 50806700, 51205160,
            51408640, 51408660, 51608340, 51608360, 51608660, 52005340,
            52006660, 52208480, 52608160, 52805240, 52805260, 53408780,
            53608800, 53805420, 53806600, 54407620, 54605320, 54608140,
            55206780, 55207500, 55607460, 55805340, 55805360, 56005720,
            56605720, 57007680, 57405400, 57605400, 57607680, 57808540,
            58005800, 58806800, 59206880, 59207600, 60005920, 61405860,
            61605860, 62407740, 62607760, 63205580, 63207400, 64005360,
            64805480, 66006300, 66207320, 69207200, 74606260, 77604780,
            78405900, 78605440, 78606260, 78806240, 79405820, 79606500,
            80404940, 80604940, 81606520, 83806320, 84605800, 88205020, 89405040
        })
    }
}) -- Fire Beetle

map.nodes[54005280] = Safari.FireProofRoach({
    pois = {
        POI({
            30207660, 30407940, 30408040, 30408060, 30608040, 30608060,
            30807840, 30807860, 31207580, 31208260, 31809120, 32007300,
            32209520, 32209560, 32407360, 32607180, 32607340, 32607360,
            32609720, 32807140, 33209080, 33409440, 33609440, 33609460,
            34609560, 35408080, 36005200, 36205960, 36206300, 36407920,
            36606300, 36609700, 37207500, 37405360, 37605960, 37608380,
            37805920, 37806080, 38205660, 38406380, 38408140, 39005220,
            39005940, 39005960, 39006360, 39007860, 39207420, 39606360,
            39608360, 39808000, 40005760, 41007560, 41207960, 41408520,
            41808620, 42208360, 42406160, 42407700, 42408060, 42606180,
            42607260, 42608640, 42608660, 43008480, 43008840, 43406740,
            43607100, 43806080, 43808720, 44208420, 44608820, 45208600,
            45406020, 45606900, 45608480, 46206660, 46407240, 46408680,
            46608680, 47005640, 47005660, 47406540, 47406560, 47606540,
            47806700, 48006380, 48006840, 48006860, 48405320, 48405440,
            48405460, 48406640, 48407320, 48805420, 49005300, 49407420,
            50407320, 50806680, 51205160, 51405740, 51408360, 51408640,
            51408660, 51608340, 51608360, 52005340, 52006660, 52208480,
            52805280, 53805420, 53806600, 54005280, 54008840, 54407640,
            54605320, 54607640, 54608140, 54608160, 55207520, 55208040,
            55607480, 55805340, 56005740, 56205400, 56405820, 56805720,
            57405380, 57407680, 57605380, 57607680, 57808540, 58005780,
            58806800, 59207620, 59406900, 59605780, 60005940, 60607480,
            61405840, 61406020, 61407240, 61605840, 61605860, 62607740,
            63007140, 63205600, 63205700, 64005340, 64005360, 64205600,
            65005500, 65806300, 68407040, 69207200, 71805960, 72406540,
            72605960, 73005880, 73606180, 74205940, 74205960, 74606260,
            77604760, 78005660, 78806240, 79004820, 79206040, 79405820,
            79606500, 80005120, 80404940, 80404960, 80605140, 80804940,
            80806020, 81005280, 81006620, 82406380, 82606240, 83005580,
            83006100, 83405480, 83405940, 83405960, 83406440, 83606320,
            84006480, 84405760, 84406000, 84805800, 86004780, 86005720,
            86205800, 87205420, 87405640, 87605380, 87605640, 88205040,
            88605860, 89004940, 89205580, 89605620, 91005140
        })
    }
}) -- Fire-Proof Roach

map.nodes[63402760] = Safari.NordrassilWisp({
    pois = {
        POI({
            57202240, 57202260, 58002520, 58202260, 58402220, 58402740,
            58402760, 58602740, 58602760, 58603120, 58802040, 58802060,
            58802420, 58802540, 58802560, 59202220, 59202280, 59403040,
            59602360, 59603040, 59603060, 60002900, 60402320, 60602960,
            60803100, 61002140, 61002160, 61402340, 61402360, 61402740,
            61402760, 61402900, 61602320, 61602920, 62002100, 62402800,
            62602860, 63002060, 63002600, 63402760, 63602500, 63602740,
            63802420, 63802760, 64202620, 64802440, 64802460
        })
    }
}) -- Nordrassil Wisp

map.nodes[40802980] = Safari.SilkyMoth({
    pois = {
        POI({
            39402560, 39602580, 40202660, 40603060, 40802980, 41402460,
            46203260, 48402240, 48402260, 49202240, 49202360, 49602140,
            50002880, 51202660, 59002400, 59002620, 59402880, 59602900,
            59802340, 59802360, 60402960, 60602940, 60602960, 61002140,
            61002160, 61402320, 61402740, 61402760, 61602320, 61602740,
            62202780, 62402100, 62602120, 62802280, 62802600, 63802360,
            64002280, 65202340
        })
    }
}) -- Silky Moth

map.nodes[56808480] = Safari.TwilightBeetle({
    pois = {
        POI({
            25603640, 25603660, 26003760, 26603240, 26604040, 26803260,
            27003400, 27803540, 27803600, 27804140, 42402340, 42402360,
            42602120, 42602200, 43602060, 43802040, 44401900, 44602060,
            55006600, 55806780, 56606760, 56808480, 57008060, 57606720,
            57607020, 58608360, 58807980, 59608280, 59807080, 60008020, 60808020
        })
    }
}) -- Twilight Beetle
