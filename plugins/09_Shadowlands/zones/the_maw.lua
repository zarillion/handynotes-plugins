-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Node = ns.node.Node
local NPC = ns.node.NPC
local Rare = ns.node.Rare

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Quest = ns.reward.Quest
local Toy = ns.reward.Toy

local Path = ns.poi.Path
local POI = ns.poi.POI

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({ id=1543, phased=false })

function map:prepare ()
    Map.prepare(self)
    self.phased = C_QuestLog.IsQuestFlaggedCompleted(60134)
end

-------------------------------------------------------------------------------
------------------------------------ INTRO ------------------------------------
-------------------------------------------------------------------------------

local MawIntro = Class('MawIntro', ns.node.Intro, {
    quest=60134,
    note=L["maw_intro_note"]
})

function MawIntro:init ()
    Node.init(self)
    C_QuestLine.GetQuestLineInfo(60134, 1543) -- fetch info
end

function MawIntro.getters:label ()
    local info = C_QuestLine.GetQuestLineInfo(60134, 1543)
    return info and info.questLineName or 'Return to the Maw'
end

map.intro = MawIntro({
    rewards={Quest({id=({
        {60232, 61495, 61496, 60287, 61391, 61355, 60289, 60134}, -- Kyrian
        {60234, 61515, 61496, 60287, 61391, 61355, 60289, 60134}, -- Venthyr
        {60233, 61508, 61496, 60287, 61391, 61355, 60289, 60134}, -- Night Fae
        {60130, 61513, 61496, 60287, 61391, 61355, 60289, 60134}  -- Necrolord
    })[math.max(C_Covenants.GetActiveCovenantID(), 1)]})}
})

map.nodes[80306280] = map.intro

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

-- map.nodes[] = Rare({
--     id=157964,
--     quest=nil,
--     rewards={
--         Achievement({id=14744, criteria=49841}),
--     }
-- }) -- Adjutant Dekaris

map.nodes[19324172] = Rare({
    id=170301,
    quest=60788,
    note=L["apholeias_note"],
    rewards={
        Achievement({id=14744, criteria=49842}),
        Item({item=182327}) -- Dominion Etching Loss 182327
    }
}) -- Apholeias, Herald of Loss

map.nodes[39014119] = Rare({
    id=157833,
    quest=57469,
    rewards={
        Achievement({id=14744, criteria=49843}),
    }
}) -- Borr-Geth

map.nodes[27731305] = Rare({
    id=171317,
    quest=61106,
    rewards={
        Achievement({id=14744, criteria=49844}),
    }
}) -- Conjured Death

map.nodes[60964805] = Rare({
    id=160770,
    quest=62281,
    note=L["in_cave"],
    rewards={
        Achievement({id=14744, criteria=49845}),
    }
}) -- Darithis the Bleak

map.nodes[49128175] = Rare({
    id=158025,
    quest=62282,
    rewards={
        Achievement({id=14744, criteria=49846}),
    }
}) -- Darklord Taraxis

map.nodes[32946646] = Rare({
    id=170711,
    quest=nil,
    rewards={
        Achievement({id=14744, criteria=49847}),
    }
}) -- Dolos <Death's Knife>

map.nodes[23765341] = Rare({
    id=170774,
    quest=60915,
    rewards={
        Achievement({id=14744, criteria=49848}),
    }
}) -- Eketra <The Impaler>

map.nodes[42342108] = Rare({
    id=169827,
    quest=60666,
    note=L["ekphoras_note"],
    rewards={
        Achievement({id=14744, criteria=49849}),
        Item({item=182328}) -- Dominion Etching: Grief
    }
}) -- Ekphoras, Herald of Grief

map.nodes[27584966] = Rare({
    id=154330,
    quest=57509,
    rewards={
        Achievement({id=14744, criteria=49850}),
    }
}) -- Eternas the Tormentor

map.nodes[20586935] = Rare({
    id=170303,
    quest=62260,
    note=L["exos_note"],
    rewards={
        Achievement({id=14744, criteria=49851}),
    }
}) -- Exos, Herald of Domination

map.nodes[16945102] = Rare({
    id=162849,
    quest=60987,
    rewards={
        Achievement({id=14744, criteria=49852}),
    }
}) -- Morguliax <Lord of Decapitation>

map.nodes[45507376] = Rare({
    id=158278,
    quest=57573,
    note=L["in_small_cave"],
    rewards={
        Achievement({id=14744, criteria=49853}),
    }
}) -- Nascent Devourer

map.nodes[48801830] = Rare({
    id=164064,
    quest=60667,
    rewards={
        Achievement({id=14744, criteria=49854}),
    }
}) -- Obolos <Prime Adjutant>

map.nodes[23692139] = Rare({
    id=172577,
    quest=61519,
    note=L["orophea_note"],
    rewards={
        Achievement({id=14744, criteria=49855}),
        Toy({item=181794}) -- Orophea's Lyre
    },
    pois={
        POI({26772932}) -- Eurydea's Amulet
    }
}) -- Orophea

map.nodes[30726036] = Rare({
    id=170634,
    quest=nil,
    rewards={
        Achievement({id=14744, criteria=49856}),
    }
}) -- Shadeweaver Zeris

map.nodes[35974156] = Rare({
    id=166398,
    quest=60834,
    rewards={
        Achievement({id=14744, criteria=49857}),
    }
}) -- Soulforger Rhovus

map.nodes[28701204] = Rare({
    id=170302,
    quest=60789, -- 62722?
    note=L["talaporas_note"],
    rewards={
        Achievement({id=14744, criteria=49858}),
        Item({item=182326}) -- Dominion Etching: Pain
    }
}) -- Talaporas, Herald of Pain

