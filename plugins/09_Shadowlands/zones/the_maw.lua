-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map
local isinstance = ns.isinstance

local Node = ns.node.Node
local NPC = ns.node.NPC
local Rare = ns.node.Rare
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Transmog = ns.reward.Transmog
local Toy = ns.reward.Toy

local Path = ns.poi.Path
local POI = ns.poi.POI

local options = ns.options.args.VisibilityGroup.args
local defaults = ns.optionDefaults.profile

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({ id=1543 })
local nodes = map.nodes

-------------------------------------------------------------------------------
----------------------------------- OPTIONS -----------------------------------
-------------------------------------------------------------------------------

defaults['rare_maw'] = true

options.groupMaw = {
    type = "header",
    name = C_Map.GetMapInfo(map.id).name,
    order = 40,
}

options.rareMaw = {
    type = "toggle",
    arg = "rare_maw",
    name = L["options_toggle_rares"],
    desc = L["options_toggle_rares_desc"],
    order = 41,
    width = "normal",
}

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

-- nodes[] = Rare({
--     id=157964,
--     quest=nil,
--     rewards={
--         Achievement({id=14744, criteria=49841}),
--     }
-- }) -- Adjutant Dekaris

nodes[19324172] = Rare({
    id=170301,
    quest=60788,
    note=L["apholeias_note"],
    rewards={
        Achievement({id=14744, criteria=49842}),
        Item({item=182327}) -- Dominion Etching Loss 182327
    }
}) -- Apholeias, Herald of Loss

nodes[39014119] = Rare({
    id=157833,
    quest=nil,
    rewards={
        Achievement({id=14744, criteria=49843}),
    }
}) -- Borr-Geth

nodes[27731305] = Rare({
    id=171317,
    quest=61106,
    rewards={
        Achievement({id=14744, criteria=49844}),
    }
}) -- Conjured Death

nodes[60964805] = Rare({
    id=160770,
    quest=62281,
    note=L["in_cave"],
    rewards={
        Achievement({id=14744, criteria=49845}),
    }
}) -- Darithis the Bleak

-- nodes[] = Rare({
--     id=158025,
--     quest=nil,
--     rewards={
--         Achievement({id=14744, criteria=49846}),
--     }
-- }) -- Darklord Taraxis

-- nodes[] = Rare({
--     id=170711,
--     quest=nil,
--     rewards={
--         Achievement({id=14744, criteria=49847}),
--     }
-- }) -- Dolos <Death's Knife>

nodes[23765341] = Rare({
    id=170774,
    quest=60915,
    rewards={
        Achievement({id=14744, criteria=49848}),
    }
}) -- Eketra <The Impaler>

nodes[42342108] = Rare({
    id=169827,
    quest=60666,
    note=L["ekphoras_note"],
    rewards={
        Achievement({id=14744, criteria=49849}),
        Item({item=182328}) -- Dominion Etching: Grief
    }
}) -- Ekphoras, Herald of Grief

-- nodes[] = Rare({
--     id=154330,
--     quest=nil,
--     rewards={
--         Achievement({id=14744, criteria=49850}),
--     }
-- }) -- Eternas the Tormentor

nodes[20586935] = Rare({
    id=170303,
    quest=62260,
    note=L["exos_note"],
    rewards={
        Achievement({id=14744, criteria=49851}),
    }
}) -- Exos, Herald of Domination

nodes[16945102] = Rare({
    id=162849,
    quest=60987,
    rewards={
        Achievement({id=14744, criteria=49852}),
    }
}) -- Morguliax <Lord of Decapitation>

nodes[45507376] = Rare({
    id=158278,
    quest=57573,
    note=L["in_small_cave"],
    rewards={
        Achievement({id=14744, criteria=49853}),
    }
}) -- Nascent Devourer

-- nodes[] = Rare({
--     id=164064,
--     quest=nil,
--     rewards={
--         Achievement({id=14744, criteria=49854}),
--     }
-- }) -- Obolos <Prime Adjutant>

