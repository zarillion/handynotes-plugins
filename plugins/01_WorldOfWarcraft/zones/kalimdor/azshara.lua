-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

local Safari = ns.node.Safari

local Transmog = ns.reward.Transmog

local POI = ns.poi.POI

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({id = 76, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[48768382] = ns.node.AnniversaryRare({
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
    }
}) -- Azuregos

-------------------------------------------------------------------------------
------------------------------------ SAFARI -----------------------------------
-------------------------------------------------------------------------------

map.nodes[42007580] = Safari.RabidNutVarmint5000({
    pois = {
        POI({
            25405020, 26205040, 29005780, 29006540, 29006640, 29806640,
            41007640, 41207480, 42007580, 42207400, 42402540, 42407680,
            42607680, 42802440, 50207420, 50407460, 50607320, 51207440,
            51207460, 52007320, 66202160
        })
    }
}) -- Rabid Nut Varmint 5000
