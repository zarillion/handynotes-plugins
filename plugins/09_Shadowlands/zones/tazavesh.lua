-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Node = ns.node.Node
local NPC = ns.node.NPC

-------------------------------------------------------------------------------

local map = Map({id = 1989, settings = true})
local upper = Map({id = 1993, settings = true})

-------------------------------------------------------------------------------

local peg = Class("peg", Node, {
    icon = 'peg_rd'
})

local port = Class("port", Node, {
    icon = 135743
})

map.nodes[51873321] = peg({
    id = 177752,
    label = "Precious Gemstones",
}) -- Precious Gemstones

map.nodes[46373573] = peg({
    label = "Alchemist",
}) -- Alchemist

map.nodes[45793047] = peg({
    label = "Rare Texts",
}) -- Rare Texts

map.nodes[42834404] = peg({
    label = "The P.O.S.T.",
}) -- The P.O.S.T.

map.nodes[50063346] = peg({
    label = "Tazamal (?)",
    note = 'No NPC to activate'
}) -- Tazamal

map.nodes[51502743] = peg({
    label = "Magical Weapons",
}) -- Magical Weapons

map.nodes[44782805] = peg({
    label = "Expert Tailor",
}) -- Expert Tailor

map.nodes[48853884] = peg({
    label = "Fine Cuisine",
}) -- Fine Cuisine

map.nodes[44713328] = peg({
    label = "Exotic Spices",
}) -- Exotic Spices


map.nodes[45273919] = peg({
    label = "Thrift Instruments",
}) -- Thrift Instruments

map.nodes[36443271] = peg({
    label = "Overpriced Art",
}) -- Overpriced Art

-------------------------------------------------------------------------------

map.nodes[39883348] = port({
    label = "Myza's Oasis"
}) -- Myza's Oasis

map.nodes[19805100] = port({
    label = "Tazamal Port"
}) -- Tazamal Port

map.nodes[50076133] = port({
    label = "Multifarious Menagerie"
}) -- Multifarious Menagerie

upper.nodes[77474412] = port({
    label = "Tazamal Port"
}) -- Tazamal Port