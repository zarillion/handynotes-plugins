-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible
local Node = ns.node.Node
local PetBattle = ns.node.PetBattle

local Achievement = ns.reward.Achievement
local Mount = ns.reward.Mount

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({id = 542, settings = true})

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[46404520] = PetBattle({
    id = 87123,
    rewards = {Achievement({id = 9724, criteria = 27014})}
}) -- Vesharr

-------------------------------------------------------------------------------
------------------------- WOULD YOU LIKE A PAMPHLET? --------------------------
-------------------------------------------------------------------------------

local ForbiddenTome = Collectible({
    id = 85992,
    icon = 'peg_bl',
    scale = 1.5,
    group = ns.groups.WOULD_YOU_LIKE_A_PAMPLET,
    note = L['forbidden_tome_note'],
    rewards = {Achievement({id = 9432})} -- Would You Like A Pamplet?
})

map.nodes[74623122] = ForbiddenTome
map.nodes[74272773] = ForbiddenTome
map.nodes[71702790] = ForbiddenTome
map.nodes[70512415] = ForbiddenTome
map.nodes[71202285] = ForbiddenTome

-------------------------------------------------------------------------------
---------------------------------- VOIDTALON ----------------------------------
-------------------------------------------------------------------------------

local Voidtalon = Collectible({
    icon = 1094600,
    label = L['edge_of_reality'],
    note = L['edge_of_reality_note'],
    rewards = {
        Mount({id = 682, item = 121815}) -- Voidtalon of the Dark Star
    }
})

map.nodes[36431830] = Voidtalon
map.nodes[46822021] = Voidtalon
map.nodes[50430631] = Voidtalon
map.nodes[60901122] = Voidtalon
