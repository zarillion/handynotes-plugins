-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Node = ns.node.Node

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item

local POI = ns.poi.POI
local Path = ns.poi.Path

local QuestStatus = ns.tooltip.QuestStatus

-------------------------------------------------------------------------------

local tanaris = ns.maps[71] or Map({id = 71, settings = false})
local zuldazar = ns.maps[862] or Map({id = 862, settings = false})
local desolace = ns.maps[66] or Map({id = 66, settings = false})
local deadwindPass = ns.maps[42] or Map({id = 42, settings = false})
local azsuna = ns.maps[630] or Map({id = 630, settings = true})
local howlingFjord = ns.maps[117] or Map({id = 117, settings = true})

-------------------------------------------------------------------------------

local SecretOfAzeroth = Class('SecretOfAzeroth', Node, {
    icon = 'peg_gn',
    scale = 1.5,
    group = ns.groups.SECRETS_OF_AZEROTH
}) -- Secret of Azeroth

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
            POI({39837346}), -- Entrance
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
        note = '',
        parentMapID = 619, -- Broken Isles
        quest = 84624 -- ![Sandy Celebration Crate]
    },
    [5] = {
        coordinates = 29400636,
        item = 226375,
        map = howlingFjord,
        note = L['5_battered_celebration_crate'],
        parentMapID = 113, -- Northrend
        quest = 83931 -- ![Battered Celebration Crate]
    }
}

------------------------------- ALYX START NODE -------------------------------

local START_QUEST = 84617

tanaris.nodes[63025024] = SecretOfAzeroth({
    label = '{npc:226683}',
    note = L['alyx_kickoff_note'],
    quest = START_QUEST,
    requires = ns.requirement.Quest(84521) -- ![Thoughtful Pursuits]
}) -- Alyx

--------------------------------- CRATE NODES ---------------------------------

for num, crate in ipairs(CELEBRATION_CRATES) do
    crate.map.nodes[crate.coordinates] = SecretOfAzeroth({
        label = format('{item:%d}', crate.item),
        note = crate.note,
        pois = crate.pois or nil,
        quest = crate.quest,
        questDeps = START_QUEST,
        rewards = {Item({item = crate.item, quest = crate.quest})},
        rlabel = ns.status.Gray(format('#%d', num))
    })
end

------------------------------- CRATE LIST NODE -------------------------------

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
