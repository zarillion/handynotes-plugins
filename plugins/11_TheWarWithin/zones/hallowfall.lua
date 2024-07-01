-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible
-- local Rare = ns.node.Rare
local Treasure = ns.node.Treasure

local LoreObject = ns.node.LoreObject
local SkyridingGlyph = ns.node.SkyridingGlyph

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Recipe = ns.reward.Recipe
local Toy = ns.reward.Toy

local ItemStatus = ns.tooltip.ItemStatus
local ReputationGain = ns.tooltip.ReputationGain

local POI = ns.poi.POI
local Path = ns.poi.Path
local Circle = ns.poi.Circle

-------------------------------------------------------------------------------

local map = Map({id = 2215, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

-- map.nodes[06002000] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40851, criteria = 69716})}
-- }) -- Beledar's Spawn

-- map.nodes[08002000] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40851, criteria = 69718})}
-- }) -- Brineslash

-- map.nodes[10002000] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40851, criteria = 69720})}
-- }) -- Crazed Cabbage Smacker

-- map.nodes[12002000] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40851, criteria = 69722})}
-- }) -- Croakit

-- map.nodes[14002000] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40851, criteria = 69721})}
-- }) -- Deathpetal

-- map.nodes[16002000] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40851, criteria = 69717})}
-- }) -- Deathtide

-- map.nodes[18002000] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40851, criteria = 69703})}
-- }) -- Deepfiend Azellix

-- map.nodes[20002000] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40851, criteria = 69724})}
-- }) -- Duskshadow

-- map.nodes[22002000] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40851, criteria = 69727})}
-- }) -- Finclaw Bloodtide

-- map.nodes[24002000] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40851, criteria = 69707})}
-- }) -- Funglour

-- map.nodes[26002000] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40851, criteria = 69706})}
-- }) -- Grimslice

-- map.nodes[28002000] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40851, criteria = 69712})}
-- }) -- Horror of the Shallows

-- map.nodes[30002000] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40851, criteria = 69704})}
-- }) -- Ixlorb the Weaver

-- map.nodes[32002000] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40851, criteria = 69710})}
-- }) -- Lytfang the Lost

-- map.nodes[06002200] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40851, criteria = 69719})}
-- }) -- Moth'ethk

-- map.nodes[08002200] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40851, criteria = 69705})}
-- }) -- Murkshade

-- map.nodes[10002200] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40851, criteria = 69728})}
-- }) -- Murkspike

-- map.nodes[12002200] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40851, criteria = 69725})}
-- }) -- Parasidous

-- map.nodes[14002200] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40851, criteria = 69715})}
-- }) -- Pride of Beledar

-- map.nodes[14002200] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40851, criteria = 69726})}
-- }) -- Ravageant

-- map.nodes[16002200] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40851, criteria = 69714})}
-- }) -- Sir Alastair Purefire

-- map.nodes[18002200] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40851, criteria = 69709})}
-- }) -- Sloshmuck

-- map.nodes[20002200] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40851, criteria = 69713})}
-- }) -- Strength of Beledar

-- map.nodes[22002200] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40851, criteria = 69711})}
-- }) -- The Perchfather

-- map.nodes[24002200] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40851, criteria = 69708})}
-- }) -- The Taskmaker

-- map.nodes[26002200] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40851, criteria = 69723})}
-- }) -- Toadstomper

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[40035112] = Treasure({
    quest = nil,
    note = L['arathi_loremaster_note'],
    rewards = {
        Achievement({id = 40848, criteria = 69695}), --
        Toy({item = 225659}) -- Arathi Book Collection
    },
    pois = {
        POI({68684159}), Path({Circle({origin = 68684159, radius = 2})}), -- Palawltar's Codez of Dimensional Structure
        POI({69344394}), Path({Circle({origin = 69344394, radius = 2})}), -- Care and Feeding of the Imperial Lynx
        POI({64182812}), Path({Circle({origin = 64182812, radius = 2})}), -- Shadow Curfew Guidelines
        POI({56586518}), Path({Circle({origin = 56586518, radius = 2})}), -- Beledar - The Emperor's Vision
        POI({70225684}), Path({Circle({origin = 70225684, radius = 2})}), -- The Song of Renilash
        POI({48153959}), Path({Circle({origin = 48153959, radius = 2})}) -- The Big Book of Arathi Idioms
    }
}) -- Arathi Loremaster

map.nodes[41795827] = Treasure({
    quest = nil,
    note = L['caesper_note'],
    rewards = {
        Achievement({id = 40848, criteria = 69692}),
        Recipe({item = 225639, profession = 185}) -- Recipe: Exquisitely Eviscerated Muscle
    },
    pois = {
        POI({69254397}), -- Torran Dellain
        Path({Circle({origin = 69254397, radius = 2})})
    }
}) -- Caesper

