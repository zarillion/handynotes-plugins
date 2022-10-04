-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Map = ns.Map
local L = ns.locale

local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------
local map = Map({id = 433, settings = true})

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[74947652] = Treasure({
    label = '{item:86473}',
    quest = 31428,
    rewards = {
        Achievement({id = 7997, criteria = {id = 1, qty = true}}), -- Riches of Pandaria
        Item({item = 86473})
    }
}) -- The Hammer of Folly

map.nodes[54677130] = Treasure({
    label = L['forgotten_lockbox'],
    quest = 31867,
    icon = 'chest_bn',
    note = L['forgotten_lockbox_note']
}) -- Chest of Supplies
