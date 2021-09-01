-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

local Node = ns.node.Node
local PetBattle = ns.node.PetBattle
local Rare = ns.node.Rare

local Achievement = ns.reward.Achievement
local Mount = ns.reward.Mount

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({ id=539, settings=true })
local nodes = map.nodes

-------------------------------------------------------------------------------
------------------------------------ NODES ------------------------------------
-------------------------------------------------------------------------------

local Voidtalon = Node({icon=1094600, label=L['edge_of_reality'], rewards={
    Mount({id=682, item=121815}) -- Voidtalon of the Dark Star
}})

nodes[41907570] = Voidtalon
nodes[43507100] = Voidtalon
nodes[48706990] = Voidtalon
nodes[50407160] = Voidtalon
nodes[49607160] = Voidtalon
nodes[50707250] = Voidtalon
nodes[46607000] = Voidtalon

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

local Pathrunner = Rare({
    id=50883,
    quest=nil,
    note=L["multiple_spawn_note"],
    rewards={
        Mount({item=116773, id=636}) -- Swift Breezestrider
    }
}) -- Pathrunner

nodes[39603660] = Pathrunner
nodes[43003220] = Pathrunner
nodes[44604380] = Pathrunner
nodes[45806820] = Pathrunner
nodes[54003040] = Pathrunner
nodes[56205240] = Pathrunner

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[50003120] = PetBattle({
    id=87124,
    rewards={
        Achievement({id=9724, criteria=27012})
    }
}) -- Ashlei
