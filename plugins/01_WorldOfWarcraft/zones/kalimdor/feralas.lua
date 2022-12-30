-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

local Safari = ns.node.Safari

local Section = ns.reward.Section
local Spacer = ns.reward.Spacer
local Transmog = ns.reward.Transmog

local POI = ns.poi.POI

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({id = 69, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[51601080] = ns.node.AnniversaryRare({
    id = 121912,
    quest = 47463,
    rewards = {
        Transmog({item = 150391, slot = L['cloth']}), -- Jade Inlaid Vestments
        Transmog({item = 150397, slot = L['cloth']}), -- Belt of the Dark Bog
        Transmog({item = 150396, slot = L['leather']}), -- Boots of Fright
        Transmog({item = 150389, slot = L['mail']}), -- Leggings of the Demented Mind
        Transmog({item = 150387, slot = L['plate']}), -- Acid Inscribed Pauldrons
        Transmog({item = 150409, slot = L['offhand']}), -- Trance Stone
        Spacer(), Section(L['shared_drops']), Spacer(),
        Transmog({item = 150429, slot = L['dagger']}), -- Emerald Dragonfang
        Transmog({item = 150412, slot = L['1h_mace']}), -- Hammer of Bestial Fury
        Transmog({item = 150393, slot = L['1h_sword']}), -- Nightmare Blade
        Transmog({item = 150403, slot = L['crossbow']}), -- Polished Ironwood Crossbow
        Transmog({item = 150408, slot = L['staff']}), -- Staff of Rampant Growth
        Transmog({item = 150411, slot = L['cloak']}), -- Green Dragonskin Cloak
        Transmog({item = 150383, slot = L['staff']}) -- Amberseal Keeper
    }
}) -- Ysondre

-------------------------------------------------------------------------------
------------------------------------ SAFARI -----------------------------------
-------------------------------------------------------------------------------

map.nodes[61003160] = Safari.NetherFaerieDragon({
    pois = {
        POI({
            54004520, 55404440, 55404460, 55404720, 55604720, 56604320,
            56604440, 56604460, 57404740, 57604740, 58004280, 58404540,
            58404560, 59004240, 59004260, 59004540, 59004640, 59203600,
            59203940, 59404840, 59404860, 59604840, 59604860, 60404280,
            61002640, 61002800, 61003160, 61003600, 61004440, 61004460,
            61403360, 62003920, 62004380, 62403000, 62403240, 62403260,
            62602980, 63002620, 63003600, 63404540, 63404560, 63803380,
            64002620, 64002760, 64003140, 64003160, 64202740, 64603600,
            64604440, 64604460
        })
    }
}) -- Nether Faerie Dragon
