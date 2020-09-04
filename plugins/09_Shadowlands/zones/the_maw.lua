-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map
local isinstance = ns.isinstance

local Node = ns.node.Node
local Rare = ns.node.Rare
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Transmog = ns.reward.Transmog
local Toy = ns.reward.Toy

local Path = ns.poi.Path
local POI = ns.poi.POI

local options = ns.options.args.VisibilityGroup.args
local defaults = ns.optionDefaults.profile

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({ id=1543 })
local nodes = map.nodes

-------------------------------------------------------------------------------
----------------------------------- OPTIONS -----------------------------------
-------------------------------------------------------------------------------

defaults['rare_maw'] = true

options.groupMaw = {
    type = "header",
    name = C_Map.GetMapInfo(map.id).name,
    order = 40,
}

options.rareMaw = {
    type = "toggle",
    arg = "rare_maw",
    name = L["options_toggle_rares"],
    desc = L["options_toggle_rares_desc"],
    order = 41,
    width = "normal",
}

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

-- nodes[] = Rare({
--     id=157964,
--     quest=nil,
--     rewards={
--         Achievement({id=14744, criteria=49841}),
--     }
-- }) -- Adjutant Dekaris

nodes[19804160] = Rare({
    id=170301,
    quest=nil,
    rewards={
        Achievement({id=14744, criteria=49842}),
    }
}) -- Apholeias, Herald of Loss

nodes[40603900] = Rare({
    id=157833,
    quest=nil,
    rewards={
        Achievement({id=14744, criteria=49843}),
    }
}) -- Borr-Geth

nodes[28201380] = Rare({
    id=171317,
    quest=nil,
    rewards={
        Achievement({id=14744, criteria=49844}),
    }
}) -- Conjured Death

-- nodes[] = Rare({
--     id=160770,
--     quest=nil,
--     rewards={
--         Achievement({id=14744, criteria=49845}),
--     }
-- }) -- Darithis the Bleak

-- nodes[] = Rare({
--     id=158025,
--     quest=nil,
--     rewards={
--         Achievement({id=14744, criteria=49846}),
--     }
-- }) -- Darklord Taraxis

-- nodes[] = Rare({
--     id=170711,
--     quest=nil,
--     rewards={
--         Achievement({id=14744, criteria=49847}),
--     }
-- }) -- Dolos <Death's Knife>

nodes[23205300] = Rare({
    id=170774,
    quest=nil,
    rewards={
        Achievement({id=14744, criteria=49848}),
    }
}) -- Eketra <The Impaler>

-- nodes[] = Rare({
--     id=169827,
--     quest=nil,
--     rewards={
--         Achievement({id=14744, criteria=49849}),
--     }
-- }) -- Ekphoras, Herald of Grief

-- nodes[] = Rare({
--     id=154330,
--     quest=nil,
--     rewards={
--         Achievement({id=14744, criteria=49850}),
--     }
-- }) -- Eternas the Tormentor

-- nodes[] = Rare({
--     id=170303,
--     quest=nil,
--     rewards={
--         Achievement({id=14744, criteria=49851}),
--     }
-- }) -- Exos, Herald of Domination

nodes[16205040] = Rare({
    id=162849,
    quest=nil,
    rewards={
        Achievement({id=14744, criteria=49852}),
    }
}) -- Morguliax <Lord of Decapitation>

nodes[46207440] = Rare({
    id=158278,
    quest=nil,
    rewards={
        Achievement({id=14744, criteria=49853}),
    }
}) -- Nascent Devourer

-- nodes[] = Rare({
--     id=164064,
--     quest=nil,
--     rewards={
--         Achievement({id=14744, criteria=49854}),
--     }
-- }) -- Obolos <Prime Adjutant>

nodes[23802140] = Rare({
    id=172577,
    quest=nil,
    rewards={
        Achievement({id=14744, criteria=49855}),
    }
}) -- Orophea

nodes[29805960] = Rare({
    id=170634,
    quest=nil,
    rewards={
        Achievement({id=14744, criteria=49856}),
    }
}) -- Shadeweaver Zeris

nodes[36004120] = Rare({
    id=166398,
    quest=nil,
    rewards={
        Achievement({id=14744, criteria=49857}),
    }
}) -- Soulforger Rhovus

nodes[28601160] = Rare({
    id=170302,
    quest=nil,
    rewards={
        Achievement({id=14744, criteria=49858}),
    }
}) -- Talaporas, Herald of Pain

-- nodes[] = Rare({
--     id=170731,
--     quest=nil,
--     rewards={
--         Achievement({id=14744, criteria=49859}),
--     }
-- }) -- Thanassos <Death's Voice>

nodes[38406260] = Rare({
    id=172862,
    quest=nil,
    rewards={
        Achievement({id=14744, criteria=49860}),
    }
}) -- Yero the Skittish

-------------------------------------------------------------------------------

function map:enabled (node, coord, minimap)
    if not Map.enabled(self, node, coord, minimap) then return false end

    if node == map.intro then return true end

    -- add rlabel and warning if covenant doesn't match
    ns.processCovenant(node)

    local profile = ns.addon.db.profile
    if isinstance(node, Rare) then return profile.rare_maw end
    return true
end

ns.maps[map.id] = map