-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Node = ns.node.Node

local Achievement = ns.reward.Achievement
local Buff = ns.reward.Buff
local Item = ns.reward.Item

local Entrance = ns.poi.Entrance
local POI = ns.poi.POI
local Path = ns.poi.Path

local QuestStatus = ns.tooltip.QuestStatus

-------------------------------------------------------------------------------

local tanaris = ns.maps[71] or Map({id = 71, settings = false})
local zuldazar = ns.maps[862] or Map({id = 862, settings = false})
local desolace = ns.maps[66] or Map({id = 66, settings = false})
local deadwindPass = ns.maps[42] or Map({id = 42, settings = false})
local thousandNeedles = ns.maps[64] or Map({id = 64, settings = false})
local azsuna = ns.maps[630] or Map({id = 630, settings = false})
local howlingFjord = ns.maps[117] or Map({id = 117, settings = false})
local mountHyjal = ns.maps[198] or Map({id = 198, settings = false})
local feralas = ns.maps[69] or Map({id = 69, settings = false})
local ashenvale = ns.maps[63] or Map({id = 63, settings = false})
local nagrand = ns.maps[107] or Map({id = 107, settings = false})
local ahnQiraj = ns.maps[327] or Map({id = 327, settings = false})
local stormheim = ns.maps[634] or Map({id = 634, settings = false})
local maldraxxus = ns.maps[1536] or Map({id = 1536, settings = false})

-------------------------------------------------------------------------------
--------------------------- SECRETS OF AZEROTH NODE ---------------------------
-------------------------------------------------------------------------------

local SecretOfAzeroth = Class('SecretOfAzeroth', Node, {
    icon = 'peg_gn',
    scale = 2,
    group = ns.groups.SECRETS_OF_AZEROTH
}) -- Secret of Azeroth

-------------------------------------------------------------------------------
------------------------------- ALYX START NODE -------------------------------
-------------------------------------------------------------------------------

local START_QUEST = 84617

tanaris.nodes[63025024] = SecretOfAzeroth({
    label = '{npc:226683}',
    note = L['alyx_kickoff_note'],
    quest = START_QUEST,
    requires = ns.requirement.Quest(84521) -- ![Thoughtful Pursuits]
}) -- Alyx

-------------------------------------------------------------------------------
----------------------------- CELEBRATION CRATES ------------------------------
-------------------------------------------------------------------------------

local CELEBRATION_CRATES = {
    [1] = {
        coordinates = 54235421,
        item = 226200,
        map = zuldazar,
        note = L['1_soggy_celebration_crate_note'],
        parentMapID = 875, -- Zandalar
        pois = {POI({54275451, color = 'Blue'})}, -- Nikto
        quest = 83794 -- ![Soggy Celebration Crate]
    },
    [2] = {
        coordinates = 54005810,
        item = 232263,
        map = desolace,
        note = L['2_hazy_celebration_crate_note'],
        parentMapID = 12, -- Kalimdor
        quest = 85574 -- ![Hazy Celebration Crate]
    },
    [3] = {
        coordinates = 22608370,
        item = 228322,
        map = deadwindPass,
        note = L['3_dirt_caked_celebration_crate_note'],
        pois = {
            Entrance({39837346}), --
            Path({
                39837346, 39817208, 38697210, 38717323, 37397338, 35657427,
                33627288, 33387274, 33257072, 34897036, 36067181, 36337388,
                35567528, 34857553, 30248135, 25858132, 22608370
            })
        },
        parentMapID = 13, -- Eastern Kingdoms
        quest = 84470 -- ![Dirt-Caked Celebration Crate]
    },
    [4] = {
        coordinates = 66002220,
        item = 228767,
        map = azsuna,
        note = format(L['4_sandy_celebration_crate'],
            C_CurrencyInfo.GetCoinTextureString(5000000)),
        pois = {
            POI({65604880}), -- Ending
            Path({
                66002220, 65402340, 65202380, 64402620, 63602780, 63402880,
                63202980, 63403120, 63403320, 64203500, 65203640, 65603680,
                66203940, 66404040, 66604300, 66604500, 66404660, 65804820,
                65604880
            })
        },
        parentMapID = 619, -- Broken Isles
        quest = 84624, -- ![Sandy Celebration Crate]
        requires = ns.requirement.Item(228768) -- Water-Resistant Receipt
    },
    [5] = {
        coordinates = 29400636,
        item = 226375,
        map = howlingFjord,
        note = L['5_battered_celebration_crate'],
        parentMapID = 113, -- Northrend
        quest = 83931 -- ![Battered Celebration Crate]
    },
    [6] = {
        coordinates = 69186860,
        item = 228212,
        map = tanaris,
        note = L['6_waterlogged_celebration_crate'],
        parentMapID = 12, -- Kalimdor,
        quest = 84426 -- ![Waterlogged Celebration Crate]
    },
    [7] = {
        coordinates = 13573345,
        item = 228976,
        map = mountHyjal,
        note = L['7_charred_celebration_crate'],
        parentMapID = 12, -- Kalimdor
        quest = 84767 -- ![Charred Celebration Crate]
    },
    [8] = {
        coordinates = 60423540,
        item = 231886,
        map = feralas,
        note = L['8_mildewed_celebration_crate'],
        parentMapID = 12, -- Kalimdor
        quest = 85523, -- ![Mildewed Celebration Crate]
        requires = ns.requirement.Spell(463368) -- Potion of Truth
    },
    [9] = {
        coordinates = 35277473,
        item = 228983,
        map = nagrand,
        note = L['9_crystalized_celebration_crate'],
        parentMapID = 101, -- Outland
        quest = 84773, -- ![Crystalized Celebration Crate]
        pois = {Entrance({35856720})}
    },
    [10] = {
        coordinates = 37344769,
        item = 228770,
        map = stormheim,
        note = L['10_surprisingly_pristine_celebration_crate'],
        parentMapID = 619, -- Broken Isles
        quest = 84625 -- ![Surprisingly Pristine Celebration Crate]
    },
    [11] = {
        coordinates = 49997381,
        item = 229367,
        map = maldraxxus,
        note = L['11_ghostly_celebration_crate'],
        parentMapID = 1550, -- Shadowlands
        quest = 84909 -- ![Ghostly Celebration Crate]
    }
}

