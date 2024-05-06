-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
-- local Class = ns.Class
-- local L = ns.locale
local Map = ns.Map

local Rare = ns.node.Rare
local Treasure = ns.node.Treasure

local DragonRace = ns.node.DragonRace
local FlightGlyph = ns.node.FlightGlyph

local Achievement = ns.reward.Achievement

-------------------------------------------------------------------------------

local map = Map({id = nil, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[39408410] = Rare({
    id = nil,
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Bloodmaw (Ravenous Pack Leader)

map.nodes[46406340] = Rare({
    id = nil,
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Emperor Pitfang

map.nodes[19904520] = Rare({
    id = nil,
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Escaped Cutthroat

map.nodes[64004370] = Rare({
    id = nil,
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Flamekeeper Graz

map.nodes[52808720] = Rare({
    id = nil,
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Gar'loc

map.nodes[49907480] = Rare({
    id = nil,
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Plaguehart

map.nodes[31707910] = Rare({
    id = nil,
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Rustul Titancap

map.nodes[64207310] = Rare({
    id = nil,
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Sandres the Relicbearer

map.nodes[78402380] = Rare({
    id = nil,
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Shallowshell the Clacker

map.nodes[59306390] = Rare({
    id = nil,
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Springbubble

map.nodes[60201630] = Rare({
    id = nil,
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Tempest Lord Incarnus

map.nodes[57301840] = Rare({
    id = nil,
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Twice-Stinger the Wretched (Silkwing Swarmer)

map.nodes[56703430] = Rare({
    id = nil,
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Warphorn

--------------------------------- BONUS RARES ---------------------------------

map.nodes[16906120] = Rare({
    id = nil,
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Alunira

map.nodes[76303920] = Rare({
    id = nil,
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Matriarch Charfuria

map.nodes[72603750] = Rare({
    id = nil,
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Sweetspark the Oozeful

map.nodes[76403660] = Rare({
    id = nil,
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Tephratennae

map.nodes[26105400] = Rare({
    id = nil,
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Violet Hold Prisoner (Kereke or Zovex)

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[38007960] = Treasure({
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Dalaran Sewer Turtle

map.nodes[61901680] = Treasure({
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Earthen Coffer

map.nodes[77503690] = Treasure({
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Elemental Geode

map.nodes[63804310] = Treasure({
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Forgotten Axe

map.nodes[56306420] = Treasure({
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Infused Cinderbrew

map.nodes[81402060] = Treasure({
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Jade Pearl

map.nodes[82204570] = Treasure({
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Keeper's Stash

map.nodes[37706300] = Treasure({
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Lionel

map.nodes[60302080] = Treasure({
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Lost Mosswool

map.nodes[54806980] = Treasure({
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- U'llwort The Self-Exiled

map.nodes[53501440] = Treasure({
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Weary Water Elemental

map.nodes[59701950] = Treasure({
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Web-wrapped Axe

map.nodes[82502480] = Treasure({
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Titan Console

map.nodes[57501540] = Treasure({
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Watcher of the North

map.nodes[39508720] = Treasure({
    rewards = {Achievement({id = nil, criteria = nil})}
}) -- Watcher of the South

-------------------------------------------------------------------------------
-------------------------------- DRAGON GLYPHS --------------------------------
-------------------------------------------------------------------------------

map.nodes[79601800] = FlightGlyph({rewards = Achievement({id = 40152})}) -- Three Shields

-------------------------------------------------------------------------------
--------------------------------- DRAGONRACES ---------------------------------
-------------------------------------------------------------------------------

map.nodes[53006800] = DragonRace() -- Basin Bypass, Boskroot Basin
map.nodes[46003300] = DragonRace() -- Dornogal Drift, Dornogal
map.nodes[28008100] = DragonRace() -- Orecreg's Doglegs, Orecreg
map.nodes[35004300] = DragonRace() -- Storm's Watch Survey, Storm's Watch
map.nodes[59002100] = DragonRace() -- Thunderhead Trail, Thunderhead Peak
map.nodes[63004600] = DragonRace() -- The Wold Ways, south of Mourning Rise
