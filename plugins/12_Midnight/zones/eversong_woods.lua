-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Rare = ns.node.Rare
local SkyridingGlyph = ns.node.SkyridingGlyph
local Telescope = ns.node.Telescope
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement

-------------------------------------------------------------------------------

local map = Map({id = 2395, settings = true})
local smc = Map({id = 2393, settings = true}) -- Silvermoon City

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[10001000] = Rare({
    id = 246332,
    quest = nil, -- 91280 ?
    rewards = {Achievement({id = 61507, criteria = 110166})}
}) -- Warden of Weeds

map.nodes[10001500] = Rare({
    id = 246633,
    quest = nil, -- 91315 ?
    rewards = {Achievement({id = 61507, criteria = 110167})}
}) -- Harried Hawkstrider

map.nodes[10002000] = Rare({
    id = 240129,
    quest = nil, -- 92392 ?
    rewards = {Achievement({id = 61507, criteria = 110168})}
}) -- Overfester Hydra

map.nodes[10002500] = Rare({
    id = 250582,
    quest = nil, -- 92366 ?
    rewards = {Achievement({id = 61507, criteria = 110169})}
}) -- Bloated Snapdragon

map.nodes[10003000] = Rare({
    id = 250719,
    quest = nil, -- 92391 ?
    rewards = {Achievement({id = 61507, criteria = 110170})}
}) -- Cre'van

map.nodes[10003500] = Rare({
    id = 250683,
    quest = nil, -- 92389 ?
    rewards = {Achievement({id = 61507, criteria = 110171})}
}) -- Coralfang

map.nodes[10004000] = Rare({
    id = 250754,
    quest = nil, -- 92393 ?
    rewards = {Achievement({id = 61507, criteria = 110172})}
}) -- Lady Liminus

map.nodes[40198539] = Rare({
    id = 250876,
    quest = 92409, -- 94689
    rewards = {Achievement({id = 61507, criteria = 110173})}
}) -- Terrinor

map.nodes[10005000] = Rare({
    id = 250841,
    quest = nil, -- 92404 ?
    rewards = {Achievement({id = 61507, criteria = 110174})}
}) -- Bad Zed

map.nodes[10005500] = Rare({
    id = 250780,
    quest = nil, -- 92395 ?
    rewards = {Achievement({id = 61507, criteria = 110175})}
}) -- Waverly

map.nodes[10006000] = Rare({
    id = 250826,
    quest = nil, -- 92403 ?
    rewards = {Achievement({id = 61507, criteria = 110176})}
}) -- Banuran

map.nodes[59207920] = Rare({ -- wowhead beta data
    id = 250806,
    quest = nil, -- 92399 ?
    rewards = {Achievement({id = 61507, criteria = 110177})}
}) -- Lost Guardian

map.nodes[42316891] = Rare({
    id = 255302,
    quest = 93550, -- 94694
    rewards = {Achievement({id = 61507, criteria = 110178})}
}) -- Duskburn

map.nodes[10007500] = Rare({
    id = 255329,
    quest = nil, -- 93555 ?
    rewards = {Achievement({id = 61507, criteria = 110179})}
}) -- Malfunctioning Construct

map.nodes[10008000] = Rare({
    id = 255348,
    quest = nil, -- 93561 ?
    rewards = {Achievement({id = 61507, criteria = 110180})}
}) -- Dame Bloodshed

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[12501500] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 61960, criteria = 111471})}
}) -- Rookery Cache

map.nodes[38897606] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 61960, criteria = 111472})}
}) -- Triple-Locked Safebox

map.nodes[12502500] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 61960, criteria = 111473})}
}) -- Gift of the Phoenix

map.nodes[43276949] = Treasure({
    quest = 94747, -- 93893
    rewards = {
        Achievement({id = 61960, criteria = 111474}),
        ns.reward.Item({item = 262616})
    }
}) -- Forgotten Ink and Quill

map.nodes[44614554] = Treasure({
    quest = 94740, -- 93908
    rewards = {Achievement({id = 61960, criteria = 111475})}
}) -- Gilded Armillary Sphere

map.nodes[52344543] = Treasure({
    quest = 93455,
    rewards = {Achievement({id = 61960, criteria = 111476})}
}) -- Antique Nobleman's Signet Ring

map.nodes[60686729] = Treasure({
    quest = 93457,
    rewards = {Achievement({id = 61960, criteria = 111477})}
}) -- Farstrider's Lost Quiver

map.nodes[40436089] = Treasure({
    quest = 86645, -- 93061
    note = L['eversong_woods_stone_vat_of_wine_note'], -- requires 10 Bunch of Ripe Grapes (item 256232) and Instant Yeast (item 256397) from sheri. Stomp on the Grapes then add the yeast. -- todo add to locale
    location = L['eversong_woods_stone_vat_of_wine_location'], -- on a flying platform -- todo add to licale
    rewards = {Achievement({id = 61960, criteria = 111478})}
}) -- Stone Vat of Wine

map.nodes[48737544] = Treasure({
    quest = 91358,
    rewards = {
        Achievement({id = 61960, criteria = 111479}), ns.reward.Pet({id = 4974})
    }
}) -- Burbling Paint Pot

-------------------------------------------------------------------------------
----------------------------- PROFESSION TREASURES ----------------------------
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
------------------------- EVERSONG WOODS GLYPH HUNTER -------------------------
-------------------------------------------------------------------------------