nodes[23692139] = Rare({
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

nodes[29805960] = Rare({
    id=170634,
    quest=nil,
    rewards={
        Achievement({id=14744, criteria=49856}),
    }
}) -- Shadeweaver Zeris

nodes[35974156] = Rare({
    id=166398,
    quest=60834,
    rewards={
        Achievement({id=14744, criteria=49857}),
    }
}) -- Soulforger Rhovus

nodes[28701204] = Rare({
    id=170302,
    quest=60789, -- 62722?
    note=L["talaporas_note"],
    rewards={
        Achievement({id=14744, criteria=49858}),
        Item({item=182326}) -- Dominion Etching: Pain
    }
}) -- Talaporas, Herald of Pain

-- nodes[] = Rare({
--     id=170731,
--     quest=nil,
--     rewards={
--         Achievement({id=14744, criteria=49859}),
--     }
-- }) -- Thanassos <Death's Voice>

nodes[37676591] = Rare({
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

local BonusBoss = Class('BonusBoss', NPC, { icon='peg_red', scale=1.8 })

nodes[23004160] = BonusBoss({
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

-- nodes[] = BonusBoss({
--     id=170787,
--     quest=60920,
--     rewards={
--         Achievement({id=14660, criteria=49487}),
--     }
-- }) -- Akros <Death's Hammer>

nodes[28712513] = BonusBoss({
    id=168693,
    quest=61346,
    rewards={
        Achievement({id=14660, criteria=49484}),
    }
}) -- Cyrixia <The Willbreaker>

nodes[25831479] = BonusBoss({
    id=162452,
    quest=59230,
    rewards={
        Achievement({id=14660, criteria=49476}),
    }
}) -- Dartanos <Flayer of Souls>

nodes[19205740] = BonusBoss({
    id=162844,
    quest=61140,
    rewards={
        Achievement({id=14660, criteria=50410}),
    }
}) -- Dath Rezara <Lord of Blades>

nodes[34202000] = BonusBoss({
    id=158314,
    quest=59183,
    rewards={
        Achievement({id=14660, criteria=49475}),
    }
}) -- Drifting Sorrow

nodes[60456478] = BonusBoss({
    id=172523,
    quest=62209,
    rewards={
        Achievement({id=14660, criteria=49490}),
    }
}) -- Houndmaster Vasanok

-- nodes[] = BonusBoss({
--     id=170692,
--     quest=60903,
--     rewards={
--         Achievement({id=14660, criteria=49486}),
--     }
-- }) -- Krala <Death's Wings>

nodes[27311754] = BonusBoss({
    id=171316,
    quest=61125,
    rewards={
        Achievement({id=14660, criteria=49488}),
    }
}) -- Malevolent Stygia

nodes[43804800] = BonusBoss({
    id=172207,
    quest=62618,
    rewards={
        Achievement({id=14660, criteria=50408}),
    }
}) -- Odalrik

nodes[25364875] = BonusBoss({
    id=162845,
    quest=60991,
    rewards={
        Achievement({id=14660, criteria=49480}),
    }
}) -- Orrholyn <Lord of Bloodletting>

nodes[26173744] = BonusBoss({
    id=162829,
    quest=62228,
    rewards={
        Achievement({id=14660, criteria=49479}),
    }
}) -- Razkazzar <Lord of Axes>

nodes[55626318] = BonusBoss({
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

nodes[61737795] = BonusBoss({
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

nodes[20782968] = BonusBoss({
    id=162965,
    quest=58918,
    rewards={
        Achievement({id=14660, criteria=49481}),
    }
}) -- Sorath the Sated

nodes[36253744] = BonusBoss({
    id=165047,
    quest=59441,
    rewards={
        Achievement({id=14660, criteria=49482}),
    }
}) -- Soulsmith Yol-Mattar

nodes[36844480] = BonusBoss({
    id=156203,
    quest=62539,
    rewards={
        Achievement({id=14660, criteria=50409}),
    }
}) -- Stygian Incinerator

nodes[40705959] = BonusBoss({
    id=173086,
    quest=61728,
    note=L["valis_note"],
    rewards={
        Achievement({id=14660, criteria=49492}),
    }
}) -- Valis the Cruel

-- nodes[] = BonusBoss({
--     id=165973,
--     quest=61124,
--     rewards={
--         Achievement({id=14660, criteria=49483}),
--     }
-- }) -- Warren Mongrel

-------------------------------------------------------------------------------
---------------------------- BONUS OBJECTIVE EVENTS ---------------------------
-------------------------------------------------------------------------------

-- 21573436 - 59007 - Soul Well - Catch the Stygia erupting from the Soul Well (30)
-- 32401771 - 59007 - Soul Well - Catch the Stygia erupting from the Soul Well (30)
-- 30394255 - 59007 - Soul Well - Catch the Stygia erupting from the Soul Well (30)

-- 27846503 - 59784 - Obliterated Soul Shards - Collect Obliterated Soul Shards on the bridges.

-------------------------------------------------------------------------------

-- HACK: in development, hide all the obnoxious tomb-stone vignettes so we can
-- get some work done ...

-- hooksecurefunc(ns.addon, 'OnInitialize', function ()
--     local _UpdatePosition = VignettePinMixin.UpdatePosition
--     VignettePinMixin.UpdatePosition = function (self, bestUniqueVignette)
--         if not self:GetMap() then return end
--         _UpdatePosition(self, bestUniqueVignette)
--     end
--     hooksecurefunc(WorldMapFrame, 'OnMapChanged', function ()
--         local template = WorldMapFrame.pinPools.VignettePinTemplate
--         if template then
--             for pin in template:EnumerateActive() do
--                 if pin.vignetteInfo.vignetteID == 4553 then
--                     template:Release(pin)
--                 end
--             end
--         end
--     end)
-- end)

-------------------------------------------------------------------------------

function map:enabled (node, coord, minimap)
    if not Map.enabled(self, node, coord, minimap) then return false end

    if node == map.intro then return true end

    -- add rlabel and warning if covenant doesn't match
    ns.processCovenant(node)

    local profile = ns.addon.db.profile
    if isinstance(node, Rare) then return profile.rare_maw end
    return true
end

ns.maps[map.id] = map