-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible
local Rare = ns.node.Rare
local Treasure = ns.node.Treasure

local LoreObject = ns.node.LoreObject
local SkyridingGlyph = ns.node.SkyridingGlyph

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Transmog = ns.reward.Transmog

-- local Path = ns.poi.Path
local POI = ns.poi.POI

local ReputationGain = ns.tooltip.ReputationGain

-------------------------------------------------------------------------------

local map = Map({id = 2214, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[55087053] = Rare({
    id = 220274,
    quest = nil
    -- rewards = {Achievement({id = nil, criteria = nil})}
}) -- Aquellion

map.nodes[52002640] = Rare({ -- review
    id = 220270,
    quest = nil
    -- rewards = {Achievement({id = nil, criteria = nil})}
}) -- Basilisk Matriarch

map.nodes[66232975] = Rare({ -- flyes around
    id = 220276,
    quest = 80505,
    rewards = {
        -- Achievement({id = nil, criteria = nil})
        Transmog({item = 223363, slot = L['leather']}) -- Flying Kobold's Seatbelt
    }
}) -- Candleflayer Captain

map.nodes[41291725] = Rare({ -- review, multiple locations?
    id = 220267,
    quest = nil
    -- rewards = {Achievement({id = nil, criteria = nil})}
}) -- Charmonger

map.nodes[50004200] = Rare({ -- review
    id = 220266,
    quest = nil
    -- rewards = {Achievement({id = nil, criteria = nil})}
}) -- Coalesced Monstrosity

map.nodes[43005000] = Rare({ -- review
    id = 220269,
    quest = nil
    -- rewards = {Achievement({id = nil, criteria = nil})}
}) -- Cragmund

map.nodes[66636887] = Rare({
    id = 220272,
    quest = nil,
    note = L['in_small_cave']
    -- rewards = {Achievement({id = nil, criteria = nil})}
}) -- Deathbound Husk

map.nodes[61005700] = Rare({ -- review
    id = 218393,
    quest = nil
    -- rewards = {Achievement({id = nil, criteria = nil})}
}) -- Disturbed Earthgorger

map.nodes[57005700] = Rare({ -- review
    id = 221199,
    quest = nil
    -- rewards = {Achievement({id = nil, criteria = nil})}
}) -- Hungerer of the Deeps

map.nodes[47064697] = Rare({
    id = 220287,
    quest = nil
    -- rewards = {Achievement({id = nil, criteria = nil})}
}) -- Kelpmire

map.nodes[42753510] = Rare({ -- review
    id = 220275,
    quest = 80547,
    rewards = {
        -- Achievement({id = nil, criteria = nil})
        Transmog({item = 223355, slot = L['leather']}) -- Waterskipper's Leggings
    }
}) -- King Splash

map.nodes[57015473] = Rare({
    id = 220273,
    quest = nil
    -- rewards = {Achievement({id = nil, criteria = nil})}
}) -- Rampaging Skardyn

map.nodes[60005300] = Rare({ -- review
    id = 221217,
    quest = nil
    -- rewards = {Achievement({id = nil, criteria = nil})}
}) -- Spore-infused Shalewing

map.nodes[47621217] = Rare({
    id = 220271,
    quest = 80507 -- 84040
    -- rewards = {Achievement({id = nil, criteria = nil})}
}) -- Terror of the Forge

map.nodes[71654630] = Rare({
    id = 220268,
    quest = nil,
    note = L['in_cave'],
    -- rewards = {Achievement({id = nil, criteria = nil})}
    pois = {POI({7284443})} -- Entrance
}) -- Trungal

-------------------------------------------------------------------------------

map.nodes[52591991] = Rare({
    id = 220265,
    quest = 81674 -- 84046
}) -- Optimized Construct

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[63086311] = Treasure({ -- lvl 71
    quest = nil,
    rewards = {Achievement({id = 40724, criteria = 69281})}
}) -- Cursed Pickaxe

map.nodes[45511745] = Treasure({ -- lvl 73
    quest = nil,
    rewards = {Achievement({id = 40724, criteria = 69283})}
}) -- Discarded Toolbox

map.nodes[48254896] = Treasure({ -- lvl 71
    quest = nil,
    rewards = {Achievement({id = 40724, criteria = 69311})}
}) -- Dislodged Blockage (Blocked Intake)

map.nodes[49053163] = Treasure({ -- Inside the Inn
    quest = nil,
    requires = {},
    rewards = {Achievement({id = 40724, criteria = 69312})},
    pois = {
        POI({47673217}), -- Entrance
        POI({
            57302200, -- Amethyst
            68205320, -- Diamond
            57404940, -- Ruby
            62506300, -- Topaz
            59103800 -- Emerald
        })
    }
}) -- Dusty Prospector's Chest

map.nodes[59016438] = Treasure({
    quest = 82819,
    note = L['inside_building'] .. '\n\n' .. L['kaja_cola_machine_note'],
    rewards = {
        Achievement({id = 40724, criteria = 69308}),
        Item({item = 220774, note = L['bag']}) -- Goblin Mini Fridge
    }
}) -- Kaja'Cola Machine

map.nodes[50485349] = Treasure({ -- lvl 71
    quest = nil,
    requires = {
        ns.requirement.Item(217960) -- Forgotten Key
    },
    note = L['in_waterfall_cave'] .. '\n\n' .. L['forgotten_treasure_note'],
    rewards = {Achievement({id = 40724, criteria = 69313})},
    pois = {POI({52065314})} -- Entrance
}) -- Forgotten Treasure

map.nodes[55391385] = Treasure({ -- lvl 71
    quest = nil,
    note = L['in_small_cave'],
    rewards = {Achievement({id = 40724, criteria = 69282})},
    pois = {POI({54681421})} -- Entrance
}) -- Munderut's Forgotten Stash

map.nodes[58933027] = Treasure({ -- lvl 71
    quest = nil,
    rewards = {Achievement({id = 40724, criteria = 69307})}
}) -- Scary Dark Chest

map.nodes[66203341] = Treasure({ -- lvl 71
    quest = nil,
    rewards = {Achievement({id = 40724, criteria = 69304})}
}) -- Waterlogged Refuse

map.nodes[68863883] = Treasure({ -- lvl 71
    quest = nil,
    note = L['in_small_cave'],
    rewards = {Achievement({id = 40724, criteria = 69280})},
    pois = {POI({68714072})} -- Entrance
}) -- Webbed Knapsack

-------------------------------------------------------------------------------
----------------------- THE RINGING DEEPS GLYPH HUNTER ------------------------
-------------------------------------------------------------------------------

map.nodes[63789482] = SkyridingGlyph({
    rewards = {Achievement({id = 40703, criteria = 69252})}
}) -- Abyssal Excavation

map.nodes[69463446] = SkyridingGlyph({
    rewards = {Achievement({id = 40703, criteria = 69249})}
}) -- Chittering Den

map.nodes[49063155] = SkyridingGlyph({
    rewards = {Achievement({id = 40703, criteria = 69246})}
}) -- Gundargaz

map.nodes[62896604] = SkyridingGlyph({
    rewards = {Achievement({id = 40703, criteria = 69253})}
}) -- Taelloch Mine

map.nodes[49066644] = SkyridingGlyph({
    rewards = {Achievement({id = 40703, criteria = 69251})}
}) -- The Living Grotto

map.nodes[57293127] = SkyridingGlyph({
    rewards = {Achievement({id = 40703, criteria = 69248})}
}) -- The Lost Mines

map.nodes[56165608] = SkyridingGlyph({
    rewards = {Achievement({id = 40703, criteria = 69250})}
}) -- The Rumbling Wastes

map.nodes[46941006] = SkyridingGlyph({
    rewards = {Achievement({id = 40703, criteria = 69247})}
}) -- The Stonevault Exterior

map.nodes[46445175] = SkyridingGlyph({
    rewards = {Achievement({id = 40703, criteria = 69254})}
}) -- The Waterworks

-------------------------------------------------------------------------------
------------------------ ACHIEVEMENT: NOT SO QUICK FIX ------------------------
-------------------------------------------------------------------------------

local BustedConsole = Class('BustedConsole', Collectible, {
    icon = 134067,
    group = ns.groups.NOT_SO_QUICK_FIX,
    note = L['not_so_quick_fix_note']
})

map.nodes[74001400] = BustedConsole({
    location = L['water_console_location'],
    rewards = {Achievement({id = 40473, criteria = 68658})}
}) -- Water Console

map.nodes[76001400] = BustedConsole({
    location = L['abyssal_console_location'],
    rewards = {Achievement({id = 40473, criteria = 68659})}
}) -- Abyssal Console

map.nodes[78001400] = BustedConsole({
    location = L['taelloch_console_location'],
    rewards = {Achievement({id = 40473, criteria = 68660})}
}) -- Taelloch Console

map.nodes[80001400] = BustedConsole({
    location = L['obsidian_console_location'],
    rewards = {Achievement({id = 40473, criteria = 68661})}
}) -- Obsidian Console

map.nodes[82001400] = BustedConsole({
    location = L['lost_console_location'],
    rewards = {Achievement({id = 40473, criteria = 68662})}
}) -- Lost Console

map.nodes[84001400] = BustedConsole({
    location = L['earthen_console_location'],
    rewards = {Achievement({id = 40473, criteria = 68663})}
}) -- Earthen Console

-------------------------------------------------------------------------------
------------------------ ACHIEVEMENT: NOTABLE MACHINES ------------------------
-------------------------------------------------------------------------------

local MachineSpeakerNote = Class('MachineSpeakerNote', Collectible, {
    icon = 1506451,
    group = ns.groups.NOTABLE_MACHINES,
    note = L['notable_machines_note']
})

map.nodes[45882881] = MachineSpeakerNote({
    location = L['fragment_I_location'],
    rewards = {Achievement({id = 40628, criteria = 68991})}
}) -- Notes On The Machine Speakers: Fragment I

map.nodes[74001600] = MachineSpeakerNote({ -- review
    location = L['fragment_II_location'],
    rewards = {Achievement({id = 40628, criteria = 68992})}
}) -- Notes On The Machine Speakers: Fragment II

map.nodes[76001600] = MachineSpeakerNote({ -- review
    location = L['fragment_III_location'],
    rewards = {Achievement({id = 40628, criteria = 68993})}
}) -- Notes On The Machine Speakers: Fragment III

map.nodes[78001600] = MachineSpeakerNote({ -- review
    location = L['fragment_IV_location'],
    rewards = {Achievement({id = 40628, criteria = 68994})}
}) -- Notes On The Machine Speakers: Fragment IV

map.nodes[80001600] = MachineSpeakerNote({ -- review
    location = L['fragment_V_location'],
    rewards = {Achievement({id = 40628, criteria = 68995})}
}) -- Notes On The Machine Speakers: Fragment V

map.nodes[82001600] = MachineSpeakerNote({ -- review
    location = L['fragment_VI_location'],
    rewards = {Achievement({id = 40628, criteria = 68996})}
}) -- Notes On The Machine Speakers: Fragment VI

-------------------------------------------------------------------------------
------------------------ ACHIEVEMENT: ROCKED TO SLEEP -------------------------
-------------------------------------------------------------------------------

local InertEarthen = Class('InertEarthen', Collectible, {
    icon = 5788303,
    group = ns.groups.ROCKED_TO_SLEEP,
    note = L['rocked_to_sleep_note']
})

map.nodes[74001800] = InertEarthen({ -- review
    location = L['attwogaz_location'],
    rewards = {Achievement({id = 40504, criteria = 68684})}
}) -- Attwogaz

map.nodes[76001800] = InertEarthen({ -- review
    location = L['halthaz_location'],
    rewards = {Achievement({id = 40504, criteria = 68682})}
}) -- Halthaz

map.nodes[78001800] = InertEarthen({ -- review
    location = L['krattdaz_location'],
    rewards = {Achievement({id = 40504, criteria = 68685})}
}) -- Krattdaz

map.nodes[80001800] = InertEarthen({ -- review
    location = L['uisgaz_location'],
    rewards = {Achievement({id = 40504, criteria = 68686})}
}) -- Uisgaz

map.nodes[82001800] = InertEarthen({ -- review
    location = L['venedaz_location'],
    rewards = {Achievement({id = 40504, criteria = 68687})}
}) -- Venedaz

map.nodes[84001800] = InertEarthen({ -- review
    location = L['merunth_location'],
    rewards = {Achievement({id = 40504, criteria = 68688})}
}) -- Merunth

map.nodes[86001800] = InertEarthen({ -- review
    location = L['varerko_location'],
    rewards = {Achievement({id = 40504, criteria = 68689})}
}) -- Varerko

map.nodes[88001800] = InertEarthen({ -- review
    location = L['alfritha_location'],
    rewards = {Achievement({id = 40504, criteria = 68690})}
}) -- Alfritha

map.nodes[90001800] = InertEarthen({ -- review
    location = L['gundrig_location'],
    rewards = {Achievement({id = 40504, criteria = 68691})}
}) -- Gundrig

map.nodes[92001800] = InertEarthen({ -- review
    location = L['sathilga_location'],
    rewards = {Achievement({id = 40504, criteria = 68692})}
}) -- Sathilga

-------------------------------------------------------------------------------
--------------------- ACHIEVEMENT: KHAZ ALGAR LORE HUNTER ---------------------
-------------------------------------------------------------------------------

map.nodes[39311739] = LoreObject({
    rlabel = ReputationGain(250, 2594), -- The Assembly of the Deeps
    rewards = {Achievement({id = 40762, criteria = 69374})}
}) -- A Skull on a Sign

map.nodes[64945614] = LoreObject({
    -- rlabel = ReputationGain(250, 2594), -- The Assembly of the Deeps
    rewards = {Achievement({id = 40762, criteria = 69378})}
}) -- Kobold Warning Sign

map.nodes[51477241] = LoreObject({
    rlabel = ReputationGain(250, 2594), -- The Assembly of the Deeps
    rewards = {Achievement({id = 40762, criteria = 69376})}
}) -- Submerged Sign

map.nodes[71364240] = LoreObject({
    -- rlabel = ReputationGain(250, 2594), -- The Assembly of the Deeps
    rewards = {Achievement({id = 40762, criteria = 69375})}
}) -- Warning: Collapsed Tunnel

map.nodes[74002000] = LoreObject({ -- review
    rlabel = ReputationGain(250, 2594), -- The Assembly of the Deeps
    rewards = {Achievement({id = 40762, criteria = 69377})}
}) -- Wax-Drenched Sign
