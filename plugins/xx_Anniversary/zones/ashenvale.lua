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

local map = Map({id = 63, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[93604000] = Rare({
    id = 121911,
    quest = 47463,
    rewards = {
        Transmog({item = 150394, slot = L['cloth']}), -- Mendicant's Slippers
        Transmog({item = 150395, slot = L['leather']}), -- Unnatural Leather Spaulders
        Transmog({item = 150414, slot = L['mail']}), -- Ancient Corroded Leggings
        Transmog({item = 150390, slot = L['plate']}), -- Strangely Glyphed Legplates
        Transmog({item = 150413, slot = L['plate']}), -- Dragonbone Wristguards
        Spacer(), Section(L['shared_drop_note']), Spacer(),
        Transmog({item = 150429, slot = L['dagger']}), -- Emerald Dragonfang
        Transmog({item = 150412, slot = L['1h_mace']}), -- Hammer of Bestial Fury
        Transmog({item = 150393, slot = L['1h_sword']}), -- Nightmare Blade
        Transmog({item = 150403, slot = L['crossbow']}), -- Polished Ironwood Crossbow
        Transmog({item = 150408, slot = L['staff']}), -- Staff of Rampant Growth
        Transmog({item = 150411, slot = L['cloak']}), -- Green Dragonskin Cloak
        Transmog({item = 150383, slot = L['staff']}) -- Amberseal Keeper
    },
}) -- Taerar