map.nodes[27397152] = Rare({
    id=170731,
    quest=nil,
    rewards={
        Achievement({id=14744, criteria=49859}),
    }
}) -- Thanassos <Death's Voice>

map.nodes[37676591] = Rare({
    id=172862,
    quest=61568,
    note=L["yero_note"],
    rewards={
        Achievement({id=14744, criteria=49860}),
    },
    pois={
        Path({
            37446212, 37356052, 37585887, 38465859, 39185892, 39026021,
            38456142, 38146265, 37936400, 37676591
        })
    }
}) -- Yero the Skittish

-------------------------------------------------------------------------------
---------------------------- BONUS OBJECTIVE BOSSES ---------------------------
-------------------------------------------------------------------------------

local BonusBoss = Class('BonusBoss', NPC, {
    group='bonus_boss',
    icon='peg_red',
    scale=1.8
})

map.nodes[23004160] = BonusBoss({
    id=169102,
    quest=61136,
    note=L["in_cave"],
    rewards={
        Achievement({id=14660, criteria=49485}),
    },
    pois={
        POI({20813927}) -- Cave entrance
    }
}) -- Agonix

map.nodes[26075498] = BonusBoss({
    id=170787,
    quest=60920,
    rewards={
        Achievement({id=14660, criteria=49487}),
    }
}) -- Akros <Death's Hammer>

map.nodes[28712513] = BonusBoss({
    id=168693,
    quest=61346,
    rewards={
        Achievement({id=14660, criteria=49484}),
    }
}) -- Cyrixia <The Willbreaker>

map.nodes[25831479] = BonusBoss({
    id=162452,
    quest=59230,
    rewards={
        Achievement({id=14660, criteria=49476}),
    }
}) -- Dartanos <Flayer of Souls>

map.nodes[19205740] = BonusBoss({
    id=162844,
    quest=61140,
    rewards={
        Achievement({id=14660, criteria=50410}),
    }
}) -- Dath Rezara <Lord of Blades>

map.nodes[34202000] = BonusBoss({
    id=158314,
    quest=59183,
    rewards={
        Achievement({id=14660, criteria=49475}),
    }
}) -- Drifting Sorrow

map.nodes[60456478] = BonusBoss({
    id=172523,
    quest=62209,
    rewards={
        Achievement({id=14660, criteria=49490}),
    }
}) -- Houndmaster Vasanok

map.nodes[30846866] = BonusBoss({
    id=170692,
    quest=60903,
    rewards={
        Achievement({id=14660, criteria=49486}),
    }
}) -- Krala <Death's Wings>

map.nodes[27311754] = BonusBoss({
    id=171316,
    quest=61125,
    rewards={
        Achievement({id=14660, criteria=49488}),
    }
}) -- Malevolent Stygia

map.nodes[43804800] = BonusBoss({
    id=172207,
    quest=62618,
    rewards={
        Achievement({id=14660, criteria=50408}),
    }
}) -- Odalrik

map.nodes[25364875] = BonusBoss({
    id=162845,
    quest=60991,
    rewards={
        Achievement({id=14660, criteria=49480}),
    }
}) -- Orrholyn <Lord of Bloodletting>

map.nodes[26173744] = BonusBoss({
    id=162829,
    quest=62228,
    rewards={
        Achievement({id=14660, criteria=49479}),
    }
}) -- Razkazzar <Lord of Axes>

map.nodes[55626318] = BonusBoss({
    id=172521,
    quest=62210,
    note=L["in_cave"]..' '..L["sanngror_note"],
    rewards={
        Achievement({id=14660, criteria=49489}),
    },
    pois={
        POI({55806753}) -- Cave entrance
    }
}) -- Sanngror the Torturer

map.nodes[61737795] = BonusBoss({
    id=172524,
    quest=62211,
    note=L["in_cave"],
    rewards={
        Achievement({id=14660, criteria=49491}),
    },
    pois={
        POI({59268001}) -- Cave entrance
    }
}) -- Skittering Broodmother

map.nodes[20782968] = BonusBoss({
    id=162965,
    quest=58918,
    rewards={
        Achievement({id=14660, criteria=49481}),
    }
}) -- Sorath the Sated

map.nodes[36253744] = BonusBoss({
    id=165047,
    quest=59441,
    rewards={
        Achievement({id=14660, criteria=49482}),
    }
}) -- Soulsmith Yol-Mattar

map.nodes[36844480] = BonusBoss({
    id=156203,
    quest=62539,
    rewards={
        Achievement({id=14660, criteria=50409}),
    }
}) -- Stygian Incinerator

map.nodes[40705959] = BonusBoss({
    id=173086,
    quest=61728,
    note=L["valis_note"],
    rewards={
        Achievement({id=14660, criteria=49492}),
    }
}) -- Valis the Cruel

-- map.nodes[] = BonusBoss({
--     id=165973,
--     quest=61124,
--     rewards={
--         Achievement({id=14660, criteria=49483}),
--     }
-- }) -- Warren Mongrel

-------------------------------------------------------------------------------
---------------------------- BONUS OBJECTIVE EVENTS ---------------------------
-------------------------------------------------------------------------------

local BonusEvent = Class('BonusEvent', ns.node.Quest, {
    group='bonus_event',
    icon='peg_yellow',
    scale=1.8,
    note=''
})

map.nodes[21573436] = BonusEvent({ quest=59007, note=L["soul_well_note"] })
map.nodes[30394255] = BonusEvent({ quest=59007, note=L["soul_well_note"] })
map.nodes[32401771] = BonusEvent({ quest=59007, note=L["soul_well_note"] })
map.nodes[27446463] = BonusEvent({ quest=59784, note=L["obliterated_soul_shards_note"] })