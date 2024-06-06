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

local map = Map({id = 2248, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[16906120] = Rare({
    id = 219281,
    rewards = {Achievement({id = 40435, criteria = 16})}
}) -- Alunira

map.nodes[39408410] = Rare({
    id = 219264,
    rewards = {Achievement({id = 40435, criteria = 5})}
}) -- Bloodmaw

-- map.nodes[00000000] = Rare({
--     id = 221128 ,
--     rewards = {Achievement({id = 40435, criteria = 15})}
-- }) -- Clawbreaker K'zithix

map.nodes[46406340] = Rare({
    id = 219265,
    rewards = {Achievement({id = 40435, criteria = 6})}
}) -- Emperor Pitfang

map.nodes[19904520] = Rare({
    id = 219266,
    rewards = {Achievement({id = 40435, criteria = 9})}
}) -- Escaped Cutthroat

map.nodes[64004370] = Rare({
    id = 219279,
    rewards = {Achievement({id = 40435, criteria = 14})}
}) -- Flamekeeper Graz

map.nodes[52808720] = Rare({
    id = 219268,
    rewards = {Achievement({id = 40435, criteria = 8})}
}) -- Gar'loc

map.nodes[26105401] = Rare({
    id = 222378,
    rewards = {Achievement({id = 40435, criteria = 18})}
}) -- Kereke

-- map.nodes[00000000] = Rare({
--     id = 219270 ,
--     rewards = {Achievement({id = 40435, criteria = 11})}
-- }) -- Kronolith, Might of the Mountain

map.nodes[76303920] = Rare({
    id = 220890,
    rewards = {Achievement({id = 40435, criteria = 22})}
}) -- Matriarch Charfuria

map.nodes[49907480] = Rare({
    id = 219267,
    rewards = {Achievement({id = 40435, criteria = 7})}
}) -- Plaguehart

-- map.nodes[nil] = Rare({
--     id = 222380 ,
--     rewards = {Achievement({id = 40435, criteria = 19})}
-- }) -- Rotfist

map.nodes[31707910] = Rare({
    id = 213115,
    rewards = {Achievement({id = 40435, criteria = 1})}
}) -- Rustul Titancap

map.nodes[64207310] = Rare({
    id = 217534,
    rewards = {Achievement({id = 40435, criteria = 2})}
}) -- Sandres the Relicbearer

map.nodes[78402380] = Rare({
    id = 219278,
    rewards = {Achievement({id = 40435, criteria = 12})}
}) -- Shallowshell the Clacker

map.nodes[59306390] = Rare({
    id = 219262,
    rewards = {Achievement({id = 40435, criteria = 3})}
}) -- Springbubble

map.nodes[72603750] = Rare({
    id = 220883,
    rewards = {Achievement({id = 40435, criteria = 21})}
}) -- Sweetspark the Oozeful

map.nodes[60201630] = Rare({
    id = 219269,
    rewards = {Achievement({id = 40435, criteria = 10})}
}) -- Tempest Lord Incarnus

map.nodes[76403660] = Rare({
    id = 221126,
    rewards = {Achievement({id = 40435, criteria = 20})}
}) -- Tephratennae

map.nodes[57301840] = Rare({
    id = 219271,
    rewards = {Achievement({id = 40435, criteria = 13})}
}) -- Twice-Stinger the Wretched

map.nodes[56703430] = Rare({
    id = 219263,
    rewards = {Achievement({id = 40435, criteria = 4})}
}) -- Warphorn

map.nodes[26105400] = Rare({
    id = 219284,
    rewards = {Achievement({id = 40435, criteria = 17})}
}) -- Zovex

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

-- map.nodes[38007960] = Treasure({
--     rewards = {Achievement({id = 40434, criteria = nil})}
-- }) -- Dalaran Sewer Turtle

-- map.nodes[61901680] = Treasure({
--     rewards = {Achievement({id = 40434, criteria = nil})}
-- }) -- Earthen Coffer

-- map.nodes[77503690] = Treasure({
--     rewards = {Achievement({id = 40434, criteria = nil})}
-- }) -- Elemental Geode

-- map.nodes[63804310] = Treasure({
--     rewards = {Achievement({id = 40434, criteria = nil})}
-- }) -- Forgotten Axe

-- map.nodes[56306420] = Treasure({
--     rewards = {Achievement({id = 40434, criteria = 11})}
-- }) -- Infused Cinderbrew

-- map.nodes[81402060] = Treasure({
--     rewards = {Achievement({id = 40434, criteria = 9})}
-- }) -- Jade Pearl

-- map.nodes[82204570] = Treasure({
--     rewards = {Achievement({id = 40434, criteria = nil})}
-- }) -- Keeper's Stash

-- map.nodes[37706300] = Treasure({
--     rewards = {Achievement({id = 40434, criteria = nil})}
-- }) -- Lionel

-- map.nodes[60302080] = Treasure({
--     rewards = {Achievement({id = 40434, criteria = nil})}
-- }) -- Lost Mosswool

-- map.nodes[54806980] = Treasure({
--     rewards = {Achievement({id = 40434, criteria = nil})}
-- }) -- U'llwort The Self-Exiled

-- map.nodes[53501440] = Treasure({
--     rewards = {Achievement({id = 40434, criteria = nil})}
-- }) -- Weary Water Elemental

-- map.nodes[59701950] = Treasure({
--     rewards = {Achievement({id = 40434, criteria = nil})}
-- }) -- Web-wrapped Axe

-- map.nodes[82502480] = Treasure({
--     rewards = {Achievement({id = 40434, criteria = nil})}
-- }) -- Titan Console

-- map.nodes[57501540] = Treasure({
--     rewards = {Achievement({id = 40434, criteria = nil})}
-- }) -- Watcher of the North

-- map.nodes[39508720] = Treasure({
--     rewards = {Achievement({id = 40434, criteria = nil})}
-- }) -- Watcher of the South

-------------------------------------------------------------------------------
-------------------------------- DRAGON GLYPHS --------------------------------
-------------------------------------------------------------------------------

-- map.nodes[79601800] = FlightGlyph({rewards = Achievement({id = 40152})}) -- Three Shields

-------------------------------------------------------------------------------
--------------------------------- DRAGONRACES ---------------------------------
-------------------------------------------------------------------------------

-- map.nodes[53006800] = DragonRace() -- Basin Bypass, Boskroot Basin
-- map.nodes[46003300] = DragonRace() -- Dornogal Drift, Dornogal
-- map.nodes[28008100] = DragonRace() -- Orecreg's Doglegs, Orecreg
-- map.nodes[35004300] = DragonRace() -- Storm's Watch Survey, Storm's Watch
-- map.nodes[59002100] = DragonRace() -- Thunderhead Trail, Thunderhead Peak
-- map.nodes[63004600] = DragonRace() -- The Wold Ways, south of Mourning Rise
