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

local map = Map({ id = 539, settings = true })

-------------------------------------------------------------------------------
------------------------------------ NODES ------------------------------------
-------------------------------------------------------------------------------

local Voidtalon = Node({
  icon = 1094600,
  label = L['edge_of_reality'],
  rewards = {
    Mount({ id = 682, item = 121815 }), -- Voidtalon of the Dark Star
  },
})

map.nodes[41907570] = Voidtalon
map.nodes[43507100] = Voidtalon
map.nodes[48706990] = Voidtalon
map.nodes[50407160] = Voidtalon
map.nodes[49607160] = Voidtalon
map.nodes[50707250] = Voidtalon
map.nodes[46607000] = Voidtalon

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

local Pathrunner = Rare({
  id = 50883,
  note = L["multiple_spawn_note"],
  rewards = {
    Mount({ item = 116773, id = 636 }), -- Swift Breezestrider
  },
}) -- Pathrunner

map.nodes[39603660] = Pathrunner
map.nodes[43003220] = Pathrunner
map.nodes[44604380] = Pathrunner
map.nodes[45806820] = Pathrunner
map.nodes[54003040] = Pathrunner
map.nodes[56205240] = Pathrunner

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[50003120] = PetBattle({
  id = 87124,
  rewards = {
    Achievement({ id = 9724, criteria = 27012 }),
  },
}) -- Ashlei
