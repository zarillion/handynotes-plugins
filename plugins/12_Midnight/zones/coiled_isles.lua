-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

local StudentOfHissstory = ns.node.StudentOfHissstory
local Rare = ns.node.Rare
local RareElite = ns.node.RareElite
local CoiledIsleSafari = ns.node.CoiledIsleSafari
local SkyridingGlyph = ns.node.SkyridingGlyph
local Treasure = ns.node.Treasure

local HonoredDead = ns.node.HonoredDead

local Achievement = ns.reward.Achievement
local Toy = ns.reward.Toy
local Reputation = ns.reward.Reputation

local POI = ns.poi.POI

-------------------------------------------------------------------------------

local map = Map({id = 2512, settings = true})
local vault_map = Map({id = 2509, settings = true, parent = 2512})
local vault_map2 = Map({id = 2613, settings = true, parent = 2509})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------
local b = CreateFrame("Button", "DeleteCursorItemButton")
b:SetScript("OnClick", function()
    DeleteCursorItem()
end)

map.nodes[53777204] = Rare({
    id = 264854,
    quest = 96491,
    rewards = {Achievement({id = 63358, criteria = 115279})}
}) -- Farthik the Plunderer - click the chest to spawn/agro rare

map.nodes[50006907] = Rare({
    id = 268049,
    quest = 97112,
    rewards = {Achievement({id = 63358, criteria = 115280})}
}) -- Siltmouth

map.nodes[24897354] = Rare({
    id = 268090,
    quest = 97122,
    rewards = {Achievement({id = 63358, criteria = 115784})}
}) -- Kari'zah the Forgotten

map.nodes[31665672] = Rare({
    id = 265237,
    quest = 96456,
    rewards = {Achievement({id = 63358, criteria = 115284})}
}) -- Lockjaw

map.nodes[43855086] = Rare({
    id = 265262,
    quest = 96464,
    rewards = {Achievement({id = 63358, criteria = 115281})}
}) -- Hisstara

vault_map2.nodes[38401769] = Rare({
    id = 263456,
    quest = 96030,
    rewards = {
        Achievement({id = 63358, criteria = 115282}),
        Achievement({id = 62601, criteria = 113661})
    }
}) -- Szarith the Fanged

map.nodes[70174529] = Rare({
    id = 258916,
    quest = 94856,
    rewards = {Achievement({id = 63358, criteria = 110172})}
}) -- Garsecg

map.nodes[52064479] = Rare({
    id = 258920,
    quest = 94860,
    rewards = {Achievement({id = 63358, criteria = 115283})}
}) -- Nar'zira - coords maybe?

map.nodes[57216417] = Rare({
    id = 257906,
    quest = 94619,
    rewards = {Achievement({id = 63358, criteria = 115285})}
}) -- Coin-Eye Skully

map.nodes[70036344] = Rare({
    id = 256631,
    quest = 93829,
    rewards = {Achievement({id = 63358, criteria = 115286})}
}) -- Big Mon / Ancient Hulk -- patrols

map.nodes[58534006] = Rare({
    id = 261109,
    quest = 95447,
    rewards = {Achievement({id = 63358, criteria = 115287})}
}) -- Sss'alik

map.nodes[52053229] = Rare({
    id = 261142,
    quest = 95452,
    rewards = {Achievement({id = 63358, criteria = 115288})}
}) -- Destra

-- Oppose the Foes (Rare Elite) - Achievement 63601

vault_map.nodes[10001000] = RareElite({
    id = 0,
    quest = 0,
    rewards = {Achievement({id = 63601, criteria = 116325})}
}) -- Congealed Malice

vault_map.nodes[10001000] = RareElite({
    id = 0,
    quest = 0,
    rewards = {Achievement({id = 63601, criteria = 116326})}
}) -- Khu'tulak

vault_map.nodes[10001000] = RareElite({
    id = 0,
    quest = 0,
    rewards = {Achievement({id = 63601, criteria = 116327})}
}) -- Susarikk

