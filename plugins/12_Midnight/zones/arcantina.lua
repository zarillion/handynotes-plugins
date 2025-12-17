-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Map = ns.Map
local L = ns.locale
local Class = ns.Class

local Item = ns.node.Item

-------------------------------------------------------------------------------

local map = Map({id = 2541, settings = true})

-------------------------------------------------------------------------------
local CantinaItem = Class('CantinaItem', Item, {ignore_bags = true})

map.nodes[55264393] = Item({icon = 134301, id = 213202, quest = 79550}) -- Explorer Pepe

map.nodes[44966051] = CantinaItem({icon = 134721, id = 6662, quest = 92349}) -- Giant Growth Potion
map.nodes[28433959] = CantinaItem({icon = 134721, id = 6662, quest = 92350}) -- Giant Growth Potion
map.nodes[18534417] = CantinaItem({icon = 134721, id = 6662, quest = 92351}) -- Giant Growth Potion

map.nodes[61315823] = CantinaItem({icon = 134757, id = 124640, quest = 92352}) -- Inky Black Potion
map.nodes[39688083] = CantinaItem({icon = 134757, id = 124640, quest = 92553}) -- Inky Black Potion
map.nodes[36575489] = CantinaItem({icon = 134757, id = 124640, quest = 92354}) -- Inky Black Potion

map.nodes[61875110] = CantinaItem({icon = 134301, id = 40195, quest = 92355}) -- Pygmy Oil
map.nodes[33621257] = CantinaItem({icon = 134301, id = 40195, quest = 92356}) -- Pygmy Oil
map.nodes[74746281] = CantinaItem({icon = 134301, id = 40195, quest = 32957}) -- Pygmy Oil - removed?

map.nodes[54494478] = CantinaItem({icon = 1033182, id = 112384, quest = 92358}) -- Reflecting Prism
map.nodes[42224258] = CantinaItem({icon = 1033182, id = 112384, quest = 92359}) -- Reflecting Prism
map.nodes[79124579] = CantinaItem({icon = 1033182, id = 112384, quest = 92360}) -- Reflecting Prism

map.nodes[35467845] = CantinaItem({icon = 134302, id = 6657, quest = 92361}) -- Savory Deviate Delight
map.nodes[35343007] = CantinaItem({icon = 134302, id = 6657, quest = 92362}) -- Savory Deviate Delight
map.nodes[68055216] = CantinaItem({icon = 134302, id = 6657, quest = 92363}) -- Savory Deviate Delight

-------------------------------------------------------------------------------

map.nodes[62736680] = ns.node.Collectible({
    icon = 135999,
    label = '{achievement:61081}',
    note = L['share_a_drink_note'],
    rewards = {
        ns.reward.Achievement({
            id = 61081,
            criteria = {
                108572, 108573, 108574, 108575, 108576, 108577, 108578, 108579,
                108580, 108581, 108582, 108583, 108584, 108585, 108586, 108587,
                108588, 108589, 108590, 108591, 108592, 108593, 108594, 108595,
                108596
            }
        })
    }
}) -- Share a Drink

-------------------------------------------------------------------------------