map.nodes[59525966] = Treasure({
    quest = nil,
    location = L['in_cave'],
    note = L['dark_ritual_note'],
    rewards = {
        Achievement({id = 40848, criteria = 69694}),
        Item({item = 225693, note = L['trinket']}) -- Shadowed Essence
    },
    pois = {
        POI({59656067}) -- Entrance
    }
}) -- Dark Ritual

map.nodes[57652744] = Treasure({
    quest = nil,
    location = L['in_small_cave'],
    note = L['illuminated_footlocker_note'],
    rewards = {
        Achievement({id = 40848, criteria = 69701}), --
        Toy({item = 224552}) -- Cave Spelunker's Torch
    },
    pois = {POI({57642740})} -- Entrance
}) -- Illuminated Footlocker

local IllusiveKobyssLure = Class('IllusiveKobyssLure', Treasure, {
    quest = nil,
    rlabel = ns.status.Gray('{item:225641}'),
    fgroup = 'illusive_kobyss_lure',
    rewards = {
        Achievement({id = 40848, criteria = 69696}), --
        Toy({item = 225641}) -- Illusive Kobyss Lure
    }
}) -- Illusive Kobyss Lure

function IllusiveKobyssLure.getters:note()
    local note = L['illusive_kobyss_lure_note']
    note = note .. ItemStatus(225554, 1, '{item:225554}') -- Sunless Lure
    note = note .. ItemStatus(225558, 1, '{item:225558}') -- Murkfin Lure
    note = note .. ItemStatus(225559, 1, '{item:225559}') -- Hungering Shimmerfin
    note = note .. ItemStatus(225560, 1, '{item:225560}') -- Ragefin Necrostaff
    return note
end

map.nodes[55362720] = IllusiveKobyssLure({
    label = '{item:225554}',
    location = L['sunless_lure_location']
}) -- Sunless Lure

map.nodes[47611854] = IllusiveKobyssLure({
    label = '{item:225558}',
    location = L['murkfin_lure_location']
}) -- Murkfin Lure

map.nodes[50655037] = IllusiveKobyssLure({
    label = '{item:225559}',
    location = L['hungering_shimmerfin_location']
}) -- Hungering Shimmerfin

map.nodes[34965465] = IllusiveKobyssLure({
    label = '{item:225560}',
    location = L['ragefin_necrostaff_location']
}) -- Ragefin Necrostaff

map.nodes[55726960] = Treasure({
    quest = nil,
    location = L['jewel_of_the_cliffs_location'],
    rewards = {
        Achievement({id = 40848, criteria = 69697}), --
        Item({item = 224580}) -- Massive Sapphire Chunk
    }
}) -- Jewel of the Cliffs

map.nodes[50071385] = Treasure({
    quest = nil,
    note = L['lost_necklace_note'],
    rewards = {
        Achievement({id = 40848, criteria = 69699}),
        Item({item = 224575, note = L['neck']}) -- Lightbearer's Pendant
    }
}) -- Lost Necklace

map.nodes[30233875] = Treasure({
    quest = nil,
    location = L['priory_satchel_location'],
    rewards = {
        Achievement({id = 40848, criteria = 69698}),
        Item({item = 224578, note = L['bag']}) -- Arathor Courier's Satchel
    }
}) -- Priory Satchel

map.nodes[22002400] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 40848, criteria = 69700})}
}) -- Sky-Captains' Sunken Cache

map.nodes[55145185] = Treasure({
    quest = nil,
    requires = ns.requirement.Item(225335), -- Smuggler's Key
    location = L['smugglers_treasure_location'],
    note = L['smugglers_treasure_note'],
    rewards = {
        Achievement({id = 40848, criteria = 69693}), --
        Item({item = 226021}) -- Jar of Pickels
    },
    pois = {POI({55425164})} -- Dead Arathi
}) -- Smuggler's Treasure

map.nodes[76765382] = Treasure({
    quest = nil,
    location = L['in_cave'],
    rewards = {Achievement({id = 40848, criteria = 69702})},
    pois = {POI({76105390})} -- Entrance
}) -- Spore-covered Coffer

-------------------------------------------------------------------------------
--------------------------- HALLOWFALL GLYPH HUNTER ---------------------------
-------------------------------------------------------------------------------

map.nodes[62855170] = SkyridingGlyph({
    rewards = {Achievement({id = 40704, criteria = 69255})}
}) -- The Fangs

map.nodes[57363255] = SkyridingGlyph({
    rewards = {Achievement({id = 40704, criteria = 69256})}
}) -- Sina's Yearning

map.nodes[63686555] = SkyridingGlyph({
    rewards = {Achievement({id = 40704, criteria = 69257})}
}) -- Sanguine Grasps

map.nodes[69954421] = SkyridingGlyph({
    rewards = {Achievement({id = 40704, criteria = 69258})}
}) -- Dunelle's Kindness