for num, crate in ipairs(CELEBRATION_CRATES) do
    crate.map.nodes[crate.coordinates] = SecretOfAzeroth({
        label = format('{item:%d}', crate.item),
        note = crate.note,
        pois = crate.pois or nil,
        quest = crate.quest,
        questDeps = START_QUEST,
        requires = crate.requires or nil,
        rewards = {Item({item = crate.item, quest = crate.quest})},
        rlabel = ns.status.Gray(format('#%d', num))
    })
end

-------------------------------------------------------------------------------
--------------------- WATER-RESISTANT RECEIPT (CRATE #4) ----------------------
-------------------------------------------------------------------------------

thousandNeedles.nodes[64938438] = SecretOfAzeroth({
    label = '{item:228768}',
    note = L['water_resistant_receipt_note'],
    pois = {
        Entrance({66028651}), --
        Path({66028651, 65678567, 65038493, 64938438})
    },
    quest = CELEBRATION_CRATES[4].quest,
    rewards = {
        Item({item = 228768, bag = true}) -- Water-Resistant Receipt
    }
}) -- Water-Resistant Receipt

-------------------------------------------------------------------------------
------------------------- POTION OF TRUTH (CRATE #8) --------------------------
-------------------------------------------------------------------------------

ashenvale.nodes[47903840] = SecretOfAzeroth({
    label = '{spell:463368}',
    note = L['8_mildewed_celebration_crate'],
    quest = CELEBRATION_CRATES[8].quest,
    rewards = {
        Buff({id = 463368}) -- Potion of Truth
    }
}) -- Potion of Truth

-------------------------------------------------------------------------------
------------------------ MYSTERIOUS BONES (CRATE #10) -------------------------
-------------------------------------------------------------------------------

ahnQiraj.nodes[44559008] = SecretOfAzeroth({
    label = '{item:228772}',
    note = L['mysterious_bones_note'],
    quest = CELEBRATION_CRATES[10].quest,
    pois = {Entrance({42039268})}, -- Entrance
    rewards = {
        Item({item = 228772, bag = true}) -- Mysterious Bones
    }
}) -- Mysterious Bones

-------------------------------------------------------------------------------
--------------------------- CELEBRATION CRATE LIST ----------------------------
-------------------------------------------------------------------------------

local CrateList = Class('CrateList', SecretOfAzeroth, {
    label = L['celebration_crates_label'],
    questDeps = START_QUEST,
    rewards = {
        Achievement({id = 40979, criteria = {qty = true, id = 1}}) -- No Crate Left Behind
    }
})

function CrateList.getters:note()
    local note = L['celebration_crates_note'] .. '\n'
    for num, crate in ipairs(CELEBRATION_CRATES) do
        local mName = C_Map.GetMapInfo(crate.map.id).name
        local pName = C_Map.GetMapInfo(crate.parentMapID).name
        local qDone = QuestStatus(crate.quest, num, false)
        note = note .. format('%s %s (%s)', qDone, mName, pName)
    end
    return note
end

tanaris.nodes[66644537] = CrateList()
