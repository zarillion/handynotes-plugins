-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

local Rare = ns.node.Rare
local Treasure = ns.node.Treasure

local Dragonglyph = ns.node.Dragonglyph
local Dragonrace = ns.node.Dragonrace
local Flag = ns.node.Flag

local Achievement = ns.reward.Achievement

local POI = ns.poi.POI

-------------------------------------------------------------------------------

local map = Map({id = 2151, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[42635736] = Rare({
    id = 200681,
    quest = 74341,
    note = L['in_small_cave'],
    pois = {POI({42565425, 40715404, 40015641})}
}) -- Bonesifter Marwak

-- map.nodes[] = Rare({
--     id = 200610,
--     quest = 74340
-- }) -- Duzalgor

-- map.nodes[] = Rare({
--     id = 200537,
--     quest = 74337
-- }) -- Gahz'raxes

-- map.nodes[] = Rare({
--     id = 200717,
--     quest = 74342
-- }) -- Galakhad

-- map.notes[] = Rare({
--     id = 200721,
--     quest = 74343
-- }) -- Grugoth the Hullcrusher

-- map.notes[] = Rare({
--     id = 200579,
--     quest = 74338
-- }) -- Ishyra

map.nodes[61385430] = Rare({
    id = 200885,
    quest = 74344,
    note = L['in_small_cave'],
    poi = {POI({63155389})}
}) -- Lady Shaz'ra

map.nodes[70763874] = Rare({
    id = 201181,
    quest = 74346,
    note = L['in_small_cave'],
    pois = {POI({722113973})}
}) -- Mad-Eye Carrey
-- 201184 (Navigator Bi-Yun)
-- 201182 (First Mate Ovdah)

-- map.notes[] = Rare({
--     id = 200978,
--     quest = 74350
-- }) -- Pyrachniss

-- map.notes[] = Rare({
--     id = 200600,
--     quest = 74339
-- }) -- Reisa the Drowned

map.nodes[60484373] = Rare({
    id = nil,
    quest = nil,
    note = L['in_small_cave'],
    pois = {POI({5948225})}
}) -- Vakren the Hunter

map.nodes[76736414] = Rare({
    id = 200904,
    quest = nil,
    note = L['in_small_cave'],
    pois = {POI({75356707, 74136633, 74016326, 75616214})}
}) -- Veltrax

-- map.nodes[] = Rare({
--     id = 200960,
--     quest = 74348
-- }) -- Warden Entrix

-- map.notes[] = Rare({
--     id = 201013,
--     quest = 74347
-- }) -- Wyrmslayer Angvardi

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[70606555] = Treasure({quest = nil}) -- Forbidden Hoard

-------------------------------------------------------------------------------
------------------ DRAGONSCALE EXPEDITION: THE HIGHEST PEAKS ------------------
-------------------------------------------------------------------------------

map.nodes[80464835] = Flag({quest = nil})

-------------------------------------------------------------------------------
-------------------------------- DRAGON GLYPHS --------------------------------
-------------------------------------------------------------------------------

map.nodes[64532385] = Dragonglyph({
    rewards = {Achievement({id = 17411, criteria = 3})}
}) -- Forbidden Reach Glyph Hunger: Fragstone Vault

map.nodes[84092412] = Dragonglyph({
    rewards = {Achievement({id = 17411, criteria = 4})}
}) -- Forbidden Reach Glyph Hunger: Dragonskull Island

map.nodes[81635017] = Dragonglyph({
    rewards = {Achievement({id = 17411, criteria = 5})}
}) -- Forbidden Reach Glyph Hunger: Sunder Mountain

map.nodes[48316624] = Dragonglyph({
    rewards = {Achievement({id = 17411, criteria = 6})}
}) -- Forbidden Reach Glyph Hunger: War Creche

map.nodes[60506171] = Dragonglyph({
    rewards = {Achievement({id = 17411, criteria = 7})}
}) -- Forbidden Reach Glyph Hunger: Talonlord's Perch

-------------------------------------------------------------------------------
--------------------------------- DRAGONRACES ---------------------------------
-------------------------------------------------------------------------------

map.nodes[65164656] = Dragonrace({
    rewards = {
        Achievement({id = 17279, criteria = 1, oneline = true}), -- normal bronze
        Achievement({id = 17280, criteria = 1, oneline = true}), -- normal silver
        Achievement({id = 17281, criteria = 1, oneline = true}) -- normal gold
    }
}) -- Stormsunder Crater

map.nodes[651846532] = Dragonrace({
    rewards = {
        Achievement({id = 17279, criteria = 3, oneline = true}), -- normal bronze
        Achievement({id = 17280, criteria = 3, oneline = true}), -- normal silver
        Achievement({id = 17281, criteria = 3, oneline = true}) -- normal gold
    }
}) -- Aerie Chasm Cruise

map.nodes[49335595] = Dragonrace({
    rewards = {
        Achievement({id = 17279, criteria = 6, oneline = true}), -- normal bronze
        Achievement({id = 17280, criteria = 6, oneline = true}), -- normal silver
        Achievement({id = 17281, criteria = 6, oneline = true}) -- normal gold
    }
}) -- Forbidden Reach Ramble
