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
  note = L['edge_of_reality_note'],
  rewards = {
    -- Voidtalon of the Dark Star
    Mount({ id = 682, item = 121815 }),
  },
})

map.nodes[51101986] = Voidtalon
map.nodes[52401818] = Voidtalon
map.nodes[53801732] = Voidtalon
map.nodes[48002740] = Voidtalon

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

-- Gorok
local Gorok = Rare({
  id = 50992,
  note = L['multiple_spawn_note'],
  rewards = {
    -- Great Greytusk
    Mount({ item = 116674, id = 627 }),
  },
})

map.nodes[63407940] = Gorok
map.nodes[22806640] = Gorok
map.nodes[64805300] = Gorok
map.nodes[51805060] = Gorok
map.nodes[58001840] = Gorok

-- Nok-Karosh
map.nodes[13205060] = Rare({
  id = 81001,
  rewards = {
    -- Garn Nighthowl
    Mount({ item = 116794, id = 657 }),
  },
})

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

-- Gargra
map.nodes[68606460] = PetBattle({
  id = 87122,
  rewards = {
    Achievement({ id = 9724, criteria = 27013 }),
  },
})
