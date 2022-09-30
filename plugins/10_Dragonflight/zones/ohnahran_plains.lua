-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible
-- local Rare = ns.node.Rare
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Mount = ns.reward.Mount

-------------------------------------------------------------------------------

local map = Map({id = 2023, settings = true})

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

-- https://www.wowhead.com/beta/achievement=16299/treasures-of-the-ohnahran-plains#comments

-- map.nodes[] = Treasure({
--     quest = nil,
--     rewards = {Achievement({id = 16299, criteria = 54709})}
-- }) -- Cracked Centaur Horn

-- map.nodes[] = Treasure({
--     quest = nil,
--     rewards = {Achievement({id = 16299, criteria = 54700})}
-- }) -- Emerald Gem Cluster

-- map.nodes[] = Treasure({
--     quest = nil,
--     rewards = {Achievement({id = 16299, criteria = 54710})}
-- }) -- Gold Swog Coin

-- map.nodes[] = Treasure({
--     quest = nil,
--     rewards = {Achievement({id = 16299, criteria = 54707})}
-- }) -- Nokhud Warspear

map.nodes[61014337] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 16299, criteria = 54708})}
}) -- Slightly Chewed Duck Egg

-- map.nodes[] = Treasure({
--     quest = nil,
--     rewards = {Achievement({id = 16299, criteria = 54711})}
-- }) -- Yennu's Boat

-------------------------------------------------------------------------------
------------------------- LIZI, THUNDERSPINE TRAMPLER -------------------------
-------------------------------------------------------------------------------

-- https://www.wowhead.com/news/lizi-thunderspine-trampler-nurse-a-thunderspine-to-health-for-a-mount-in-328734

local Lizi = Class('Lizi', Collectible, {
    id = nil,
    icon = 4008180, -- Inv_thunderlizardprimal_brown
    quest = {nil, nil, nil, nil, nil}, -- daily: nil
    questCount = true,
    rewards = {Mount({item = 192799, id = 1639})} -- Thunderspine Behemoth
})

function Lizi.getters:note()
    local function status(i)
        if C_QuestLog.IsQuestFlaggedCompleted(self.quest[i]) then
            return ns.status.Green(i)
        else
            return ns.status.Red(i)
        end
    end

    local note = L['lizi_note']
    note = note .. '\n\n' .. status(1) .. ' ' .. L['lizi_note_day1'] -- Fluorescent Fluid
    note = note .. '\n\n' .. status(2) .. ' ' .. L['lizi_note_day2'] -- High-Fiber Leaf
    note = note .. '\n\n' .. status(3) .. ' ' .. L['lizi_note_day3'] -- Thousandbine Piranha
    note = note .. '\n\n' .. status(4) .. ' ' .. L['lizi_note_day4'] -- Woolly Mountain Pelt
    note = note .. '\n\n' .. status(5) .. ' ' .. L['lizi_note_day5'] -- Meluun's Green Curry
    return note
end

-- map.nodes[nil] = Lizi()