-------------------------------------------------------------------------------
------------------------------- TREASURES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[71886666] = Treasure({
    quest = 94569,
    rewards = {
        Achievement({id = 63359, criteria = 115289}),
        Reputation({id = 2772, gain = 50, quest = 94569})
    }
}) -- Abandoned Amani Privateer's Cache

map.nodes[45916628] = Treasure({
    quest = 95938,
    rewards = {
        Achievement({id = 63359, criteria = 115313}),
        Reputation({id = 2772, gain = 50, quest = 95938})
    }
}) -- Fangbound Sack

map.nodes[65440560] = Treasure({
    quest = 95907,
    rewards = {
        Achievement({id = 63359, criteria = 115290}),
        Reputation({id = 2772, gain = 50, quest = 95907}),Toy({item = 279052}) -- [Ancient Amani Mask]
    },
    note = L['sunken_divers_chest_note']
}) -- Sunken Diver's Chest

map.nodes[67264846] = Treasure({
    quest = 95956,
    rewards = {
        Achievement({id = 63359, criteria = 115291}),
        Reputation({id = 2772, gain = 50, quest = 95956})
    }
}) -- Grave of Someone Forgotten

map.nodes[10001000] = Treasure({
    quest = 95941,
    rewards = {
        Achievement({id = 63359, criteria = 115292}),
        Reputation({id = 2772, gain = 50, quest = 95941})
    }
}) -- Profane Ritual Spoils

map.nodes[70637663] = Treasure({
    quest = 95995,
    rewards = {
        Achievement({id = 63359, criteria = 115294}),
        Reputation({id = 2772, gain = 50, quest = 95995}), Toy({item = 274921}) -- [Pearl of Jubilation]
    }
}) -- Brine-Crusted Chest / Anceint Amani Chest
--- Baubling Clam - go search for baubling clams till you find [Luminescent Pearl]
--- then go to 70587707 to place it {quest 96001},
--- Nacretta {npc:263347} will come get the pearl and drop [Dropped Key]
--- pickup the key quest:96002
--- open treasure
---
--- 69588248
--- 70968167
--- 71898283
--- 71338330

map.nodes[31438349] = Treasure({
    quest = 96985,
    rewards = {
        Achievement({id = 63359, criteria = 115295}),
        Reputation({id = 2772, gain = 50, quest = 96985})
    }
}) -- Posessed Vase

map.nodes[75376833] = Treasure({
    quest = 95164,
    rewards = {
        Achievement({id = 63359, criteria = 115306}),
        Reputation({id = 2772, gain = 50, quest = 95164}), Toy({item = 268504}) -- [Malfunctioning Staff]
    }
}) -- Malfunctioning Staff

map.nodes[55213796] = Treasure({
    quest = 95563,
    rewards = {
        Achievement({id = 63359, criteria = 115307}),
        Reputation({id = 2772, gain = 50, quest = 95563})
    }
}) -- Tarnished Amani Glaive

map.nodes[60435946] = Treasure({
    quest = 95566,
    rewards = {
        Achievement({id = 63359, criteria = 115309}),
        Reputation({id = 2772, gain = 50, quest = 95566}), Toy({item = 277954})
    }
}) -- Jaktu's Cursed Blade

map.nodes[68056590] = Treasure({
    quest = 95571,
    rewards = {
        Achievement({id = 63359, criteria = 115310}),
        Reputation({id = 2772, gain = 50, quest = 95571})
    },
    note = L['lost_spirit_note'],
    pois = {POI({points = {70226450}, label = '{item:269935}'})}
}) -- Lost Spirit

map.nodes[58144355] = Treasure({
    quest = 95594,
    rewards = {
        Achievement({id = 63359, criteria = 115312}),
        Reputation({id = 2772, gain = 50, quest = 95594})
    }
}) -- Cracked Skull