map.nodes[62750719] = SkyridingGlyph({
    rewards = {Achievement({id = 40704, criteria = 69259})}
}) -- Bleak Sand

map.nodes[43345277] = SkyridingGlyph({
    rewards = {Achievement({id = 40704, criteria = 69260})}
}) -- Mereldar

map.nodes[35443384] = SkyridingGlyph({
    rewards = {Achievement({id = 40704, criteria = 69261})}
}) -- Priory of the Sacred Flame

map.nodes[30715148] = SkyridingGlyph({
    rewards = {Achievement({id = 40704, criteria = 69262})}
}) -- Fortune's Fall

map.nodes[45741243] = SkyridingGlyph({
    rewards = {Achievement({id = 40704, criteria = 69263})}
}) -- Velhan's Claim

map.nodes[57616460] = SkyridingGlyph({
    rewards = {Achievement({id = 40704, criteria = 69264})}
}) -- Tenir's Ascent

-------------------------------------------------------------------------------
------------------------ ACHIEVEMENT: BIBLIO ARCHIVIST ------------------------
-------------------------------------------------------------------------------
-- https://www.wowhead.com/news/arathi-book-collection-toy-summon-a-reading-table-in-the-war-within-342782#news-post-342782

local BiblioBook = Class('BiblioBook', Collectible, {
    icon = 5341597,
    group = ns.groups.BIBLIO_ARCHIVIST,
    note = L['biblio_archivist_note']
})

map.nodes[06001400] = BiblioBook({
    location = L['biblio_book_01_location'],
    rewards = {Achievement({id = 40622, criteria = 68954})}
}) -- The Big Book of Arathi Idioms

map.nodes[08001400] = BiblioBook({
    location = L['biblio_book_02_location'],
    rewards = {Achievement({id = 40622, criteria = 68955})}
}) -- 500 Dishes Using Cave Fish and Mushrooms

map.nodes[10001400] = BiblioBook({
    location = L['biblio_book_03_location'],
    rewards = {Achievement({id = 40622, criteria = 68957})}
}) -- Care and Feeding of the Imperial Lynx

map.nodes[12001400] = BiblioBook({
    location = L['biblio_book_04_location'],
    rewards = {Achievement({id = 40622, criteria = 68958})}
}) -- Light's Gambit Playbook

map.nodes[14001400] = BiblioBook({
    location = L['biblio_book_05_location'],
    rewards = {Achievement({id = 40622, criteria = 68960})}
}) -- From the Depths They Come

map.nodes[48756471] = BiblioBook({
    location = L['biblio_book_06_location'], -- inside the house
    rewards = {Achievement({id = 40622, criteria = 68961})}
}) -- Palawltar's Codex of Dimensional Structure

map.nodes[18001400] = BiblioBook({
    location = L['biblio_book_07_location'],
    rewards = {Achievement({id = 40622, criteria = 68963})}
}) -- Shadow Curfew Guidelines

map.nodes[20001400] = BiblioBook({
    location = L['biblio_book_08_location'],
    rewards = {Achievement({id = 40622, criteria = 68965})}
}) -- Shadow Curfew Journal

map.nodes[22001400] = BiblioBook({
    location = L['biblio_book_09_location'],
    rewards = {Achievement({id = 40622, criteria = 68967})}
}) -- The Song of Renilash

map.nodes[24001400] = BiblioBook({
    location = L['biblio_book_10_location'],
    rewards = {Achievement({id = 40622, criteria = 68968})}
}) -- Beledar - The Emperor's Vision

-------------------------------------------------------------------------------
------------------------- ACHIEVEMENT: LOST AND FOUND -------------------------
-------------------------------------------------------------------------------

local Momento = Class('Momento', Collectible, {
    icon = 4635200,
    group = ns.groups.LOST_AND_FOUND,
    note = L['lost_and_found_note']
})

map.nodes[06001600] = Momento({
    location = L['broken_bracelet_location'],
    rewards = {Achievement({id = 40618, criteria = 68932})}
}) -- Broken Bracelet

map.nodes[08001600] = Momento({
    location = L['stuffed_lynx_toy_location'],
    rewards = {Achievement({id = 40618, criteria = 68933})}
}) -- Stuffed Lynx Toy

map.nodes[10001600] = Momento({
    location = L['tarnished_compass_location'],
    rewards = {Achievement({id = 40618, criteria = 68934})}
}) -- Tarnished Compass

map.nodes[12001600] = Momento({
    location = L['sturdy_locket_location'],
    rewards = {Achievement({id = 40618, criteria = 68935})}
}) -- Sturdy Locket

map.nodes[14001600] = Momento({
    location = L['wooden_figure_location'],
    rewards = {Achievement({id = 40618, criteria = 68937})}
}) -- Wooden Figure

