-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local L = ns.locale
local Class = ns.Class
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

-- nodes[] = Rare({id=163229, quest=nil, rewards={
--     Achievement({id=14309, criteria=48794})
-- }}) -- Dustbrawl

nodes[57862955] = Rare({id=167851, quest=60266, rewards={
    Achievement({id=14309, criteria=48790})
}, note=L["lehgo_note"]}) -- Egg-Tender Leh'go

nodes[68612765] = Rare({id=171688, quest=61184, rewards={
    Achievement({id=14309, criteria=48798})
}, note=L["faeflayer_note"]}) -- Faeflayer

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

nodes[62102470] = Rare({id=165053, quest=nil, rewards={
    Achievement({id=14309, criteria=48788})
}}) -- Mymaen

-- nodes[] = Rare({id=164547, quest=nil, rewards={
--     Achievement({id=14309, criteria=48715})
-- }}) -- Mystic Rainbowhorn

-- nodes[] = Rare({id=168135, quest=nil, rewards={
--     Achievement({id=14309, criteria=48793})
-- }}) -- Night Mare

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

--------------------------- STAR LAKE AMPHITHEATER ----------------------------

local StarLake = Class('StarLake', Rare, { _rewards = {
    Achievement({id=14309, criteria={
        {id=48709, quest=nil}, -- Astra, As Azshara
        {id=48710, quest=nil}, -- Dreamweaver, As N'Zoth
        {id=48704, quest=nil}, -- Glimmerdust, As Jaina
        {id=48707, quest=nil}, -- Glimmerdust, As Kil'Jaeden
        {id=48708, quest=nil}, -- Mi'Kai, As Argus
        {id=48705, quest=nil}, -- Niya, As Xavius
        {id=48706, quest=nil}  -- Senthii, As Gul'dan
    }}),
    Achievement({id=14353, criteria={
        48708, -- Argus
        48709, -- Azshara
        48706, -- Gul'dan
        48704, -- Jaina
        48707, -- Kil'jaeden
        48710, -- N'Zoth
        48705  -- Xavius
    }, lineAbove=true})
}, note=L["star_lake_note"] })

-- local STAR_QUESTS = {}
-- for i, criteria in ipairs(StarLake._rewards[1].criteria) do
--     POOL_QUESTS[#POOL_QUESTS + 1] = criteria.quest
-- end

function StarLake.getters:rewards ()
    -- for i, criteria in ipairs(self._rewards[1].criteria) do
    --     if IsQuestFlaggedCompleted(criteria.quest) then
    --         criteria.note = criteria._note..'  '..ns.status.Green(L['D'])
    --     else
    --         criteria.note = criteria._note..'  '..ns.status.Red(L['A'])
    --     end
    -- end
    return self._rewards
end

-- function PoolsRare.getters:rlabel ()
--     local count = 0
--     for i, quest in ipairs(POOL_QUESTS) do
--         if IsQuestFlaggedCompleted(quest) then
--             count = count + 1
--         end
--     end
--     local color = (count == #POOL_QUESTS) and ns.status.Green or ns.status.Gray
--     return color(tostring(count)..'/'..#POOL_QUESTS)
-- end

nodes[41254443] = StarLake({id=171743, label=L["star_lake"], quest=nil})

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------

ns.maps[map.id] = map
