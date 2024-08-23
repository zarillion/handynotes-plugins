-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible
local DisturbedEarth = ns.node.DisturbedEarth
local PT = ns.node.ProfessionTreasures
local Rare = ns.node.Rare
local Treasure = ns.node.Treasure
local Vendor = ns.node.Vendor

local LoreObject = ns.node.LoreObject
local SkyridingGlyph = ns.node.SkyridingGlyph

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Mount = ns.reward.Mount
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
    quest = 81674, -- 84046
    rlabel = ReputationGain(150, 2594), -- The Assembly of the Deeps
    rewards = {Achievement({id = 40837, criteria = 69634})}
}) -- Automaxor

local Aquellion = Class('Aquellion', Rare, {
    id = 220274,
    quest = 80557, -- One time kill
    fgroup = 'aquellion',
    rewards = {
        Achievement({id = 40837, criteria = 69625}),
        Transmog({item = 223371, slot = L['cloth']}), -- Slippers of Shallow Waters
        Transmog({item = 223373, slot = L['leather']}), -- Treads of Shallow Waters
        Transmog({item = 223372, slot = L['mail']}), -- Sabatons of Shallow Waters
        Transmog({item = 223340, slot = L['plate']}) -- Footguards of Shallow Waters
    }
}) -- Aquellion

map.nodes[55087053] = Aquellion()
map.nodes[49556618] = Aquellion() -- seen spawn here

map.nodes[66232975] = Rare({ -- flyes around
    id = 220276,
    quest = 80505, -- One time kill
    rewards = {
        Achievement({id = 40837, criteria = 69623}),
        Transmog({item = 223363, slot = L['leather']}), -- Flying Kobold's Seatbelt
        Transmog({item = 223360, slot = L['plate']}) -- Flying Kobold's Seatbelt
    }
}) -- Candleflyer Captain

map.nodes[41371692] = Rare({
    id = 220267,
    quest = 81562, -- 84044
    rlabel = ReputationGain(150, 2594), -- The Assembly of the Deeps
    rewards = {Achievement({id = 40837, criteria = 69632})}
}) -- Charmonger

map.nodes[57903813] = Rare({
    id = 220266,
    quest = 81511, -- 84045
    rlabel = ReputationGain(150, 2594), -- The Assembly of the Deeps
    rewards = {
        Achievement({id = 40837, criteria = 69633}),
        Transmog({item = 221226, slot = L['plate']}) -- Voidtouched Waistguard
    }
}) -- Coalesced Monstrosity

map.nodes[50994631] = Rare({
    id = 220269,
    quest = 80560, -- 84042
    rlabel = ReputationGain(150, 2594), -- The Assembly of the Deeps
    rewards = {
        Achievement({id = 40837, criteria = 69630}),
        Transmog({item = 221205, slot = L['cloth']}) -- Vest of the River
    }
}) -- Cragmund

map.nodes[66636887] = Rare({
    id = 220272,
    quest = 81566, -- One time kill
    note = L['in_small_cave'],
    rewards = {Achievement({id = 40837, criteria = 69627})}
}) -- Deathbound Husk

map.nodes[67045265] = Rare({
    id = 218393,
    quest = 80003, -- 84050
    note = L['disturbed_earthgorger_note'],
    rlabel = ReputationGain(150, 2594), -- The Assembly of the Deeps
    rewards = {Achievement({id = 40837, criteria = 69640})}
}) -- Disturbed Earthgorger

map.nodes[53000880] = Rare({
    id = 220286,
    quest = 80536, -- 85162
    note = L['deepflayer_broodmother_note'],
    pois = {
        Path({
            53000880, 49040974, 46751191, 44871082, 44150911, 41540943,
            45001210, 45741770, 53302261, 56010925, 53000880
        })
    },
    rewards = {
        Achievement({id = 40837, criteria = 69636}),
        Transmog({item = 221507, slot = L['cloak']}) -- Earth Golem's Wrap
    }
}) -- Deepflayer Broodmother

map.nodes[65354950] = Rare({
    id = 221199,
    quest = 81648, -- 84048
    rlabel = ReputationGain(150, 2594), -- The Assembly of the Deeps
    rewards = {Achievement({id = 40837, criteria = 69639})}
}) -- Hungerer of the Deeps

map.nodes[47064697] = Rare({
    id = 220287,
    quest = 81485, -- 84047
    rlabel = ReputationGain(150, 2594), -- The Assembly of the Deeps
    rewards = {Achievement({id = 40837, criteria = 69635})}
}) -- Kelpmire

map.nodes[42773508] = Rare({
    id = 220275,
    quest = 80547, -- One Time Kill
    rewards = {
        Achievement({id = 40837, criteria = 69624}),
        Transmog({item = 223353, slot = L['cloth']}), -- Waterskipper's Trousers
        Transmog({item = 223355, slot = L['leather']}), -- Waterskipper's Leggings
        Transmog({item = 223354, slot = L['mail']}), -- Waterskipper's Chain Leggings
        Transmog({item = 223352, slot = L['plate']}) -- Waterskipper's Legplates
    }
}) -- King Splash