map.nodes[16001600] = Momento({
    location = L['calcified_journal_location'],
    rewards = {Achievement({id = 40618, criteria = 68940})}
}) -- Calcified Journal

map.nodes[18001600] = Momento({
    location = L['ivory_tinderbox_location'],
    rewards = {Achievement({id = 40618, criteria = 68942})}
}) -- Ivory Tinderbox

map.nodes[20001600] = Momento({
    location = L['dented_spear_location'],
    rewards = {Achievement({id = 40618, criteria = 68943})}
}) -- Dented Spear

map.nodes[22001600] = Momento({
    location = L['filigreed_cleric_location'],
    rewards = {Achievement({id = 40618, criteria = 68945})}
}) -- Filigreed Cleric

-------------------------------------------------------------------------------
------------------------ ACHIEVEMENT: THE MISSING LYNX ------------------------
-------------------------------------------------------------------------------

local MissingLynx = Class('MissingLynx', Collectible, {
    icon = 5689905,
    group = ns.groups.MISSING_LYNX,
    note = L['missing_lynx_note']
})

map.nodes[06001800] = MissingLynx({
    location = L['magpie_location'],
    rewards = {Achievement({id = 40625, criteria = 68975})}
}) -- Magpie

map.nodes[42695384] = MissingLynx({
    location = L['evan_location'],
    rewards = {Achievement({id = 40625, criteria = 68998})}
}) -- Evan

map.nodes[42735388] = MissingLynx({
    location = L['emery_location'],
    rewards = {Achievement({id = 40625, criteria = 68999})}
}) -- Emery

map.nodes[42305381] = MissingLynx({
    location = L['jinx_location'],
    rewards = {Achievement({id = 40625, criteria = 69000})}
}) -- Jinx

map.nodes[69274372] = MissingLynx({
    location = L['moog_location'],
    rewards = {Achievement({id = 40625, criteria = 69001})}
}) -- Moog

map.nodes[69274372] = MissingLynx({
    location = L['iggy_location'],
    rewards = {Achievement({id = 40625, criteria = 69002})}
}) -- Iggy

map.nodes[18001800] = MissingLynx({
    location = L['nightclaw_location'],
    rewards = {Achievement({id = 40625, criteria = 69003})}
}) -- Nightclaw

map.nodes[63792932] = MissingLynx({
    location = L['purrlock_location'],
    rewards = {Achievement({id = 40625, criteria = 69004})}
}) -- Purrlock

map.nodes[63262811] = MissingLynx({
    location = L['shadowpouncer_location'],
    rewards = {Achievement({id = 40625, criteria = 69005})}
}) -- Shadowpouncer

map.nodes[61193054] = MissingLynx({
    location = L['miral_murder_mittens_location'],
    rewards = {Achievement({id = 40625, criteria = 69006})}
}) -- Miral Murder-Mittens

map.nodes[64441857] = MissingLynx({
    location = L['fuzzy_location'],
    rewards = {Achievement({id = 40625, criteria = 69007})}
}) -- Fuzzy

map.nodes[64441857] = MissingLynx({
    location = L['furball_location'],
    rewards = {Achievement({id = 40625, criteria = 69008})}
}) -- Furball

map.nodes[61922081] = MissingLynx({
    location = L['dander_location'],
    rewards = {Achievement({id = 40625, criteria = 69009})}
}) -- Dander

map.nodes[42145371] = MissingLynx({
    location = L['gobbo_location'],
    rewards = {Achievement({id = 40625, criteria = 69010})}
}) -- Gobbo

-------------------------------------------------------------------------------
--------------------- ACHIEVEMENT: KHAZ ALGAR LORE HUNTER ---------------------
-------------------------------------------------------------------------------

map.nodes[62214557] = LoreObject({
    -- rlabel = ReputationGain(250, 2570), -- Hallowfall Arathi
    rewards = {Achievement({id = 40762, criteria = 69383})}
}) -- A Scout's Journal

map.nodes[71433667] = LoreObject({
    -- rlabel = ReputationGain(250, 2570), -- Hallowfall Arathi
    rewards = {Achievement({id = 40762, criteria = 69382})}
}) -- A Tattered Note

map.nodes[78244041] = LoreObject({
    rlabel = ReputationGain(250, 2570), -- Hallowfall Arathi
    rewards = {Achievement({id = 40762, criteria = 69381})}
}) -- A Weathered Tome

map.nodes[25085371] = LoreObject({
    -- rlabel = ReputationGain(250, 2570), -- Hallowfall Arathi
    rewards = {Achievement({id = 40762, criteria = 69380})}
}) -- A Worn Down Book

map.nodes[25723845] = LoreObject({
    -- rlabel = ReputationGain(250, 2570), -- Hallowfall Arathi
    rewards = {Achievement({id = 40762, criteria = 69379})}
}) -- Captain's Chest
