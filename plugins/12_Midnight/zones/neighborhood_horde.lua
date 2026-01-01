-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local Map = ns.Map

-------------------------------------------------------------------------------

local map = Map({id = 2351, settings = true})

-------------------------------------------------------------------------------
----------------------------------- RIDDLES -----------------------------------
-------------------------------------------------------------------------------

local Riddle = Class('Riddle', ns.node.Node,
    {label = '{quest:93074}', icon = 'peg_gn', scale = 2})

function Riddle:IsEnabled()
    return self.quest and C_QuestLog.IsOnQuest(self.quest[1]) or false
end

function Riddle.getters:rewards()
    return self.decor and {ns.reward.Decor({id = self.decor})} or {}
end

map.nodes[55574979] = Riddle({quest = 93074, decor = 524})

-- 95166 triggered when petting npc 256523 Raptor Hatchling, running around @54695761, sleeps @54525807
