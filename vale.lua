-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local _, ns = ...
local L = ns.locale
local Class = ns.Class
local Map = ns.Map
local isinstance = ns.isinstance

local Node = ns.node.Node
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
local POI = ns.poi.POI

local options = ns.options.args.VisibilityGroup.args
local defaults = ns.optionDefaults.profile

local MAN, MOG, EMP = 0, 1, 2 -- assaults

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({ id=1530, phased=false })
local nodes = map.nodes

local function GetAssault()
    local textures = C_MapExplorationInfo.GetExploredMapTextures(map.id)
    if textures and textures[1].fileDataIDs[1] == 3155826 then
        ns.debug('Vale assault: MAN')
        return MAN -- left
    elseif textures and textures[1].fileDataIDs[1] == 3155832 then
        ns.debug('Vale assault: MOG')
        return MOG -- middle
    elseif textures and textures[1].fileDataIDs[1] == 3155841 then
        ns.debug('Vale assault: EMP')
        return EMP -- right
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

options.groupVale = {
    type = "header",
    name = L["vale"],
    order = 0,
};

-------------------------------------------------------------------------------
------------------------------------ INTRO ------------------------------------
-------------------------------------------------------------------------------

local Intro = Class('Intro', Node)

Intro.note = L["vale_intro_note"]
Intro.icon = 'quest_yellow'
Intro.scale = 3

function Intro:enabled ()
    if not Node.enabled(self) then return false end
    return map.assault == nil
end

function Intro.getters:label ()
    return select(2, GetAchievementInfo(14154)) -- Defend the Vale
end

-- Where the Heart is => Surfacing Threats
local Q1 = Quest({id={58583, 58506, 56374, 56209, 56375, 56472, 56376}})
-- Forging Onward => Magni's Findings
local Q2 = Quest({id={56377, 56536, 56537, 56538, 56539, 56771, 56540}})

if UnitFactionGroup('player') == 'Alliance' then
    map.intro = Intro({faction='Alliance', rewards={
        Quest({id={58496, 58498}}), Q1, Q2
    }})
else
    map.intro = Intro({faction='Horde', rewards={
        Quest({id={58582}}), Q1, Q2
    }})
end

nodes[26005200] = map.intro

ns.addon:RegisterEvent('QUEST_ACCEPTED', function (_, _, id)
    if id == 56540 then
        ns.debug('Vale assaults unlock detected')
        C_Timer.After(1, function()
            ns.addon:Refresh()
        end)
    end
end)

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

