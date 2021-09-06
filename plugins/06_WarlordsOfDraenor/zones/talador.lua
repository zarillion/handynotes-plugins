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

local map = Map({ id = 535, settings = true })

-------------------------------------------------------------------------------
------------------------------------ NODES ------------------------------------
-------------------------------------------------------------------------------

local Voidtalon = Node({
  icon = 1094600,
  label = L['edge_of_reality'],
  note = L['edge_of_reality_note'],
  rewards = {
    Mount({ id = 682, item = 121815 }), -- Voidtalon of the Dark Star
  },
})

map.nodes[39885561] = Voidtalon
map.nodes[46265256] = Voidtalon
map.nodes[47164882] = Voidtalon
map.nodes[52144113] = Voidtalon
map.nodes[52252587] = Voidtalon
map.nodes[52683437] = Voidtalon
map.nodes[50963241] = Voidtalon

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

local Silthide = Rare({
  id = 51015,
  note = L["multiple_spawn_note"],
  rewards = {
    Mount({ item = 116767, id = 630 }), -- Sapphire Riverbeast
  },
}) -- Silthide

map.nodes[78905540] = Silthide
map.nodes[67406000] = Silthide
map.nodes[61803220] = Silthide
map.nodes[62004500] = Silthide
map.nodes[55608060] = Silthide

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[49008040] = PetBattle({
  id = 87125,
  rewards = {
    Achievement({ id = 9724, criteria = 27016 }),
  },
}) -- Taralune
