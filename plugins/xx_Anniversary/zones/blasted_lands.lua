-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Rare = ns.node.Rare

local Item = ns.reward.Item
local Section = ns.reward.Section
local Spacer = ns.reward.Spacer
local Transmog = ns.reward.Transmog

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({id = 17, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[33604960] = Rare({
    id = 121818,
    quest = 47461,
    rewards = {
        Transmog({item = 150380, slot = L['cloak']}), -- Eskhandar's Pelt
        Transmog({item = 150385, slot = L['cloth']}), -- Fel Infused Leggings
        Transmog({item = 150386, slot = L['cloth']}), -- Blacklight Bracer
        Transmog({item = 150381, slot = L['leather']}), -- Flayed Doomguard Belt
        Transmog({item = 150382, slot = L['leather']}), -- Doomhide Gauntlets
        Transmog({item = 150379, slot = L['mail']}), -- Infernal Headcage
        Transmog({item = 150427, slot = L['1h_mace']}), -- Empyrean Demolisher
        Transmog({item = 150383, slot = L['staff']}) -- Amberseal Keeper
    },
}) -- Lord Kazzak 
