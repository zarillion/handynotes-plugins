-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible
local PT = ns.node.ProfessionTreasures
local Rare = ns.node.Rare
local Treasure = ns.node.Treasure

local LoreObject = ns.node.LoreObject
local SkyridingGlyph = ns.node.SkyridingGlyph

local Achievement = ns.reward.Achievement
local Pet = ns.reward.Pet
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

local POI = ns.poi.POI
local Path = ns.poi.Path

local ReputationGain = ns.tooltip.ReputationGain

-------------------------------------------------------------------------------

local map = Map({id = 2255, settings = true})
local akl = Map({id = 2256, settings = true}) -- Azj-Kahet - Lower
local cot = Map({id = 2213, settings = true}) -- City of Threads
local cotl = Map({id = 2216, settings = true}) -- City of Threads - Lower

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[46383875] = Rare({
    id = 216031,
    quest = nil,
    rewards = {Achievement({id = 40840, criteria = 69651})}
}) -- Abyssal Devourer

map.nodes[37924284] = Rare({
    id = 214151,
    quest = 78905,
    rewards = {Achievement({id = 40840, criteria = 69654})}
}) -- Ahg'zagall

map.nodes[70722147] = Rare({
    id = 216042,
    quest = nil,
    rewards = {Achievement({id = 40840, criteria = 69661})}
}) -- Cha'tak

-- map.nodes[12001600] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40840, criteria = 69657})}
-- }) -- Chitin Hulk

map.nodes[64560668] = Rare({
    id = 222624,
    quest = 82077, -- 84081 review, triggered both quests
    rewards = {Achievement({id = 40840, criteria = 69669})}
}) -- Deepcrawler Tx'kesh

map.nodes[58036210] = Rare({
    id = 216045,
    quest = nil,
    rewards = {Achievement({id = 40840, criteria = 69664})}
}) -- Enduring Gutterface

map.nodes[61232730] = Rare({
    id = 216042,
    quest = 81699,
    rewards = {Achievement({id = 40840, criteria = 69655})}
}) -- Grik'ik

akl.nodes[65198283] = Rare({
    id = 216050,
    quest = nil,
    rewards = {Achievement({id = 40840, criteria = 69667})},
    pois = {
        Path({
            65738036, 65288117, 65248203, 65198283, 64948363, 64678446,
            64508528, 64588614, 64838694, 64138720, 63688645, 63008597
        })
    },
    parent = map.id
}) -- Harvester Qixt

akl.nodes[67438318] = Rare({
    id = 216048,
    quest = nil,
    rewards = {Achievement({id = 40840, criteria = 69665})},
    parent = map.id
}) -- Jix'ak the Crazed

-- map.nodes[24001600] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40840, criteria = 696670})}
-- }) -- Kaheti Bladeguard

map.nodes[63152530] = Rare({
    id = 221327,
    quest = 81702, -- 84071
    rewards = {Achievement({id = 40840, criteria = 69659})},
    pois = {
        Path({
            65121909, 65182000, 64882081, 64542159, 64232241, 63912321,
            63612409, 63272490, 63072569, 62912657, 62762748, 62602830,
            62422913, 61742948
        })
    }
}) -- Kaheti Silk Hauler

map.nodes[66496197] = Rare({
    id = 216044,
    quest = nil,
    rewards = {Achievement({id = 40840, criteria = 69663})},
    pois = {
        Path({
            64406543, 63386508, 62406514, 61816617, 61426703, 61616794,
            62516818, 63616779, 64116704, 64416621, 64776538, 65136438,
            65396351, 65736274, 66496197, 67346189, 67916253, 68346333,
            68776442, 69086546, 69276638, 69266727, 68826792, 68206849,
            67466921, 66436903, 66206818, 65886738, 65396650, 64906581, 64406543
        })
    }
}) -- Maddened Siegebomber

map.nodes[69986923] = Rare({
    id = 216043,
    quest = nil,
    rewards = {Achievement({id = 40840, criteria = 69662})}
}) -- Monstrous Lasharoth

map.nodes[43863678] = Rare({
    id = 216032, -- 221032 Rhak'ik
    quest = 81694,
    rewards = {Achievement({id = 40840, criteria = 69653})},
    pois = {
        Path({
            44043048, 43773132, 43533211, 43443299, 43293385, 43273476,
            43553553, 43823633, 43933722, 43933813, 43783898, 43573987,
            43424074, 43434158, 43764243
        })
    }
}) -- Rhak'ik & Khak'ik

