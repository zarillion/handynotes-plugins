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
-- local Item = ns.reward.Item
local Pet = ns.reward.Pet
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog
local Reputation = ns.reward.Reputation

local Entrance = ns.poi.Entrance
local Path = ns.poi.Path
local POI = ns.poi.POI

-------------------------------------------------------------------------------
------------------------------------ MAPS -------------------------------------
-------------------------------------------------------------------------------

local taz = Map({id = 2472, settings = true})
local map = Map({id = 2371, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

taz.nodes[72948327] = Rare({
    id = 232098,
    parent = map.id,
    pois = {Path({81987555, 80167580, 75177783, 73188013, 72388259, 72838465})},
    quest = 90587,
    rewards = {
        Achievement({id = 42761, criteria = 106331}),
        Reputation({id = 2658, gain = 15, quest = 90676}) -- The K'aresh Trust
    }
}) -- "Chowdar" <Escaped Auction Parcel #8675308>

taz.nodes[71135712] = Rare({
    id = 238540,
    parent = map.id,
    quest = 90698,
    requires = ns.requirement.Item(236967), -- [Grubber Lure] from warrants
    rewards = {
        Achievement({id = 42761, criteria = 106333}),
        Reputation({id = 2658, gain = 15, quest = 90699}) -- The K'aresh Trust
    }
}) -- Grubber

map.nodes[75233098] = Rare({
    id = 245998,
    quest = 91276,
    rewards = {
        Achievement({id = 42761, criteria = 106334}),
        Reputation({id = 2658, gain = 15, quest = 91422}) -- The K'aresh Trust
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
}) -- Ixthar the Unblinking (requires phase diving phase)

map.nodes[64244320] = Rare({
    id = 232077,
    quest = 90586,
    rewards = {
        Achievement({id = 42761, criteria = 106335}),
        Reputation({id = 2658, gain = 15, quest = 90675}) -- The K'aresh Trust
    }
}) -- Korgorath the Ravager 64144309-64984381 patrol path

map.nodes[54055884] = Rare({
    id = 245997,
    quest = 91275,
    rewards = {
        Achievement({id = 42761, criteria = 106336}),
        Reputation({id = 2658, gain = 15, quest = 91421}) -- The K'aresh Trust
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
}) -- Maw of the Sands (requires phase diving phase)

map.nodes[56045357] = Rare({
    id = 232108,
    quest = 90588,
    requires = ns.requirement.Spell(1214374), -- Phase Diving
    rewards = {
        Achievement({id = 42761, criteria = 106338}),
        Reputation({id = 2658, gain = 15, quest = 90677}) -- The K'aresh Trust
    }
}) -- Morgil the Netherspawn phase diving/patrols

map.nodes[52782081] = Rare({
    id = 232127,
    quest = 90595,
    requires = ns.requirement.Spell(1214374), -- Phase Diving
    rewards = {
        Achievement({id = 42761, criteria = 106339}),
        Reputation({id = 2658, gain = 15, quest = 90684}) -- The K'aresh Trust
    }
}) -- Orith the Dreadful (requires phase diving phase)

map.nodes[45782425] = Rare({
    id = 232182,
    quest = 90590,
    rewards = {
        Achievement({id = 42761, criteria = 106341}),
        Reputation({id = 2658, gain = 15, quest = 90679}) -- The K'aresh Trust
    }
}) -- Prototype Mk-V (46262459-45832393) patrol path

map.nodes[50536469] = Rare({
    id = 232189,
    quest = 90591,
    rewards = {
        Achievement({id = 42761, criteria = 106342}),
        Reputation({id = 2658, gain = 15, quest = 90680}) -- The K'aresh Trust
    }
}) -- Revenant of the Wasteland

map.nodes[72205557] = Rare({
    id = 232006,
    quest = 90585,
    rewards = {
        Achievement({id = 42761, criteria = 106343}),
        Reputation({id = 2658, gain = 15, quest = 90673}) -- The K'aresh Trust
    }
}) -- Sha'ryth the Cursed (patrols needs path)

map.nodes[54174911] = Rare({
    id = 232129,
    quest = 90583,
    requires = ns.requirement.Spell(1214374), -- Phase Diving
    rewards = {
        Achievement({id = 42761, criteria = 106344}),
        Reputation({id = 2658, gain = 15, quest = 90674}) -- The K'aresh Trust
    }
}) -- Shadowhowl

map.nodes[76754219] = Rare({
    id = 232193,
    quest = 90592,
    requires = ns.requirement.Spell(1214374), -- Phase Diving
    rewards = {
        Achievement({id = 42761, criteria = 106345}),
        Reputation({id = 2658, gain = 15, quest = 90681}) -- The K'aresh Trust
    }
}) -- Stalker of the Wastes

map.nodes[74043254] = Rare({
    id = 234845,
    quest = 91293,
    requires = ns.requirement.Spell(1214374), -- Phase Diving
    rewards = {
        Achievement({id = 42761, criteria = 106346}),
        Reputation({id = 2658, gain = 15, quest = 91431}) -- The K'aresh Trust
    }
}) -- Sthaarbs <the Mindroiler> use portal near the phase pad to get upto rare

map.nodes[52705660] = Rare({
    id = 232111,
    quest = 90589,
    rewards = {
        Achievement({id = 42761, criteria = 106347}),
        Reputation({id = 2658, gain = 15, quest = 90678}) -- The K'aresh Trust
    }
}) -- The Nightreaver (flys about need path?)

map.nodes[70144983] = Rare({
    id = 232195,
    quest = 90593,
    rewards = {
        Achievement({id = 42761, criteria = 106348}),
        Reputation({id = 2658, gain = 15, quest = 90682}) -- The K'aresh Trust
    }
}) -- Urmag <The Terror Below>

map.nodes[65144998] = Rare({
    id = 232199,
    quest = 90584,
    rewards = {
        Achievement({id = 42761, criteria = 106349}),
        Reputation({id = 2658, gain = 15, quest = 90672}) -- The K'aresh Trust
    }
}) -- Xarran the Binder

-------------------------------------------------------------------------------
-------------------------------- WARRANT RARES --------------------------------
-------------------------------------------------------------------------------

map.nodes[22222222] = Rare({
    id = 238144,
    quest = 00000,
    requires = ns.requirement.Item(236353), -- [Shatterpulse Cell Key] from warrants
    rewards = {
        -- Achievement({id = 42761, criteria = 106349}),
        Reputation({id = 2658, gain = 15, quest = 00000}) -- The K'aresh Trust
    }
}) -- Shatterpulse (Review)

map.nodes[33333333] = Rare({
    id = 241956,
    quest = 00000,
    requires = ns.requirement.Item(236353), -- [Shatterpulse Cell Key] from warrants
    rewards = {
        -- Achievement({id = 42761, criteria = 106349}),
        Reputation({id = 2658, gain = 15, quest = 00000}) -- The K'aresh Trust
    }
}) -- Arcana-Monger So'zer (Review)

map.nodes[48441696] = Rare({
    id = 238536,
    quest = 90689,
    requires = ns.requirement.Item(236957), -- [Hollowbane Portal Key] from warrants
    rewards = {
        -- Achievement({id = 42761, criteria = 106349}),
        Reputation({id = 2658, gain = 15, quest = 90691}) -- The K'aresh Trust
    }
}) -- Hollowbane

map.nodes[42505755] = Rare({
    id = 238384,
    quest = 87546,
    requires = ns.requirement.Item(239276), -- [Purple Peat Cell Key] from warrants
    rewards = {
        -- Achievement({id = 42761, criteria = 106349}),
        Reputation({id = 2658, gain = 15, quest = 90807}) -- The K'aresh Trust
    }
}) -- Purple Peat

taz.nodes[31155818] = Rare({
    id = 238384,
    parent = map.id,
    quest = 90694,
    requires = ns.requirement.Item(236753), -- [Xy'vox Refuge Dampener] from warrants
    rewards = {
        Achievement({id = 42761, criteria = 106349}),
        Reputation({id = 2658, gain = 15, quest = 90695}) -- The K'aresh Trust
    }
}) -- Xy'vox The Twisted

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[76114526] = Treasure({
    pois = {
        POI({
            label = '{npc:234112}', -- Naji
            -- quest = 86065,
            points = {68304530}
        }), POI({
            label = '{npc:234113}', -- M'alim
            --   quest = 86066,
            points = {69806050}
        }), POI({
            label = '{npc:234075}', -- Sahra
            --  quest = 86067,
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
    quest = 00000,
    rewards = {Achievement({id = 42741, criteria = 106271})}
}) -- Ancient Coffer

map.nodes[69745231] = Treasure({
    quest = 85837,
    rewards = {Achievement({id = 42741, criteria = 106272})}
}) -- Forlorn Wind Chime

taz.nodes[47766265] = Treasure({
    parent = map.id,
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
    rewards = {Achievement({id = 42741, criteria = 106274})}
}) -- Wastelander Stash

map.nodes[65346362] = Treasure({
    quest = 86304,
    rewards = {Achievement({id = 42741, criteria = 106275})}
}) -- Tumbled Package

map.nodes[70204773] = Treasure({
    quest = 86306,
    rewards = {Achievement({id = 42741, criteria = 106276})}
}) -- Rashaal's Vase (cave enterance 68794783)

map.nodes[75065534] = Treasure({
    quest = 86308,
    rewards = {Achievement({id = 42741, criteria = 106276})}
}) -- Shattered Crystals

map.nodes[77782787] = Treasure({
    quest = 86322,
    rewards = {
        Achievement({id = 42741, criteria = 106277}),
        Pet({item = 243158, id = 4813, count = 1}) -- Ixthal the Observling
    }
}) -- Skeletal Tail Bones

map.nodes[58653434] = Treasure({
    quest = 86323, -- review
    rewards = {Achievement({id = 42741, criteria = 106278})}
}) -- Crudely Stitched Sack

map.nodes[53985926] = Treasure({
    quest = 92348,
    rewards = {
        Achievement({id = 42741, criteria = 106278}),
        Transmog({item = 246299, type = L['sword']})
    }
}) -- Abandoned Lockbox

map.nodes[53706405] = Treasure({
    quest = 91352,
    rewards = {Achievement({id = 42741, criteria = 106279})}
}) -- Lightly-Dented Luggage (prev 54956245)

map.nodes[54462444] = Treasure({
    quest = 85840,
    rewards = {
        Achievement({id = 42741, criteria = 106280}),
        Transmog({item = 246297, type = L['staff']}) -- [Desperate Defender's Bladed Staff]
    }
}) -- Sand-Worn Coffer

map.nodes[52096833] = Treasure({
    quest = 89378,
    requires = ns.requirement.Spell(1214374), -- Phase Diving & treasure one
    rewards = {
        Achievement({id = 42741, criteria = 106224}),
        Achievement({id = 42730, criteria = 106224}), -- Jump, Jump, and Away! (need to validate)
        Transmog({item = 246293, type = L['shield']}) -- [Buckler of the Last Stand]

    }
}) -- Ethereal Voidforged Container (recommend "untethered Xy'bucha" potion if you are bad at jumping puzzles fly top top of ledge then use)

map.nodes[52504677] = Treasure({
    quest = 90511,
    requires = ns.requirement.Spell(1214374), -- Phase Diving & treasure one
    rewards = {
        Achievement({id = 42741, criteria = 106281}),
        Transmog({item = 243002, type = L['axe']}) -- [Light-Soaked Cleaver]
    }

}) -- Light-Soaked Cleaver

taz.nodes[23694682] = Treasure({
    parent = map.id,
    quest = 90512,
    requires = ns.requirement.Spell(1214374), -- Phase Diving & treasure one
    rewards = {
        Achievement({id = 42741, criteria = 106296}),
        Transmog({item = 243003, type = L['polearm']}) -- [Spear of Fallen Memories]
    }
}) -- Spear of Fallen Memories

map.nodes[77994894] = Treasure({
    quest = 90514,
    requires = ns.requirement.Spell(1214374), -- Phase Diving & treasure one
    rewards = {
        Achievement({id = 42741, criteria = 106283}),
        Transmog({item = 243004, type = L['shield']}) -- [Efrat's Forgotten Bulwark]
    }
}) -- Efrat's Forgotten Bulwark

map.nodes[51056509] = Treasure({
    quest = 90522,
    requires = ns.requirement.Spell(1214374), -- Phase Diving & treasure one
    rewards = {
        Achievement({id = 42741, criteria = 106284}),
        Achievement({id = 42738, oneline = true}), -- We've All Got Swords! Need to validate
        Transmog({item = 243005, type = L['sword']}) -- [Tulwar of the Golden Guard]}
    }
}) -- Tulwar of the Golden Guard

map.nodes[78346154] = Treasure({
    quest = 90515,
    requires = ns.requirement.Spell(1214374), -- Phase Diving & treasure one
    rewards = {
        Achievement({id = 42741, criteria = 106285}),
        Transmog({item = 243006, type = L['staff']}) -- [Petrified Branch of Janaa]
    }
}) -- Petrified Branch of Janaa

map.nodes[49201805] = Treasure({
    quest = 90527,
    requires = ns.requirement.Spell(1214374), -- Phase Diving & treasure one
    rewards = {
        Achievement({id = 42741, criteria = 106286}),
        Transmog({item = 243008, type = L['mace']}) -- [Shadowguard Crusher]
    }
}) -- Shadowguard Crusher

map.nodes[80725267] = Treasure({
    quest = 90521,
    requires = ns.requirement.Spell(1214374), -- Phase Diving & treasure one
    rewards = {
        Achievement({id = 42741, criteria = 106287}),
        Transmog({item = 243009, type = L['offhand']}) -- [Sufaadi Skiff Lantern]
    }
}) -- Sufaadi Skiff Lantern

map.nodes[64434269] = Treasure({
    quest = 90532,
    requires = ns.requirement.Spell(1214374), -- Phase Diving & treasure one
    rewards = {Achievement({id = 42741, criteria = 106288})}
}) -- Korgorath's Talon

map.nodes[58432259] = Treasure({
    pois = {Entrance({56892408})},
    quest = 91055,
    requires = ns.requirement.Spell(1214374), -- Phase Diving & treasure one
    rewards = {
        Achievement({id = 42741, criteria = 106289}),
        Transmog({item = 245667, type = L['warglave']}) -- [Warglaive of the Audacious Hunter]
    }
}) -- Warglaive of the Audacious Hunter

taz.nodes[47476998] = Treasure({
    parent = map.id,
    quest = 91056,
    requires = ns.requirement.Spell(1214374), -- Phase Diving & treasure one
    rewards = {
        Achievement({id = 42741, criteria = 106290}),
        Transmog({item = 245669, type = L['want']}) -- [P.O.S.T. Master's Prototype Parcel and Postage Presser]
    }
}) -- P.O.S.T. Master's Prototype Parcel and Postage Presser

map.nodes[50823534] = Treasure({
    quest = 91057,
    requires = ns.requirement.Spell(1214374), -- Phase Diving & treasure one
    rewards = {
        Achievement({id = 42741, criteria = 106291}),
        Achievement({id = 42738, oneline = true}), -- We've All Got Swords!
        Transmog({item = 245671, type = L['sword']}) -- [Phaseblade of the Void Marches]
    }
}) -- Phaseblade of the Void Marches

taz.nodes[65161472] = Treasure({
    parent = map.id,
    quest = 91058,
    requires = ns.requirement.Spell(1214374), -- Phase Diving & treasure one
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

--[[
DELVE CHESTS
map:2452 62383800 quest:83692
map:2452 61931087 quest 83673
map:2476 43886472 quest:90839
map:2455 49669258 quest:83653
]]
