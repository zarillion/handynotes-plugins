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
local Q2 = Quest({id={56377, 56536, 56537, 56538, 56539, 56771, 56540, 56541, 56542, 58737}})

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

-- ns.addon:RegisterEvent('QUEST_WATCH_UPDATE', function (_, index)
--     local _, _, _, _, _, _, _, questID = GetQuestLogTitle(index)
--     if questID == 56376 then
--         debug('Uldum assaults unlock detected')
--         C_Timer.After(1, function()
--             ns.addon:Refresh()
--         end)
--     end
-- end)

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

nodes[20007460] = Rare({id=160825, quest=58300}) -- Amber-Shaper Esh'ri
nodes[34156805] = Rare({id=157466, quest=nil, rewards={
    Mount({id=1328, item=174840}) -- Xinlao
}}) -- Anh-De the Loyal
nodes[57084098] = Rare({id=154447, quest=56237}) -- Brother Meller
nodes[06487070] = Rare({id=160878, quest=58307}) -- Buh'gzaki the Blasphemous
nodes[06406433] = Rare({id=160893, quest=58308}) -- Captain Vor'lek
nodes[81226450] = Rare({id=154467, quest=56255}) -- Chief Mek-mek
nodes[66556794] = Rare({id=154559, quest=56323, note=L["big_blossom_mine"]}) -- Deeplord Zrihj
nodes[26506657] = Rare({id=160872, quest=58304}) -- Destroyer Krox'tazar
nodes[11854081] = Rare({id=160874, quest=58305}) -- Drone Keeper Ak'thet
nodes[10474089] = Rare({id=160876, quest=58306}) -- Enraged Amber Elemental
nodes[45244524] = Rare({id=157267, quest=57343, pois={
    Path({44174609, 45244524, 45324176, 44783891})
}}) -- Escaped Mutation
nodes[29513800] = Rare({id=157153, quest=nil, rewards={
    Mount({id=1297, item=173887}) -- Clutch of Ha-Li
}}) -- Ha-Li
nodes[28895272] = Rare({id=160810, quest=58299}) -- Harbinger Il'koxik
nodes[12835129] = Rare({id=160868, quest=58303}) -- Harrier Nir'verash
nodes[21256265] = Rare({id=160826, quest=58301}) -- Hive-Guard Naz'ruzek
nodes[10003200] = Rare({id=157160, quest=nil, rewards={
    Mount({id=1327, item=174841}) -- Ren's Stalwart Hound
}}) -- Houndlord Ren
nodes[18426557] = Rare({id=160930, quest=58312}) -- Infused Amber Ooze
nodes[22132419] = Rare({id=160968, quest=58295, note=L["jadec"]}) -- Jade Colossus
nodes[26691061] = Rare({id=157290, quest=57350, note=L["in_small_cave"]}) -- Jade Watcher
nodes[17850918] = Rare({id=160920, quest=58310}) -- Kal'tik the Blight
nodes[45985858] = Rare({id=157266, quest=57341, pois={
    Path({45985858, 48645963, 50576511, 48936926, 45877046, 43096817, 42486336, 45985858})
}}) -- Kilxl the Gaping Maw
nodes[25673816] = Rare({id=160867, quest=58302}) -- Kzit'kovok
nodes[14813374] = Rare({id=160922, quest=58311}) -- Needler Zhesalla
nodes[90314599] = Rare({id=154106, quest=56094}) -- Quid
nodes[64175175] = Rare({id=154490, quest=56302}) -- Rijz'x the Devourer
nodes[29132207] = Rare({id=156424, quest=nil, rewards={
    Toy({item=174873}) -- Trans-mogu-rifier
}}) -- Tashara
nodes[52024173] = Rare({id=157176, quest=57342, rewards={
    Pet({id=2845, item=174473}) -- K'uddly
}}) -- The Forgotten
nodes[09586736] = Rare({id=157468, quest=57364, note=L["tisiphon"]}) -- Tisiphon
nodes[86664165] = Rare({id=154394, quest=56213}) -- Veskan the Fallen
nodes[66732812] = Rare({id=154332, quest=56183, note=L["pools_of_power"]}) -- Voidtender Malketh
nodes[52956225] = Rare({id=154495, quest=56303, rewards={
    Pet({id=2846, item=174474}) -- Corrupted Tentacle
}}) -- Will of N'Zoth
nodes[70954053] = Rare({id=154087, quest=56084}) -- Zror'um the Infinite

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

nodes[44483693] = Treasure({quest=57197, assault=EMP, label=L["black_empire_cache"]})
nodes[52673967] = Treasure({quest=57197, assault=EMP, label=L["black_empire_cache"]})
nodes[69933311] = Treasure({quest=57199, assault=EMP, label=L["black_empire_cache"], note=L["pools_of_power"]})
nodes[70282286] = Treasure({quest=57199, assault=EMP, label=L["black_empire_cache"], note=L["pools_of_power"]})
nodes[57334165] = Treasure({quest=57200, assault=EMP, label=L["black_empire_cache"]})
nodes[59605624] = Treasure({quest=57200, assault=EMP, label=L["black_empire_cache"]})
nodes[79034330] = Treasure({quest=57201, assault=EMP, label=L["black_empire_cache"]})
nodes[87813771] = Treasure({quest=57201, assault=EMP, label=L["black_empire_cache"]})
nodes[63107059] = Treasure({quest=57202, assault=EMP, label=L["black_empire_cache"], note=L["big_blossom_mine"]})
nodes[71516854] = Treasure({quest=57202, assault=EMP, label=L["black_empire_cache"], note=L["big_blossom_mine"]})
nodes[48476579] = Treasure({quest=57203, assault=EMP, label=L["black_empire_cache"]})
nodes[52266732] = Treasure({quest=57203, assault=EMP, label=L["black_empire_cache"]})

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

nodes[28553494] = PetBattle({id=162470}) -- Baruk Stone Defender
nodes[56172822] = PetBattle({id=162468}) -- K'tiny the Mad
nodes[57465427] = PetBattle({id=162469}) -- Tormentius
nodes[07333190] = PetBattle({id=162471}) -- Vil'thik Hatchling

-------------------------------------------------------------------------------

ns.maps[map.id] = map
