-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

local Node = ns.node.Node
local Rare = ns.node.Rare

local Mount = ns.reward.Mount

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({ id=543, settings=true })
local nodes = map.nodes

-------------------------------------------------------------------------------
------------------------------------ NODES ------------------------------------
-------------------------------------------------------------------------------

local Voidtalon = Node({icon=1094600, label=L['edge_of_reality'], rewards={
    Mount({id=682, item=121815}) -- Voidtalon of the Dark Star
}})

local Poundfist = Rare({
    id=50985,
    rewards={
        Mount({item=116792, id=655}) -- Sunhide Gronnling
    }
}) -- Poundfist

nodes[51603860] = Voidtalon
nodes[54004580] = Voidtalon
nodes[56004070] = Voidtalon
nodes[43203420] = Voidtalon

nodes[41902500] = Poundfist
nodes[51604310] = Poundfist
nodes[45204660] = Poundfist
nodes[47405530] = Poundfist
nodes[43005570] = Poundfist
