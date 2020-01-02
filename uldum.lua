-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local L = ns.locale
local Class = ns.Class
local Map = ns.Map
local isinstance = ns.isinstance

local Node = ns.node.Node
local Cave = ns.node.Cave
local NPC = ns.node.NPC
local PetBattle = ns.node.PetBattle
local Rare = ns.node.Rare
local Supply = ns.node.Supply
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Quest = ns.reward.Quest
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

local Path = ns.poi.Path

local options = ns.options.args.VisibilityGroup.args
local defaults = ns.optionDefaults.profile

local EMP, AQR, AME = 0, 1, 2 -- assaults

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({ id=1527, phased=false })
local nodes = map.nodes

local function GetAssault ()
    local textures = C_MapExplorationInfo.GetExploredMapTextures(map.id)
    if textures and textures[1].fileDataIDs[1] == 3165083 then
        return AQR -- left
    elseif textures and textures[1].fileDataIDs[1] == 3165092 then
        return EMP -- middle
    elseif textures and textures[1].fileDataIDs[1] == 3165098 then
        return AME -- right
    end
end

function map:prepare ()
    self.assault = GetAssault()
    self.phased = self.assault ~= nil
end

function map:enabled (node, coord, minimap)
    if not Map.enabled(self, node, coord, minimap) then return false end

    if node == map.intro then return true end

    local assault = node.assault
    if assault then
        assault = type(assault) == 'number' and {assault} or assault
        for i=1, #assault + 1, 1 do
            if i > #assault then return false end
            if assault[i] == self.assault then break end
        end
    end

    return true
end

-------------------------------------------------------------------------------
----------------------------------- OPTIONS -----------------------------------
-------------------------------------------------------------------------------

defaults['pet_uldum'] = true

options.groupUldum = {
    type = "header",
    name = L["uldum"],
    order = 10,
};

options.petUldum = {
    type = "toggle",
    arg = "pet_uldum",
    name = L["options_toggle_battle_pets"],
    desc = L["options_toggle_battle_pets_desc"],
    order = 11,
    width = "normal",
};

-------------------------------------------------------------------------------
------------------------------------ INTRO ------------------------------------
-------------------------------------------------------------------------------

local Intro = Class('Intro', Node)

Intro.note = L["uldum_intro_note"]
Intro.icon = 'quest_yellow'
Intro.scale = 3

function Intro:enabled ()
    if not Node.enabled(self) then return false end
    return GetAssault() == nil
end

function Intro.getters:label ()
    return select(2, GetAchievementInfo(14153)) -- Uldum Under Assault
end

-- Where the Heart is => Surfacing Threats
local Q = Quest({id={58583, 58506, 56374, 56209, 56375, 56472, 56376}})

if UnitFactionGroup('player') == 'Alliance' then
    map.intro = Intro({faction='Alliance', rewards={
        Quest({id={58496, 58498}}), Q
    }})
else
    map.intro = Intro({faction='Horde', rewards={
        Quest({id={58582}}), Q
    }})
end

nodes[46004300] = map.intro

ns.addon:RegisterEvent('QUEST_WATCH_UPDATE', function (_, index)
    local _, _, _, _, _, _, _, questID = GetQuestLogTitle(index)
    if questID == 56376 then
        ns.debug('Uldum assaults unlock detected')
        C_Timer.After(1, function()
            ns.addon:Refresh()
        end)
    end
end)

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

nodes[66817436] = Rare({id=158557, quest=57669, note=nil}) -- Actiss the Deceiver
-- nodes[] = Rare({id=157593, quest=nil, note=nil, rewards={
--     Pet({id=2851, item=174478}) -- Wicked Lurker
-- }}) -- Amalgamation of Flesh
nodes[32426443] = Rare({id=155703, quest=56834, note=nil}) -- Anq'uri the Titanic
nodes[33595682] = Rare({id=154576, quest=58614, note=nil}) -- Aqir Titanus
nodes[45605777] = Rare({id=162171, quest=nil, note=L["dunewalker"]}) -- Captain Dunewalker
nodes[30854971] = Rare({id=162147, quest=nil, note=nil, rewards={
    Mount({id=1319, item=174769}) -- Malevolent Drone
}}) -- Corpse Eater
nodes[49363822] = Rare({id=158594, quest=57672, note=nil}) -- Doomsayer Vathiris
nodes[48657067] = Rare({id=158491, quest=nil, note=L["falconer"]}) -- Falconer Amenophis
nodes[54694317] = Rare({id=158597, quest=57675, note=nil}) -- High Executor Yothrim
nodes[60033950] = Rare({id=160623, quest=58206, note=nil}) -- Hungering Miasma
nodes[21405794] = Rare({id=155531, quest=56823, note=nil}) -- Infested Wastewander Captain
nodes[73908353] = Rare({id=157134, quest=nil, note=nil, rewards={
    Mount({id=1314, item=174641}) -- Drake of the Four Winds
}}) -- Ishak of the Four Winds
nodes[71237375] = Rare({id=156655, quest=nil, note=nil}) -- Korzaran the Slaughterer
nodes[34681890] = Rare({id=154604, quest=nil, note=L["ajqirai"], rewards={
    Pet({id=2847, item=174475}) -- Rotbreath
}}) -- Lord Aj'qirai

