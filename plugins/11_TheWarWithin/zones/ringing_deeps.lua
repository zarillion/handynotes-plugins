-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible

local LoreObject = ns.node.LoreObject
local SkyridingGlyph = ns.node.SkyridingGlyph

local Achievement = ns.reward.Achievement
local ReputationGain = ns.tooltip.ReputationGain

-------------------------------------------------------------------------------

local map = Map({id = 2214, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------
-- map.nodes[46007600] = Rare({
--     id = nil,
--     rewards = {Achievement({id = nil, criteria = nil})}
-- }) -- Aquellion
-- map.nodes[45003000] = Rare({
--     id = nil,
--     rewards = {Achievement({id = nil, criteria = nil})}
-- }) -- Basilisk Matriarch
-- map.nodes[59003200] = Rare({
--     id = nil,
--     rewards = {Achievement({id = nil, criteria = nil})}
-- }) -- Candleflayer Captain
-- map.nodes[55002500] = Rare({
--     id = nil,
--     rewards = {Achievement({id = nil, criteria = nil})}
-- }) -- Charmonger
-- map.nodes[50004200] = Rare({
--     id = nil,
--     rewards = {Achievement({id = nil, criteria = nil})}
-- }) -- Coalesced Monstrosity
-- map.nodes[43005000] = Rare({
--     id = nil,
--     rewards = {Achievement({id = nil, criteria = nil})}
-- }) -- Cragmund
-- map.nodes[58006500] = Rare({
--     id = nil,
--     rewards = {Achievement({id = nil, criteria = nil})}
-- }) -- Deathbound Husk
-- map.nodes[61005700] = Rare({
--     id = nil,
--     rewards = {Achievement({id = nil, criteria = nil})}
-- }) -- Disturbed Earthgorger
-- map.nodes[57005700] = Rare({
--     id = nil,
--     rewards = {Achievement({id = nil, criteria = nil})}
-- }) -- Hungerer of the Deeps
-- map.nodes[38004800] = Rare({
--     id = nil,
--     rewards = {Achievement({id = nil, criteria = nil})}
-- }) -- Kelpmire
-- map.nodes[33003700] = Rare({
--     id = nil,
--     rewards = {Achievement({id = nil, criteria = nil})}
-- }) -- King Splash
-- map.nodes[50005900] = Rare({
--     id = nil,
--     rewards = {Achievement({id = nil, criteria = nil})}
-- }) -- Raging Skardyn
-- map.nodes[60005300] = Rare({
--     id = nil,
--     rewards = {Achievement({id = nil, criteria = nil})}
-- }) -- Spore-infused Shalewing
-- map.nodes[36001100] = Rare({
--     id = nil,
--     rewards = {Achievement({id = nil, criteria = nil})}
-- }) -- Terror of the Forge
-- map.nodes[66004500] = Rare({
--     id = nil,
--     rewards = {Achievement({id = nil, criteria = nil})}
-- }) -- Trungal
-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------
-- map.nodes[40005100] = Treasure({
--     rewards = {Achievement({id = nil, criteria = nil})}
-- }) -- Blocked Intake
-- map.nodes[57006500] = Treasure({
--     rewards = {Achievement({id = nil, criteria = nil})}
-- }) -- Cursed Pickaxe
-- map.nodes[37001800] = Treasure({
--     rewards = {Achievement({id = nil, criteria = nil})}
-- }) -- Discarded Toolbox
-- map.nodes[41003300] = Treasure({
--     rewards = {Achievement({id = nil, criteria = nil})}
-- }) -- Dusty Prospector's Chest
-- map.nodes[52006900] = Treasure({
--     rewards = {Achievement({id = nil, criteria = nil})}
-- }) -- Kaja'Cola Machine
-- map.nodes[43005500] = Treasure({
--     rewards = {Achievement({id = nil, criteria = nil})}
-- }) -- Forgotten Trreasure
-- map.nodes[48001500] = Treasure({
--     rewards = {Achievement({id = nil, criteria = nil})}
-- }) -- Munderut's Forgotten Stash
-- map.nodes[51003200] = Treasure({
--     rewards = {Achievement({id = nil, criteria = nil})}
-- }) -- Scary Dark Chest
-- map.nodes[60003500] = Treasure({
--     rewards = {Achievement({id = nil, criteria = nil})}
-- }) -- Waterlogged Refuse
-- map.nodes[63004100] = Treasure({
--     rewards = {Achievement({id = nil, criteria = nil})}
-- }) -- Webbed Knapsack

-------------------------------------------------------------------------------
----------------------- THE RINGING DEEPS GLYPH HUNTER ------------------------
-------------------------------------------------------------------------------

map.nodes[49063155] = SkyridingGlyph({
    rewards = {Achievement({id = 40703, criteria = 1})}
}) -- Gundargaz

map.nodes[46941006] = SkyridingGlyph({
    rewards = {Achievement({id = 40703, criteria = 2})}
}) -- The Stonevault Exterior

map.nodes[57293127] = SkyridingGlyph({
    rewards = {Achievement({id = 40703, criteria = 3})}
}) -- The Lost Mines

map.nodes[69463446] = SkyridingGlyph({
    rewards = {Achievement({id = 40703, criteria = 4})}
}) -- Chittering Den

map.nodes[56165608] = SkyridingGlyph({
    rewards = {Achievement({id = 40703, criteria = 5})}
}) -- The Rumbling Wastes

map.nodes[49066644] = SkyridingGlyph({
    rewards = {Achievement({id = 40703, criteria = 6})}
}) -- The Living Grotto

map.nodes[63789482] = SkyridingGlyph({
    rewards = {Achievement({id = 40703, criteria = 7})}
}) -- Abyssal Excavation

map.nodes[62896604] = SkyridingGlyph({
    rewards = {Achievement({id = 40703, criteria = 8})}
}) -- Taelloch Mine

map.nodes[46445175] = SkyridingGlyph({
    rewards = {Achievement({id = 40703, criteria = 9})}
}) -- The Waterworks

-------------------------------------------------------------------------------
------------------------ ACHIEVEMENT: NOT SO QUICK FIX ------------------------
-------------------------------------------------------------------------------

local BustedConsole = Class('BustedConsole', Collectible, {
    icon = 134067,
    group = ns.groups.NOT_SO_QUICK_FIX,
    note = L['not_so_quick_fix_note']
})

map.nodes[00000000] = BustedConsole({
    location = L['water_console_location'],
    rewards = {Achievement({id = 40473, criteria = 1})}
}) -- Water Console

map.nodes[00000000] = BustedConsole({
    location = L['abyssal_console_location'],
    rewards = {Achievement({id = 40473, criteria = 2})}
}) -- Abyssal Console

map.nodes[00000000] = BustedConsole({
    location = L['taelloch_console_location'],
    rewards = {Achievement({id = 40473, criteria = 3})}
}) -- Taelloch Console

map.nodes[00000000] = BustedConsole({
    location = L['obsidian_console_location'],
    rewards = {Achievement({id = 40473, criteria = 4})}
}) -- Obsidian Console

map.nodes[00000000] = BustedConsole({
    location = L['lost_console_location'],
    rewards = {Achievement({id = 40473, criteria = 5})}
}) -- Lost Console

map.nodes[00000000] = BustedConsole({
    location = L['earthen_console_location'],
    rewards = {Achievement({id = 40473, criteria = 6})}
}) -- Earthen Console

-------------------------------------------------------------------------------
------------------------ ACHIEVEMENT: NOTABLE MACHINES ------------------------
-------------------------------------------------------------------------------

local MachineSpeakerNote = Class('MachineSpeakerNote', Collectible, {
    icon = 1506451,
    group = ns.groups.NOTABLE_MACHINES,
    note = L['notable_machines_note']
})

map.nodes[00000000] = MachineSpeakerNote({
    location = L['fragment_I_location'],
    rewards = {Achievement({id = 40628, criteria = 1})}
}) -- Notes On The Machine Speakers: Fragment I

map.nodes[00000000] = MachineSpeakerNote({
    location = L['fragment_II_location'],
    rewards = {Achievement({id = 40628, criteria = 2})}
}) -- Notes On The Machine Speakers: Fragment II

map.nodes[00000000] = MachineSpeakerNote({
    location = L['fragment_III_location'],
    rewards = {Achievement({id = 40628, criteria = 3})}
}) -- Notes On The Machine Speakers: Fragment III

map.nodes[00000000] = MachineSpeakerNote({
    location = L['fragment_IV_location'],
    rewards = {Achievement({id = 40628, criteria = 4})}
}) -- Notes On The Machine Speakers: Fragment IV

map.nodes[00000000] = MachineSpeakerNote({
    location = L['fragment_V_location'],
    rewards = {Achievement({id = 40628, criteria = 5})}
}) -- Notes On The Machine Speakers: Fragment V

map.nodes[00000000] = MachineSpeakerNote({
    location = L['fragment_VI_location'],
    rewards = {Achievement({id = 40628, criteria = 6})}
}) -- Notes On The Machine Speakers: Fragment VI

-------------------------------------------------------------------------------
------------------------ ACHIEVEMENT: ROCKED TO SLEEP -------------------------
-------------------------------------------------------------------------------

local InertEarthen = Class('InertEarthen', Collectible, {
    icon = 5788303,
    group = ns.groups.ROCKED_TO_SLEEP,
    note = L['rocked_to_sleep_note']
})

map.nodes[00000000] = InertEarthen({
    location = L['attwogaz_location'],
    rewards = {Achievement({id = 40504, criteria = 1})}
}) -- Attwogaz

map.nodes[00000000] = InertEarthen({
    location = L['halthaz_location'],
    rewards = {Achievement({id = 40504, criteria = 2})}
}) -- Halthaz

map.nodes[00000000] = InertEarthen({
    location = L['krattdaz_location'],
    rewards = {Achievement({id = 40504, criteria = 3})}
}) -- Krattdaz

map.nodes[00000000] = InertEarthen({
    location = L['uisgaz_location'],
    rewards = {Achievement({id = 40504, criteria = 4})}
}) -- Uisgaz

map.nodes[00000000] = InertEarthen({
    location = L['venedaz_location'],
    rewards = {Achievement({id = 40504, criteria = 5})}
}) -- Venedaz

map.nodes[00000000] = InertEarthen({
    location = L['merunth_location'],
    rewards = {Achievement({id = 40504, criteria = 6})}
}) -- Merunth

map.nodes[00000000] = InertEarthen({
    location = L['varerko_location'],
    rewards = {Achievement({id = 40504, criteria = 7})}
}) -- Varerko

map.nodes[00000000] = InertEarthen({
    location = L['alfritha_location'],
    rewards = {Achievement({id = 40504, criteria = 8})}
}) -- Alfritha

map.nodes[00000000] = InertEarthen({
    location = L['gundrig_location'],
    rewards = {Achievement({id = 40504, criteria = 9})}
}) -- Gundrig

map.nodes[00000000] = InertEarthen({
    location = L['sathilga_location'],
    rewards = {Achievement({id = 40504, criteria = 10})}
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