map.nodes[74002000] = Rare({ -- review
    id = 220285,
    quest = 81633, -- review -- need rep quest id if triggered
    rewards = {
        Achievement({id = 40837, criteria = 69637}),
        Mount({item = 223501, id = 2205}) -- Ol' Mole Rufus
    }
}) -- Lurker of the Deeps

map.nodes[57015473] = Rare({
    id = 220273,
    quest = 81563, -- One time kill
    rewards = {
        Achievement({id = 40837, criteria = 69626}),
        Transmog({item = 223401, slot = L['cloth']}), -- Corrupted Earthen Wristwraps
        Transmog({item = 223404, slot = L['leather']}), -- Corrupted Earthen Cuffs
        Transmog({item = 223403, slot = L['mail']}), -- Corrupted Earthen Binds
        Transmog({item = 223402, slot = L['plate']}) -- Corrupted Earthen Wristguards
    }
}) -- Rampaging Blight

map.nodes[66214622] = Rare({
    id = 221217,
    quest = 81652, -- 84049 (rep based on pattern) 83405?? not sure why 3 triggered
    rlabel = ReputationGain(150, 2594), -- The Assembly of the Deeps
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
    quest = 80507, -- 84040
    rlabel = ReputationGain(150, 2594), -- The Assembly of the Deeps
    rewards = {
        Achievement({id = 40837, criteria = 69628}),
        Transmog({item = 221242, slot = L['plate']}) -- Forgeborn Helm

    }
}) -- Terror of the Forge

map.nodes[71654630] = Rare({
    id = 220268,
    quest = 80574, -- 84043
    note = L['trungal_note'],
    rlabel = ReputationGain(150, 2594), -- The Assembly of the Deeps
    rewards = {
        Achievement({id = 40837, criteria = 69631}),
        Transmog({item = 221228, slot = L['cloth']}) -- Infested Fungal Wristwraps
    },
    pois = {POI({72844447})} -- Entrance
}) -- Trungal

map.nodes[52032657] = Rare({
    id = 220270,
    quest = 80506, -- 84041
    rlabel = ReputationGain(150, 2594), -- The Assembly of the Deeps
    rewards = {
        Achievement({id = 40837, criteria = 69629}),
        Transmog({item = 221220, slot = L['leather']}) -- Basilisk Scale Pauldrons
    }
}) -- Zilthara

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[63086311] = Treasure({ -- lvl 71
    quest = 82230,
    rewards = {Achievement({id = 40724, criteria = 69281})}
}) -- Cursed Pickaxe

map.nodes[45511745] = Treasure({ -- lvl 71
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
    rlabel = ReputationGain(150, 2594), -- The Assembly of the Deeps
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
    rlabel = ReputationGain(150, 2594), -- The Assembly of the Deeps
    rewards = {
        Achievement({id = 40724, criteria = 69313}), Toy({item = 224783}) -- Sovereign's Finery Chest
    },
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
    rlabel = ReputationGain(150, 2594), -- The Assembly of the Deeps
    rewards = {Achievement({id = 40724, criteria = 69280})},
    pois = {POI({68714072})} -- Entrance
}) -- Webbed Knapsack

-------------------------------------------------------------------------------
----------------------------- PROFESSION TREASURES ----------------------------
-------------------------------------------------------------------------------

map.nodes[42212415] = PT.Alchemy({quest = 83842, id = 226267}) -- Reinforced Beaker
map.nodes[64966175] = PT.Alchemy({quest = 83843, id = 226268}) -- Engraved Stirring Rod
map.nodes[47703316] = PT.Blacksmithing({quest = 83850, id = 226278}) -- Ringing Hammer Vise
map.nodes[60535368] = PT.Blacksmithing({quest = 83851, id = 226279}) -- Earthen Chisels
map.nodes[44612213] = PT.Enchanting({quest = 83860, id = 226286}) -- Soot-Coated Orb
map.nodes[67186590] = PT.Enchanting({quest = 83861, id = 226287}) -- Animated Enchanting Dust1
map.nodes[42632725] = PT.Engineering({quest = 83868, id = 226294}) -- Inert Mining Bomb
map.nodes[64495875] = PT.Engineering({quest = 83869, id = 226295}) -- Earthen Construct Blueprints
map.nodes[48563432] = PT.Inscription({quest = 83883, id = 226310}) -- Runic Scroll
map.nodes[62465801] = PT.Inscription({quest = 83885, id = 226311}) -- Blue Earthen Pigment
map.nodes[48243504] = PT.Herbalism({quest = 83876, id = 226302}) -- Earthen Digging Fork
map.nodes[52916581] = PT.Herbalism({quest = 83877, id = 226303}) -- Fungarian Slicer's Knife
map.nodes[48493513] = PT.Jewelcrafting({quest = 83892, id = 226318}) -- Carved Stone File
map.nodes[56985453] = PT.Jewelcrafting({quest = 83893, id = 226319}) -- Jeweler's Delicate Drill
map.nodes[47053489] = PT.Leatherworking({quest = 83900, id = 226326}) -- Underground Stropping Compound
map.nodes[64286527] = PT.Leatherworking({quest = 83901, id = 226327}) -- Earthen Awl
map.nodes[49422755] = PT.Mining({quest = 83908, id = 226334}) -- Earthen Excavator's Shovel
map.nodes[66266624] = PT.Mining({quest = 83909, id = 226335}) -- Regenerating Ore
map.nodes[47302833] = PT.Skinning({quest = 83916, id = 226342}) -- Artisan's Drawing Knife
map.nodes[65696190] = PT.Skinning({quest = 83917, id = 226343}) -- Fungarian's Rich Tannin
map.nodes[48823286] = PT.Tailoring({
    quest = 83924,
    id = 226350,
    pois = {POI({47703216})} -- Entrance
}) -- Runed Earthen Pins
map.nodes[64156033] = PT.Tailoring({quest = 83925, id = 226351}) -- Earthen Stitcher's Snips

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

