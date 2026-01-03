-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local LoreObject = ns.node.LoreObject
local PT = ns.node.ProfessionTreasures
local Rare = ns.node.Rare
local SkyridingGlyph = ns.node.SkyridingGlyph
local Telescope = ns.node.Telescope
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Mount = ns.reward.Mount
-- local Item = ns.reward.Item
local Pet = ns.reward.Pet
local Reputation = ns.reward.Reputation
local Section = ns.reward.Section
local Spacer = ns.reward.Spacer
local Transmog = ns.reward.Transmog

local Path = ns.poi.Path
local POI = ns.poi.POI

-------------------------------------------------------------------------------

local map = Map({id = 2395, settings = true})
local smc = Map({id = 2393, settings = true}) -- Silvermoon City

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[51927380] = Rare({
    id = 246332,
    quest = 91280, -- 94681 ?
    rewards = {
        Achievement({id = 61507, criteria = 110166}),
        Transmog({item = 264520, type = L['staff']}), -- Warden's Leycrook
        Spacer(), Section(L['shared_drops']), Mount({item = 257156, id = 2762}), -- Cerulean Hawkstrider
        Mount({item = 257147, id = 2758}) -- Cobalt Dragonhawk

    },
    pois = {
        Path({51397508, 51527435, 51927380, 52587399, 52807469, 52587536}) -- Got killed before he stopped at the end.
    }
}) -- Warden of Weeds

map.nodes[45057825] = Rare({
    id = 246633,
    quest = 91315, -- 91315/94682
    rewards = {
        Achievement({id = 61507, criteria = 110167}),
        Section(L['shared_drops']), Mount({item = 257156, id = 2762}), -- Cerulean Hawkstrider
        Mount({item = 257147, id = 2758}) -- Cobalt Dragonhawk
    }
}) -- Harried Hawkstrider

map.nodes[54706018] = Rare({
    id = 240129,
    quest = 92392, -- 94684
    rewards = {
        Achievement({id = 61507, criteria = 110168}),
        Transmog({item = 264523, type = L['1h_sword']}), Spacer(),
        Section(L['shared_drops']), Mount({item = 257156, id = 2762}), -- Cerulean Hawkstrider
        Mount({item = 257147, id = 2758}) -- Cobalt Dragonhawk

    }
}) -- Overfester Hydra

map.nodes[36566408] = Rare({
    id = 250582,
    quest = 92366, -- 92366/94685 ?
    rewards = {
        Achievement({id = 61507, criteria = 110169}),
        Section(L['shared_drops']), Mount({item = 257156, id = 2762}), -- Cerulean Hawkstrider
        Mount({item = 257147, id = 2758}) -- Cobalt Dragonhawk
    }
}) -- Bloated Snapdragon

map.nodes[62744907] = Rare({ -- review
    id = 250719,
    quest = 92391, -- 94686
    rewards = {
        Achievement({id = 61507, criteria = 110170}),
        Section(L['shared_drops']), Mount({item = 257156, id = 2762}), -- Cerulean Hawkstrider
        Mount({item = 257147, id = 2758}) -- Cobalt Dragonhawk
    }
}) -- Cre'van

map.nodes[36383637] = Rare({
    id = 250683,
    quest = 92389, -- 92389 ?
    rewards = {
        Achievement({id = 61507, criteria = 110171}),
        Section(L['shared_drops']), Mount({item = 257156, id = 2762}), -- Cerulean Hawkstrider
        Mount({item = 257147, id = 2758}) -- Cobalt Dragonhawk
    }
}) -- Coralfang

map.nodes[36657718] = Rare({
    id = 250754,
    quest = 92393, -- 94688
    rewards = {
        Achievement({id = 61507, criteria = 110172}),
        Section(L['shared_drops']), Mount({item = 257156, id = 2762}), -- Cerulean Hawkstrider
        Mount({item = 257147, id = 2758}) -- Cobalt Dragonhawk
    }
}) -- Lady Liminus

map.nodes[40198539] = Rare({
    id = 250876,
    quest = 92409, -- 94689
    rewards = {
        Achievement({id = 61507, criteria = 110173}),
        Section(L['shared_drops']), Mount({item = 257156, id = 2762}), -- Cerulean Hawkstrider
        Mount({item = 257147, id = 2758}) -- Cobalt Dragonhawk
    }
}) -- Terrinor

