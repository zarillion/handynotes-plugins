-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible
local Rare = ns.node.Rare
local Treasure = ns.node.Treasure

local Dragonglyph = ns.node.Dragonglyph
local Dragonrace = ns.node.Dragonrace
local PT = ns.node.ProfessionTreasures

local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Transmog = ns.reward.Transmog

local POI = ns.poi.POI

-------------------------------------------------------------------------------

local map = Map({id = 2133, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[28515115] = Rare({id = 203646}) -- Jrumm

map.nodes[31805061] = Rare({id = 203664}) -- Emberdusk

map.nodes[36324481] = Rare({
    id = 203660,
    note = L['in_small_cave'],
    pois = {
        POI({35924400}) -- Entrance
    }
}) -- Flowfy

map.nodes[38424650] = Rare({id = 203662}) -- Subterrax

map.nodes[38867151] = Rare({id = 201029}) -- Veridian King

map.nodes[40753817] = Rare({id = 200111}) -- Magmanesha

map.nodes[41518613] = Rare({
    id = 203621,
    quest = 75326, -- or 75556
    note = 'Loot your rewards from the {object:Chest of Massive Gains}'
}) -- Brulsef the Stronk

-- map.nodes[41921857] = Rare({
--     id = nil
-- }) -- General Zskorro

-- map.nodes[42226524] = Rare({
--     id = nil
-- }) -- Kairoktra

map.nodes[45673327] = Rare({
    id = 203627,
    quest = 75336 -- or 75558
}) -- Invohq

map.nodes[48367509] = Rare({
    id = 203468,
    quest = 75271, -- or 75547
    rewards = {
        Item({item = 192055}) -- Dragon Isle Artifact
    }
}) -- Aquifon

map.nodes[48372384] = Rare({
    id = 204093,
    quest = 75572,
    rewards = {
        Item({item = 200071}) -- Sacred Tuskarr Totem
    }
}) -- Colassian

map.nodes[53106421] = Rare({
    id = 203480,
    pois = {
        POI({54556605}) -- Entrance
    }
}) -- Spinmarrow entrance

-- map.nodes[54074162] = Rare({
--     id = nil
-- }) -- Klakatak

map.nodes[55841899] = Rare({
    id = 203521,
    note = L['in_cave'],
    pois = {
        POI({52921886}) -- Entrance
    }
}) -- Professor Gastrinax

map.nodes[56247389] = Rare({
    id = 203515,
    rewards = {
        -- Transmog({item = nil, slot = L['dagger']}), -- Zaralek Surveyor's Kriss
        Item({item = 200071}) -- Sacred Tuskarr Totem
    }
}) -- Alcanon

map.nodes[59593949] = Rare({
    id = 203466,
    quest = 75546,
    rewards = {
        Item({item = 192055}) -- Dragon Isle Artifact
    }
}) -- Kaprachu

map.nodes[61646714] = Rare({
    id = 203593,
    quest = 75298 -- or 75553
}) -- Underlight Queen

-- map.nodes[65435587] = Rare({
--     id = nil
-- }) -- Kob'rok

map.nodes[65875082] = Rare({id = 203643}) -- Skornace

map.nodes[68734593] = Rare({id = 203477}) -- Goopal

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[28544791] = Treasure({
    label = 'Blazing Shadowflame Chest',
    note = '{bug:The shadowflame is too strong to bear.}'
}) -- Blazing Shadowflame Chest

map.nodes[2975054] = Treasure({
    label = 'Well-Chewed Chest',
    note = 'The {item:202869}({dot:Green}) is hidden below the {npc:199962} within the cave.',
    requires = ns.requirement.Item(202869), -- Scorching Key
    pois = {
        POI({30314121}), -- Entrance
        POI({color = 'Green', points = 30134076}) -- Scorching Key
    }
}) -- Well-Chewed Chest

map.nodes[30044193] = Treasure({label = 'Charred Egg', quest = 73706}) -- Charred Egg

map.nodes[56564931] = Treasure({
    label = 'Moth-Pilfered Pouch',
    note = '{npc:203225}' -- Stuggling Moth
}) -- Moth-Pilfered Pouch

map.nodes[60664622] = Treasure({label = 'Stolen Stash', quest = 75302}) -- Stolen Stash

map.nodes[63603861] = Treasure({label = 'Stolen Stash', quest = 75303}) -- Stolen Stash

map.nodes[48421633] = Treasure({label = 'Molten Hoard', quest = 75515}) -- Molten Hoard

map.nodes[36694879] = Treasure({label = 'Ancient Zaqali Chest'}) -- Ancient Zaqali Chest

map.nodes[43058256] = Treasure({
    label = 'Old Trunk'
    -- requires = ns.requirement.Item(nil) -- Old Trunk Key
}) -- Old Trunk

-------------------------------------------------------------------------------
----------------------------- PROFESSION TREASURES ----------------------------
-------------------------------------------------------------------------------

map.nodes[48101659] = PT.Engineering({
    id = 204855,
    -- label = 'Molten Scoutbot',
    quest = 75433,
    note = '{item:204855}' -- Overclocked Determination Core
}) -- Molten Scoutbot

map.nodes[49437901] = PT.Engineering({
    id = 204853,
    -- label = 'Discarded Dracothyst Drill',
    quest = 75431,
    note = '{item:204853}' -- Discarded Dracothyst Drill
}) -- Discarded Dracothyst Drill

-------------------------------------------------------------------------------
-------------------------------- DRAGON GLYPHS --------------------------------
-------------------------------------------------------------------------------

map.nodes[30414530] = Dragonglyph() -- Zaqali Caldera
map.nodes[41638037] = Dragonglyph() -- Glimmerogg
map.nodes[46733741] = Dragonglyph() -- Zaralek Cavern
map.nodes[54735470] = Dragonglyph() -- Loamm
map.nodes[72114844] = Dragonglyph() -- Throughway

-------------------------------------------------------------------------------
--------------------------------- DRAGONRACES ---------------------------------
-------------------------------------------------------------------------------

map.nodes[39054999] = Dragonrace({
    label = nil
    -- normal = {2247, nil, 75}
    -- advanced = {nil, nil, nil},
    -- reverse = {nil, nil, nil},
    -- rewards = {
    --     Achievement({id = nil, criteria = nil, oneline = true}), -- normal bronze
    --     Achievement({id = nil, criteria = nil, oneline = true}), -- normal silver
    --     Achievement({id = nil, criteria = nil, oneline = true}), -- normal gold
    --     Achievement({id = nil, criteria = nil, oneline = true}), -- advanced bronze
    --     Achievement({id = nil, criteria = nil, oneline = true}), -- advanced silver
    --     Achievement({id = nil, criteria = nil, oneline = true}), -- advanced gold
    --     Achievement({id = nil, criteria = nil, oneline = true}), -- reverse bronze
    --     Achievement({id = nil, criteria = nil, oneline = true}), -- reverse silver
    --     Achievement({id = nil, criteria = nil, oneline = true}) -- reverse gold
    -- }
}) -- Igira's Watch

map.nodes[54502371] = Dragonrace({
    label = nil
    -- normal = {2248, 72, 69}
    -- advanced = {nil, nil, nil},
    -- reverse = {nil, nil, nil},
    -- rewards = {
    --     Achievement({id = nil, criteria = nil, oneline = true}), -- normal bronze
    --     Achievement({id = nil, criteria = nil, oneline = true}), -- normal silver
    --     Achievement({id = nil, criteria = nil, oneline = true}), -- normal gold
    --     Achievement({id = nil, criteria = nil, oneline = true}), -- advanced bronze
    --     Achievement({id = nil, criteria = nil, oneline = true}), -- advanced silver
    --     Achievement({id = nil, criteria = nil, oneline = true}), -- advanced gold
    --     Achievement({id = nil, criteria = nil, oneline = true}), -- reverse bronze
    --     Achievement({id = nil, criteria = nil, oneline = true}), -- reverse silver
    --     Achievement({id = nil, criteria = nil, oneline = true}) -- reverse gold
    -- }
}) -- Brimstone Scramble

map.nodes[58155759] = Dragonrace({
    label = nil
    -- normal = {nil, nil, nil},
    -- advanced = {nil, nil, nil},
    -- reverse = {nil, nil, nil},
    -- rewards = {
    --     Achievement({id = nil, criteria = nil, oneline = true}), -- normal bronze
    --     Achievement({id = nil, criteria = nil, oneline = true}), -- normal silver
    --     Achievement({id = nil, criteria = nil, oneline = true}), -- normal gold
    --     Achievement({id = nil, criteria = nil, oneline = true}), -- advanced bronze
    --     Achievement({id = nil, criteria = nil, oneline = true}), -- advanced silver
    --     Achievement({id = nil, criteria = nil, oneline = true}), -- advanced gold
    --     Achievement({id = nil, criteria = nil, oneline = true}), -- reverse bronze
    --     Achievement({id = nil, criteria = nil, oneline = true}), -- reverse silver
    --     Achievement({id = nil, criteria = nil, oneline = true}) -- reverse gold
    -- }
}) -- Zaralek Zigzag

map.nodes[58724503] = Dragonrace({
    label = nil
    -- normal = {2246, 80, 75}
    -- advanced = {nil, nil, nil},
    -- reverse = {nil, nil, nil},
    -- rewards = {
    --     Achievement({id = nil, criteria = nil, oneline = true}), -- normal bronze
    --     Achievement({id = nil, criteria = nil, oneline = true}), -- normal silver
    --     Achievement({id = nil, criteria = nil, oneline = true}), -- normal gold
    --     Achievement({id = nil, criteria = nil, oneline = true}), -- advanced bronze
    --     Achievement({id = nil, criteria = nil, oneline = true}), -- advanced silver
    --     Achievement({id = nil, criteria = nil, oneline = true}), -- advanced gold
    --     Achievement({id = nil, criteria = nil, oneline = true}), -- reverse bronze
    --     Achievement({id = nil, criteria = nil, oneline = true}), -- reverse silver
    --     Achievement({id = nil, criteria = nil, oneline = true}) -- reverse gold
    -- }
}) -- Shimmering Slalom

-------------------------------------------------------------------------------
-------------------------------- MISCELLANEOUS --------------------------------
-------------------------------------------------------------------------------

map.nodes[44257993] = Collectible({
    id = 201752,
    icon = 5003561,
    requires = {
        ns.requirement.Quest(74787), -- Come Snail Away
        ns.requirement.Quest(74514) -- The Slowest Fan Club
    },
    rewards = {
        Mount({item = 205155, id = 1729}) -- Big Slick in the City
    }
}) -- Briggul
