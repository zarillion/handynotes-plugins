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

map.nodes[40504760] = Voidtalon
map.nodes[45903140] = Voidtalon
map.nodes[57302670] = Voidtalon

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

map.nodes[66604400] = Lukhok
map.nodes[76203180] = Lukhok
map.nodes[72805360] = Lukhok
map.nodes[79205600] = Lukhok
map.nodes[84606360] = Lukhok
map.nodes[86806560] = Lukhok

local Nakk = Rare({
  id = 50990,
  quest = nil,
  note = L["multiple_spawn_note"],
  rewards = {
    Mount({ item = 116659, id = 612 }), -- Bloodhoof Bull
  },
}) -- Nakk the Thunderer

map.nodes[62801540] = Nakk
map.nodes[62401700] = Nakk
map.nodes[64601960] = Nakk
map.nodes[55003500] = Nakk
map.nodes[50003440] = Nakk

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[56200980] = PetBattle({
  id = 87110,
  rewards = {
    Achievement({ id = 9724, criteria = 27015 }),
  },
}) -- Tarr the Terrible