map.nodes[49058775] = Rare({
    id = 250841,
    quest = 92404, -- 94690
    rewards = {
        Achievement({id = 61507, criteria = 110174}),
        Transmog({item = 264536, type = L['cloth']}), -- Zedling Summoning Collar
        Spacer(), Section(L['shared_drops']), Mount({item = 257156, id = 2762}), -- Cerulean Hawkstrider
        Mount({item = 257147, id = 2758}) -- Cobalt Dragonhawk

    }
}) -- Bad Zed

map.nodes[34812098] = Rare({
    id = 250780,
    quest = 92395, -- 94691/92395 ?
    rewards = {
        Achievement({id = 61507, criteria = 110175}),
        Section(L['shared_drops']), Mount({item = 257156, id = 2762}), -- Cerulean Hawkstrider
        Mount({item = 257147, id = 2758}) -- Cobalt Dragonhawk
    }
}) -- Waverly

map.nodes[56427760] = Rare({
    id = 250826,
    quest = 92403, -- 92403/94692
    rewards = {
        Achievement({id = 61507, criteria = 110176}),
        Section(L['shared_drops']), Mount({item = 257156, id = 2762}), -- Cerulean Hawkstrider
        Mount({item = 257147, id = 2758}) -- Cobalt Dragonhawk
    }
}) -- Banuran

map.nodes[59207920] = Rare({ -- wowhead beta data
    id = 250806,
    quest = 92399, -- 92399 ?
    rewards = {
        Achievement({id = 61507, criteria = 110177}),
        Section(L['shared_drops']), Mount({item = 257156, id = 2762}), -- Cerulean Hawkstrider
        Mount({item = 257147, id = 2758}) -- Cobalt Dragonhawk
    }
}) -- Lost Guardian

map.nodes[42316891] = Rare({
    id = 255302,
    quest = 93550, -- 94694
    rewards = {
        Achievement({id = 61507, criteria = 110178}),
        Section(L['shared_drops']), Mount({item = 257156, id = 2762}), -- Cerulean Hawkstrider
        Mount({item = 257147, id = 2758}) -- Cobalt Dragonhawk
    }
}) -- Duskburn

map.nodes[51684599] = Rare({
    id = 255329,
    quest = 93555, -- 93555/94695 ?
    rewards = {
        Achievement({id = 61507, criteria = 110179}),
        Section(L['shared_drops']), Mount({item = 257156, id = 2762}), -- Cerulean Hawkstrider
        Mount({item = 257147, id = 2758}) -- Cobalt Dragonhawk
    }
}) -- Malfunctioning Construct

map.nodes[44993855] = Rare({
    id = 255348,
    quest = 93561, -- 93561/94696 ?
    rewards = {
        Achievement({id = 61507, criteria = 110180}),
        Pet({item = 265609, id = 4985}), -- Princess Bloodshed
        Spacer(), Section(L['shared_drops']), Mount({item = 257156, id = 2762}), -- Cerulean Hawkstrider
        Mount({item = 257147, id = 2758}) -- Cobalt Dragonhawk

    }
}) -- Dame Bloodshed

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

smc.nodes[24346928] = Treasure({
    requires = ns.requirement.Item(263870), -- Rookery Cache Key
    quest = 93967, -- 94626 triggered after feeding Mischevious Chick with Tasty Meat from Farstrider Aerieminder(had to buy meat and fly away for bit to spawn to place it)
    location = L['on_flying_platform'],
    rewards = {
        Achievement({id = 61960, criteria = 111471}),
        Pet({item = 267838, id = 5003}) -- Sunwing Hatchling
    },
    parent = map.id
}) -- Rookery Cache

map.nodes[38897606] = Treasure({
    requires = {
        ns.requirement.Item(258768), -- Battered Safebox Key
        ns.requirement.Item(258769), -- Worn Safebox Key
        ns.requirement.Item(258770) -- Tarnished Safebox Key
    },
    quest = 93456,
    note = L['triple_locked_safebox_note'],
    rewards = {Achievement({id = 61960, criteria = 111472})},
    pois = {
        POI({40247582, label = '{item:258770}'}), -- Tarnished Safebox Key
        POI({38467346, label = '{item:258769}'}), -- Worn Safebox Key
        POI({37637480, label = '{item:258768}'}) --  Battered Safebox Key
    }
}) -- Triple-Locked Safebox