map.nodes[61918962] = Rare({
    id = 216049,
    quest = nil,
    location = L['in_small_cave'],
    rewards = {Achievement({id = 40840, criteria = 69666})},
    pois = {POI({6341892})}
}) -- The Oozekhan

map.nodes[76635780] = Rare({
    id = 216034,
    quest = nil,
    rewards = {Achievement({id = 40840, criteria = 69660})}
}) -- The XT-Minecrusher 8700

map.nodes[64590352] = Rare({
    id = 216051,
    quest = nil,
    rewards = {Achievement({id = 40840, criteria = 69668})}
}) -- Umbraclaw Matra

map.nodes[34694110] = Rare({
    id = 216037,
    quest = 81700,
    rewards = {
        Achievement({id = 40840, criteria = 69656}),
        Transmog({item = 223405, type = L['plate']}) -- Vilewing Visor
    },
    pois = {
        Path({
            34493843, 34113856, 33653930, 33573969, 33644062, 33894099,
            34694110, 34994082, 35333998, 35433959, 35253877, 34923855, 34493843
        })
    }
}) -- Vilewing

cotl.nodes[67525826] = Rare({
    id = 216039,
    quest = 81701, -- 84070
    parent = cot.id, -- ?
    -- ReputationGain(50, 2601), -- The Weaver
    -- ReputationGain(50, 2605), -- The General
    -- ReputationGain(50, 2607), -- The Vizier
    rewards = {Achievement({id = 40840, criteria = 69658})}
}) -- Xishorr

cot.nodes[30755599] = Rare({id = 216038, quest = nil, parent = map.id}) -- The Groundskeeper

map.nodes[63109486] = Rare({
    id = 216047,
    location = L['in_cave'],
    quest = nil,
    pois = {POI({65329380})}
}) -- The One Left

map.nodes[62816618] = Rare({id = 216046, quest = nil}) -- Tka'ktath

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[62728794] = Treasure({ -- review
    quest = 82520, -- review
    rewards = {
        Achievement({id = 40828, criteria = 1}), -- duplicated criteria id 69615
        Pet({item = 225544, id = 4599}) -- Mind Slurp
    }
}) -- Corrupted Memory
-- I'm not sure if the treasure was called Corrupted Memory or Memory Cache. The Treasure was guarded by a mob called Corrupted memory.
-- No Achievement criteria was triggered, looks like all Azj Kahet treasure Achievements are bugged

map.nodes[67459072] = Treasure({
    quest = 82718,
    rewards = {Achievement({id = 40828, criteria = 69646})}
}) -- Disturbed Soil

map.nodes[38783722] = Treasure({ -- review
    quest = 82722,
    rewards = {Achievement({id = 40828, criteria = 69650})}
}) -- Missing Scout's Pack

map.nodes[12002000] = Treasure({ -- review
    quest = nil,
    parent = map.id,
    rewards = {Achievement({id = 40828, criteria = 2})} -- duplicated criteria id 69615
}) -- Memory Cache

cot.nodes[31642077] = Treasure({
    -- ReputationGain(50, 2601), -- The Weaver
    -- ReputationGain(50, 2605), -- The General
    -- ReputationGain(50, 2607), -- The Vizier
    quest = 82720,
    parent = map.id,
    rewards = {Achievement({id = 40828, criteria = 69648})}
}) -- Nerubian Offerings

map.nodes[49554370] = Treasure({
    quest = 82529,
    rewards = {Achievement({id = 40828, criteria = 69645})}
}) -- Nest Egg

map.nodes[54525081] = Treasure({
    quest = 82721,
    rewards = {Achievement({id = 40828, criteria = 69649})}
}) -- Niffen Stash

map.nodes[67482754] = Treasure({
    quest = 82719,
    -- parent = map.id,
    rewards = {Achievement({id = 40828, criteria = 69647})},
    pois = {POI({65422765})}
}) -- Silk-spun Supplies

cot.nodes[67397441] = Treasure({
    quest = 82727,
    parent = map.id,
    note = L['trapped_trove_note'],
    rewards = {
        Achievement({id = 40828, criteria = 69644}),
        Pet({item = 222966, id = 4473}) -- Spinner
    }
}) -- Trapped Trove

map.nodes[78613320] = Treasure({
    quest = 82527,
    rewards = {
        Achievement({id = 40828, criteria = 69643}), Toy({item = 2525347}) -- Web-Vandal's Spinning Wheel
    },
    pois = {POI({74794285, 74183770, 72663967})}
}) -- Weaving Supplies
-- TODO: write a note:
-- You need to collect Hints from Silk Scraps/Threads before you can open the treasure.
-- 74794285 Violet Thread - Item 223901
-- 74183770 Gold Thread - 223903
-- 72663967 Crimson Thread - 223902

