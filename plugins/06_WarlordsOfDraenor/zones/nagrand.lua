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

local map = Map({id = 550, settings = true})

-------------------------------------------------------------------------------
------------------------------------ NODES ------------------------------------
-------------------------------------------------------------------------------

local Voidtalon = Node({
    icon = 1094600,
    label = L['edge_of_reality'],
    note = L['edge_of_reality_note'],
    rewards = {
        -- Voidtalon of the Dark Star
        Mount({id = 682, item = 121815})
    }
})

map.nodes[40534764] = Voidtalon
map.nodes[44033082] = Voidtalon
map.nodes[57262656] = Voidtalon

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

local Lukhok = Rare({
    id = 50981,
    note = L['multiple_spawn_note'],
    rewards = {
        -- Mottled Meadowstomper
        Mount({item = 116661, id = 614})
    }
})

map.nodes[66604400] = Lukhok
map.nodes[76203180] = Lukhok
map.nodes[72805360] = Lukhok
map.nodes[79205600] = Lukhok
map.nodes[84606360] = Lukhok
map.nodes[86806560] = Lukhok

local Nakk = Rare({
    id = 50990,
    note = L['multiple_spawn_note'],
    rewards = {
        -- Bloodhoof Bull
        Mount({item = 116659, id = 612})
    }
}) -- Nakk the Thunderer

map.nodes[62801540] = Nakk
map.nodes[64601960] = Nakk
map.nodes[55003500] = Nakk
map.nodes[50003440] = Nakk

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

-- Tarr the Terrible
map.nodes[56200980] = PetBattle({
    id = 87110,
    rewards = {Achievement({id = 9724, criteria = 27015})}
})
