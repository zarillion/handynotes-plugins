-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible

local Mount = ns.reward.Mount

-------------------------------------------------------------------------------

local map = Map({id = 2023, settings = true})

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

map.nodes[nil] = Lizi()
