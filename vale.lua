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
local Quest = ns.node.Quest
local Rare = ns.node.Rare
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

local options = ns.options.args.VisibilityGroup.args
local defaults = ns.optionDefaults.profile

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({ id=1530 })
local nodes = map.nodes

function map:enabled (node, coord, minimap)
    if not Map.enabled(self, node, coord, minimap) then return false end
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
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

nodes[20007460] = Rare({id=160825, quest=58300, note=nil}) -- Amber-Shaper Esh'ri
nodes[34156805] = Rare({id=157466, quest=nil, note=nil, rewards={
    Mount({id=1328, item=174840}) -- Xinlao
}}) -- Anh-De the Loyal
nodes[06487070] = Rare({id=160878, quest=58307, note=nil}) -- Buh'gzaki the Blasphemous
nodes[06406433] = Rare({id=160893, quest=58308, note=nil}) -- Captain Vor'lek
nodes[26506657] = Rare({id=160872, quest=58304, note=nil}) -- Destroyer Krox'tazar
nodes[11854081] = Rare({id=160874, quest=58305, note=nil}) -- Drone Keeper Ak'thet
nodes[10474089] = Rare({id=160876, quest=58306, note=nil}) -- Enraged Amber Elemental
nodes[29513800] = Rare({id=157153, quest=nil, note=nil, rewards={
    Mount({id=1297, item=173887}) -- Clutch of Ha-Li
}}) -- Ha-Li
nodes[28895272] = Rare({id=160810, quest=58299, note=nil}) -- Harbinger Il'koxik
nodes[12835129] = Rare({id=160868, quest=58303, note=nil}) -- Harrier Nir'verash
nodes[21256265] = Rare({id=160826, quest=58301, note=nil}) -- Hive-Guard Naz'ruzek
nodes[10003200] = Rare({id=157160, quest=nil, note=nil, reward={
    Mount({id=1327, item=174841}) -- Ren's Stalwart Hound
}}) -- Houndlord Ren
nodes[18426557] = Rare({id=160930, quest=58312, note=nil}) -- Infused Amber Ooze
nodes[17201159] = Rare({id=160968, quest=58295, note=L["jadec"]}) -- Jade Colossus
nodes[17850918] = Rare({id=160920, quest=58310, note=nil}) -- Kal'tik the Blight
nodes[25673816] = Rare({id=160867, quest=58302, note=nil}) -- Kzit'kovok
nodes[14813374] = Rare({id=160922, quest=58311, note=nil}) -- Needler Zhesalla
nodes[29132207] = Rare({id=156424, quest=nil, note=nil, rewards={
    Toy({item=174873}) -- Trans-mogu-rifier
}}) -- Tashara
nodes[51884116] = Rare({id=157176, quest=nil, note=nil, rewards={
    Pet({id=2845, item=174473}) -- K'uddly
}}) -- The Forgotten
nodes[09586736] = Rare({id=157468, quest=57364, note=nil}) -- Tisiphon
nodes[54266272] = Rare({id=154495, quest=nil, note=nil, rewards={
    Pet({id=2846, item=174474}) -- Corrupted Tentacle
}}) -- Will of N'Zoth
-- nodes[] = Rare({id=, quest=, note=nil}) --

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

--nodes[] = Treasure({quest=58224, label=L["ambered_cache"]})
nodes[21051415] = Treasure({quest=58225, label=L["ambered_cache"]})
nodes[09302831] = Treasure({quest=58226, label=L["ambered_cache"]})
nodes[07693682] = Treasure({quest=58226, label=L["ambered_cache"]})
nodes[26704680] = Treasure({quest=58227, label=L["ambered_cache"]})
nodes[31724184] = Treasure({quest=58227, label=L["ambered_cache"]})
nodes[15406394] = Treasure({quest=58228, label=L["ambered_cache"]})
nodes[16096581] = Treasure({quest=58228, label=L["ambered_cache"]})

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

nodes[28553494] = PetBattle({id=162470}) -- Baruk Stone Defender
nodes[56172822] = PetBattle({id=162468}) -- K'tiny the Mad
nodes[57465427] = PetBattle({id=162469}) -- Tormentius
nodes[07333190] = PetBattle({id=162471}) -- Vil'thik Hatchling

-------------------------------------------------------------------------------

ns.maps[map.id] = map
