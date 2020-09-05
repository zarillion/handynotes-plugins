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

nodes[19804160] = Rare({
    id=170301,
    quest=nil,
    rewards={
        Achievement({id=14744, criteria=49842}),
    }
}) -- Apholeias, Herald of Loss

nodes[40603900] = Rare({
    id=157833,
    quest=nil,
    rewards={
        Achievement({id=14744, criteria=49843}),
    }
}) -- Borr-Geth

nodes[28201380] = Rare({
    id=171317,
    quest=nil,
    rewards={
        Achievement({id=14744, criteria=49844}),
    }
}) -- Conjured Death

-- nodes[] = Rare({
--     id=160770,
--     quest=nil,
--     rewards={
--         Achievement({id=14744, criteria=49845}),
--     }
-- }) -- Darithis the Bleak

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

nodes[23205300] = Rare({
    id=170774,
    quest=nil,
    rewards={
        Achievement({id=14744, criteria=49848}),
    }
}) -- Eketra <The Impaler>

-- nodes[] = Rare({
--     id=169827,
--     quest=nil,
--     rewards={
--         Achievement({id=14744, criteria=49849}),
--     }
-- }) -- Ekphoras, Herald of Grief

-- nodes[] = Rare({
--     id=154330,
--     quest=nil,
--     rewards={
--         Achievement({id=14744, criteria=49850}),
--     }
-- }) -- Eternas the Tormentor

-- nodes[] = Rare({
--     id=170303,
--     quest=nil,
--     rewards={
--         Achievement({id=14744, criteria=49851}),
--     }
-- }) -- Exos, Herald of Domination

nodes[16205040] = Rare({
    id=162849,
    quest=nil,
    rewards={
        Achievement({id=14744, criteria=49852}),
    }
}) -- Morguliax <Lord of Decapitation>

nodes[46207440] = Rare({
    id=158278,
    quest=nil,
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

nodes[28601160] = Rare({
    id=170302,
    quest=nil,
    rewards={
        Achievement({id=14744, criteria=49858}),
    }
}) -- Talaporas, Herald of Pain

-- nodes[] = Rare({
--     id=170731,
--     quest=nil,
--     rewards={
--         Achievement({id=14744, criteria=49859}),
--     }
-- }) -- Thanassos <Death's Voice>

nodes[38406260] = Rare({
    id=172862,
    quest=nil,
    rewards={
        Achievement({id=14744, criteria=49860}),
    }
}) -- Yero the Skittish

-------------------------------------------------------------------------------
---------------------------- BONUS OBJECTIVE BOSSES ---------------------------
-------------------------------------------------------------------------------

local BonusBoss = Class('BonusBoss', NPC, { icon='peg_red', scale=1.8 })

nodes[23004160] = BonusBoss({
    id=169102,
    quest=nil,
    rewards={
        Achievement({id=14660, criteria=49485}),
    }
}) -- Agonix

-- nodes[] = BonusBoss({
--     id=170787,
--     quest=nil,
--     rewards={
--         Achievement({id=14660, criteria=49487}),
--     }
-- }) -- Akros <Death's Hammer>

nodes[27602380] = BonusBoss({
    id=168693,
    quest=nil,
    rewards={
        Achievement({id=14660, criteria=49484}),
    }
}) -- Cyrixia <The Willbreaker>

nodes[26001480] = BonusBoss({
    id=162452,
    quest=nil,
    rewards={
        Achievement({id=14660, criteria=49476}),
    }
}) -- Dartanos <Flayer of Souls>

nodes[19205740] = BonusBoss({
    id=162844,
    quest=nil,
    rewards={
        Achievement({id=14660, criteria=50410}),
    }
}) -- Dath Rezara <Lord of Blades>

nodes[34202000] = BonusBoss({
    id=158314,
    quest=nil,
    rewards={
        Achievement({id=14660, criteria=49475}),
    }
}) -- Drifting Sorrow

-- nodes[] = BonusBoss({
--     id=172523,
--     quest=nil,
--     rewards={
--         Achievement({id=14660, criteria=49490}),
--     }
-- }) -- Houndmaster Vasanok

-- nodes[] = BonusBoss({
--     id=170692,
--     quest=nil,
--     rewards={
--         Achievement({id=14660, criteria=49486}),
--     }
-- }) -- Krala <Death's Wings>

nodes[27201860] = BonusBoss({
    id=171316,
    quest=nil,
    rewards={
        Achievement({id=14660, criteria=49488}),
    }
}) -- Malevolent Stygia

nodes[43804800] = BonusBoss({
    id=172207,
    quest=nil,
    rewards={
        Achievement({id=14660, criteria=50408}),
    }
}) -- Odalrik

nodes[25604800] = BonusBoss({
    id=162845,
    quest=nil,
    rewards={
        Achievement({id=14660, criteria=49480}),
    }
}) -- Orrholyn <Lord of Bloodletting>

nodes[27003780] = BonusBoss({
    id=162829,
    quest=nil,
    rewards={
        Achievement({id=14660, criteria=49479}),
    }
}) -- Razkazzar <Lord of Axes>

-- nodes[] = BonusBoss({
--     id=172521,
--     quest=nil,
--     rewards={
--         Achievement({id=14660, criteria=49489}),
--     }
-- }) -- Sanngror the Torturer

nodes[61607820] = BonusBoss({
    id=172524,
    quest=nil,
    rewards={
        Achievement({id=14660, criteria=49491}),
    }
}) -- Skittering Broodmother

nodes[21803060] = BonusBoss({
    id=162965,
    quest=nil,
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
    quest={62539, 62722},
    rewards={
        Achievement({id=14660, criteria=50409}),
    }
}) -- Stygian Incinerator

-- nodes[] = BonusBoss({
--     id=173086,
--     quest=nil,
--     rewards={
--         Achievement({id=14660, criteria=49492}),
--     }
-- }) -- Valis the Cruel

-- nodes[] = BonusBoss({
--     id=165973,
--     quest=nil,
--     rewards={
--         Achievement({id=14660, criteria=49483}),
--     }
-- }) -- Warren Mongrel

-------------------------------------------------------------------------------

-- HACK: in development, hide all the obnoxious tomb-stone vignettes so we can
-- get some work done ...

hooksecurefunc(ns.addon, 'OnInitialize', function ()
    if ns.addon.db.profile.development then
        local _UpdatePosition = VignettePinMixin.UpdatePosition
        VignettePinMixin.UpdatePosition = function (self, bestUniqueVignette)
            if not self:GetMap() then return end
            _UpdatePosition(self, bestUniqueVignette)
        end
        hooksecurefunc(WorldMapFrame, 'OnMapChanged', function ()
            local template = WorldMapFrame.pinPools.VignettePinTemplate
            for pin in template:EnumerateActive() do
                if pin.vignetteInfo.vignetteID == 4553 then
                    template:Release(pin)
                end
            end
        end)
    end
end)

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