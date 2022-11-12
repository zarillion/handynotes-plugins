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

local map = Map({id = 76, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[48768382] = Rare({
    id = 121820,
    quest = 47462,
    rewards = {
        Transmog({item = 150419, slot = L['cloth']}), -- Crystal Adorned Crown
        Transmog({item = 150425, slot = L['cloth']}), -- Snowblind Shoes
        Transmog({item = 150543, slot = L['leather']}), -- Sapphire-Encrusted Tunic
        Transmog({item = 150544, slot = L['mail']}), -- Mana-Frosted Pauldrons
        Transmog({item = 150422, slot = L['plate']}), -- Unmelting Ice Girdle
        Transmog({item = 150417, slot = L['cloak']}), -- Drape of Benediction
        Transmog({item = 150424, slot = L['wand']}), -- Cold Snap
        Transmog({item = 150428, slot = L['fist']}), -- Eskhandar's Left Claw
        Transmog({item = 150423, slot = L['dagger']}), -- Fang of the Mystics
        Transmog({item = 150421, slot = L['2h_sword']}) -- Typhoon
    },
}) -- Azuregos
