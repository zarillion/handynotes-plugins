-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Map = ns.Map

local Rare = ns.node.Rare

local Achievement = ns.reward.Achievement

-------------------------------------------------------------------------------

local map = Map({id = 2200, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[80004400] = Rare({ -- REVIEW
    id = 210050,
    quest = nil,
    rewards = {
        Achievement({id = 19316, criteria = 62945}) -- Adventurer of the Emerald Dream
    }
}) -- Bloodstripe Great Ray

map.nodes[84004000] = Rare({ -- REVIEW
    id = 209898,
    quest = nil,
    rewards = {
        Achievement({id = 19316, criteria = 62931}) -- Adventurer of the Emerald Dream
    }
}) -- Cargnosh

map.nodes[80004200] = Rare({ -- REVIEW
    id = 209909,
    quest = nil,
    rewards = {
        Achievement({id = 19316, criteria = 62937}) -- Adventurer of the Emerald Dream
    }
}) -- Crabtankerous

map.nodes[88004000] = Rare({ -- REVIEW
    id = 209929,
    quest = nil,
    rewards = {
        Achievement({id = 19316, criteria = 62933}) -- Adventurer of the Emerald Dream
    }
}) -- Envoy of Winter

map.nodes[82004000] = Rare({ -- REVIEW
    id = 209893,
    quest = nil,
    rewards = {
        Achievement({id = 19316, criteria = 62930}) -- Adventurer of the Emerald Dream
    }
}) -- Firebrand Fystia

map.nodes[82004200] = Rare({ -- REVIEW
    id = 209913,
    quest = nil,
    rewards = {
        Achievement({id = 19316, criteria = 62938}) -- Adventurer of the Emerald Dream
    }
}) -- Fruitface

map.nodes[86004000] = Rare({ -- REVIEW
    id = 209936,
    quest = nil,
    rewards = {
        Achievement({id = 19316, criteria = 62932}) -- Adventurer of the Emerald Dream
    }
}) -- Greedy Gessie

map.nodes[90004400] = Rare({ -- REVIEW
    id = 210075,
    quest = nil,
    rewards = {
        Achievement({id = 19316, criteria = 62950}) -- Adventurer of the Emerald Dream
    }
}) -- Henri Snufftail

map.nodes[94004000] = Rare({ -- REVIEW
    id = 209620,
    quest = nil,
    rewards = {
        Achievement({id = 19316, criteria = 62936}) -- Adventurer of the Emerald Dream
    }
}) -- Ignit the Firebranded

map.nodes[22743226] = Rare({ -- REVIEW
    id = 209919, -- 210559 Balboan
    quest = 78039,
    rewards = {
        Achievement({id = 19316, criteria = 62940}) -- Adventurer of the Emerald Dream
    }
}) -- Isaqa (Balboan)

map.nodes[92004200] = Rare({ -- REVIEW
    id = 210046,
    quest = nil,
    rewards = {
        Achievement({id = 19316, criteria = 62943}) -- Adventurer of the Emerald Dream
    }
}) -- Keen-eyed Cian

map.nodes[82004400] = Rare({ -- REVIEW
    id = 210051,
    quest = nil,
    rewards = {
        Achievement({id = 19316, criteria = 62946}) -- Adventurer of the Emerald Dream
    }
}) -- Matriarch Keevah

map.nodes[84004400] = Rare({ -- REVIEW
    id = 208658,
    quest = nil,
    rewards = {
        Achievement({id = 19316, criteria = 62947}) -- Adventurer of the Emerald Dream
    }
}) -- Moltenbinder's Disciple

map.nodes[86004400] = Rare({ -- REVIEW
    id = 210064,
    quest = nil,
    rewards = {
        Achievement({id = 19316, criteria = 62948}) -- Adventurer of the Emerald Dream
    }
}) -- Molten Leadspike

map.nodes[90004200] = Rare({ -- REVIEW
    id = 210045,
    quest = nil,
    rewards = {
        Achievement({id = 19316, criteria = 62942}) -- Adventurer of the Emerald Dream
    }
}) -- Moragh the Slothful

map.nodes[88004400] = Rare({ -- REVIEW
    id = 210070,
    quest = nil,
    rewards = {
        Achievement({id = 19316, criteria = 62949}) -- Adventurer of the Emerald Dream
    }
}) -- Mosa Umbramane

map.nodes[80004000] = Rare({ -- REVIEW
    id = 209113,
    quest = nil,
    rewards = {
        Achievement({id = 19316, criteria = 62929}) -- Adventurer of the Emerald Dream
    }
}) -- Nuoberon

map.nodes[92004400] = Rare({ -- REVIEW
    id = 210161,
    quest = nil,
    rewards = {
        Achievement({id = 19316, criteria = 62951}) -- Adventurer of the Emerald Dream
    }
}) -- Ristar, the Rabid

map.nodes[94004200] = Rare({ -- REVIEW
    id = 210047,
    quest = nil,
    rewards = {
        Achievement({id = 19316, criteria = 62944}) -- Adventurer of the Emerald Dream
    }
}) -- Somnambulant Ori

map.nodes[92004000] = Rare({ -- REVIEW
    id = 209365,
    quest = nil,
    rewards = {
        Achievement({id = 19316, criteria = 62935}) -- Adventurer of the Emerald Dream
    }
}) -- Splinterlimb

map.nodes[88004200] = Rare({ -- REVIEW
    id = 210111,
    quest = nil,
    rewards = {
        Achievement({id = 19316, criteria = 62941}) -- Adventurer of the Emerald Dream
    }
}) -- Surging Lasher

map.nodes[90004000] = Rare({ -- REVIEW
    id = 209902,
    quest = nil,
    rewards = {
        Achievement({id = 19316, criteria = 62934}) -- Adventurer of the Emerald Dream
    }
}) -- Talthonei Ashwisper

map.nodes[84004200] = Rare({ -- REVIEW
    id = 209911,
    quest = 77990,
    rewards = {
        Achievement({id = 19316, criteria = 62939}) -- Adventurer of the Emerald Dream
    }
}) -- The Apostle item=210098
