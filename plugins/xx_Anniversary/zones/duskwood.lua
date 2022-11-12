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

local map = Map({id = 47, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[46304000] = Rare({
    id = 121913,
    quest = 47463,
    rewards = {
        Transmog({item = 150416, slot = L['cloth']}), -- Gloves of Delusional Power
        Transmog({item = 150405, slot = L['leather']}), -- Circlet of Restless Dreams
        Transmog({item = 150415, slot = L['leather']}), -- Dragonspur Wraps
        Transmog({item = 150406, slot = L['mail']}), -- Boots of the Endless Moor
        Transmog({item = 150410, slot = L['plate']}), -- Acid Inscribed Greaves
        Spacer(), Section(L['shared_drop_note']), Spacer(),
        Transmog({item = 150429, slot = L['dagger']}), -- Emerald Dragonfang
        Transmog({item = 150412, slot = L['1h_mace']}), -- Hammer of Bestial Fury
        Transmog({item = 150393, slot = L['1h_sword']}), -- Nightmare Blade
        Transmog({item = 150403, slot = L['crossbow']}), -- Polished Ironwood Crossbow
        Transmog({item = 150408, slot = L['staff']}), -- Staff of Rampant Growth
        Transmog({item = 150411, slot = L['cloak']}), -- Green Dragonskin Cloak
        Transmog({item = 150427, slot = L['1h_mace']}), -- Empyrean Demolisher
        Transmog({item = 150383, slot = L['staff']}) -- Amberseal Keeper
    },
}) -- Emeriss
