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
local SkyridingGlyph = ns.node.SkyridingGlyph

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog
local Reputation = ns.reward.Reputation
local Section = ns.reward.Section
local Spacer = ns.reward.Spacer

local Entrance = ns.poi.Entrance
local Path = ns.poi.Path
local POI = ns.poi.POI

-- local ItemStatus = ns.tooltip.ItemStatus

-------------------------------------------------------------------------------
------------------------------------ MAPS -------------------------------------
-------------------------------------------------------------------------------

local taz = Map({id = 2472, settings = true})
local map = Map({id = 2371, settings = true})

-------------------------------------------------------------------------------
--------------------------------- Reshii Wraps --------------------------------
-------------------------------------------------------------------------------

local ReshiiWraps = Class('ReshiiWraps', ns.requirement.Requirement)

function ReshiiWraps:Initialize(definitionID, nodeID)
    local definitionInfo = C_Traits.GetDefinitionInfo(definitionID)
    self.text = definitionInfo and definitionInfo.overrideName or UNKNOWN
    self.type = '{item:235499}' -- Reshii Wraps
    self.nodeID = nodeID
end

function ReshiiWraps:IsMet()
    local configID = C_Traits.GetConfigIDByTreeID(1115)
    if not configID then return false end
    local nInfo = C_Traits.GetNodeInfo(configID, self.nodeID)
    return nInfo and nInfo.ranksPurchased and nInfo.ranksPurchased > 0
end

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

taz.nodes[72948327] = Rare({
    id = 232098,
    quest = 90587,
    parent = {
        id = map.id,
        pois = {
            Path({73658421, 73258427, 72158471, 71718522, 71538576, 71638622})
        }
    },
    pois = {Path({81987555, 80167580, 75177783, 73188013, 72388259, 72838465})},
    rewards = {
        Achievement({id = 42761, criteria = 106331}),
        Reputation({id = 2658, gain = 15, quest = 90676}), -- The K'aresh Trust
        Transmog({item = 239477, slot = L['plate']}), -- Reshii Brute's Epaulettes
        Transmog({item = 239460, slot = L['leather']}), -- Reshii Scout's Breeches
        Transmog({item = 239455, slot = L['cloth']}), -- Reshii Magi's Bands
        Toy({item = 242323}) -- Chowdar's Favorite Ribbon
    }
}) -- "Chowdar" <Escaped Auction Parcel #8675308>

