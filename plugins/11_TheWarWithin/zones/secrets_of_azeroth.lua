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

local QuestStatus = ns.tooltip.QuestStatus

-------------------------------------------------------------------------------

local tanaris = ns.maps[71] or Map({id = 71, settings = false})
local zuldazar = ns.maps[862] or Map({id = 862, settings = false})
local desolace = ns.maps[66] or Map({id = 66, settings = false})

-------------------------------------------------------------------------------

local SecretOfAzeroth = Class('SecretOfAzeroth', Node, {
    icon = 'peg_gn',
    scale = 1.5,
    group = ns.groups.SECRETS_OF_AZEROTH
}) -- Secret of Azeroth

local CRATES = {
    [1] = {
        quest = 83794, -- ![Soggy Celebration Crate]
        map = zuldazar,
        parentMapID = 875 -- Zandalar
    },
    [2] = {
        quest = 85574, -- ![Hazy Celebration Crate]
        map = desolace,
        parentMapID = 12 -- Kalimdor
    }
}

------------------------------- CRATE LIST NODE -------------------------------

local CrateList = Class('CrateList', SecretOfAzeroth, {
    label = L['celebration_crates_label'],
    rewards = {
        Achievement({id = 40979, criteria = {qty = true, id = 1}}) -- No Crate Left Behind
    }
})

function CrateList.getters:note()
    local note = L['celebration_crates_note'] .. '\n'
    for num, crate in ipairs(CRATES) do
        local mName = C_Map.GetMapInfo(crate.map.id).name
        local pName = C_Map.GetMapInfo(crate.parentMapID).name
        local qDone = QuestStatus(crate.quest, num, false)
        note = note .. format('%s %s (%s)', qDone, mName, pName)
    end
    return note
end

tanaris.nodes[66644537] = CrateList()

------------------------------- ALYX START NODE -------------------------------

local START_QUEST = 84617

tanaris.nodes[63025024] = SecretOfAzeroth({
    label = '{npc:226683}',
    note = L['alyx_kickoff_note'],
    quest = START_QUEST,
    requires = ns.requirement.Quest(84521) -- ![Thoughtful Pursuits]
}) -- Alyx

-------------------------------------------------------------------------------
----------------------- CELEBRATION CRATE #1 - ZULDAZAR -----------------------
-------------------------------------------------------------------------------

zuldazar.nodes[54235421] = SecretOfAzeroth({
    label = '{item:226200}',
    note = L['1_soggy_celebration_crate_note'],
    pois = {POI({54275451, color = 'Blue'})}, -- Nikto
    quest = CRATES[1].quest,
    questDeps = START_QUEST,
    rewards = {Item({item = 226200, quest = CRATES[1].quest})},
    rlabel = ns.status.Gray('#1')
}) -- Soggy Celebration Crate

-------------------------------------------------------------------------------
----------------------- CELEBRATION CRATE #2 - DESOLACE -----------------------
-------------------------------------------------------------------------------

desolace.nodes[54005810] = SecretOfAzeroth({
    label = '{item:232263}',
    note = L['2_hazy_celebration_crate_note'],
    quest = CRATES[2].quest,
    questDeps = START_QUEST,
    rewards = {Item({item = 232263, quest = CRATES[2].quest})},
    rlabel = ns.status.Gray('#2')
}) -- Hazy Celebration Crate