nodes[20007460] = Rare({id=160825, quest=58300, assault=MAN}) -- Amber-Shaper Esh'ri
nodes[34156805] = Rare({id=157466, quest=57363, assault=MOG, rewards={
    Mount({id=1328, item=174840}) -- Xinlao
}}) -- Anh-De the Loyal
nodes[57084098] = Rare({id=154447, quest=56237, assault=EMP}) -- Brother Meller
nodes[06487070] = Rare({id=160878, quest=58307, assault=MAN}) -- Buh'gzaki the Blasphemous
nodes[06406433] = Rare({id=160893, quest=58308, assault=MAN}) -- Captain Vor'lek
nodes[81226450] = Rare({id=154467, quest=56255, assault=EMP}) -- Chief Mek-mek
nodes[18806841] = Rare({id=157183, quest=58296, assault=MOG, pois={
    POI({16806672, 18316516, 19026494, 20166403, 20816263, 20866845, 21016961, 19927330, 18607211})
}}) -- Coagulated Anima
nodes[66556794] = Rare({id=154559, quest=56323, assault=EMP, note=L["big_blossom_mine"]}) -- Deeplord Zrihj
nodes[26506657] = Rare({id=160872, quest=58304, assault=MAN}) -- Destroyer Krox'tazar
nodes[41505721] = Rare({id=157287, quest=57349, assault=MOG, pois={
    Path({41745982, 40446144, 38995953, 39805740, 41505721, 45405297})
}}) -- Dokani Obliterator
nodes[11854081] = Rare({id=160874, quest=58305, assault=MAN}) -- Drone Keeper Ak'thet
nodes[10474089] = Rare({id=160876, quest=58306, assault=MAN}) -- Enraged Amber Elemental
nodes[45244524] = Rare({id=157267, quest=57343, assault=EMP, pois={
    Path({44174609, 45244524, 45324176, 44783891})
}}) -- Escaped Mutation
nodes[29513800] = Rare({id=157153, quest=57344, assault=MOG, rewards={
    Mount({id=1297, item=173887}) -- Clutch of Ha-Li
}, pois={
    Path({37323630, 33973378, 29053930, 31524387, 37313632, 37323630})
}}) -- Ha-Li
nodes[28895272] = Rare({id=160810, quest=58299, assault=MAN}) -- Harbinger Il'koxik
nodes[12835129] = Rare({id=160868, quest=58303, assault=MAN}) -- Harrier Nir'verash
nodes[28214047] = Rare({id=157171, quest=57347, assault=MOG}) -- Heixi the Stonelord
nodes[21256265] = Rare({id=160826, quest=58301, assault=MAN}) -- Hive-Guard Naz'ruzek
nodes[12183091] = Rare({id=157160, quest=57345, assault=MOG, rewards={
    Mount({id=1327, item=174841}) -- Ren's Stalwart Hound
}, pois={
    Path({13132578, 11833049, 08953570})
}}) -- Houndlord Ren
nodes[18426557] = Rare({id=160930, quest=58312, assault=MAN}) -- Infused Amber Ooze
nodes[17201162] = Rare({id=160968, quest=58295, assault=MOG, note=L["jadec"]}) -- Jade Colossus
nodes[26691061] = Rare({id=157290, quest=57350, assault=MOG, note=L["in_small_cave"]}) -- Jade Watcher
nodes[17850918] = Rare({id=160920, quest=58310, assault=MAN}) -- Kal'tik the Blight
nodes[45985858] = Rare({id=157266, quest=57341, assault=EMP, pois={
    Path({45985858, 48645963, 50576511, 48936926, 45877046, 43096817, 42486336, 45985858})
}}) -- Kilxl the Gaping Maw
nodes[25673816] = Rare({id=160867, quest=58302, assault=MAN}) -- Kzit'kovok
nodes[14813374] = Rare({id=160922, quest=58311, assault=MAN}) -- Needler Zhesalla
nodes[90314599] = Rare({id=154106, quest=56094, assault=EMP}) -- Quid
nodes[21901232] = Rare({id=157162, quest=57346, assault=MOG, note=L["guolai"]}) -- Rei Lun
nodes[64175175] = Rare({id=154490, quest=56302, assault=EMP}) -- Rijz'x the Devourer
nodes[46425710] = Rare({id=156083, quest=56954, assault=MOG}) -- Sanguifang
nodes[17873752] = Rare({id=157291, quest=57351, assault=MOG}) -- Spymaster Hul'ach
nodes[26057505] = Rare({id=157279, quest=57348, assault=MOG, pois={
    Path({23467717, 25247587, 26837367, 27117143})
}}) -- Stormhowl
nodes[29132207] = Rare({id=156424, quest=58507, assault=MOG, rewards={
    Toy({item=174873}) -- Trans-mogu-rifier
}}) -- Tashara
nodes[47496373] = Rare({id=154600, quest=56332, assault=MOG}) -- Teng the Awakened
nodes[52024173] = Rare({id=157176, quest=57342, assault=EMP, rewards={
    Pet({id=2845, item=174473}) -- K'uddly
}}) -- The Forgotten
nodes[09586736] = Rare({id=157468, quest=57364, note=L["tisiphon"]}) -- Tisiphon
nodes[86664165] = Rare({id=154394, quest=56213, assault=EMP}) -- Veskan the Fallen
nodes[66732812] = Rare({id=154332, quest=56183, assault=EMP, note=L["pools_of_power"]}) -- Voidtender Malketh
nodes[52956225] = Rare({id=154495, quest=56303, assault=EMP, rewards={
    Toy({item=175140}), -- All-Seeing Eye
    Pet({id=2846, item=174474}) -- Corrupted Tentacle
}, note=L["right_eye"]}) -- Will of N'Zoth
nodes[53794889] = Rare({id=157443, quest=57358, assault=MOG}) -- Xiln the Mountain
nodes[70954053] = Rare({id=154087, quest=56084, assault=EMP}) -- Zror'um the Infinite

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

nodes[15797164] = Treasure({quest=58224, assault=MAN, label=L["ambered_cache"]})
nodes[21051415] = Treasure({quest=58225, assault=MAN, label=L["ambered_cache"]})
nodes[09302831] = Treasure({quest=58226, assault=MAN, label=L["ambered_cache"]})
nodes[07693682] = Treasure({quest=58226, assault=MAN, label=L["ambered_cache"]})
nodes[26704680] = Treasure({quest=58227, assault=MAN, label=L["ambered_cache"]})
nodes[31724184] = Treasure({quest=58227, assault=MAN, label=L["ambered_cache"]})
nodes[15406394] = Treasure({quest=58228, assault=MAN, label=L["ambered_cache"]})
nodes[16096581] = Treasure({quest=58228, assault=MAN, label=L["ambered_cache"]})
nodes[21586246] = Supply({quest=58770, assault=MAN, label=L["ambered_coffer"]})