nodes[35071729] = Rare({id=162196, quest=nil, note=nil}) -- Obsidian Annihilator
nodes[58175712] = Rare({id=156299, quest=57430, note=L["rkhuzj"]}) -- R'khuzj the Unfathomable
nodes[73536459] = Rare({id=151948, quest=55496, note=nil}) -- Senbu the Pridefather
nodes[57003794] = Rare({id=161033, quest=58333, note=nil}) -- Shadowmaw
nodes[58558282] = Rare({id=156654, quest=nil, note=nil}) -- Shol'thoss the Doomspeaker
nodes[61297484] = Rare({id=160532, quest=58169, note=nil}) -- Shoth the Darkened
nodes[21236105] = Rare({id=162140, quest=nil, note=nil, rewards={
    Pet({id=2848, item=174476}) -- Aqir Tunneler
}}) -- Skikx'traz
nodes[78986389] = Rare({id=151878, quest=58613, note=nil}) -- Sun King Nahkotep
nodes[49328235] = Rare({id=158636, quest=nil, note=L["gexec"], rewards={
    Toy({item=169303}) -- Hell-Bent Bracers
}}) -- The Grand Executor
-- nodes[] = Rare({id=157473, quest=nil, note=nil, rewards={
--     Toy({item=174874}) -- Budget K'thir Disguise
-- }}) -- Yiphrim the Will Ravager
-- nodes[] = Rare({id=, quest=, note=nil}) --

------------------------------- AQIR UNEARTHED --------------------------------

------------------------------ THE BLACK EMPIRE -------------------------------

------------------------------- AMATHET ADVANCE -------------------------------

nodes[68593204] = Rare({id=157146, quest=nil, note=nil, assault=AMA, rewards={
    Mount({id=1317, item=174753}) -- Waste Marauder
}}) -- Rotfeaster
nodes[67713350] = Rare({id=152657, quest=55682, note="check path", assault=AMA}) -- Tat the Bonechewer
nodes[69714215] = Rare({id=152040, quest=55518, assault=AMA}) -- Scoutmaster Moswen
nodes[69714973] = Rare({id=151883, quest=55468, assault=AMA, pois={
    Path({68645049, 69714973, 70955041, 71425210, 71005388, 69855463, 68695394, 68225217, 68645049})
}}) -- Anaua

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

nodes[58361535] = Treasure({quest=57623, assault=EMP, label=L["black_empire_cache"]})
nodes[50793143] = Treasure({quest=57624, assault=EMP, label=L["black_empire_cache"]})
nodes[59226749] = Treasure({quest=57626, assault=EMP, label=L["black_empire_cache"]})
nodes[62977610] = Treasure({quest=57626, assault=EMP, label=L["black_empire_cache"]})
nodes[60757493] = Treasure({quest=57627, assault=EMP, label=L["black_empire_cache"]})

nodes[72216422] = Treasure({quest=55690, assault=AMA, label=L["amathet_cache"]})
nodes[75575372] = Treasure({quest=55691, assault=AMA, label=L["amathet_cache"]})
nodes[67172800] = Treasure({quest=55700, assault=AMA, label=L["amathet_cache"], note=L["chamber_of_the_stars"]})

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

nodes[35453159] = PetBattle({id=162465}) -- Aqir Sandcrawler
nodes[57604356] = PetBattle({id=162466}) -- Blotto
nodes[62043188] = PetBattle({id=162458}) -- Retinus the Seeker
nodes[61745440] = PetBattle({id=162461}) -- Whispers

-------------------------------------------------------------------------------

ns.maps[map.id] = map