map.nodes[46862957] = Treasure({
    quest = 95596,
    rewards = {
        Achievement({id = 63359, criteria = 115296}),
        Reputation({id = 2772, gain = 50, quest = 95596})
    }
}) -- Damaged Loa Trinket

map.nodes[64723665] = Treasure({
    quest = 95835,
    rewards = {
        Achievement({id = 63359, criteria = 115298}),
        Reputation({id = 2772, gain = 50, quest = 95835})
    }
}) -- Venomjade Necklace

map.nodes[66912806] = Treasure({
    quest = 95836,
    rewards = {
        Achievement({id = 63359, criteria = 115299}),
        Reputation({id = 2772, gain = 50, quest = 95836})
    }
}) -- Ornate Bottle

map.nodes[53094310] = Treasure({
    quest = 95841,
    rewards = {
        Achievement({id = 63359, criteria = 115300}),
        Reputation({id = 2772, gain = 50, quest = 95841})
    }
}) -- Stinking Vessel /Intact Vessel

map.nodes[49483198] = Treasure({
    quest = 95854,
    rewards = {
        Achievement({id = 63359, criteria = 115301}),
        Reputation({id = 2772, gain = 50, quest = 95854})
    }
}) -- Waterlogged Basket

map.nodes[10001000] = Treasure({
    quest = 95855,
    rewards = {
        Achievement({id = 63359, criteria = 115302}),
        Reputation({id = 2772, gain = 50, quest = 95855})
    }
}) -- Smoldering Incense

map.nodes[73445661] = Treasure({
    quest = 95558,
    rewards = {
        Achievement({id = 63359, criteria = 115308}),
        Reputation({id = 2772, gain = 50, quest = 95558})
    }
}) -- Crumbling Urn

map.nodes[64917889] = Treasure({
    quest = 95591,
    rewards = {
        Achievement({id = 63359, criteria = 115314}),
        Reputation({id = 2772, gain = 50, quest = 95591})
    }
}) -- Forgotten Mask

map.nodes[58194572] = Treasure({
    quest = 95976,
    rewards = {
        Achievement({id = 63359, criteria = 115293}),
        Reputation({id = 2772, gain = 50, quest = 95976})
    },
    note = L['vulzahn_smuggled_treasure_note'],
    pois = {
        POI({points = {57204845}, color = 'Blue', label = '{npc:253837}'}),
        POI({points = {58044878}, color = 'Red', label = '{npc:262204}'}),
        POI({points = {58164568}, color = 'Green', label = '{npc:263265}'})
    }
}) -- Vul'zahn's Smuggled Treasure

map.nodes[43902654] = Treasure({
    quest = 95727,
    rewards = {
        Achievement({id = 63359, criteria = 115297}),
        Reputation({id = 2772, gain = 50, quest = 95727})
    }
}) -- Zul'jan's Stash

-------------------------------------------------------------------------------
--------------------------- SKYRIDING GLYPHS --------------------------------
-------------------------------------------------------------------------------

map.nodes[37416053] = SkyridingGlyph({
    rewards = {Achievement({id = 63395, criteria = 115491})}
}) -- The Fangs, the Coiled Isles

map.nodes[26636314] = SkyridingGlyph({
    rewards = {Achievement({id = 63395, criteria = 115766})}
}) -- The Forum, the Coiled Isles

map.nodes[28827523] = SkyridingGlyph({
    rewards = {Achievement({id = 63395, criteria = 115768})}
}) -- The Wreck of Sethralis's Scales, the Coiled Isles

map.nodes[40559049] = SkyridingGlyph({
    rewards = {Achievement({id = 63395, criteria = 115769})}
}) -- Southern Island, the Coiled Isles

map.nodes[45846493] = SkyridingGlyph({
    rewards = {Achievement({id = 63395, criteria = 115770})}
}) -- Gate of the Eastern Fang, the Coiled Isles

