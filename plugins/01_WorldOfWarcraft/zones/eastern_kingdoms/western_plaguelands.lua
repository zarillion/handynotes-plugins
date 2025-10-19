-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale

local Rare = ns.node.Rare
local Safari = ns.node.Safari

local Transmog = ns.reward.Transmog

local POI = ns.poi.POI

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = ns.Map({id = 22, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[66205560] = Rare({
    id = 50931,
    rewards = {Transmog({item = 7418, slot = L['mail']})} -- Phalanx Breastplate
}) -- Mange

map.nodes[35805260] = Rare({
    id = 50809,
    rewards = {
        Transmog({item = 7454, slot = L['mail']}), -- Knight's Breastplate
        Transmog({item = 7440, slot = L['leather']}), -- Sentinel Trousers
        Transmog({item = 9875, slot = L['cloth']}) -- Sorcerer Sash
    }
}) -- Heress

map.nodes[62414723] = Rare({
    id = 51031,
    rewards = {Transmog({item = 9848, slot = L['cloth']})} -- Conjurer's Gloves
}) -- Tracker

-------------------------------------------------------------------------------
------------------------------------ SAFARI -----------------------------------
-------------------------------------------------------------------------------

map.nodes[49807780] = Safari.BlackRat({
    pois = {POI({47206760, 49807780, 52607880})}
}) -- Black Rat

map.nodes[43005220] = Safari.Squirrel({
    pois = {POI({32006060, 37606740, 43005220, 50404780})}
}) -- Squirrel

-------------------------------------------------------------------------------
-------------------------- THE SCAVENGER ACHIEVEMENT --------------------------
-------------------------------------------------------------------------------

map.nodes[29906890] = ns.node.ScavengerPool(3875)
map.nodes[32607040] = ns.node.ScavengerPool(3875)
map.nodes[35206930] = ns.node.ScavengerPool(3875)
map.nodes[38307510] = ns.node.ScavengerPool(3875)
map.nodes[41707680] = ns.node.ScavengerPool(3875)
map.nodes[45407680] = ns.node.ScavengerPool(3875)
map.nodes[46507450] = ns.node.ScavengerPool(3875)
map.nodes[50707120] = ns.node.ScavengerPool(3875)
map.nodes[53407390] = ns.node.ScavengerPool(3875)
map.nodes[55907040] = ns.node.ScavengerPool(3875)
map.nodes[57507880] = ns.node.ScavengerPool(3875)
map.nodes[60406250] = ns.node.ScavengerPool(3875)
map.nodes[62108230] = ns.node.ScavengerPool(3875)
map.nodes[65408330] = ns.node.ScavengerPool(3875)
map.nodes[66706290] = ns.node.ScavengerPool(3875)
map.nodes[69405840] = ns.node.ScavengerPool(3875)
map.nodes[69504460] = ns.node.ScavengerPool(3875)
map.nodes[69805140] = ns.node.ScavengerPool(3875)
map.nodes[70003980] = ns.node.ScavengerPool(3875)
map.nodes[71608250] = ns.node.ScavengerPool(3875)
map.nodes[73005940] = ns.node.ScavengerPool(3875)
map.nodes[75908130] = ns.node.ScavengerPool(3875)
map.nodes[76506170] = ns.node.ScavengerPool(3875)
map.nodes[77706560] = ns.node.ScavengerPool(3875)
map.nodes[78808000] = ns.node.ScavengerPool(3875)
map.nodes[79607040] = ns.node.ScavengerPool(3875)
map.nodes[79707470] = ns.node.ScavengerPool(3875)
