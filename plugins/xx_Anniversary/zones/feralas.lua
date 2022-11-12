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

local map = Map({id = 69, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[51601080] = Rare({
    id = 121912,
    quest = 47463,
    rewards = {
        Transmog({item = 150391, slot = L['cloth']}), -- Jade Inlaid Vestments
        Transmog({item = 150397, slot = L['cloth']}), -- Belt of the Dark Bog
        Transmog({item = 150396, slot = L['leather']}), -- Boots of Fright
        Transmog({item = 150389, slot = L['mail']}), -- Leggings of the Demented Mind
        Transmog({item = 150387, slot = L['plate']}), -- Acid Inscribed Pauldrons
        Transmog({item = 150409, slot = L['offhand']}), -- Trance Stone
        Spacer(), Section(L['shared_drop_note']), Spacer(),
        Transmog({item = 150429, slot = L['dagger']}), -- Emerald Dragonfang
        Transmog({item = 150412, slot = L['1h_mace']}), -- Hammer of Bestial Fury
        Transmog({item = 150393, slot = L['1h_sword']}), -- Nightmare Blade
        Transmog({item = 150403, slot = L['crossbow']}), -- Polished Ironwood Crossbow
        Transmog({item = 150408, slot = L['staff']}), -- Staff of Rampant Growth
        Transmog({item = 150411, slot = L['cloak']}), -- Green Dragonskin Cloak
        Transmog({item = 150383, slot = L['staff']}) -- Amberseal Keeper
    },
}) -- Ysondre