map.nodes[58944891] = SkyridingGlyph({
    rewards = {Achievement({id = 63395, criteria = 115771})}
}) -- Tokka's Landing, the Coiled Isles

map.nodes[64126065] = SkyridingGlyph({
    rewards = {Achievement({id = 63395, criteria = 115772})}
}) -- The Whispering Marsh, the Coiled Isles

map.nodes[70284816] = SkyridingGlyph({
    rewards = {Achievement({id = 63395, criteria = 115773})}
}) -- The Wreck of Paku's Talon, the Coiled Isles

map.nodes[52013841] = SkyridingGlyph({
    rewards = {Achievement({id = 63395, criteria = 115774})}
}) -- The Serpent's Tail, the Coiled Isles

map.nodes[42883059] = SkyridingGlyph({
    rewards = {Achievement({id = 63395, criteria = 115775})}
}) -- Blistering Terrace, the Coiled Isles

map.nodes[43824419] = SkyridingGlyph({
    rewards = {Achievement({id = 63395, criteria = 115776})}
}) -- Gate of the Serpent's Eye, the Coiled Isles

-------------------------------------------------------------------------------
---------------------------- COILED ISLES LORE HUNTER --------------------------
-------------------------------------------------------------------------------

-- Student of Hissstory placeholder positions until live coordinates are confirmed.
map.nodes[10005000] = StudentOfHissstory({
    quest = 96946,
    rewards = {
        Achievement({id = 63662, criteria = 116702}),
        Reputation({id = 2772, gain = 250, quest = 96946})
    }
}) -- Head Mason's Tablet

map.nodes[57358036] = StudentOfHissstory({
    quest = 96947,
    rewards = {
        Achievement({id = 63662, criteria = 116703}),
        Reputation({id = 2772, gain = 250, quest = 96947})
    }
}) -- Amani Exile's Words

map.nodes[70006597] = StudentOfHissstory({
    quest = 96945,
    rewards = {
        Achievement({id = 63662, criteria = 116704}),
        Reputation({id = 2772, gain = 250, quest = 96945})
    }
}) -- Worn Tablet

map.nodes[50756820] = StudentOfHissstory({
    quest = 98302,
    rewards = {
        Achievement({id = 63662, criteria = 116705}),
        Reputation({id = 2772, gain = 250, quest = 98302})
    }
}) -- Abandoned Tablet

map.nodes[31628374] = StudentOfHissstory({
    quest = 98303,
    rewards = {
        Achievement({id = 63662, criteria = 116706}),
        Reputation({id = 2772, gain = 250, quest = 98303})
    }
}) -- Message in a Bottle

map.nodes[45774793] = StudentOfHissstory({
    quest = 98304,
    rewards = {
        Achievement({id = 63662, criteria = 116707}),
        Reputation({id = 2772, gain = 250, quest = 98304})
    }
}) -- Oily Black Stone

map.nodes[25026775] = StudentOfHissstory({
    quest = 98305,
    rewards = {
        Achievement({id = 63662, criteria = 116708}),
        Reputation({id = 2772, gain = 250, quest = 98305})
    }
}) -- Forum Rules

map.nodes[34103645] = StudentOfHissstory({
    quest = 98306,
    rewards = {
        Achievement({id = 63662, criteria = 116709}),
        Reputation({id = 2772, gain = 250, quest = 98306})
    }
}) -- Survival Journals

map.nodes[71944492] = StudentOfHissstory({
    quest = 98307,
    rewards = {
        Achievement({id = 63662, criteria = 116710}),
        Reputation({id = 2772, gain = 250, quest = 98307})
    }
}) -- Zandalari Logbook

map.nodes[32566366] = StudentOfHissstory({
    quest = 98308,
    rewards = {
        Achievement({id = 63662, criteria = 116711}),
        Reputation({id = 2772, gain = 250, quest = 98308})
    }
}) -- Profaned Plaque

