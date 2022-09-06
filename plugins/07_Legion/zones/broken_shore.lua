-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Map = ns.Map
local Class = ns.Class
local L = ns.locale

local Collectible = ns.node.Collectible

local Achievement = ns.reward.Achievement

-------------------------------------------------------------------------------

local map = Map({id = 646, settings = true})

-------------------------------------------------------------------------------
-------------------------- BRINGING HOME THE BEACON ---------------------------
-------------------------------------------------------------------------------

local Sentinax = Class('Sentinax', Collectible, {
    icon = 133267,
    requires = ns.requirement.Quest(46935), -- The Shadow of the Sentinax
    group = ns.groups.BRINGING_HOME_THE_BEACON,
    note = L['bringing_home_the_beacon_note']
})

-- areaPOI is in place for (possibly) altering The Sentinax tooltip on hover

map.nodes[43434092] = Sentinax({
    areaPOI = 5252,
    rewards = {Achievement({id = 11802, criteria = 36652})}
}) -- Shadow Fracture

map.nodes[50584415] = Sentinax({
    areaPOI = 5254,
    rewards = {Achievement({id = 11802, criteria = 36661})}
}) -- Soul Ruin

map.nodes[44384828] = Sentinax({
    areaPOI = 5255,
    rewards = {Achievement({id = 11802, criteria = 36662})}
}) -- Dark Stockade

map.nodes[53186450] = Sentinax({
    areaPOI = 5256,
    rewards = {Achievement({id = 11802, criteria = 36663})}
}) -- Coast of Anguish

map.nodes[57414520] = Sentinax({
    areaPOI = 5257,
    rewards = {Achievement({id = 11802, criteria = 36664})}
}) -- Garrison of the Fel

map.nodes[82514655] = Sentinax({
    areaPOI = 5258,
    rewards = {Achievement({id = 11802, criteria = 36665})}
}) -- Felfire Pass

map.nodes[80352715] = Sentinax({
    areaPOI = 5259,
    rewards = {Achievement({id = 11802, criteria = 36666})}
}) -- Felrage Strand

map.nodes[53091437] = Sentinax({
    areaPOI = 5260,
    rewards = {Achievement({id = 11802, criteria = 36667})}
}) -- Crescent Ruins

map.nodes[37382506] = Sentinax({
    areaPOI = 5261,
    rewards = {Achievement({id = 11802, criteria = 36668})}
}) -- The Creeping Grotto
