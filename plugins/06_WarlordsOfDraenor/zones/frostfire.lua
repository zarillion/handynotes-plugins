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

local map = Map({ id = 525, settings = true })

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

map.nodes[51101990] = Voidtalon
map.nodes[52301830] = Voidtalon
map.nodes[53001700] = Voidtalon
map.nodes[47702750] = Voidtalon

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

local Gorok = Rare({
  id = 50992,
  quest = nil,
  note = L["multiple_spawn_note"],
  rewards = {
    Mount({ item = 116674, id = 627 }), -- Great Greytusk
  },
}) -- Gorok

map.nodes[63407940] = Gorok
map.nodes[22806640] = Gorok
map.nodes[64805300] = Gorok
map.nodes[51805060] = Gorok
map.nodes[58001840] = Gorok

map.nodes[13205060] = Rare({
  id = 81001,
  quest = nil,
  rewards = {
    Mount({ item = 116794, id = 657 }), -- Garn Nighthowl
  },
}) -- Nok-Karosh

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[68606460] = PetBattle({
  id = 87122,
  rewards = {
    Achievement({ id = 9724, criteria = 27013 }),
  },
}) -- Gargra