-------------------------------------------------------------------------------
------------------------------- THE HONORED DEAD ------------------------------
-------------------------------------------------------------------------------

vault_map.nodes[49505659] = HonoredDead({
    quest = 98029,
    rewards = {Achievement({id = 63610, criteria = 116407})}
}) -- To  daughter

vault_map.nodes[52214512] = HonoredDead({
    quest = 98030,
    rewards = {Achievement({id = 63610, criteria = 116408})}
}) -- To a lover

vault_map.nodes[55314845] = HonoredDead({
    quest = 98031,
    rewards = {Achievement({id = 63610, criteria = 116409})}
}) -- To parents

vault_map.nodes[55624060] = HonoredDead({
    quest = 98032,
    rewards = {Achievement({id = 63610, criteria = 116410})}
}) -- To a dream

vault_map.nodes[52913390] = HonoredDead({
    quest = 98033,
    rewards = {Achievement({id = 63610, criteria = 116411})}
}) -- To a captain

vault_map.nodes[42914123] = HonoredDead({
    quest = 98034,
    rewards = {Achievement({id = 63610, criteria = 116412})}
}) -- To sons

vault_map.nodes[45816179] = HonoredDead({
    quest = 98035,
    rewards = {Achievement({id = 63610, criteria = 116413})}
}) -- To Failure

vault_map.nodes[46422397] = HonoredDead({
    quest = 98036,
    rewards = {Achievement({id = 63610, criteria = 116414})}
}) -- To a father

vault_map.nodes[46790751] = HonoredDead({
    quest = 98037,
    rewards = {Achievement({id = 63610, criteria = 116415})}
}) -- To a sister

vault_map.nodes[38504766] = HonoredDead({
    quest = 98038,
    rewards = {Achievement({id = 63610, criteria = 116416})}
}) -- To Comrades

vault_map.nodes[42573318] = HonoredDead({
    quest = 98039,
    rewards = {Achievement({id = 63610, criteria = 116417})}
}) -- To a stranger (below bridge)

vault_map.nodes[56042831] = HonoredDead({
    quest = 98040,
    rewards = {Achievement({id = 63610, criteria = 116418})}
}) -- To a shield-bearer

-------------------------------------------------------------------------------
----------------------------------- SAFARI ------------------------------------
-------------------------------------------------------------------------------

map.nodes[71836484] = CoiledIsleSafari.PoisonedParasite({
    pois = {POI({71836484, 67924206, 43263985})}
}) -- Poisoned Parasite
map.nodes[46204860] = CoiledIsleSafari.CursedSpawn({
    pois = {POI({46204860, 44104660, 45293450, 53443452, 54454229})}
}) -- Cursed Spawn
vault_map.nodes[40475058] = CoiledIsleSafari.CursedSpawn({
    parent = map.id,
    pois = {POI({40475058,53671980})}
}) -- Cursed Spawn
map.nodes[49835580] = CoiledIsleSafari.JaundicedSlitherer({
    pois = {POI({49835580, 47116346, 53783407})}
}) -- Jaundiced Slitherer
vault_map.nodes[38923351] = CoiledIsleSafari.CausticWrithling({
    parent = map.id,
    pois = {POI({38923351,42263530})}
}) -- Caustic Writhling
map.nodes[12001000] =
    CoiledIsleSafari.NightfurKapara({pois = {POI({12001000})}}) -- Nightfur Kapara
map.nodes[12001000] = CoiledIsleSafari.SleekSnakebiter({
    pois = {POI({12001000})}
}) -- Sleek Snakebiter
map.nodes[72375502] = CoiledIsleSafari.SteadyCroakfrog({
    pois = {POI({72375502, 66085595, 68513886, 69124661})}
}) -- Steady Croakfrog
map.nodes[66306260] =
    CoiledIsleSafari.AutumnSnapling({pois = {POI({66306260})}}) -- Autumn Snapling