map.nodes[34056102] = Treasure({
    label = L['concealed_contraband'],
    -- ReputationGain(50, 2601), -- The Weaver
    -- ReputationGain(50, 2605), -- The General
    -- ReputationGain(50, 2607), -- The Vizier
    quest = 82525
}) -- Concealed Contraband -- Web Cocoon

-------------------------------------------------------------------------------
----------------------------- PROFESSION TREASURES ----------------------------
-------------------------------------------------------------------------------

map.nodes[42835735] = PT.Alchemy({quest = 83847, id = 226272}) -- Dark Apothecary's Vial
cot.nodes[45321322] = PT.Alchemy({quest = 83846, id = 226271, parent = map.id}) -- Nerubian Mixing Salts
cot.nodes[46552279] = PT.Blacksmithing({
    quest = 83854,
    id = 226282,
    parent = map.id
}) -- Nerubian Smith's Kit
map.nodes[52965126] = PT.Blacksmithing({quest = 83855, id = 226283}) -- Spiderling's Wire Brush
cot.nodes[61712201] = PT.Enchanting({
    quest = 83864,
    id = 226290,
    parent = map.id
}) -- Book of Dark Magic
map.nodes[57354404] = PT.Enchanting({quest = 83865, id = 226291}) -- Void Shard
map.nodes[56853859] = PT.Engineering({quest = 83872, id = 226298}) -- Puppeted Mechanical Spider
cot.nodes[63141118] = PT.Engineering({
    quest = 83873,
    id = 226299,
    parent = map.id
}) -- Emptied Venom Canister
map.nodes[55863809] = PT.Inscription({quest = nil, id = 226314}) -- Nerubian Texts -- review
cot.nodes[50103078] = PT.Inscription({quest = nil, id = 226315}) -- Venomancer's Ink Well -- review
cot.nodes[47831954] = PT.Jewelcrafting({
    quest = 89896,
    id = 226322,
    parent = map.id
}) -- Ritual Caster's Crystal
map.nodes[56165865] = PT.Jewelcrafting({quest = 83897, id = 226323}) -- Nerubian Bench Blocks
cot.nodes[46812169] = PT.Mining({quest = 83912, id = 226338, parent = map.id}) -- Heavy Spider Crusher -- review
map.nodes[56995864] = PT.Skinning({quest = nil, id = 226347}) -- Carapace Shiner -- review
cotl.nodes[44594925] = PT.Skinning({
    quest = 83920,
    id = 226346,
    parent = {map.id, cot.id}
}) -- Nerubian's Slicking Iron
cot.nodes[50241675] = PT.Tailoring({quest = nil, id = 226355}) -- Nerubian's Pincushion -- review

-------------------------------------------------------------------------------
--------------------------- AZJ-KAHET GLYPH HUNTER ----------------------------
-------------------------------------------------------------------------------

map.nodes[63421396] = SkyridingGlyph({
    rewards = {Achievement({id = 40705, criteria = 69265})}
}) -- Arathi's End

map.nodes[46692126] = SkyridingGlyph({
    rewards = {Achievement({id = 40705, criteria = 69266})}
}) -- Siegehold

map.nodes[25174058] = SkyridingGlyph({
    rewards = {Achievement({id = 40705, criteria = 69267})}
}) -- Ruptured Lake

map.nodes[42925715] = SkyridingGlyph({
    rewards = {Achievement({id = 40705, criteria = 69268})}
}) -- Eye of Ansurek

cot.nodes[13103377] = SkyridingGlyph({
    parent = map.id,
    rewards = {Achievement({id = 40705, criteria = 69269})}
}) -- Old Sacrificial Pit

cot.nodes[78377125] = SkyridingGlyph({
    parent = map.id,
    rewards = {Achievement({id = 40705, criteria = 69270})}
}) -- Deepwalker Pass

map.nodes[66258486] = SkyridingGlyph({
    rewards = {Achievement({id = 40705, criteria = 69271})}
}) -- The Maddening Deep

map.nodes[73198417] = SkyridingGlyph({
    rewards = {Achievement({id = 40705, criteria = 69272})}
}) -- Rak-Ush

map.nodes[57575733] = SkyridingGlyph({
    rewards = {Achievement({id = 40705, criteria = 69273})}
}) -- Silken Ward

map.nodes[70562516] = SkyridingGlyph({ -- review
    rewards = {Achievement({id = 40705, criteria = 69274})}
}) -- Trickling Abyss