map.nodes[40961945] = Treasure({
    quest = 93544, -- 93545 triggered when returning cinders
    note = L['gift_of_the_phoenix_note'],
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
    quest = 93908, -- 93908 (94740 didnt trigger for tfmonk)
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
    rewards = {Achievement({id = 61960, criteria = 111478})} -- + [Goldenmist Grapes] housing decor
}) -- Stone Vat of Wine

map.nodes[48737544] = Treasure({
    quest = 91358,
    rewards = {Achievement({id = 61960, criteria = 111479}), Pet({id = 4974})}
}) -- Burbling Paint Pot

smc.nodes[37805238] = Treasure({
    label = L['incomplete_book_of_sonnets'],
    requires = ns.requirement.Item(263257), -- Booklet of Sonnets
    quest = 94781, -- 93458 (old quest id?),
    -- rewards = {}, --[Silvermoon Library Bookcase] housing decor + 55rep with Silvermoon City faction
    parent = map.id,
    pois = {
        POI({40748846, label = '{item:265833}'}), -- Lost Page 1
        POI({33289017, label = '{item:265834}'}), -- Lost Page 2
        POI({39818047, label = '{item:265835}'}) -- Lost Page 3
    }
}) -- Incomplete Book of Sonnets
-- TODO: bugged on beta, cannot be looted

-------------------------------------------------------------------------------
----------------------------- PROFESSION TREASURES ----------------------------
-------------------------------------------------------------------------------
smc.nodes[49117586] = PT.Alchemy({quest = 89115, id = 238536, parent = map.id}) -- Freshly Plucked Peacebloom
smc.nodes[47755169] = PT.Alchemy({quest = 89117, id = 238538, parent = map.id}) -- Pristine Potion
smc.nodes[53404960] = PT.Blacksmithing({
    quest = 89183,
    id = 238546,
    parent = map.id
}) -- Sin'dorei Master's Forgemace
smc.nodes[56705120] = PT.Blacksmithing({
    quest = 89177,
    id = 238540,
    parent = map.id
}) -- Deconstructed Forge Techniques
smc.nodes[60005340] = PT.Blacksmithing({
    quest = 89184,
    id = 238547,
    parent = map.id
}) -- Silvermoon Blacksmith's Hammer
map.nodes[56844077] = PT.Blacksmithing({quest = 89180, id = 238543}) -- Metalworking Cheat Sheet
map.nodes[48327578] = PT.Blacksmithing({quest = 89178, id = 238541}) -- Silvermoon Smithing Kit
map.nodes[63493260] = PT.Enchanting({quest = 89107, id = 238555}) -- Sin'dorei Enchanting Rod
map.nodes[60755301] = PT.Enchanting({quest = 89103, id = 238551}) -- Everblazing Sunmote
smc.nodes[62005460] = PT.Engineering({
    quest = 89133,
    id = 238556,
    parent = map.id
}) -- One Engineer's Junk
smc.nodes[64305620] = PT.Engineering({
    quest = 89139,
    id = 238562,
    parent = map.id
}) -- What To Do When Nothing Works
map.nodes[39574579] = PT.Engineering({quest = 89135, id = 238558}) -- Manual of Mistakes and Mishaps
map.nodes[64253046] = PT.Herbalism({quest = 89158, id = 238472}) -- A Spade
smc.nodes[49027593] =
    PT.Herbalism({quest = 89160, id = 238470, parent = map.id}) -- Simple Leaf Pruners
