-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible
local DisturbedDirt = ns.node.DisturbedDirt
local PT = ns.node.ProfessionTreasures
local Rare = ns.node.Rare
local Treasure = ns.node.Treasure
local Vendor = ns.node.Vendor

local LoreObject = ns.node.LoreObject
local SkyridingGlyph = ns.node.SkyridingGlyph

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Pet = ns.reward.Pet
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

local Path = ns.poi.Path
local POI = ns.poi.POI

local ReputationGain = ns.tooltip.ReputationGain

-------------------------------------------------------------------------------

local map = Map({id = 2214, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[52591991] = Rare({
    id = 220265,
    quest = 81674,
    rewards = {Achievement({id = 40837, criteria = 69634})}
}) -- Automaxor

local Aquellion = Class('Aquellion', Rare, {
    id = 220274,
    quest = 80557,
    fgroup = 'aquellion',
    rewards = {Achievement({id = 40837, criteria = 69625})}
}) -- Aquellion

map.nodes[55087053] = Aquellion()
map.nodes[49556618] = Aquellion()

map.nodes[66232975] = Rare({ -- flyes around
    id = 220276,
    quest = 80505,
    rewards = {
        Achievement({id = 40837, criteria = 69623}),
        Transmog({item = 223363, slot = L['leather']}) -- Flying Kobold's Seatbelt
    }
}) -- Candleflyer Captain

map.nodes[41371692] = Rare({ -- review, multiple locations?
    id = 220267,
    quest = 81564, -- 84044
    rewards = {Achievement({id = 40837, criteria = 69632})}
}) -- Charmonger

map.nodes[57883810] = Rare({
    id = 220266,
    quest = nil,
    rewards = {Achievement({id = 40837, criteria = 69633})}
}) -- Coalesced Monstrosity

map.nodes[50994631] = Rare({
    id = 220269,
    quest = 84042, -- 80560
    rewards = {Achievement({id = 40837, criteria = 69630})}
}) -- Cragmund

map.nodes[66636887] = Rare({
    id = 220272,
    quest = 81566,
    note = L['in_small_cave'],
    rewards = {Achievement({id = 40837, criteria = 69627})}
}) -- Deathbound Husk

map.nodes[67045265] = Rare({ -- review
    id = 218393,
    quest = nil,
    rewards = {Achievement({id = 40837, criteria = 69640})}
}) -- Disturbed Earthgorger

map.nodes[53000880] = Rare({ -- review 53801800
    id = 220286,
    quest = nil,
    rewards = {Achievement({id = 40837, criteria = 69636})}
}) -- Deepflayer Broodmother

map.nodes[65354950] = Rare({ -- review
    id = 221199,
    quest = nil,
    rewards = {Achievement({id = 40837, criteria = 69639})}
}) -- Hungerer of the Deeps

map.nodes[47064697] = Rare({
    id = 220287,
    quest = nil,
    rewards = {Achievement({id = 40837, criteria = 69635})}
}) -- Kelpmire

map.nodes[42753510] = Rare({ -- review
    id = 220275,
    quest = 80547,
    rewards = {
        Achievement({id = 40837, criteria = 69624}),
        Transmog({item = 223355, slot = L['leather']}) -- Waterskipper's Leggings
    }
}) -- King Splash

map.nodes[74002000] = Rare({ -- review
    id = 220285,
    quest = nil,
    rewards = {Achievement({id = 40837, criteria = 69637})}
}) -- Lurker of the Deeps

map.nodes[57015473] = Rare({
    id = 220273,
    quest = 81563,
    rewards = {
        Achievement({id = 40837, criteria = 69626}),
        Transmog({item = 223404, slot = L['leather']}) -- Corrupted Earthen Cuffs
    }
}) -- Rampaging Blight

map.nodes[66214622] = Rare({ -- review
    id = 221217,
    quest = nil,
    rewards = {Achievement({id = 40837, criteria = 69638})},
    pois = {
        Path({
            65424760, 66214622, 67714621, 68464746, 68644916, 68195135,
            66875175, 66384917, 65424760
        })
    }
}) -- Spore-infused Shalewing

map.nodes[47621217] = Rare({
    id = 220271,
    quest = 80507,
    rewards = {Achievement({id = 40837, criteria = 69628})}
}) -- Terror of the Forge

map.nodes[71654630] = Rare({
    id = 220268,
    quest = nil,
    note = L['in_cave'],
    rewards = {Achievement({id = 40837, criteria = 69631})},
    pois = {POI({72844447})} -- Entrance
}) -- Trungal

map.nodes[52032657] = Rare({
    id = 220270,
    quest = 80506,
    rewards = {Achievement({id = 40837, criteria = 69629})}
}) -- Zilthara

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[63086311] = Treasure({ -- lvl 71
    quest = 82230,
    rewards = {Achievement({id = 40724, criteria = 69281})}
}) -- Cursed Pickaxe

map.nodes[45511745] = Treasure({ -- lvl 73
    quest = 82239,
    rewards = {Achievement({id = 40724, criteria = 69283})}
}) -- Discarded Toolbox

map.nodes[48254896] = Treasure({ -- lvl 71
    quest = 82820,
    rewards = {Achievement({id = 40724, criteria = 69311})}
}) -- Dislodged Blockage (Blocked Intake)

map.nodes[49053163] = Treasure({ -- Inside the Inn
    quest = 82464,
    requires = {
        ns.requirement.Item(223878), ns.requirement.Item(223879),
        ns.requirement.Item(223880), ns.requirement.Item(223881),
        ns.requirement.Item(223882)
    },
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
    location = L['in_building'],
    note = L['kaja_cola_machine_note'],
    rewards = {
        Achievement({id = 40724, criteria = 69308}),
        Item({item = 220774, note = L['bag']}) -- Goblin Mini Fridge
    }
}) -- Kaja'Cola Machine

map.nodes[50485349] = Treasure({ -- lvl 71
    quest = 80485,
    requires = {
        ns.requirement.Item(217960) -- Forgotten Key
    },
    location = L['in_waterfall_cave'],
    note = L['forgotten_treasure_note'],
    rewards = {Achievement({id = 40724, criteria = 69313})},
    pois = {POI({52065314})} -- Entrance
}) -- Forgotten Treasure

map.nodes[55391385] = Treasure({ -- lvl 71
    quest = 82235,
    note = L['in_small_cave'],
    rewards = {Achievement({id = 40724, criteria = 69282})},
    pois = {POI({54681421})} -- Entrance
}) -- Munderut's Forgotten Stash

map.nodes[58933027] = Treasure({ -- lvl 71
    quest = 82818,
    rewards = {
        Achievement({id = 40724, criteria = 69307}), Pet({id = 4470}) -- Oop'lajax
    }
}) -- Scary Dark Chest

map.nodes[66203341] = Treasure({ -- lvl 71
    quest = 83030,
    rewards = {Achievement({id = 40724, criteria = 69304})}
}) -- Waterlogged Refuse

map.nodes[68863883] = Treasure({ -- lvl 71
    quest = 79308,
    note = L['in_small_cave'],
    rewards = {Achievement({id = 40724, criteria = 69280})},
    pois = {POI({68714072})} -- Entrance
}) -- Webbed Knapsack

-------------------------------------------------------------------------------
----------------------------- PROFESSION TREASURES ----------------------------
-------------------------------------------------------------------------------

map.nodes[42182415] = PT.Alchemy({quest = nil, id = 226267}) -- Reinforced Beaker -- review
map.nodes[47673317] = PT.Blacksmithing({quest = 83850, id = 226278}) -- Ringing Hammer Vise
map.nodes[60525367] = PT.Blacksmithing({quest = 83851, id = 226279}) -- Earthen Chisels
map.nodes[48573426] = PT.Inscription({quest = nil, id = 226310}) -- Runic Scroll -- review
map.nodes[58186204] = PT.Mining({quest = 83908, id = 226334}) -- Earthen Excavator's Shovel
map.nodes[66276626] = PT.Mining({quest = 83909, id = 226335}) -- Regenerating Ore -- review
map.nodes[65716190] = PT.Skinning({quest = nil, id = 226343}) -- Fungarian's Rich Tannin -- review
map.nodes[48853286] = PT.Tailoring({
    quest = nil,
    id = 226350,
    pois = {POI({47703216})} -- Entrance
}) -- Runed Earthen Pins -- review
map.nodes[64126034] = PT.Tailoring({quest = nil, id = 226351}) -- Earthen Stitcher's Snips -- review

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

map.nodes[48932593] = MachineSpeakerNote({
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

map.nodes[65107955] = MachineSpeakerNote({
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

map.nodes[48537065] = InertEarthen({
    location = L['alfritha_location'],
    rewards = {Achievement({id = 40504, criteria = 68690})}
}) -- Alfritha

map.nodes[62853635] = InertEarthen({
    location = L['attwogaz_location'], -- on top of the ledge
    rewards = {Achievement({id = 40504, criteria = 68684})}
}) -- Attwogaz

map.nodes[65428379] = InertEarthen({
    location = L['gundrig_location'], -- on top of the ledge
    rewards = {Achievement({id = 40504, criteria = 68691})}
}) -- Gundrig

map.nodes[44351354] = InertEarthen({
    location = L['halthaz_location'],
    rewards = {Achievement({id = 40504, criteria = 68682})}
}) -- Hathlaz

map.nodes[43154087] = InertEarthen({
    location = L['krattdaz_location'],
    rewards = {Achievement({id = 40504, criteria = 68685})}
}) -- Krattdaz

map.nodes[59179369] = InertEarthen({
    location = L['merunth_location'], -- Up on the pipe
    rewards = {Achievement({id = 40504, criteria = 68688})}
}) -- Merunth

map.nodes[64075574] = InertEarthen({
    location = L['sathilga_location'],
    rewards = {Achievement({id = 40504, criteria = 68692})}
}) -- Sathilga

map.nodes[55043023] = InertEarthen({
    location = L['uisgaz_location'],
    rewards = {Achievement({id = 40504, criteria = 68686})}
}) -- Uisgaz

map.nodes[49364902] = InertEarthen({
    location = L['varerko_location'],
    rewards = {Achievement({id = 40504, criteria = 68689})}
}) -- Varerko

map.nodes[48583175] = InertEarthen({
    location = L['venedaz_location'],
    rewards = {Achievement({id = 40504, criteria = 68687})}
}) -- Venedaz

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

map.nodes[50215826] = LoreObject({
    rlabel = ReputationGain(250, 2594), -- The Assembly of the Deeps
    note = L['in_small_cave'],
    rewards = {Achievement({id = 40762, criteria = 69377})}
}) -- Wax-Drenched Sign

-------------------------------------------------------------------------------
-------------------------------- DISTURBED DIRT -------------------------------
-------------------------------------------------------------------------------

map.nodes[47663529] = Vendor({
    id = 216164,
    note = L['gnawbles_ruby_vendor_note'],
    rewards = {
        Pet({item = 224760, id = 4597}), -- Wobbles
        Pet({item = 224646, id = 4598}), -- Coppers the Cobold
        Toy({item = 224643}) -- Pet-Sized Candle
    }
}) -- Gnawbles

map.nodes[46713076] = DisturbedDirt()
map.nodes[47453785] = DisturbedDirt()
map.nodes[49361113] = DisturbedDirt()
map.nodes[51821194] = DisturbedDirt()
map.nodes[52713193] = DisturbedDirt()
map.nodes[52991720] = DisturbedDirt()
map.nodes[53611070] = DisturbedDirt()
map.nodes[54823031] = DisturbedDirt()
map.nodes[55572820] = DisturbedDirt()
map.nodes[55673637] = DisturbedDirt()
map.nodes[55763100] = DisturbedDirt()
map.nodes[55893943] = DisturbedDirt()
map.nodes[55896839] = DisturbedDirt()
map.nodes[56576361] = DisturbedDirt()
map.nodes[56704160] = DisturbedDirt()
map.nodes[56752418] = DisturbedDirt()
map.nodes[57056517] = DisturbedDirt()
map.nodes[57056845] = DisturbedDirt()
map.nodes[57142299] = DisturbedDirt()
map.nodes[57263511] = DisturbedDirt()
map.nodes[57497726] = DisturbedDirt()
map.nodes[57514834] = DisturbedDirt()
map.nodes[57663957] = DisturbedDirt()
map.nodes[57914262] = DisturbedDirt()
map.nodes[58036805] = DisturbedDirt()
map.nodes[58846629] = DisturbedDirt()
map.nodes[59207742] = DisturbedDirt()
map.nodes[59227892] = DisturbedDirt()
map.nodes[59235361] = DisturbedDirt()
map.nodes[60039242] = DisturbedDirt()
map.nodes[61255312] = DisturbedDirt()
map.nodes[62563191] = DisturbedDirt()
map.nodes[63103270] = DisturbedDirt()
map.nodes[63756316] = DisturbedDirt()
map.nodes[64066137] = DisturbedDirt()
map.nodes[64656659] = DisturbedDirt()
map.nodes[65393974] = DisturbedDirt()
map.nodes[66733837] = DisturbedDirt()
map.nodes[67794830] = DisturbedDirt()