map.nodes[15001000] = SkyridingGlyph({
    rewards = {Achievement({id = 61576, criteria = 110335})}
}) -- The Shining Span

map.nodes[40401011] = SkyridingGlyph({
    rewards = {Achievement({id = 61576, criteria = 110336})}
}) -- Sunstrider Isle

map.nodes[58921954] = SkyridingGlyph({
    rewards = {Achievement({id = 61576, criteria = 110337})}
}) -- Silvermoon City

map.nodes[15001500] = SkyridingGlyph({
    rewards = {Achievement({id = 61576, criteria = 110338})}
}) -- Runestone Shan'dor

map.nodes[15002000] = SkyridingGlyph({
    rewards = {Achievement({id = 61576, criteria = 110339})}
}) -- Path of Dawn

map.nodes[15002500] = SkyridingGlyph({
    rewards = {Achievement({id = 61576, criteria = 110340})}
}) -- Sunsail Anchorage

map.nodes[62616278] = SkyridingGlyph({
    rewards = {Achievement({id = 61576, criteria = 110341})}
}) -- Dawnstar Spire

map.nodes[52466754] = SkyridingGlyph({
    rewards = {Achievement({id = 61576, criteria = 110342})}
}) -- Tranquillien

map.nodes[15004000] = SkyridingGlyph({
    rewards = {Achievement({id = 61576, criteria = 110343})}
}) -- Daggerspine Point

map.nodes[15004500] = SkyridingGlyph({
    rewards = {Achievement({id = 61576, criteria = 110344})}
}) -- Suncrown Tree

map.nodes[43204636] = SkyridingGlyph({
    rewards = {Achievement({id = 61576, criteria = 110345})}
}) -- Fairbreeze Village

-------------------------------------------------------------------------------
------------------------- MIDNIGHT: THE HIGHEST PEAKS -------------------------
-------------------------------------------------------------------------------

map.nodes[40411010] = Telescope({
    quest = 34905 -- placeholder
})
map.nodes[52486750] = Telescope({quest = 94538})
map.nodes[50308417] = Telescope({quest = 94540})
smc.nodes[20227961] = Telescope({quest = 94536, parent = map.id})
smc.nodes[79266076] = Telescope({quest = 94539, parent = map.id})

---------------------------- MIDNIGHT LORE HUNTER -----------------------------

-- note: from all zones in Midnight. move node to the zone when you find it there.

map.nodes[47958820] = Treasure({
    quest = 91841,
    rewards = {Achievement({id = 62104, criteria = 111828})}
}) -- Memorial Plaque

map.nodes[37601378] = Treasure({
    quest = 93563,
    rewards = {Achievement({id = 62104, criteria = 111829})}
}) -- Shrine of Dath'remar

map.nodes[50524347] = Treasure({
    quest = 93564,
    rewards = {Achievement({id = 62104, criteria = 111830})}
}) -- Dead Scar Research

map.nodes[17502500] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 62104, criteria = 111831})}
}) -- Dar'khan's Notes

map.nodes[17503000] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 62104, criteria = 111832})}
}) -- Hawkstrider Husbandry Manual

smc.nodes[38107699] = Treasure({
    quest = 93570,
    rewards = {Achievement({id = 62104, criteria = 111833})}
}) -- Unfinished Sheet Music

map.nodes[17504500] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 62104, criteria = 111773})}
}) -- Tablet of Halazzi

map.nodes[17507000] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 62104, criteria = 111778})}
}) -- Tablet of Filo

map.nodes[17507500] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 62104, criteria = 111823})}
}) -- Tarnished Mural

map.nodes[17508000] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 62104, criteria = 111824})}
}) -- Ancient Runestone

map.nodes[17508500] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 62104, criteria = 111825})}
}) -- Derelict Mural

map.nodes[17509000] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 62104, criteria = 111826})}
}) -- Forgotten Mural

map.nodes[18501000] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 62104, criteria = 111827})}
}) -- A Frayed Scroll

map.nodes[18501500] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 62104, criteria = 111834})}
}) -- Void Armor

map.nodes[18502000] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 62104, criteria = 111835})}
}) -- Ancient Tablet

map.nodes[18502500] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 62104, criteria = 111836})}
}) -- Abandoned Telescope

map.nodes[18511500] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 62104, criteria = 111837})}
}) -- Tainted Page

map.nodes[18512000] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 62104, criteria = 111838})}
}) -- Shadowgraft Harness

-------------------------------- EVER PAINTIG ---------------------------------

map.nodes[20001000] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 62185, criteria = 111993})}
}) -- Sway of Red and Gold

map.nodes[20001500] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 62185, criteria = 112030})}
}) -- Light Consuming

map.nodes[20002000] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 62185, criteria = 112031})}
}) -- Anar'alah Belore

map.nodes[20002500] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 62185, criteria = 112032})}
}) -- Suncrown's Devastation

map.nodes[20003000] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 62185, criteria = 112033})}
}) -- Babble and Brook

map.nodes[39007822] = Treasure({
    rewards = {Achievement({id = 62185, criteria = 112034})}
}) -- Memories of Ghosts

map.nodes[20004000] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 62185, criteria = 112035})}
}) -- Elrendar's Song