smc.nodes[47655039] = PT.Inscription({
    quest = 89073,
    id = 238578,
    parent = map.id
}) -- Songwriter's Pen
map.nodes[40356123] = PT.Inscription({quest = 89074, id = 238579}) -- Songwriter's Quill
map.nodes[48317555] = PT.Inscription({quest = 89069, id = 238574}) -- Spare Ink
smc.nodes[55444782] = PT.Jewelcrafting({
    quest = 89127,
    id = 238585,
    parent = map.id
}) -- Vintage Soul Gem
smc.nodes[50505659] = PT.Jewelcrafting({
    quest = 89122,
    id = 238580,
    parent = map.id
}) -- Sin'dorei Masterwork Chisel
map.nodes[56624088] = PT.Jewelcrafting({quest = 89125, id = 238583}) -- Poorly Rounded Vial
map.nodes[39643882] = PT.Jewelcrafting({quest = 89129, id = 238587}) -- Sin'dorei Gem Faceters
smc.nodes[44765626] = PT.Leatherworking({
    quest = 89096,
    id = 238595,
    parent = map.id
}) -- Artisan's Considered Order
map.nodes[37984538] = PT.Mining({quest = 89147, id = 238599}) -- Solid Ore Punchers
smc.nodes[43135562] = PT.Skinning({quest = 89171, id = 238633, parent = map.id}) -- Sin'dorei Tanning Oil
map.nodes[48407626] = PT.Skinning({quest = 89173, id = 238635}) -- Thalassian Skinning Knife
smc.nodes[35736122] =
    PT.Tailoring({quest = 89079, id = 238613, parent = map.id}) -- A Really Nice Curtain
smc.nodes[31796828] =
    PT.Tailoring({quest = 89084, id = 238618, parent = map.id}) -- Particularly Enchanting Tablecloth
map.nodes[46363487] = PT.Tailoring({quest = 89080, id = 238614}) -- Sin'dorei Outfitter's Ruler

--[[ MOVE TO RIGHT MAP WHEN FOUND
map.nodes[] = PT.Enchanting({quest = 89101, id = 238549}) -- Enchanted Sunfire Silk
map.nodes[] = PT.Engineering({quest = 89137, id = 238560}) -- Ethereal Stormwrench
map.nodes[] = PT.Engineering({quest = 89134, id = 238557}) -- MIniturized Transport Skiff
map.nodes[] = PT.Tailoring({quest = 89082, id = 238616}) -- Book of Sin'dorei Stitches
map.nodes[] = PT.Tailoring({quest = 89083, id = 238617}) --Satin Throw Pillow
map.nodes[] = PT.Leatherworking({quest = 89093, id = 238592}) -- Patterns: Beyond the Void
map.nodes[] = PT.Alchemy({quest = 89111, id = 238532}) -- Vial of Eversong Oddities
map.nodes[] = PT.Alchemy({quest = 89118, id = 238539}) -- Failed Experiment
map.nodes[] = PT.Jewelcrafting({quest = 89128, id = 238586}) -- Ethereal Gem Pliers
map.nodes[] = PT.Jewelcrafting({quest = 89126, id = 238584}) -- Shattered Glass
map.nodes[] = PT.Jewelcrafting({quest = 89124, id = 238582}) -- Dual-Function Magnifiers
map.nodes[] = PT.Inscription({quest = 89072, id = 238577}) -- Half-Baked Techniques
map.nodes[] = PT.Herbalism({quest = 89161, id = 238469}) -- Sweeping Harvester's Scythe
map.nodes[] = PT.Mining({quest = 89148, id = 238600}) -- Glimmering Void Pearl
map.nodes[] = PT.Mining({quest = 89146, id = 238598}) -- Lost Voidstorm Satchel



]] --
-------------------------------------------------------------------------------
------------------------- EVERSONG WOODS GLYPH HUNTER -------------------------
-------------------------------------------------------------------------------

smc.nodes[48320667] = SkyridingGlyph({
    rewards = {Achievement({id = 61576, criteria = 110335})},
    parent = map.id
}) -- The Shining Span

map.nodes[65203258] = SkyridingGlyph({
    rewards = {Achievement({id = 61576, criteria = 110336})}
}) -- Brightwing Estate

map.nodes[58921954] = SkyridingGlyph({
    rewards = {Achievement({id = 61576, criteria = 110337})}
}) -- Silvermoon City

map.nodes[54555098] = SkyridingGlyph({
    rewards = {Achievement({id = 61576, criteria = 110338})}
}) -- Runestone Shan'dor

map.nodes[49474803] = SkyridingGlyph({
    rewards = {Achievement({id = 61576, criteria = 110339})}
}) -- Path of Dawn

map.nodes[39454563] = SkyridingGlyph({
    rewards = {Achievement({id = 61576, criteria = 110340})}
}) -- Sunsail Anchorage

