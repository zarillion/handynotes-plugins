-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

-- local Rare = ns.node.Rare
local SkyridingGlyph = ns.node.SkyridingGlyph
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Pet = ns.reward.Pet
local Transmog = ns.reward.Transmog

local Path = ns.poi.Path
local POI = ns.poi.POI

-------------------------------------------------------------------------------

local map = Map({id = 2248, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

-- map.nodes[16906120] = Rare({
--     id = 219281,
--     rewards = {Achievement({id = 40435, criteria = 16})}
-- }) -- Alunira

-- map.nodes[39408410] = Rare({
--     id = 219264,
--     rewards = {Achievement({id = 40435, criteria = 5})}
-- }) -- Bloodmaw

-- map.nodes[00000000] = Rare({
--     id = 221128 ,
--     rewards = {Achievement({id = 40435, criteria = 15})}
-- }) -- Clawbreaker K'zithix

-- map.nodes[46406340] = Rare({
--     id = 219265,
--     rewards = {Achievement({id = 40435, criteria = 6})}
-- }) -- Emperor Pitfang

-- map.nodes[19904520] = Rare({
--     id = 219266,
--     rewards = {Achievement({id = 40435, criteria = 9})}
-- }) -- Escaped Cutthroat

-- map.nodes[64004370] = Rare({
--     id = 219279,
--     rewards = {Achievement({id = 40435, criteria = 14})}
-- }) -- Flamekeeper Graz

-- map.nodes[52808720] = Rare({
--     id = 219268,
--     rewards = {Achievement({id = 40435, criteria = 8})}
-- }) -- Gar'loc

-- map.nodes[26105401] = Rare({
--     id = 222378,
--     rewards = {Achievement({id = 40435, criteria = 18})}
-- }) -- Kereke

-- map.nodes[00000000] = Rare({
--     id = 219270 ,
--     rewards = {Achievement({id = 40435, criteria = 11})}
-- }) -- Kronolith, Might of the Mountain

-- map.nodes[76303920] = Rare({
--     id = 220890,
--     rewards = {Achievement({id = 40435, criteria = 22})}
-- }) -- Matriarch Charfuria

-- map.nodes[49907480] = Rare({
--     id = 219267,
--     rewards = {Achievement({id = 40435, criteria = 7})}
-- }) -- Plaguehart

-- map.nodes[nil] = Rare({
--     id = 222380 ,
--     rewards = {Achievement({id = 40435, criteria = 19})}
-- }) -- Rotfist

-- map.nodes[31707910] = Rare({
--     id = 213115,
--     rewards = {Achievement({id = 40435, criteria = 1})}
-- }) -- Rustul Titancap

-- map.nodes[64207310] = Rare({
--     id = 217534,
--     rewards = {Achievement({id = 40435, criteria = 2})}
-- }) -- Sandres the Relicbearer

-- map.nodes[78402380] = Rare({
--     id = 219278,
--     rewards = {Achievement({id = 40435, criteria = 12})}
-- }) -- Shallowshell the Clacker

-- map.nodes[59306390] = Rare({
--     id = 219262,
--     rewards = {Achievement({id = 40435, criteria = 3})}
-- }) -- Springbubble

-- map.nodes[72603750] = Rare({
--     id = 220883,
--     rewards = {Achievement({id = 40435, criteria = 21})}
-- }) -- Sweetspark the Oozeful

-- map.nodes[60201630] = Rare({
--     id = 219269,
--     rewards = {Achievement({id = 40435, criteria = 10})}
-- }) -- Tempest Lord Incarnus

-- map.nodes[76403660] = Rare({
--     id = 221126,
--     rewards = {Achievement({id = 40435, criteria = 20})}
-- }) -- Tephratennae

-- map.nodes[57301840] = Rare({
--     id = 219271,
--     rewards = {Achievement({id = 40435, criteria = 13})}
-- }) -- Twice-Stinger the Wretched

-- map.nodes[56703430] = Rare({
--     id = 219263,
--     rewards = {Achievement({id = 40435, criteria = 4})}
-- }) -- Warphorn

-- map.nodes[26105400] = Rare({
--     id = 219284,
--     rewards = {Achievement({id = 40435, criteria = 17})}
-- }) -- Zovex

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

-- map.nodes[38007960] = Treasure({
--     quest = nil,
--     rewards = {Achievement({id = 40434, criteria = nil})}
-- }) -- Dalaran Sewer Turtle

-- map.nodes[61901680] = Treasure({
--     quest = nil,
--     rewards = {Achievement({id = 40434, criteria = nil})}
-- }) -- Earthen Coffer

-- map.nodes[77503690] = Treasure({
--     quest = nil,
--     rewards = {Achievement({id = 40434, criteria = nil})}
-- }) -- Elemental Geode

-- map.nodes[63804310] = Treasure({
--     quest = nil,
--     rewards = {Achievement({id = 40434, criteria = nil})}
-- }) -- Forgotten Axe

-- map.nodes[56306420] = Treasure({
--     quest = nil,
--     rewards = {Achievement({id = 40434, criteria = 11})}
-- }) -- Infused Cinderbrew

-- map.nodes[81402060] = Treasure({
--     quest = nil,
--     rewards = {Achievement({id = 40434, criteria = 9})}
-- }) -- Jade Pearl

-- map.nodes[82204570] = Treasure({
--     quest = nil,
--     rewards = {Achievement({id = 40434, criteria = nil})}
-- }) -- Keeper's Stash

-- map.nodes[37706300] = Treasure({
--     quest = nil,
--     rewards = {Achievement({id = 40434, criteria = nil})}
-- }) -- Lionel

-- 38074358 223247 Thak's Treasure
map.nodes[36954218] = Treasure({
    quest = 82246, -- 82245 ?
    rewards = {Achievement({id = 40434, criteria = 68203})}
}) -- Thak's Treasure

map.nodes[59732868] = Treasure({ -- 59602460, 59102708  follow {npc:222963}
    quest = nil, -- missed to collect this
    rewards = {
        Achievement({id = 40434, criteria = 68204}), --
        Pet({item = 224450, id = 4527}) -- Lil' Moss Rosy
    },
    pois = {
        POI({59602460, 59102708, 59732868}), -- Lost Mosswool
        Path({59602460, 59102708, 59732868}) -- Walking Path
    }
}) -- Mosswool Flower (Lost Mosswool)

-- map.nodes[54806980] = Treasure({ -- 55006564
--     quest = nil,
--     rewards = {Achievement({id = 40434, criteria = nil})}
-- }) -- U'llwort The Self-Exiled

map.nodes[53951920] = Treasure({
    -- Bring back the Elemental Pearl / Hand the pearl to the water elemental.
    quest = {82134, 82252, 83244},
    rewards = {Achievement({id = 40434, criteria = 68201})},
    pois = {
        POI({53081855}) -- Elemental Pearl {item:221504}
    }
}) -- Mysterious Orb (Weary Water Elemental)

map.nodes[59122348] = Treasure({
    quest = 82715,
    note = L['inside_building'],
    rewards = {
        Achievement({id = 40434, criteria = 68209}), --
        Transmog({item = 224290, slot = L['1h_axe']}) -- Storm Defender's Axe
    }
}) -- Defender's Axe (Web-wrapped Axe)

-- map.nodes[82502480] = Treasure({
--     quest = nil,
--     rewards = {Achievement({id = 40434, criteria = nil})}
-- }) -- Titan Console

-- map.nodes[57501540] = Treasure({
--     quest = nil,
--     rewards = {Achievement({id = 40434, criteria = nil})}
-- }) -- Watcher of the North

-- map.nodes[39508720] = Treasure({
--     quest = nil,
--     rewards = {Achievement({id = 40434, criteria = nil})}
-- }) -- Watcher of the South

-------------------------------------------------------------------------------
-------------------------- ISLE OF DORN GLYPH HUNTER --------------------------
-------------------------------------------------------------------------------

map.nodes[75752222] = SkyridingGlyph({
    rewards = {Achievement({id = 40166, criteria = 67178})}
}) -- The Three Shields

map.nodes[23145854] = SkyridingGlyph({
    rewards = {Achievement({id = 40166, criteria = 69237})}
}) -- Dhar Oztan

map.nodes[37954091] = SkyridingGlyph({
    rewards = {Achievement({id = 40166, criteria = 69238})}
}) -- Storm's Watch

map.nodes[44467981] = SkyridingGlyph({
    rewards = {Achievement({id = 40166, criteria = 69239})}
}) -- Dhar Durgaz

map.nodes[68247178] = SkyridingGlyph({
    rewards = {Achievement({id = 40166, criteria = 69240})}
}) -- Sunken Shield

map.nodes[47762670] = SkyridingGlyph({
    rewards = {Achievement({id = 40166, criteria = 69241})}
}) -- Thul Medran

map.nodes[56251778] = SkyridingGlyph({
    rewards = {Achievement({id = 40166, criteria = 69242})}
}) -- Thunderhead Peak

map.nodes[78224276] = SkyridingGlyph({
    rewards = {Achievement({id = 40166, criteria = 69243})}
}) -- Cinderbrew Meadery

map.nodes[62114493] = SkyridingGlyph({
    rewards = {Achievement({id = 40166, criteria = 69244})}
}) -- Mourning Rise

map.nodes[71904721] = SkyridingGlyph({
    rewards = {Achievement({id = 40166, criteria = 69245})}
}) -- Ironwold
