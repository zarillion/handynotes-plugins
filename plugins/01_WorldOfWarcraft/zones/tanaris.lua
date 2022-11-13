-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

local Mount = ns.reward.Mount
local Spacer = ns.reward.Spacer
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({id = 71, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[64405070] = ns.node.AnniversaryRare({
    id = 167749,
    quest = 60214,
    rewards = {
        Transmog({item = 186460, slot = L['cloth']}), -- Anger-Spark Gloves
        Transmog({item = 186461, slot = L['cloth']}), -- Gilded Trousers of Benediction
        Transmog({item = 186463, slot = L['leather']}), -- Terrorweave Tunic
        Transmog({item = 186475, slot = L['leather']}), -- Hellstiched Mantle
        Transmog({item = 186464, slot = L['mail']}), -- Fathom-Helm of the Deeps
        Transmog({item = 186481, slot = L['mail']}), -- Darkcrest Waistguard
        Transmog({item = 186465, slot = L['plate']}), -- Faceguard of the Endless Watch
        Transmog({item = 186484, slot = L['plate']}), -- Voidforged Greaves
        Transmog({item = 186462, slot = L['cloak']}), -- Black-Iron Battlecloak
        Transmog({item = 186506, slot = L['1h_axe']}), -- Akama's Edge
        Transmog({item = 186467, slot = L['gun']}), -- Barrel-Blade Longrifle
        Transmog({item = 186466, slot = L['2h_axe']}), -- Ethereum Nexus-Reaver
        Transmog({item = 186468, slot = L['dagger']}), -- Talon of the Tempest
        Spacer(), Mount({item = 186469, id = 293}), -- Illidari Doomhawk
        Toy({item = 186501}) -- Doomwalker Trophy Stand
    }
}) -- Doomwalker