map.nodes[65405178] = SkyridingGlyph({
    rewards = {Achievement({id = 40705, criteria = 69275})}
}) -- Untamed Valley

-------------------------------------------------------------------------------
----------------------- ACHIEVEMENT: ITSY BITSY SPIDER ------------------------
-------------------------------------------------------------------------------

local ItsyBitsySpider = Class('ItsyBitsySpider', Collectible, {
    icon = 5793405,
    group = ns.groups.ITSY_BITSY_SPIDER,
    note = L['itsy_bitsy_spider_note']
})

map.nodes[06001200] = ItsyBitsySpider({
    location = L['webster_location'],
    rewards = {Achievement({id = 40624, criteria = 68972})}
}) -- Webster

map.nodes[08001200] = ItsyBitsySpider({
    location = L['spindle_location'],
    rewards = {Achievement({id = 40624, criteria = 68973})},
    pois = {
        POI({
            63003300, 48405640, 48405660, 63003300, 45606000, 46205900,
            46605900, 56204820
        }), -- review - just copied from wowhead
        POI({55644395, color = 'Red'})
    }
}) -- Spindle

map.nodes[10001200] = ItsyBitsySpider({
    location = L['swift_location'],
    rewards = {Achievement({id = 40624, criteria = 68974})}
}) -- Swift

map.nodes[12001200] = ItsyBitsySpider({
    location = L['rumurh_location'],
    rewards = {Achievement({id = 40624, criteria = 68976})}
}) -- Ru'murh

map.nodes[14001200] = ItsyBitsySpider({
    location = L['thimble_location'],
    rewards = {Achievement({id = 40624, criteria = 68977})},
    pois = {
        POI({31604740, 55607100, 60601760}), -- review - just copied from wowhead
        POI({
            points = {
                55106876, 65938810, 68705578, 43752660, 53395340, 28824288
            },
            color = 'Red'
        }) -- confirmed
    }
}) -- Thimble

cot.nodes[50311591] = ItsyBitsySpider({
    location = L['scampering_weave_rat_location'],
    rewards = {Achievement({id = 40624, criteria = 68978})},
    pois = {
        Path({
            52151317, 51811238, 50831126, 49521115, 48471114, 47421333,
            47481445, 48221539, 48331588, 47571725, 46741772, 46511686,
            46591499, 47671521, 48741559, 50311591, 51601554, 52151317
        })
    },
    parent = map.id
}) -- Scampering Weave-Rat

map.nodes[18001200] = ItsyBitsySpider({
    location = L['generals_scouting_shadecaster_location'],
    rewards = {Achievement({id = 40624, criteria = 68979})}
}) -- General's Scouting Shadecaster

-------------------------------------------------------------------------------
--------------------- ACHIEVEMENT: KHAZ ALGAR LORE HUNTER ---------------------
-------------------------------------------------------------------------------

cot.nodes[77557018] = LoreObject({
    rlabel = ReputationGain(85, 2601), -- The Weaver
    -- ReputationGain(85, 2605), -- The General
    -- ReputationGain(85, 2607), -- The Vizier
    parent = map.id,
    rewards = {Achievement({id = 40762, criteria = 69385})}
}) -- Forgotten Shadecaster

map.nodes[75443325] = LoreObject({
    rlabel = ReputationGain(85, 2601), -- The Weaver
    -- ReputationGain(85, 2605), -- The General
    -- ReputationGain(85, 2607), -- The Vizier
    rewards = {Achievement({id = 40762, criteria = 69387})}
}) -- Kah'teht

map.nodes[54071889] = LoreObject({
    rlabel = ReputationGain(85, 2601), -- The Weaver
    -- ReputationGain(85, 2605), -- The General
    -- ReputationGain(85, 2607), -- The Vizier
    rewards = {Achievement({id = 40762, criteria = 69388})}
}) -- Mad Nerubian

cot.nodes[08533058] = LoreObject({
    rlabel = ReputationGain(85, 2601), -- The Weaver
    -- ReputationGain(85, 2605), -- The General
    -- ReputationGain(85, 2607), -- The Vizier
    parent = map.id,
    rewards = {Achievement({id = 40762, criteria = 69386})}
}) -- Neglected Shadecaster

map.nodes[71126233] = LoreObject({
    rlabel = ReputationGain(85, 2601), -- The Weaver
    -- ReputationGain(85, 2605), -- The General
    -- ReputationGain(85, 2607), -- The Vizier
    rewards = {Achievement({id = 40762, criteria = 69384})}
}) -- Weathered Shadecaster
