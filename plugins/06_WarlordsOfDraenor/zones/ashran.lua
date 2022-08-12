-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible

local Follower = ns.reward.Follower

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local stormshield = Map({id = 622, settings = true})
local warspear = Map({id = 624, settings = true})

-------------------------------------------------------------------------------
---------------------------------- FOLLOWERS ----------------------------------
-------------------------------------------------------------------------------

stormshield.nodes[45307020] = Collectible({
    id = 91479,
    icon = 608952,
    note = L['fen_tao_follower_note'],
    faction = 'Alliance',
    rewards = {Follower({id = 467, icon = 608952})}
}) -- Fen Tao (Alliance)

warspear.nodes[47004500] = Collectible({
    id = 91479,
    icon = 608952,
    note = L['fen_tao_follower_note'],
    faction = 'Horde',
    rewards = {Follower({id = 467, icon = 608952})}
}) -- Fen Tao (Horde)