-------------------------------------------------------------------------------

local MOGChest = Class('MOGChest', Treasure, {
    assault=MOG, label=L["mogu_plunder"]
})

local MOGTR1 = MOGChest({quest=57206, icon='chest_blue', note=L["guolai"]})
local MOGTR2 = MOGChest({quest=57208, icon='chest_purple'})
local MOGTR3 = MOGChest({quest=57209, icon='chest_orange'})
local MOGTR4 = MOGChest({quest=57211, icon='chest_yellow'})
local MOGTR5 = MOGChest({quest=57212, icon='chest_teal'})
local MOGTR6 = MOGChest({quest=57213, icon='chest_lime'})

-- quest=57206
nodes[13500720] = MOGTR1
nodes[20221140] = MOGTR1
nodes[20441477] = MOGTR1
nodes[27061822] = MOGTR1
nodes[23850753] = MOGTR1
-- quest=57208
nodes[20462833] = MOGTR2
nodes[24773504] = MOGTR2
nodes[30283762] = MOGTR2
nodes[30983065] = MOGTR2
nodes[33503481] = MOGTR2
-- quest=57209
nodes[19281942] = MOGTR3
nodes[20311853] = MOGTR3
nodes[21271385] = MOGTR3
nodes[32721893] = MOGTR3
-- quest=57211
nodes[15496436] = MOGTR4
nodes[16704468] = MOGTR4
nodes[17356860] = MOGTR4
nodes[21356297] = MOGTR4
nodes[29774890] = MOGTR4
-- quest=57212
nodes[42436854] = MOGTR5
nodes[44186853] = MOGTR5
nodes[47937093] = MOGTR5
nodes[48466580] = MOGTR5
-- quest=57213
nodes[32097104] = MOGTR6
nodes[33876683] = MOGTR6
nodes[37666584] = MOGTR6
nodes[38417028] = MOGTR6

nodes[10782831] = Supply({quest=57214, assault=MOG, label=L["mogu_strongbox"]})
nodes[43134209] = Supply({quest=57214, assault=MOG, label=L["mogu_strongbox"]})

-------------------------------------------------------------------------------

local EMPChest = Class('EMPChest', Treasure, {
    assault=EMP, label=L["black_empire_cache"]
})

local EMPTR1 = EMPChest({quest=57197, icon='chest_blue'})
local EMPTR2 = EMPChest({quest=57199, icon='chest_purple', note=L["pools_of_power"]})
local EMPTR3 = EMPChest({quest=57200, icon='chest_orange'})
local EMPTR4 = EMPChest({quest=57201, icon='chest_yellow'})
local EMPTR5 = EMPChest({quest=57202, icon='chest_teal', note=L["big_blossom_mine"]})
local EMPTR6 = EMPChest({quest=57203, icon='chest_lime'})

-- quest=57197
nodes[42314323] = EMPTR1
nodes[44483693] = EMPTR1
nodes[46314037] = EMPTR1
nodes[52673967] = EMPTR1
-- quest=57199
nodes[56152716] = EMPTR2
nodes[69933311] = EMPTR2
nodes[70282286] = EMPTR2
nodes[73242533] = EMPTR2
-- quest=57200
nodes[57334165] = EMPTR3
nodes[59605624] = EMPTR3
nodes[62585721] = EMPTR3
nodes[65855969] = EMPTR3
-- quest=57201
nodes[78305251] = EMPTR4
nodes[78435833] = EMPTR4
nodes[79034330] = EMPTR4
nodes[81363381] = EMPTR4
nodes[87813771] = EMPTR4
-- quest=57202
nodes[60806337] = EMPTR5
nodes[63107059] = EMPTR5
nodes[71516854] = EMPTR5
-- quest=57203
nodes[42456853] = EMPTR6
nodes[44196852] = EMPTR6
nodes[48476579] = EMPTR6
nodes[51136323] = EMPTR6
nodes[52266732] = EMPTR6

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

nodes[28553494] = PetBattle({id=162470}) -- Baruk Stone Defender
nodes[56172822] = PetBattle({id=162468}) -- K'tiny the Mad
nodes[57465427] = PetBattle({id=162469}) -- Tormentius
nodes[07333190] = PetBattle({id=162471}) -- Vil'thik Hatchling

-------------------------------------------------------------------------------

ns.maps[map.id] = map