map.nodes[45304640] = BustedConsole({
    location = L['water_console_location'],
    rewards = {Achievement({id = 40473, criteria = 68658})}
}) -- Water Console

map.nodes[59049339] = BustedConsole({
    location = L['abyssal_console_location'],
    rewards = {Achievement({id = 40473, criteria = 68659})}
}) -- Abyssal Console

map.nodes[63696115] = BustedConsole({
    location = L['taelloch_console_location'],
    rewards = {Achievement({id = 40473, criteria = 68660})}
}) -- Taelloch Console

map.nodes[69064879] = BustedConsole({
    location = L['obsidian_console_location'],
    rewards = {Achievement({id = 40473, criteria = 68661})}
}) -- Obsidian Console

map.nodes[56382253] = BustedConsole({
    location = L['lost_console_location'],
    rewards = {Achievement({id = 40473, criteria = 68662})}
}) -- Lost Console

map.nodes[46291411] = BustedConsole({
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

map.nodes[51071448] = MachineSpeakerNote({
    location = L['fragment_III_location'],
    rewards = {Achievement({id = 40628, criteria = 68993})}
}) -- Notes On The Machine Speakers: Fragment III

map.nodes[39892099] = MachineSpeakerNote({
    location = L['fragment_IV_location'],
    rewards = {Achievement({id = 40628, criteria = 68994})}
}) -- Notes On The Machine Speakers: Fragment IV

map.nodes[63695878] = MachineSpeakerNote({
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

map.nodes[46713076] = DisturbedEarth()
map.nodes[47453785] = DisturbedEarth()
map.nodes[49361113] = DisturbedEarth()
map.nodes[51821194] = DisturbedEarth()
map.nodes[52713193] = DisturbedEarth()
map.nodes[52991720] = DisturbedEarth()
map.nodes[53611070] = DisturbedEarth()
map.nodes[54823031] = DisturbedEarth()
map.nodes[55572820] = DisturbedEarth()
map.nodes[55673637] = DisturbedEarth()
map.nodes[55763100] = DisturbedEarth()
map.nodes[55893943] = DisturbedEarth()
map.nodes[55896839] = DisturbedEarth()
map.nodes[56576361] = DisturbedEarth()
map.nodes[56704160] = DisturbedEarth()
map.nodes[56752418] = DisturbedEarth()
map.nodes[57056517] = DisturbedEarth()
map.nodes[57056845] = DisturbedEarth()
map.nodes[57142299] = DisturbedEarth()
map.nodes[57263511] = DisturbedEarth()
map.nodes[57497726] = DisturbedEarth()
map.nodes[57514834] = DisturbedEarth()
map.nodes[57663957] = DisturbedEarth()
map.nodes[57914262] = DisturbedEarth()
map.nodes[58036805] = DisturbedEarth()
map.nodes[58846629] = DisturbedEarth()
map.nodes[59207742] = DisturbedEarth()
map.nodes[59227892] = DisturbedEarth()
map.nodes[59235361] = DisturbedEarth()
map.nodes[59612851] = DisturbedEarth()
map.nodes[60039242] = DisturbedEarth()
map.nodes[60222998] = DisturbedEarth()
map.nodes[61255312] = DisturbedEarth()
map.nodes[62563191] = DisturbedEarth()
map.nodes[63103270] = DisturbedEarth()
map.nodes[63756316] = DisturbedEarth()
map.nodes[64066137] = DisturbedEarth()
map.nodes[64656659] = DisturbedEarth()
map.nodes[65393974] = DisturbedEarth()
map.nodes[66733837] = DisturbedEarth()
map.nodes[67753931] = DisturbedEarth()
map.nodes[67794830] = DisturbedEarth()
map.nodes[75624339] = DisturbedEarth() -- ?