map.nodes[62616278] = SkyridingGlyph({
    rewards = {Achievement({id = 61576, criteria = 110341})}
}) -- Dawnstar Spire

map.nodes[52466754] = SkyridingGlyph({
    rewards = {Achievement({id = 61576, criteria = 110342})}
}) -- Tranquillien

map.nodes[33436540] = SkyridingGlyph({
    rewards = {Achievement({id = 61576, criteria = 110343})}
}) -- Daggerspine Point

map.nodes[58435831] = SkyridingGlyph({
    rewards = {Achievement({id = 61576, criteria = 110344})}
}) -- Suncrown Tree

map.nodes[43204636] = SkyridingGlyph({
    rewards = {Achievement({id = 61576, criteria = 110345})}
}) -- Fairbreeze Village

-------------------------------------------------------------------------------
------------------------- MIDNIGHT: THE HIGHEST PEAKS -------------------------
-------------------------------------------------------------------------------

map.nodes[40411010] = Telescope({
    quest = 94537,
    achievement = 62288,
    criteria = 111574,
    repfaction = 2710
})
map.nodes[50198543] = Telescope({
    quest = 94540,
    achievement = 62288,
    criteria = 111577,
    repfaction = 2710
})
smc.nodes[20227961] = Telescope({
    quest = 94536,
    parent = map.id,
    achievement = 62288,
    criteria = 111573,
    repfaction = 2710
})
map.nodes[54585101] = Telescope({
    quest = 94539,
    achievement = 62288,
    criteria = 111576,
    repfaction = 2710
})
map.nodes[37414789] = Telescope({
    quest = 94538,
    achievement = 62288,
    criteria = 111575,
    repfaction = 2710
})
---------------------------- MIDNIGHT LORE HUNTER -----------------------------

-- note: from all zones in Midnight. move node to the zone when you find it there.

map.nodes[47958820] = LoreObject({
    quest = 91841,
    rewards = {
        Achievement({id = 62104, criteria = 111828}),
        Reputation({id = 2710, gain = 275, quest = 91841})
    }
}) -- Memorial Plaque

map.nodes[37601378] = LoreObject({
    quest = 93563,
    rewards = {
        Achievement({id = 62104, criteria = 111829}),
        Reputation({id = 2710, gain = 275, quest = 93563})
    }
}) -- Shrine of Dath'remar

map.nodes[50524347] = LoreObject({
    quest = 93564,
    rewards = {
        Achievement({id = 62104, criteria = 111830}),
        Reputation({id = 2710, gain = 275, quest = 93564})
    }
}) -- Dead Scar Research/Mirveda's Notes

map.nodes[36057251] = LoreObject({
    quest = 93565,
    rewards = {
        Achievement({id = 62104, criteria = 111831}),
        Reputation({id = 2710, gain = 275, quest = 93565})
    }
}) -- Profane Research/Dar'khan's Notes

map.nodes[57815092] = LoreObject({
    quest = 93562,
    rewards = {
        Achievement({id = 62104, criteria = 111832}),
        Reputation({id = 2710, gain = 275, quest = 93562})
    }
}) -- Hawkstrider Husbandry Manual

smc.nodes[38107699] = LoreObject({
    quest = 93570,
    rewards = {
        Achievement({id = 62104, criteria = 111833}),
        Reputation({id = 2710, gain = 275, quest = 93570})
    }
}) -- Unfinished Sheet Music

-------------------------------- EVER PAINTIG ---------------------------------

local Painting = Class('Painting', ns.node.Collectible,
    {icon = 'peg_yw', scale = 1.5})

function Painting:Initialize(criteria, location)
    ns.node.Collectible.Initialize(self)
    self.location = location or nil
    self.rewards = {Achievement({id = 62185, criteria = criteria})}
end

map.nodes[53967560] = Painting(111993) -- Sway of Red and Gold
map.nodes[41805634] = Painting(112030) -- Lost Lamppost
map.nodes[50764128] = Painting(112031) -- Anar'alah Belore
map.nodes[55145968] = Painting(112032, L['on_flying_platform']) -- Light Consuming
map.nodes[46086429] = Painting(112033) -- Babble and Brook
map.nodes[39007822] = Painting(112034) -- Memories of Ghosts
map.nodes[42626263] = Painting(112035) -- Elrendar's Song
