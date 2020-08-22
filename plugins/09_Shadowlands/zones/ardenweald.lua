-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map
local isinstance = ns.isinstance

local Rare = ns.node.Rare
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Pet = ns.reward.Pet
local Transmog = ns.reward.Transmog
local Toy = ns.reward.Toy

local Path = ns.poi.Path

local options = ns.options.args.VisibilityGroup.args
local defaults = ns.optionDefaults.profile

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({ id=1565 })
local nodes = map.nodes

function map:enabled (node, coord, minimap)
    if not Map.enabled(self, node, coord, minimap) then return false end

    if node == map.intro then return true end

    local profile = ns.addon.db.profile
    if isinstance(node, Rare) then return profile.rare_ardenweald end
    if isinstance(node, Treasure) then return profile.treasure_ardenweald end
    return true
end

-------------------------------------------------------------------------------
----------------------------------- OPTIONS -----------------------------------
-------------------------------------------------------------------------------

defaults['rare_ardenweald'] = true
defaults['treasure_ardenweald'] = true

options.groupArdenweald = {
    type = "header",
    name = L["ardenweald"],
    order = 0,
}

options.rareArdenweald = {
    type = "toggle",
    arg = "rare_ardenweald",
    name = L["options_toggle_rares"],
    desc = L["options_toggle_rares_desc"],
    order = 1,
    width = "normal",
}

options.treasureArdenweald = {
    type = "toggle",
    arg = "treasure_ardenweald",
    name = L["options_toggle_treasures"],
    desc = L["options_toggle_treasures_desc"],
    order = 2,
    width = "normal",
}

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

-- nodes[] = Rare({id=, quest=nil, rewards={
--     Achievement({id=14309, criteria=})
-- }}) --

nodes[41534482] = Rare({id=116135, quest=nil, rewards={
    Achievement({id=14309, criteria=48709})
}}) -- Astra, As Azshara

nodes[34606800] = Rare({id=164477, quest=nil, rewards={
    Achievement({id=14309, criteria=48714})
}}) -- Deathbinder Hroth

nodes[47522845] = Rare({id=164238, quest={59201,62271}, rewards={
    Achievement({id=14309, criteria=48784}),
    Pet({item=180631, id=2920}) -- Gorm Needler
}, pois={
    Path({
        47522845, 48052741, 48692650, 49172530, 49652403, 49022308, 48842184,
        48162099, 47362116, 46712135, 46332211, 46432338, 46452445, 46602590,
        46932693, 47112793, 47522845
    })
}, note=L["deifir_note"]}) -- Deifir the Untamed

nodes[41524482] = Rare({id=166145, quest=nil, rewards={
    Achievement({id=14309, criteria=48710})
}}) -- Dreamweaver, As N'Zoth

-- nodes[] = Rare({id=163229, quest=nil, rewards={
--     Achievement({id=14309, criteria=48794})
-- }}) -- Dustbrawl

nodes[57862955] = Rare({id=167851, quest=60266, rewards={
    Achievement({id=14309, criteria=48790})
}, note=L["lehgo_note"]}) -- Egg-Tender Leh'go

nodes[68612765] = Rare({id=171688, quest=61184, rewards={
    Achievement({id=14309, criteria=48798})
}, note=L["faeflayer_note"]}) -- Faeflayer

nodes[41544482] = Rare({id=166139, quest=nil, rewards={
    Achievement({id=14309, criteria=48707})
}}) --Glimmerdust, As Kil'Jaeden

nodes[41554482] = Rare({id=166142, quest=nil, rewards={
    Achievement({id=14309, criteria=48704})
}}) -- Glimmerdust, As Jaina

-- nodes[] = Rare({id=164107, quest=nil, rewards={
--     Achievement({id=14309, criteria=48781})
-- }}) -- Gormtamer Tizo

-- nodes[] = Rare({id=16412, quest=nil, rewards={
--     Achievement({id=14309, criteria=48742})
-- }}) -- Humon'gozz

nodes[71002460] = Rare({id=160448, quest=nil, rewards={
    Achievement({id=14309, criteria=48787})
}}) -- Hunter Vivian

-- nodes[] = Rare({id=164093, quest=nil, rewards={
--     Achievement({id=14309, criteria=48780})
-- }}) -- Macabre

nodes[41504482] = Rare({id=166138, quest=nil, rewards={
    Achievement({id=14309, criteria=48708})
}}) -- Mi'Kai, As Argus

nodes[62102470] = Rare({id=165053, quest=nil, rewards={
    Achievement({id=14309, criteria=48788})
}}) -- Mymaen

-- nodes[] = Rare({id=164547, quest=nil, rewards={
--     Achievement({id=14309, criteria=48715})
-- }}) -- Mystic Rainbowhorn

-- nodes[] = Rare({id=168135, quest=nil, rewards={
--     Achievement({id=14309, criteria=48793})
-- }}) -- Night Mare

nodes[41564482] = Rare({id=166146, quest=nil, rewards={
    Achievement({id=14309, criteria=48705})
}}) -- Niya, As Xavius

nodes[51105740] = Rare({id=164391, quest=nil, rewards={
    Achievement({id=14309, criteria=48785})
}}) -- Old Ardeite

nodes[65104430] = Rare({id=167726, quest=60273, rewards={
    Achievement({id=14309, criteria=48791})
}, note=L["rootwrithe_note"]}) -- Rootwrithe

nodes[65702430] = Rare({id=167724, quest=60258, rewards={
    Achievement({id=14309, criteria=48789}),
    Item({item=175729, note=L["trinket"]}) -- Rotbriar Sprout
}, note=L["rotbriar_note"]}) -- Rotbriar Changeling

nodes[41514482] = Rare({id=116140, quest=nil, rewards={
    Achievement({id=14309, criteria=48706})
}}) -- Senthii, As Gul'dan

-- nodes[] = Rare({id=171451, quest=nil, rewards={
--     Achievement({id=14309, criteria=48797})
-- }}) -- Soultwister Cero

nodes[36906010] = Rare({id=164415, quest=nil, rewards={
    Achievement({id=14309, criteria=48786})
}}) -- Skuld Vit

nodes[59304660] = Rare({id=167721, quest=60290, rewards={
    Achievement({id=14309, criteria=48792})
}, note=L["slumbering_note"]}) -- The Slumbering Emperor

nodes[30605500] = Rare({id=168647, quest=nil, rewards={
    Achievement({id=14309, criteria=48796})
}}) -- Valfir the Unrelenting

nodes[58306180] = Rare({id=164147, quest=nil, rewards={
    Achievement({id=14309, criteria=48783})
}}) -- Wrigglemortis



-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------

ns.maps[map.id] = map
