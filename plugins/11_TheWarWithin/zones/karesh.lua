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

local FlightMaster = ns.node.FlightMaster
local LoreObject = ns.node.LoreObject
local SkyridingGlyph = ns.node.SkyridingGlyph

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog
local Reputation = ns.reward.Reputation

local Circle = ns.poi.Circle
local Entrance = ns.poi.Entrance
local Path = ns.poi.Path
local POI = ns.poi.POI

-------------------------------------------------------------------------------
------------------------------------ MAPS -------------------------------------
-------------------------------------------------------------------------------

local tav = Map({id = 2472, settings = true})
local map = Map({id = 2371, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[12345678] = Rare({
    id = 232098,
    rewards = {
        Achievement({id = 42761, criteria = 106331})
    }
}) -- "Chowdar" <Escaped Auction Parcel #8675308>

map.nodes[12345678] = Rare({
    id = 241956,
    rewards = {
        Achievement({id = 42761, criteria = 106332})
    }
}) -- Arcana-Monger So'zer

map.nodes[12345678] = Rare({
    id = 238540,
    rewards = {
        Achievement({id = 42761, criteria = 106333})
    }
}) -- Grubber

map.nodes[75233098] = Rare({
    id = 245998,
    rewards = {
        Achievement({id = 42761, criteria = 106334})
    }
}) -- Heka'tamos <the Elemental Disjunction>

map.nodes[12345678] = Rare({
    id = 232128,
    rewards = {
        Achievement({id = 42761, criteria = 106245})
    }
}) -- Ixthar the Unblinking

map.nodes[12345678] = Rare({
    id = 232077,
    rewards = {
        Achievement({id = 42761, criteria = 106335})
    }
}) -- Korgorath the Ravager

map.nodes[12345678] = Rare({
    id = 245997,
    rewards = {
        Achievement({id = 42761, criteria = 106336})
    }
}) -- Malek'ta <The Jaws of Oblivion>

map.nodes[12345678] = Rare({
    id = 231981,
    rewards = {
        Achievement({id = 42761, criteria = 106337})
    }
}) -- Maw of the Sands

map.nodes[12345678] = Rare({
    id = 232108,
    rewards = {
        Achievement({id = 42761, criteria = 106338})
    }
}) -- Morgil the Netherspawn

map.nodes[12345678] = Rare({
    id = 232127,
    rewards = {
        Achievement({id = 42761, criteria = 106339})
    }
}) -- Orith the Dreadful

map.nodes[12345678] = Rare({
    id = 235422,
    rewards = {
        Achievement({id = 42761, criteria = 106340})
    }
}) -- Phase-Thief Tezra

map.nodes[12345678] = Rare({
    id = 232182,
    rewards = {
        Achievement({id = 42761, criteria = 106341})
    }
}) -- Prototype Mk-V

map.nodes[12345678] = Rare({
    id = 232189,
    rewards = {
        Achievement({id = 42761, criteria = 106342})
    }
}) -- Revenant of the Wasteland

map.nodes[72205557] = Rare({
    id = 232006,
    quest = 90673, -- 90585 (rep)?
    rewards = {
        Achievement({id = 42761, criteria = 106343}),
        Reputation({id = 2658, gain = 15, quest = 90585}) -- The K'aresh Trust
    }
}) -- Sha'ryth the Cursed (patrols needs path)

map.nodes[12345678] = Rare({
    id = 232129,
    rewards = {
        Achievement({id = 42761, criteria = 106344})
    }
}) -- Shadowhowl

map.nodes[12345678] = Rare({
    id = 232193,
    rewards = {
        Achievement({id = 42761, criteria = 106345})
    }
}) -- Stalker of the Wastes

map.nodes[12345678] = Rare({
    id = 234845,
    rewards = {
        Achievement({id = 42761, criteria = 106346})
    }
}) -- Sthaarbs <the Mindroiler>

map.nodes[12345678] = Rare({
    id = 232111,
    rewards = {
        Achievement({id = 42761, criteria = 106347})
    }
}) -- The Nightreaver

map.nodes[12345678] = Rare({
    id = 232195,
    rewards = {
        Achievement({id = 42761, criteria = 106348})
    }
}) -- Urmag <The Terror Below>

map.nodes[12345678] = Rare({
    id = 232199,
    rewards = {
        Achievement({id = 42761, criteria = 106349})
    }
}) -- Xarran the Binder

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[00000000] = Treasure({
    quest = 00000,
    rewards = {
        Achievement({id = 42741, criteria = 106270}),
    }
}) -- Gift of the Brothers

map.nodes[60903835] = Treasure({
    quest = 00000,
    rewards = {
        Achievement({id = 42741, criteria = 106271}),
    }
}) -- Ancient Coffer

map.nodes[00000000] = Treasure({
    quest = 00000,
    rewards = {
        Achievement({id = 42741, criteria = 106272}),
    }
}) -- Forlorn Wind Chime

tav.nodes[47766265] = Treasure({
    quest = 00000,
    rewards = {
        Achievement({id = 42741, criteria = 106273}),
    }
}) -- Mailroom Distribution

map.nodes[64104398] = Treasure({
    quest = 86492,
    rewards = {
        Achievement({id = 42741, criteria = 106244}),
    }
}) -- Ixthar's Favorite Crystal

map.nodes[60544213] = Treasure({
    quest = 00000,
    rewards = {
        Achievement({id = 42741, criteria = 106274}),
    }
}) -- Wastelander Stash

map.nodes[65346362] = Treasure({
    quest = 00000,
    rewards = {
        Achievement({id = 42741, criteria = 106275}),
    }
}) -- Tumbled Package

map.nodes[00000000] = Treasure({
    quest = 00000,
    rewards = {
        Achievement({id = 42741, criteria = 106276}),
    }
}) -- Rashaal's Vase

map.nodes[75065534] = Treasure({
    quest = 00000,
    rewards = {
        Achievement({id = 42741, criteria = 106276}),
    }
}) -- Shattered Crystals

map.nodes[77782787] = Treasure({
    quest = 86322,
    rewards = {
        Achievement({id = 42741, criteria = 106277}),
        Pet({item = 243158, id = 4813, count = 1}) -- Ixthal the Observling
    }
}) -- Skeletal Tail Bones

map.nodes[00000000] = Treasure({
    quest = 00000,
    rewards = {
        Achievement({id = 42741, criteria = 106278}),
    }
}) -- Crudely Stitched Sack

map.nodes[00000000] = Treasure({
    quest = 00000,
    rewards = {
        Achievement({id = 42741, criteria = 106278}),
    }
}) -- Abandoned Lockbox

map.nodes[54956245] = Treasure({
    quest = 91352,
    rewards = {
        Achievement({id = 42741, criteria = 106279}),
    }
}) -- Lightly-Dented Luggage

map.nodes[00000000] = Treasure({
    quest = 00000,
    rewards = {
        Achievement({id = 42741, criteria = 106280}),
    }
}) -- Sand-Worn Coffer

map.nodes[00000000] = Treasure({
    quest = 00000,
    rewards = {
        Achievement({id = 42741, criteria = 106224}),
    }
}) -- Ethereal Voidforged Container

map.nodes[00000000] = Treasure({
    quest = 00000,
    rewards = {
        Achievement({id = 42741, criteria = 106281}),
    }
}) -- Light-Soaked Cleaver

map.nodes[00000000] = Treasure({
    quest = 00000,
    rewards = {
        Achievement({id = 42741, criteria = 106296}),
    }
}) -- Spear of Fallen Memories

map.nodes[00000000] = Treasure({
    quest = 00000,
    rewards = {
        Achievement({id = 42741, criteria = 106283}),
    }
}) -- Efrat's Forgotten Bulwark

map.nodes[00000000] = Treasure({
    quest = 00000,
    rewards = {
        Achievement({id = 42741, criteria = 106284}),
    }
}) -- Tulwar of the Golden Guard

map.nodes[00000000] = Treasure({
    quest = 00000,
    rewards = {
        Achievement({id = 42741, criteria = 106285}),
    }
}) -- Petrified Branch of Janaa

map.nodes[00000000] = Treasure({
    quest = 00000,
    rewards = {
        Achievement({id = 42741, criteria = 106286}),
    }
}) -- Shadowguard Crusher

map.nodes[00000000] = Treasure({
    quest = 00000,
    rewards = {
        Achievement({id = 42741, criteria = 106287}),
    }
}) -- Sufaadi Skiff Lantern

map.nodes[00000000] = Treasure({
    quest = 00000,
    rewards = {
        Achievement({id = 42741, criteria = 106288}),
    }
}) -- Korgorath's Talon

map.nodes[00000000] = Treasure({
    quest = 00000,
    rewards = {
        Achievement({id = 42741, criteria = 106289}),
    }
}) -- Warglaive of the Audacious Hunter

map.nodes[00000000] = Treasure({
    quest = 00000,
    rewards = {
        Achievement({id = 42741, criteria = 106290}),
    }
}) -- P.O.S.T. Master's Prototype Parcel and Postage Presser

map.nodes[00000000] = Treasure({
    quest = 00000,
    rewards = {
        Achievement({id = 42741, criteria = 106291}),
    }
}) -- Phaseblade of the Void Marches

map.nodes[00000000] = Treasure({
    quest = 00000,
    rewards = {
        Achievement({id = 42741, criteria = 106292}),
    }
}) -- Bladed Rifle of Unfettered Momentum

-------------------------------------------------------------------------------
---------------------------- K'ARESH GLYPH HUNTER -----------------------------
-------------------------------------------------------------------------------

map.nodes[61003870] = SkyridingGlyph({
    rewards = {Achievement({id = 42727, criteria = 106183 })}
}) -- Castigaar

map.nodes[46505840] = SkyridingGlyph({
    rewards = {Achievement({id = 42727, criteria = 106184 })}
}) -- Eco-Dome: Primus

map.nodes[54702340] = SkyridingGlyph({
    rewards = {Achievement({id = 42727, criteria = 106185 })}
}) -- Fracture of Laacuna

map.nodes[76504630] = SkyridingGlyph({
    rewards = {Achievement({id = 42727, criteria = 106186 })}
}) -- North Sufaad

map.nodes[54705320] = SkyridingGlyph({
    rewards = {Achievement({id = 42727, criteria = 106187 })}
}) -- Serrated Peaks

map.nodes[44001700] = SkyridingGlyph({
    rewards = {Achievement({id = 42727, criteria = 106188 })}
}) -- Shadow Point

tav.nodes[55106750] = SkyridingGlyph({
    rewards = {Achievement({id = 42727, criteria = 106189 })}
}) -- Tazavesh, the Veiled Market

map.nodes[74003250] = SkyridingGlyph({
    rewards = {Achievement({id = 42727, criteria = 106190 })}
}) -- The Oasis

-------------------------------------------------------------------------------
-------------------------- SECRETS OF THE K'ARESHI ----------------------------
-------------------------------------------------------------------------------

map.nodes[00000000] = LoreObject({
    quest = 00000,
    rewards = {
        Achievement({id = 60890, criteria = 107306}),
        Reputation({id = 2658, gain = 250, quest = 91648}) -- The K'aresh Trust
    }
}) -- I Have Become Void!

map.nodes[00000000] = LoreObject({
    quest = 00000,
    rewards = {
        Achievement({id = 60890, criteria = 107307}),
        Reputation({id = 2658, gain = 250, quest = 91648}) -- The K'aresh Trust
    }
}) -- Multiversal Energy Dynamics and the Murmuration Paradox

map.nodes[00000000] = LoreObject({
    quest = 00000,
    rewards = {
        Achievement({id = 60890, criteria = 107308}),
        Reputation({id = 2658, gain = 250, quest = 91648}) -- The K'aresh Trust
    }
}) -- From Vengeance to Void

map.nodes[00000000] = LoreObject({
    quest = 00000,
    rewards = {
        Achievement({id = 60890, criteria = 107309}),
        Reputation({id = 2658, gain = 250, quest = 91648}) -- The K'aresh Trust
    }
}) -- The Facets of K'aresh

map.nodes[00000000] = LoreObject({
    quest = 00000,
    rewards = {
        Achievement({id = 60890, criteria = 107310}),
        Reputation({id = 2658, gain = 250, quest = 91648}) -- The K'aresh Trust
    }
}) -- Checklist of Minor Pleasures

tav.nodes[46321858] = LoreObject({
    quest = 00000,
    rewards = {
        Achievement({id = 60890, criteria = 107311}),
        Reputation({id = 2658, gain = 250, quest = 91648}) -- The K'aresh Trust
    }
}) -- Ba'key's Aromatic Broker Cookies Recipes

map.nodes[00000000] = LoreObject({
    quest = 00000,
    rewards = {
        Achievement({id = 60890, criteria = 107312}),
        Reputation({id = 2658, gain = 250, quest = 91648}) -- The K'aresh Trust
    }
}) -- A Dog-eared Book

map.nodes[00000000] = LoreObject({
    quest = 00000,
    rewards = {
        Achievement({id = 60890, criteria = 107315}),
        Reputation({id = 2658, gain = 250, quest = 91648}) -- The K'aresh Trust
    }
}) -- Mysterious Notebook

tav.nodes[41683982] = LoreObject({
    quest = 91648,
    rewards = {
        Achievement({id = 60890, criteria = 107314}),
        Reputation({id = 2658, gain = 250, quest = 91648}) -- The K'aresh Trust
    }
}) -- Coins: An Oath We Exchange

map.nodes[48925715] = LoreObject({
    quest = 91686,
    rewards = {
        Achievement({id = 60890, criteria = 107313}),
        Reputation({id = 2658, gain = 250, quest = 91648}) -- The K'aresh Trust
    }
}) -- Geologist Field Journal


-------------------------------------------------------------------------------
----------------------- DANGEROUS PROWLERS OF K'ARESH -------------------------
-------------------------------------------------------------------------------

local Purrkins = Class('purrkins', Collectible, {
    icon = 4549129,
    group = ns.groups.PURRKINS,
})

map.nodes[00000000] = Purrkins({
    rewards = {Achievement({id = 42729, criteria = 00000})}
}) -- C.T.

map.nodes[00000000] = Purrkins({
    rewards = {Achievement({id = 42729, criteria = 00000})}
}) -- Empurror

map.nodes[00000000] = Purrkins({
    rewards = {Achievement({id = 42729, criteria = 00000})}
}) -- K'aresh'ire

map.nodes[00000000] = Purrkins({
    rewards = {Achievement({id = 42729, criteria = 00000})}
}) -- Little Ms. Phaser

map.nodes[00000000] = Purrkins({
    rewards = {Achievement({id = 42729, criteria = 00000})}
}) -- Mar <Alley Queen of Tazavesh>

map.nodes[00000000] = Purrkins({
    rewards = {Achievement({id = 42729, criteria = 00000})}
}) -- The King in Silver
