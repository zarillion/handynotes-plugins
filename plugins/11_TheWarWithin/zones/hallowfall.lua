-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible

local DragonRace = ns.node.DragonRace

local Achievement = ns.reward.Achievement

-------------------------------------------------------------------------------

local map = Map({id = 2215, settings = true})

-------------------------------------------------------------------------------
--------------------------------- DRAGONRACES ---------------------------------
-------------------------------------------------------------------------------

map.nodes[73003900] = DragonRace() -- Dunelle's Detour
map.nodes[40006600] = DragonRace() -- Light's Redoubt Descent
map.nodes[38006300] = DragonRace() -- Mereldar Meander
map.nodes[58002600] = DragonRace() -- Stillstone Slalom
map.nodes[60006800] = DragonRace() -- Ternir's Traversal
map.nodes[55001800] = DragonRace() -- Velhan's Venture

-------------------------------------------------------------------------------
------------------------ ACHIEVEMENT: MERELDAR MENANCE ------------------------
-------------------------------------------------------------------------------

local MereldarMenance = Class('MereldarMenance', Collectible, {
    icon = 135232,
    group = ns.groups.MERELDAR_MENANCE,
    note = L['mereldar_menance_note']
})

map.nodes[00000000] = MereldarMenance({
    label = '{npc:223508}',
    rewards = {Achievement({id = 40151, criteria = 1})}
}) -- Orphange Window

map.nodes[10001000] = MereldarMenance({
    label = '{npc:223513}',
    rewards = {Achievement({id = 40151, criteria = 2})}
}) -- Notice Board

map.nodes[20002000] = MereldarMenance({
    label = '{npc:223515}',
    rewards = {Achievement({id = 40151, criteria = 3})}
}) -- Food Stall

map.nodes[30003000] = MereldarMenance({
    label = '{npc:223516}',
    rewards = {Achievement({id = 40151, criteria = 4})}
}) -- Fountain

map.nodes[40004000] = MereldarMenance({
    label = '{npc:223517}',
    rewards = {Achievement({id = 40151, criteria = 5})}
}) -- Spice Stall

map.nodes[50005000] = MereldarMenance({
    label = '{npc:223522}',
    rewards = {Achievement({id = 40151, criteria = 6})}
}) -- Light and Flame

map.nodes[60006000] = MereldarMenance({
    label = '{npc:223527}',
    rewards = {Achievement({id = 40151, criteria = 7})}
}) -- Lamplighter Doorway

map.nodes[70007000] = MereldarMenance({
    label = '{npc:223538}',
    rewards = {Achievement({id = 40151, criteria = 8})}
}) -- Barracks Doorway

map.nodes[80008000] = MereldarMenance({
    label = '{npc:223557}',
    rewards = {Achievement({id = 40151, criteria = 9})}
}) -- Holy Oil

map.nodes[90009000] = MereldarMenance({
    label = '{npc:223559}',
    rewards = {Achievement({id = 40151, criteria = 10})}
}) -- Airship Drafting Board
