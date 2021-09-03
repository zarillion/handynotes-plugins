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

local map = Map({ id = 550, settings = true })
local nodes = map.nodes

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

nodes[40504760] = Voidtalon
nodes[45903140] = Voidtalon
nodes[57302670] = Voidtalon

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

local Lukhok = Rare({
  id = 50981,
  quest = nil,
  note = L["multiple_spawn_note"],
  rewards = {
    Mount({ item = 116661, id = 614 }), -- Mottled Meadowstomper
  },
}) -- Luk'hok

nodes[66604400] = Lukhok
nodes[76203180] = Lukhok
nodes[72805360] = Lukhok
nodes[79205600] = Lukhok
nodes[84606360] = Lukhok
nodes[86806560] = Lukhok

local Nakk = Rare({
  id = 50990,
  quest = nil,
  note = L["multiple_spawn_note"],
  rewards = {
    Mount({ item = 116659, id = 612 }), -- Bloodhoof Bull
  },
}) -- Nakk the Thunderer

nodes[62801540] = Nakk
nodes[62401700] = Nakk
nodes[64601960] = Nakk
nodes[55003500] = Nakk
nodes[50003440] = Nakk

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[56200980] = PetBattle({
  id = 87110,
  rewards = {
    Achievement({ id = 9724, criteria = 27015 }),
  },
}) -- Tarr the Terrible
