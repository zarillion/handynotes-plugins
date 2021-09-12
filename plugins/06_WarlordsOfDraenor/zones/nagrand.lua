-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local L = ns.locale
local Map = ns.Map
local Node = ns.node.Node
local Mount = ns.reward.Mount

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({id = 550, settings = true})
local nodes = map.nodes

-------------------------------------------------------------------------------
------------------------------------ NODES ------------------------------------
-------------------------------------------------------------------------------

local Voidtalon = Node({
    icon = 1094600,
    label = L['edge_of_reality'],
    rewards = {
        Mount({id = 682, item = 121815}) -- Voidtalon of the Dark Star
    }
})

nodes[40504760] = Voidtalon
nodes[44013067] = Voidtalon
nodes[57302670] = Voidtalon