map.nodes[75233098] = Rare({
    id = 245998,
    note = L['heka_tamos_note'],
    quest = 91276,
    rewards = {
        Achievement({id = 42761, criteria = 106334}),
        Reputation({id = 2658, gain = 15, quest = 91422}), -- The K'aresh Trust
        Pet({item = 245272, id = 4846}) -- Heka'Tarnos, Bringer of Discord
        -- item - [Reshii Magi's Pendant]
    }
    --[[ pois = {
        POI({
            label = '{object:551887}', -- Windcatcher (need local string) respawns in differnt spots :()
            points = {76983177}
        }), POI({
            label = '{object:551884}', -- Dewminder
            points = {72713472}
        }), POI({
            label = '{object:551890}', -- earthy succulent
            points = {71783462}
        }), POI({
            label = '{object:551893}', -- Spectral Lantern
            points = {72572845}
        })
    }
    ]]
}) -- Heka'tamos <the Elemental Disjunction> collect 4 element from around the eco dome then interact with brazer

map.nodes[63824363] = Rare({
    id = 232128,
    quest = 90596,
    requires = ns.requirement.Spell(1214374), -- Phase Diving
    rewards = {
        Achievement({id = 42761, criteria = 106245}),
        Achievement({id = 42736, criteria = 106245}),
        Reputation({id = 2658, gain = 15, quest = 90685}) -- The K'aresh Trust
    }
}) -- Ixthar the Unblinking

map.nodes[66314258] = Rare({
    id = 232077,
    requires = ns.requirement.Spell(1214374), -- Phase Diving
    pois = {Path({67963990, 65604364})},
    quest = 90586,
    rewards = {
        Achievement({id = 42761, criteria = 106335}),
        Reputation({id = 2658, gain = 15, quest = 90675}), -- The K'aresh Trust
        Transmog({item = 239475, slot = L['plate']}), -- Reshii Brute's Helmet
        Transmog({item = 239462, slot = L['leather']}), -- Reshii Scout's Belt
        Transmog({item = 239448, slot = L['cloth']}) -- Reshii Magi's Vestments
    }
}) -- Korgorath the Ravager

map.nodes[54055884] = Rare({
    id = 245997,
    quest = 91275,
    rewards = {
        Achievement({id = 42761, criteria = 106336}),
        Reputation({id = 2658, gain = 15, quest = 91421}), -- The K'aresh Trust
        Pet({item = 245214, id = 4838}) -- Palek'ti, the Mouth of Nothingness
    }
}) -- Malek'ta <The Jaws of Oblivion> (inspect nearby Juvenile Dustback corspe then head NE and jump on spawn point)

map.nodes[54455445] = Rare({
    id = 231981,
    quest = 90594,
    requires = ns.requirement.Spell(1214374), -- Phase Diving
    rewards = {
        Achievement({id = 42761, criteria = 106337}),
        Reputation({id = 2658, gain = 15, quest = 90594}) -- The K'aresh Trust
    }
}) -- Maw of the Sands

map.nodes[56205058] = Rare({
    id = 232108,
    quest = 90588,
    requires = ns.requirement.Spell(1214374), -- Phase Diving
    rewards = {
        Achievement({id = 42761, criteria = 106338}),
        Reputation({id = 2658, gain = 15, quest = 90677}), -- The K'aresh Trust
        Transmog({item = 239472, slot = L['plate']}), -- Reshii Brute's Breastplate
        Transmog({item = 239457, slot = L['leather']}), -- Reshii Scout's Soles
        Transmog({item = 239450, slot = L['cloth']}), -- Reshii Magi's Gloves
        Pet({item = 244915, id = 4834}) -- Jimmy
    }
}) -- Morgil the Netherspawn - patrols

map.nodes[52782081] = Rare({
    id = 232127,
    quest = 90595,
    requires = ns.requirement.Spell(1214374), -- Phase Diving
    rewards = {
        Achievement({id = 42761, criteria = 106339}),
        Reputation({id = 2658, gain = 15, quest = 90684}) -- The K'aresh Trust
    }
}) -- Orith the Dreadful

map.nodes[45782425] = Rare({
    id = 232182,
    requires = ns.requirement.Spell(1214374), -- Phase Diving
    quest = 90590,
    rewards = {
        Achievement({id = 42761, criteria = 106341}),
        Reputation({id = 2658, gain = 15, quest = 90679}), -- The K'aresh Trust
        Transmog({item = 239478, slot = L['plate']}), -- Reshii Brute's Greatbelt
        Transmog({item = 239464, slot = L['mail']}), -- Reshii Skirmisher's Brigandine
        Transmog({item = 239449, slot = L['cloth']}) -- Reshii Magi's Slippers
    }
}) -- Prototype Mk-V (46262459-45832393) patrol path

map.nodes[50536469] = Rare({
    id = 232189,
    requires = ns.requirement.Spell(1214374), -- Phase Diving
    quest = 90591,
    rewards = {
        Achievement({id = 42761, criteria = 106342}),
        Reputation({id = 2658, gain = 15, quest = 90680}), -- The K'aresh Trust
        Transmog({item = 239476, slot = L['plate']}), -- Reshii Brute's Greaves
        Transmog({item = 239471, slot = L['mail']}), -- Reshii Skirmisher's Armguards
        Transmog({item = 239459, slot = L['leather']}) -- Reshii Scout's Hood
    }
}) -- Revenant of the Wasteland

map.nodes[72205557] = Rare({
    id = 232006,
    requires = ns.requirement.Spell(1214374), -- Phase Diving
    quest = 90585,
    rewards = {
        Achievement({id = 42761, criteria = 106343}),
        Reputation({id = 2658, gain = 15, quest = 90673}), -- The K'aresh Trust
        Transmog({item = 239465, slot = L['mail']}), -- Reshii Skirmisher's Boots
        Transmog({item = 239458, slot = L['leather']}), -- Reshii Scout's Grips
        Transmog({item = 239453, slot = L['cloth']}) -- Reshii Magi's Spines
    }
}) -- Sha'ryth the Cursed (patrols needs path)

map.nodes[54174911] = Rare({
    id = 232129,
    quest = 90583,
    requires = ns.requirement.Spell(1214374), -- Phase Diving
    rewards = {
        Achievement({id = 42761, criteria = 106344}),
        Reputation({id = 2658, gain = 15, quest = 90674}), -- The K'aresh Trust
        Transmog({item = 239474, slot = L['plate']}), -- Reshii Brute's Handguards
        Transmog({item = 239469, slot = L['mail']}), -- Reshii Skirmisher's Pauldrons
        Transmog({item = 239452, slot = L['cloth']}) -- Reshii Magi's Leggings
    }
}) -- Shadowhowl

map.nodes[76754219] = Rare({
    id = 232193,
    quest = 90592,
    requires = ns.requirement.Spell(1214374), -- Phase Diving
    rewards = {
        Achievement({id = 42761, criteria = 106345}),
        Reputation({id = 2658, gain = 15, quest = 90681}), -- The K'aresh Trust
        Transmog({item = 239466, slot = L['mail']}), -- Reshii Skirmisher's Gauntlets
        Transmog({item = 239461, slot = L['leather']}) -- Reshii Scout's Shoulderpads
    }
}) -- Stalker of the Wastes

map.nodes[74043254] = Rare({
    id = 234845,
    note = L['sthaarbs_note'],
    pois = {POI({75813291})},
    quest = 91293,
    requires = ns.requirement.Spell(1214374), -- Phase Diving
    rewards = {
        Achievement({id = 42761, criteria = 106346}),
        Reputation({id = 2658, gain = 15, quest = 91431}), -- The K'aresh Trust
        Mount({item = 246160, id = 2603}) -- Sthaarbs's Last Lunch
    }
}) -- Sthaarbs <the Mindroiler> use portal near the phase pad to get upto rare

map.nodes[52705660] = Rare({
    id = 232111,
    requires = ns.requirement.Spell(1214374), -- Phase Diving
    quest = 90589,
    rewards = {
        Achievement({id = 42761, criteria = 106347}),
        Reputation({id = 2658, gain = 15, quest = 90678}), -- The K'aresh Trust
        Transmog({item = 239479, slot = L['plate']}), -- Reshii Brute's Vambraces
        Transmog({item = 239467, slot = L['mail']}), -- Reshii Skirmisher's Cowl
        Transmog({item = 239454, slot = L['cloth']}), -- Reshii Magi's Cord
        Pet({item = 245254, id = 4842}) -- Duskthief
    }
}) -- The Nightreaver (flys about need path?)

map.nodes[70144983] = Rare({
    id = 232195,
    requires = ns.requirement.Spell(1214374), -- Phase Diving
    quest = 90593,
    rewards = {
        Achievement({id = 42761, criteria = 106348}),
        Reputation({id = 2658, gain = 15, quest = 90682}), -- The K'aresh Trust
        Transmog({item = 239473, slot = L['plate']}), -- Reshii Brute's Sollerets
        Transmog({item = 239470, slot = L['mail']}), -- Reshii Skirmisher's Sash
        Transmog({item = 239456, slot = L['leather']}), -- Reshii Scout's Jerkin
        Mount({item = 246067, id = 2601}) -- Pearlescent Krolusk
    }
}) -- Urmag <The Terror Below>

map.nodes[65144998] = Rare({
    id = 232199,
    requires = ns.requirement.Spell(1214374), -- Phase Diving
    quest = 90584,
    rewards = {
        Achievement({id = 42761, criteria = 106349}),
        Reputation({id = 2658, gain = 15, quest = 90672}), -- The K'aresh Trust
        Transmog({item = 239468, slot = L['mail']}), -- Reshii Skirmisher's Legguards
        Transmog({item = 239463, slot = L['leather']}), -- Reshii Scout's Bracers
        Transmog({item = 239451, slot = L['cloth']}) -- Reshii Magi's Crown
    }
}) -- Xarran the Binder

-------------------------------------------------------------------------------
------------------------- MOUNT: TRANSLOCATED GORGER --------------------------
-------------------------------------------------------------------------------

map.nodes[71402760] = Rare({
    id = 231229,
    note = L['translocated_gorger_note'],
    quest = 84993,
    rewards = {
        Item({item = 246240, weekly = 91309}), -- Devoured Energy-Pod
        Mount({item = 246159, id = 2602}), -- Translocated Gorger
        Spacer(), Section(L['shared_drops']),
        Transmog({item = 240111, slot = L['1h_axe']}), -- Reshii Skirmisher's Axe
        Transmog({item = 240112, slot = L['dagger']}), -- Reshii Scout's Blade
        Transmog({item = 240113, slot = L['dagger']}), -- Reshii Magi's Dagger
        Transmog({item = 240114, slot = L['1h_mace']}), -- Reshii Skirmisher's Morningstar
        Transmog({item = 240115, slot = L['1h_mace']}), -- Reshii Brute's Warmace
        Transmog({item = 240116, slot = L['1h_sword']}), -- Reshii Brute's Longsword
        Transmog({item = 240117, slot = L['wand']}), -- Reshii Magi's Wand
        Transmog({item = 240118, slot = L['polearm']}), -- Reshii Brute's Spear
        Transmog({item = 240119, slot = L['staff']}), -- Reshii Skirmisher's Staff
        Transmog({item = 240120, slot = L['offhand']}), -- Reshii Magi's Lantern
        Transmog({item = 240121, slot = L['shield']}) -- Reshii Brute's Barrier
    }
}) -- Korgoth the Hungerer

map.nodes[50605410] = Rare({
    id = 234970,
    note = L['translocated_gorger_note'],
    quest = 86447,
    rewards = {
        Item({item = 246240, weekly = 91310}), -- Devoured Energy-Pod
        Mount({item = 246159, id = 2602}), -- Translocated Gorger
        Spacer(), Section(L['shared_drops']),
        Transmog({item = 240111, slot = L['1h_axe']}), -- Reshii Skirmisher's Axe
        Transmog({item = 240112, slot = L['dagger']}), -- Reshii Scout's Blade
        Transmog({item = 240113, slot = L['dagger']}), -- Reshii Magi's Dagger
        Transmog({item = 240114, slot = L['1h_mace']}), -- Reshii Skirmisher's Morningstar
        Transmog({item = 240115, slot = L['1h_mace']}), -- Reshii Brute's Warmace
        Transmog({item = 240116, slot = L['1h_sword']}), -- Reshii Brute's Longsword
        Transmog({item = 240117, slot = L['wand']}), -- Reshii Magi's Wand
        Transmog({item = 240118, slot = L['polearm']}), -- Reshii Brute's Spear
        Transmog({item = 240119, slot = L['staff']}), -- Reshii Skirmisher's Staff
        Transmog({item = 240120, slot = L['offhand']}), -- Reshii Magi's Lantern
        Transmog({item = 240121, slot = L['shield']}) -- Reshii Brute's Barrier
    }
}) -- Miasmawrath

map.nodes[49506420] = Rare({
    id = 235087,
    note = L['translocated_gorger_note'],
    quest = 86464,
    rewards = {
        Item({item = 246240, weekly = 91311}), -- Devoured Energy-Pod
        Mount({item = 246159, id = 2602}), -- Translocated Gorger
        Spacer(), Section(L['shared_drops']),
        Transmog({item = 240111, slot = L['1h_axe']}), -- Reshii Skirmisher's Axe
        Transmog({item = 240112, slot = L['dagger']}), -- Reshii Scout's Blade
        Transmog({item = 240113, slot = L['dagger']}), -- Reshii Magi's Dagger
        Transmog({item = 240114, slot = L['1h_mace']}), -- Reshii Skirmisher's Morningstar
        Transmog({item = 240115, slot = L['1h_mace']}), -- Reshii Brute's Warmace
        Transmog({item = 240116, slot = L['1h_sword']}), -- Reshii Brute's Longsword
        Transmog({item = 240117, slot = L['wand']}), -- Reshii Magi's Wand
        Transmog({item = 240118, slot = L['polearm']}), -- Reshii Brute's Spear
        Transmog({item = 240119, slot = L['staff']}), -- Reshii Skirmisher's Staff
        Transmog({item = 240120, slot = L['offhand']}), -- Reshii Magi's Lantern
        Transmog({item = 240121, slot = L['shield']}) -- Reshii Brute's Barrier
    }
}) -- The Harvester

taz.nodes[27507230] = Rare({
    id = 235104,
    note = L['translocated_gorger_note'],
    parent = map.id,
    quest = 86465,
    rewards = {
        Item({item = 246240, weekly = 91312}), -- Devoured Energy-Pod
        Mount({item = 246159, id = 2602}), -- Translocated Gorger
        Spacer(), Section(L['shared_drops']),
        Transmog({item = 240111, slot = L['1h_axe']}), -- Reshii Skirmisher's Axe
        Transmog({item = 240112, slot = L['dagger']}), -- Reshii Scout's Blade
        Transmog({item = 240113, slot = L['dagger']}), -- Reshii Magi's Dagger
        Transmog({item = 240114, slot = L['1h_mace']}), -- Reshii Skirmisher's Morningstar
        Transmog({item = 240115, slot = L['1h_mace']}), -- Reshii Brute's Warmace
        Transmog({item = 240116, slot = L['1h_sword']}), -- Reshii Brute's Longsword
        Transmog({item = 240117, slot = L['wand']}), -- Reshii Magi's Wand
        Transmog({item = 240118, slot = L['polearm']}), -- Reshii Brute's Spear
        Transmog({item = 240119, slot = L['staff']}), -- Reshii Skirmisher's Staff
        Transmog({item = 240120, slot = L['offhand']}), -- Reshii Magi's Lantern
        Transmog({item = 240121, slot = L['shield']}) -- Reshii Brute's Barrier
    }
}) -- The Wallbreaker

-------------------------------------------------------------------------------
-------------------------------- WARRANT RARES --------------------------------
-------------------------------------------------------------------------------

taz.nodes[71135712] = Rare({
    id = 238540,
    parent = map.id,
    quest = 90698,
    requires = ns.requirement.Item(236967), -- [Grubber Lure] from warrants
    rewards = {
        Achievement({id = 42761, criteria = 106333}),
        Achievement({id = 41980, criteria = 104425}),
        Reputation({id = 2658, gain = 15, quest = 90699}), -- The K'aresh Trust
        Transmog({item = 239478, slot = L['plate']}), -- Reshii Brute's Greatbelt
        Transmog({item = 239465, slot = L['mail']}), -- Reshii Skirmisher's Boots
        Transmog({item = 239469, slot = L['mail']}), -- Reshii Skirmisher's Pauldrons
        Transmog({item = 239463, slot = L['leather']}), -- Reshii Scout's Bracers
        Transmog({item = 239454, slot = L['cloth']}) -- Reshii Magi's Cord
    }
}) -- Grubber

map.nodes[49152824] = Rare({
    id = 238144,
    quest = 90687,
    requires = ns.requirement.Item(236353), -- [Shatterpulse Cell Key] from warrants
    rewards = {
        -- Achievement({id = 42761, criteria = 106349}),
        Achievement({id = 41980, criteria = 104427}),
        Reputation({id = 2658, gain = 15, quest = 90688}) -- The K'aresh Trust
    }
}) -- Shatterpulse

taz.nodes[35053647] = Rare({
    id = 241956,
    parent = map.id,
    quest = 90696,
    requires = ns.requirement.Item(239314), -- [Arcane Lure] from warrants
    rewards = {
        Achievement({id = 42761, criteria = 106332}),
        Achievement({id = 41980, criteria = 104424}),
        Reputation({id = 2658, gain = 15, quest = 90697}) -- The K'aresh Trust
    }
}) -- Arcana-Monger So'zer

map.nodes[48441696] = Rare({
    id = 238536,
    quest = 90689,
    requires = ns.requirement.Item(236957), -- [Hollowbane Portal Key] from warrants
    rewards = {
        -- Achievement({id = 42761, criteria = 106349}),
        Achievement({id = 41980, criteria = 104428}),
        Reputation({id = 2658, gain = 15, quest = 90691}) -- The K'aresh Trust
    }
}) -- Hollowbane

map.nodes[42505755] = Rare({
    id = 241920,
    quest = 90692,
    requires = ns.requirement.Item(239276), -- [Purple Peat Cell Key] from warrants
    rewards = {
        -- Achievement({id = 42761, criteria = 106349}),
        Achievement({id = 41980, criteria = 104426}),
        Reputation({id = 2658, gain = 15, quest = 90693}), -- The K'aresh Trust
        Transmog({item = 239472, slot = L['plate']}), -- Reshii Brute's Breastplate
        Transmog({item = 239466, slot = L['mail']}), -- Reshii Skirmisher's Gauntlets
        Transmog({item = 239460, slot = L['leather']}), -- Reshii Scout's Breeches
        Transmog({item = 239459, slot = L['leather']}), -- Reshii Scout's Hood
        Transmog({item = 239448, slot = L['cloth']}) -- Reshii Magi's Vestments
    }
}) -- Purple Peat

taz.nodes[31155818] = Rare({
    id = 238384,
    parent = map.id,
    quest = 90694,
    requires = ns.requirement.Item(236753), -- [Xy'vox Refuge Dampener] from warrants
    rewards = {
        -- Achievement({id = 42761, criteria = 106349}),
        Achievement({id = 41980, criteria = 104429}),
        Reputation({id = 2658, gain = 15, quest = 90695}), -- The K'aresh Trust
        Transmog({item = 239479, slot = L['plate']}), -- Reshii Brute's Vambraces
        Transmog({item = 239470, slot = L['mail']}), -- Reshii Skirmisher's Sash
        Transmog({item = 239457, slot = L['leather']}), -- Reshii Scout's Soles
        Transmog({item = 239461, slot = L['leather']}), -- Reshii Scout's Shoulderpads
        Transmog({item = 239455, slot = L['cloth']}) -- Reshii Magi's Bands
    }
}) -- Xy'vox The Twisted

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[76114526] = Treasure({
    note = L['gift_of_the_brothers_note'],
    pois = {
        POI({
            color = 'Red',
            label = '{npc:234112}', -- Naji
            quest = 86066,
            points = {68304530}
        }), POI({
            color = 'Yellow',
            label = '{npc:234113}', -- M'alim
            quest = 86067,
            points = {69806050}
        }), POI({
            color = 'Green',
            label = '{npc:234075}', -- Sahra
            quest = 86065,
            points = {75503980}
        })
    },
    quest = {85958, 85959},
    rewards = {
        Achievement({id = 42741, criteria = 106270}),
        Transmog({item = 248199, type = L['offhand']}) -- [The Brothers' Final Gift]
    }

}) -- Gift of the Brothers (speak with 3 npcs at pois then return to Ihya at he flickering lantern)

map.nodes[60903835] = Treasure({
    note = L['ancient_coffer_note'],
    pois = {
        POI({
            color = 'Red',
            label = '{item:233794}', -- Battered Book
            -- quest = 86415,
            points = {66564480}
        }), POI({
            color = 'Yellow',
            label = '{item:233799}', -- Submerged Bottle
            -- quest = 86417,
            points = {76233122}
        })
    },
    quest = 86416,
    requires = {ns.requirement.Item(233794), ns.requirement.Item(233799)}, -- [Battered Book] & [Submerged Bottle]
    rewards = {
        Achievement({id = 42741, criteria = 106271}),
        Pet({item = 245269, id = 4845, count = 1}) -- Mr. Long-Legs
    }
}) -- Ancient Coffer

map.nodes[69745231] = Treasure({
    quest = 85837,
    rewards = {Achievement({id = 42741, criteria = 106272})}
}) -- Forlorn Wind Chime

taz.nodes[47766265] = Treasure({
    note = L['mailroom_distribution_note'],
    parent = map.id,
    pois = {POI({points = {46676445, 47456925, 48656722, 48326555}})},
    quest = 86467,
    rewards = {
        Achievement({id = 42741, criteria = 106273}), Toy({item = 245970}) -- [P.O.S.T. Master's Express Hearthstone]
    }
}) -- Mailroom Distribution (need to write insturctions, click mailoverflow go into room head to swirls and press extra action button then chest spawns near door)

map.nodes[64104398] = Treasure({
    quest = 86492,
    rewards = {
        Achievement({id = 42741, criteria = 106244}),
        Achievement({id = 42736, criteria = 106244})
    }
}) -- Ixthar's Favorite Crystal

map.nodes[60544213] = Treasure({
    quest = 86301,
    note = L['in_small_cave'],
    rewards = {Achievement({id = 42741, criteria = 106274})}
}) -- Wastelander Stash

map.nodes[65346362] = Treasure({
    quest = 86304,
    rewards = {Achievement({id = 42741, criteria = 106275})}
}) -- Tumbled Package

map.nodes[70204773] = Treasure({
    quest = 86306,
    note = L['in_cave'],
    rewards = {Achievement({id = 42741, criteria = 106276})},
    pois = {Entrance({68794783})}
}) -- Rashaal's Vase

map.nodes[75065534] = Treasure({
    quest = 86308,
    rewards = {Achievement({id = 42741, criteria = 108722})}
}) -- Shattered Crystals

map.nodes[77782787] = Treasure({
    quest = 86322,
    rewards = {
        Achievement({id = 42741, criteria = 106277}),
        Pet({item = 243158, id = 4813, count = 1}) -- Ixthal the Observling
    }
}) -- Skeletal Tail Bones

map.nodes[58653434] = Treasure({
    quest = 86323,
    rewards = {
        Achievement({id = 42741, criteria = 106278}),
        Transmog({item = 246295, type = L['1h_mace']}) -- Tazavesh Lookout's Mace
    }
}) -- Crudely Stitched Sack

local AbandonedLockbox = Class('AbandonedLockbox', Treasure, {
    note = L['multiple_spawns'],
    quest = 92348,
    fgroup = 'abandoned_lockbox',
    rewards = {
        Achievement({id = 42741, criteria = 108723}),
        Transmog({item = 246299, type = L['1h_sword']})
    }
}) -- Abandoned Lockbox

map.nodes[53985926] = AbandonedLockbox()
map.nodes[60106090] = AbandonedLockbox()
map.nodes[53955496] = AbandonedLockbox()
map.nodes[59755372] = AbandonedLockbox()
map.nodes[58643431] = AbandonedLockbox()

local LightlyDentedLuggage = Class('LightlyDentedLuggage', Treasure, {
    note = L['multiple_spawns'],
    quest = 91352,
    fgroup = 'lightly_dented_luggage',
    rewards = {Achievement({id = 42741, criteria = 106279})}
}) -- Lightly-Dented Luggage

map.nodes[53706405] = LightlyDentedLuggage()
map.nodes[54956245] = LightlyDentedLuggage()
map.nodes[55696415] = LightlyDentedLuggage()

map.nodes[54462444] = Treasure({
    quest = 85840,
    rewards = {
        Achievement({id = 42741, criteria = 106280}),
        Transmog({item = 246297, type = L['staff']}) -- [Desperate Defender's Bladed Staff]
    }
}) -- Sand-Worn Coffer

map.nodes[52096833] = Treasure({
    quest = 89378,
    requires = {
        ns.requirement.Spell(1214374), -- Phase Diving & treasure one
        ReshiiWraps(135401, 105870) -- What Lies Beyond
    },
    rewards = {
        Achievement({id = 42741, criteria = 106224}),
        Achievement({id = 42730, criteria = 106224, oneline = true}), -- Jump, Jump, and Away! (need to validate)
        Transmog({item = 246293, type = L['shield']}) -- [Buckler of the Last Stand]

    }
}) -- Ethereal Voidforged Container (recommend "untethered Xy'bucha" potion if you are bad at jumping puzzles fly top top of ledge then use)

map.nodes[52504677] = Treasure({
    quest = 90511,
    requires = {
        ns.requirement.Spell(1214374), -- Phase Diving & treasure one
        ReshiiWraps(135401, 105870) -- What Lies Beyond
    },
    rewards = {
        Achievement({id = 42741, criteria = 106281}),
        Transmog({item = 243002, type = L['1h_axe']}) -- [Light-Soaked Cleaver]
    }

}) -- Light-Soaked Cleaver

taz.nodes[23694682] = Treasure({
    parent = map.id,
    quest = 90512,
    requires = {
        ns.requirement.Spell(1214374), -- Phase Diving & treasure one
        ReshiiWraps(135401, 105870) -- What Lies Beyond
    },
    rewards = {
        Achievement({id = 42741, criteria = 106296}),
        Transmog({item = 243003, type = L['polearm']}) -- [Spear of Fallen Memories]
    }
}) -- Spear of Fallen Memories

map.nodes[77994894] = Treasure({
    quest = 90514,
    requires = {
        ns.requirement.Spell(1214374), -- Phase Diving & treasure one
        ReshiiWraps(135401, 105870) -- What Lies Beyond
    },
    rewards = {
        Achievement({id = 42741, criteria = 106283}),
        Transmog({item = 243004, type = L['shield']}) -- [Efrat's Forgotten Bulwark]
    }
}) -- Efrat's Forgotten Bulwark

map.nodes[51056509] = Treasure({
    quest = 90522,
    requires = {
        ns.requirement.Spell(1214374), -- Phase Diving & treasure one
        ReshiiWraps(135401, 105870) -- What Lies Beyond
    },
    rewards = {
        Achievement({id = 42741, criteria = 106284}),
        Achievement({id = 42738, oneline = true}), -- We've All Got Swords! Need to validate
        Transmog({item = 243005, type = L['2h_sword']}) -- [Tulwar of the Golden Guard]}
    }
}) -- Tulwar of the Golden Guard

map.nodes[78346154] = Treasure({
    quest = 90515,
    requires = {
        ns.requirement.Spell(1214374), -- Phase Diving & treasure one
        ReshiiWraps(135401, 105870) -- What Lies Beyond
    },
    rewards = {
        Achievement({id = 42741, criteria = 106285}),
        Transmog({item = 243006, type = L['staff']}) -- [Petrified Branch of Janaa]
    }
}) -- Petrified Branch of Janaa

map.nodes[49201805] = Treasure({
    quest = 90527,
    requires = {
        ns.requirement.Spell(1214374), -- Phase Diving & treasure one
        ReshiiWraps(135401, 105870) -- What Lies Beyond
    },
    rewards = {
        Achievement({id = 42741, criteria = 106286}),
        Transmog({item = 243008, type = L['1h_mace']}) -- [Shadowguard Crusher]
    }
}) -- Shadowguard Crusher

map.nodes[80725267] = Treasure({
    quest = 90521,
    requires = {
        ns.requirement.Spell(1214374), -- Phase Diving & treasure one
        ReshiiWraps(135401, 105870) -- What Lies Beyond
    },
    rewards = {
        Achievement({id = 42741, criteria = 106287}),
        Transmog({item = 243009, type = L['offhand']}) -- [Sufaadi Skiff Lantern]
    }
}) -- Sufaadi Skiff Lantern

map.nodes[64434269] = Treasure({
    quest = 90532,
    requires = {
        ns.requirement.Spell(1214374), -- Phase Diving & treasure one
        ReshiiWraps(135401, 105870) -- What Lies Beyond
    },
    rewards = {Achievement({id = 42741, criteria = 106288})}
}) -- Korgorath's Talon

map.nodes[58432259] = Treasure({
    pois = {Entrance({56892408})},
    quest = 91055,
    requires = {
        ns.requirement.Spell(1214374), -- Phase Diving & treasure one
        ReshiiWraps(135401, 105870) -- What Lies Beyond
    },
    rewards = {
        Achievement({id = 42741, criteria = 106289}),
        Transmog({item = 245667, type = L['warglaive']}) -- [Warglaive of the Audacious Hunter]
    }
}) -- Warglaive of the Audacious Hunter

taz.nodes[47476998] = Treasure({
    parent = map.id,
    quest = 91056,
    requires = {
        ns.requirement.Spell(1214374), -- Phase Diving & treasure one
        ReshiiWraps(135401, 105870) -- What Lies Beyond
    },
    rewards = {
        Achievement({id = 42741, criteria = 106290}),
        Transmog({item = 245669, type = L['wand']}) -- [P.O.S.T. Master's Prototype Parcel and Postage Presser]
    }
}) -- P.O.S.T. Master's Prototype Parcel and Postage Presser

map.nodes[50823534] = Treasure({
    quest = 91057,
    requires = {
        ns.requirement.Spell(1214374), -- Phase Diving & treasure one
        ReshiiWraps(135401, 105870) -- What Lies Beyond
    },
    rewards = {
        Achievement({id = 42741, criteria = 106291}),
        Achievement({id = 42738, oneline = true}), -- We've All Got Swords!
        Transmog({item = 245671, type = L['1h_sword']}) -- [Phaseblade of the Void Marches]
    }
}) -- Phaseblade of the Void Marches

taz.nodes[65161472] = Treasure({
    parent = map.id,
    quest = 91058,
    requires = {
        ns.requirement.Spell(1214374), -- Phase Diving & treasure one
        ReshiiWraps(135401, 105870) -- What Lies Beyond
    },
    rewards = {
        Achievement({id = 42741, criteria = 106292}),
        Transmog({item = 245673, type = L['gun']}) -- [Bladed Rifle of Unfettered Momentum]
    }
}) -- Bladed Rifle of Unfettered Momentum

-------------------------------------------------------------------------------
---------------------------- K'ARESH GLYPH HUNTER -----------------------------
-------------------------------------------------------------------------------

map.nodes[61003870] = SkyridingGlyph({
    rewards = {Achievement({id = 42727, criteria = 106183})}
}) -- Castigaar

map.nodes[46505840] = SkyridingGlyph({
    rewards = {Achievement({id = 42727, criteria = 106184})}
}) -- Eco-Dome: Primus

map.nodes[54702340] = SkyridingGlyph({
    rewards = {Achievement({id = 42727, criteria = 106185})}
}) -- Fracture of Laacuna

map.nodes[76504630] = SkyridingGlyph({
    rewards = {Achievement({id = 42727, criteria = 106186})}
}) -- North Sufaad

map.nodes[54705320] = SkyridingGlyph({
    rewards = {Achievement({id = 42727, criteria = 106187})}
}) -- Serrated Peaks

map.nodes[44001700] = SkyridingGlyph({
    rewards = {Achievement({id = 42727, criteria = 106188})}
}) -- Shadow Point

taz.nodes[55106750] = SkyridingGlyph({
    parent = map.id,
    rewards = {Achievement({id = 42727, criteria = 106189})}
}) -- Tazavesh, the Veiled Market

map.nodes[74003250] = SkyridingGlyph({
    rewards = {Achievement({id = 42727, criteria = 106190})}
}) -- The Oasis

-------------------------------------------------------------------------------
-------------------------- SECRETS OF THE K'ARESHI ----------------------------
-------------------------------------------------------------------------------

local KareshLore = Class('karesh_lore_hunter', Collectible,
    {group = ns.groups.KARESH_LORE_HUNTER, icon = 1723993})

taz.nodes[36795807] = KareshLore({
    parent = map.id,
    quest = 91649,
    requires = ns.requirement.Spell(1214374), -- Phase Diving
    rewards = {
        Achievement({id = 60890, criteria = 107306}),
        Reputation({id = 2658, gain = 250, quest = 91649}) -- The K'aresh Trust
    }
}) -- I Have Become Void!

map.nodes[49632676] = KareshLore({
    quest = 91643,
    requires = ns.requirement.Spell(1214374), -- Phase Diving
    rewards = {
        Achievement({id = 60890, criteria = 107307}),
        Reputation({id = 2658, gain = 250, quest = 91643}) -- The K'aresh Trust
    }
}) -- Multiversal Energy Dynamics and the Murmuration Paradox

map.nodes[42292093] = KareshLore({
    quest = 91646,
    requires = ns.requirement.Spell(1214374), -- Phase Diving
    rewards = {
        Achievement({id = 60890, criteria = 107308}),
        Reputation({id = 2658, gain = 250, quest = 91646}) -- The K'aresh Trust
    }
}) -- From Vengeance to Void

map.nodes[72122941] = KareshLore({
    quest = 91647,
    requires = ns.requirement.Spell(1214374), -- Phase Diving
    rewards = {
        Achievement({id = 60890, criteria = 107309}),
        Reputation({id = 2658, gain = 250, quest = 91647}) -- The K'aresh Trust
    }
}) -- The Facets of K'aresh

taz.nodes[38234562] = KareshLore({
    parent = map.id,
    quest = 91687,
    requires = ns.requirement.Spell(1214374), -- Phase Diving
    rewards = {
        Achievement({id = 60890, criteria = 107310}),
        Reputation({id = 2658, gain = 250, quest = 91687}) -- The K'aresh Trust
    }
}) -- Checklist of Minor Pleasures

taz.nodes[46321858] = KareshLore({
    parent = map.id,
    quest = 91645,
    rewards = {
        Achievement({id = 60890, criteria = 107311}),
        Reputation({id = 2658, gain = 250, quest = 91645}) -- The K'aresh Trust
    }
}) -- Ba'key's Aromatic Broker Cookies Recipes

taz.nodes[37282570] = KareshLore({
    parent = map.id,
    quest = 91640,
    rewards = {
        Achievement({id = 60890, criteria = 107312}),
        Reputation({id = 2658, gain = 250, quest = 91640}) -- The K'aresh Trust
    }
}) -- A Dog-eared Book

taz.nodes[58459150] = KareshLore({
    parent = map.id,
    quest = 91642,
    rewards = {
        Achievement({id = 60890, criteria = 107315}),
        Reputation({id = 2658, gain = 250, quest = 91642}) -- The K'aresh Trust
    }
}) -- Mysterious Notebook

taz.nodes[41683982] = KareshLore({
    parent = map.id,
    quest = 91648,
    rewards = {
        Achievement({id = 60890, criteria = 107314}),
        Reputation({id = 2658, gain = 250, quest = 91648}) -- The K'aresh Trust
    }
}) -- Coins: An Oath We Exchange

map.nodes[48925715] = KareshLore({
    quest = 91686,
    rewards = {
        Achievement({id = 60890, criteria = 107313}),
        Reputation({id = 2658, gain = 250, quest = 91686}) -- The K'aresh Trust
    }
}) -- Geologist Field Journal

-------------------------------------------------------------------------------
----------------------- DANGEROUS PROWLERS OF K'ARESH -------------------------
-------------------------------------------------------------------------------

local Purrkins = Class('purrkins', Collectible, {
    group = ns.groups.PURRKINS,
    icon = 3742947,
    note = L['purrkins_note']
})

map.nodes[48776248] = Purrkins({
    pois = {
        Path({
            48796221, 48766249, 48516292, 48476313, 48246256, 48076234,
            47846249, 47616252, 47326228, 47406197, 47906154, 48166151,
            48376160, 48556179, 48786221, 48776248, 48496295, 48796221
        })
    },
    rewards = {Achievement({id = 42729, criteria = 106220})}
}) -- C.T.

map.nodes[73172374] = Purrkins({
    rewards = {Achievement({id = 42729, criteria = 106225})}
}) -- Empurror (up on ledge)

map.nodes[70245426] = Purrkins({
    location = L['in_a_tree'],
    rewards = {Achievement({id = 42729, criteria = 106226})},
    sublabel = L['kareshire_sublabel']
}) -- K'aresh'ire (visible for 15sec on tree then disappears for 20sec)

map.nodes[50355920] = Purrkins({
    rewards = {Achievement({id = 42729, criteria = 106221})},
    sublabel = L['little_ms_phaser_sublabel']
}) -- Little Ms. Phaser (phases in and out, so might need to wait a little)

taz.nodes[61015552] = Purrkins({
    parent = map.id,
    rewards = {Achievement({id = 42729, criteria = 106222})}
}) -- Mar <Alley Queen of Tazavesh>

map.nodes[47613738] = Purrkins({
    requires = ns.requirement.Spell(1214374), -- Phase Diving
    rewards = {Achievement({id = 42729, criteria = 106223})}
}) -- The King in Silver

-------------------------------------------------------------------------------
---------------------------- PHASE-LOST-AND-FOUND -----------------------------
-------------------------------------------------------------------------------

local PhaseOrb = Class('phaseorb', Collectible, {
    group = ns.groups.PHASE_LOST_AND_FOUND,
    icon = 'peg_bl',
    scale = 1.25,
    label = L['phaseorb_label'],
    note = L['phaseorb_note'],
    requires = {
        ns.requirement.Spell(1214374), -- Phase Diving
        ReshiiWraps(135403, 105872) -- Secrets of the Depths
    },
    rewards = {
        Achievement({
            id = 61017,
            criteria = {
                107806, 107807, 107808, 107809, 107810, 107811, 107812, 107813,
                107814, 107815, 107816, 107817, 107818, 107819, 107820, 107821,
                107822, 107823, 107824, 107825, 107826, 107827, -- 107827 is MISSING in the achievement, but required
                107828, 107829, 107830, 107831, 107832, 107833
            }
        }) -- Phase-Lost-and-Found
    }
})

map.nodes[43142148] = PhaseOrb()
map.nodes[43072156] = PhaseOrb()
map.nodes[44231681] = PhaseOrb() -- review
map.nodes[45745153] = PhaseOrb()
map.nodes[47171579] = PhaseOrb() -- review
map.nodes[47181578] = PhaseOrb()
map.nodes[47733728] = PhaseOrb()
map.nodes[47806085] = PhaseOrb()
map.nodes[48603845] = PhaseOrb()
map.nodes[48892670] = PhaseOrb() -- review
map.nodes[48985746] = PhaseOrb() -- review
map.nodes[49341897] = PhaseOrb()
map.nodes[50113620] = PhaseOrb()
map.nodes[50495412] = PhaseOrb()
map.nodes[50573510] = PhaseOrb()
map.nodes[50953671] = PhaseOrb()
map.nodes[51026912] = PhaseOrb()
map.nodes[51176774] = PhaseOrb()
map.nodes[52176488] = PhaseOrb()
map.nodes[53362057] = PhaseOrb()
map.nodes[53734838] = PhaseOrb()
map.nodes[54326317] = PhaseOrb()
map.nodes[54505016] = PhaseOrb()
map.nodes[54916381] = PhaseOrb()
map.nodes[55285545] = PhaseOrb() -- review
map.nodes[56002153] = PhaseOrb() -- review
map.nodes[56552093] = PhaseOrb()
map.nodes[57902393] = PhaseOrb()
map.nodes[58742099] = PhaseOrb()
map.nodes[58935751] = PhaseOrb() -- review
map.nodes[59416044] = PhaseOrb()
map.nodes[59842272] = PhaseOrb()
map.nodes[60352841] = PhaseOrb()
map.nodes[60514201] = PhaseOrb()
map.nodes[60525549] = PhaseOrb() -- review
map.nodes[60602968] = PhaseOrb()
map.nodes[61082734] = PhaseOrb()
map.nodes[61162324] = PhaseOrb()
map.nodes[61203920] = PhaseOrb()
map.nodes[62594165] = PhaseOrb()
map.nodes[62582407] = PhaseOrb()
map.nodes[63003911] = PhaseOrb()
map.nodes[63984597] = PhaseOrb()
map.nodes[64865224] = PhaseOrb() -- review
map.nodes[64905495] = PhaseOrb() -- review
map.nodes[66054880] = PhaseOrb()
map.nodes[68824791] = PhaseOrb()
map.nodes[69755531] = PhaseOrb() -- review
map.nodes[70206061] = PhaseOrb() -- review
map.nodes[70263197] = PhaseOrb() -- review
map.nodes[72711232] = PhaseOrb() -- review
map.nodes[72791006] = PhaseOrb() -- review
map.nodes[73985749] = PhaseOrb() -- review
map.nodes[75713442] = PhaseOrb()
map.nodes[75963255] = PhaseOrb()
map.nodes[76035820] = PhaseOrb() -- review
map.nodes[77243801] = PhaseOrb()
map.nodes[78374889] = PhaseOrb()
map.nodes[78762917] = PhaseOrb()
map.nodes[80405123] = PhaseOrb()
taz.nodes[34935795] = PhaseOrb({parent = map.id})
taz.nodes[39613240] = PhaseOrb({parent = map.id})
taz.nodes[40126818] = PhaseOrb({parent = map.id})
taz.nodes[42835032] = PhaseOrb({parent = map.id})
taz.nodes[44322686] = PhaseOrb({parent = map.id}) -- review
taz.nodes[44323460] = PhaseOrb({parent = map.id})
taz.nodes[44383470] = PhaseOrb({parent = map.id}) -- review
taz.nodes[53226055] = PhaseOrb({parent = map.id})
taz.nodes[55813363] = PhaseOrb({parent = map.id})
taz.nodes[56468678] = PhaseOrb({parent = map.id})
taz.nodes[60415720] = PhaseOrb({parent = map.id})
taz.nodes[61128910] = PhaseOrb({parent = map.id})
taz.nodes[62132931] = PhaseOrb({parent = map.id})

--[[
-------------------------------------------------------------------------------
------------------------- MOUNT: TRANSLOCATED GORGER --------------------------
-------------------------------------------------------------------------------

local TranslocatedGorger = Class('TranslocatedGorger', Collectible, {
    icon = 3767410,
    rewards = {
        Mount({item = 246159, id = 2602}) -- Translocated Gorger
    }
}) -- Translocated Gorger

function TranslocatedGorger.getters:note()
    local note = L['translocated_gorger_note']
    return note .. ItemStatus(246240, 20, '{item:246240}')
end

taz.nodes[29607260] = TranslocatedGorger({
    label = '{npc:235104}',
    quest = 86465,
    parent = map.id
}) -- The Wallbreaker (Tazavesh Invasion)

map.nodes[49606460] =
    TranslocatedGorger({label = '{npc:235087}', quest = 86464}) -- The Harvester (The Atrium Invasion)

map.nodes[50605460] =
    TranslocatedGorger({label = '{npc:234970}', quest = 86447}) -- Miasmawrath (Eco-Dome Primus Invasion)

map.nodes[71402760] =
    TranslocatedGorger({label = '{npc:231229}', quest = 84993}) -- Korogoth the Hungerer (The Oasis Invasion)
]]
