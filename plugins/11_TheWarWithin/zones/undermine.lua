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
local Vendor = ns.node.Vendor

local WorldsoulMemory = ns.node.WorldsoulMemory

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Pet = ns.reward.Pet
local Reputation = ns.reward.Reputation
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

local Entrance = ns.poi.Entrance
local Path = ns.poi.Path
local POI = ns.poi.POI

local ItemStatus = ns.tooltip.ItemStatus

-------------------------------------------------------------------------------

local map = Map({id = 2346, patch = 110100, settings = true}) -- Undermine
local trd = ns.maps[2214]

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[68508078] = Rare({
    id = 230931,
    quest = 84917,
    rewards = {
        Achievement({id = 41216, criteria = 71591}),
        Reputation({id = 2653, gain = 20}), Item({item = 234419}) -- Steamboil Mounting System
    }
}) -- Scrapbeak

map.nodes[25243675] = Rare({
    id = 230934,
    location = L['in_sewer'],
    pois = {Entrance({25453498})},
    quest = 84918,
    rewards = {
        Achievement({id = 41216, criteria = 71592}),
        Reputation({id = 2653, gain = 20})
    }
}) -- Ratspit

map.nodes[37684448] = Rare({
    id = 230940,
    quest = 84919,
    rewards = {
        Achievement({id = 41216, criteria = 71593}),
        Reputation({id = 2653, gain = 20}), Item({item = 234420}) -- Handcrank Mounting System
    }
}) -- Tally Doublespeak

map.nodes[36877815] = Rare({
    id = 230946,
    quest = 84920,
    sublabel = L['and_slimesby'],
    rewards = {
        Achievement({id = 41216, criteria = {71595, 71594}}),
        Reputation({id = 2653, gain = 20})
    }
}) -- V.V. Goosworth and Slimesby

map.nodes[54015023] = Rare({
    id = 230951,
    quest = 84921,
    rewards = {
        Achievement({id = 41216, criteria = 71596}),
        Reputation({id = 2653, gain = 20}), Item({item = 234420}) -- Handcrank Mounting System
    }
}) -- Thwack

map.nodes[41922563] = Rare({
    id = 230979,
    quest = 84922,
    rewards = {
        Achievement({id = 41216, criteria = 71597}),
        Reputation({id = 2653, gain = 20}), Item({item = 234381}) -- Handcrank Fuel Tank
    }
}) -- S.A.L.

map.nodes[46915565] = Rare({
    id = 230995,
    quest = 84926,
    rewards = {
        Achievement({id = 41216, criteria = 71598}),
        Reputation({id = 2653, gain = 20}),
        Transmog({item = 235324, slot = L['mail']}) -- scavengers-lost-bind
    }
}) -- Nitro

map.nodes[42227735] = Rare({
    id = 231012,
    quest = 84927,
    rewards = {
        Achievement({id = 41216, criteria = 71599}),
        Reputation({id = 2653, gain = 20})
    }
}) -- Candy Stickemup

map.nodes[67333353] = Rare({
    id = 231017,
    quest = 84928,
    rewards = {
        Achievement({id = 41216, criteria = 71600}),
        Reputation({id = 2653, gain = 20})
    }
}) -- Grimewick

map.nodes[41354357] = Rare({
    id = 231288,
    quest = 85004,
    rewards = {
        Achievement({id = 41216, criteria = 71601}),
        Reputation({id = 2653, gain = 20})
    }
}) -- Swigs Farsight

map.nodes[26516830] = Rare({
    id = 230746,
    quest = 84877,
    rewards = {
        Achievement({id = 41216, criteria = 71602}),
        Reputation({id = 2653, gain = 50})
    }
}) -- Ephemeral Agent Lathyd

map.nodes[63354975] = Rare({
    id = 230793,
    quest = 84884,
    rewards = {
        Achievement({id = 41216, criteria = 71603}), Item({item = 234419}), -- steamboil mounting system
        Reputation({id = 2653, gain = 50})
    },
    pois = {Path({63574989, 64085016, 64005291})}
}) -- The Junk-Wall

map.nodes[52354107] = Rare({
    id = 230800,
    quest = 84895,
    rewards = {
        Achievement({id = 41216, criteria = 71604}),
        Reputation({id = 2653, gain = 50})
    }
}) -- Slugger the Smart

map.nodes[58488643] = Rare({
    id = 230828,
    quest = 84907,
    rewards = {
        Achievement({id = 41216, criteria = 71605}),
        Reputation({id = 2653, gain = 50})
    }
}) -- Chief Foreman Gutso (patrols needs path)

map.nodes[60580989] = Rare({
    id = 230840,
    quest = 84911,
    rewards = {Achievement({id = 41216, criteria = 71606})},
    vignette = 6597
}) -- Flyboy Snooty

map.nodes[40002232] = Rare({
    id = 234480,
    quest = 86298,
    rewards = {Achievement({id = 41216, criteria = 71608})}
}) -- Aurumensis (possible wrong name in achievement) / M.A.G.N.O. (complete the magno-scapper 9000 event to summon)

map.nodes[32027652] = Rare({
    id = 234499,
    quest = 86307,
    rewards = {Achievement({id = 41216, criteria = 71609})}
}) -- Giovante (complete the noggenforger nuisance event to summon)

-- map.nodes[00000000] = Rare({
--     id = 233471,
--     quest = 86431,
--     rewards = {
--         Achievement({id = 41216, criteria = 71610})
--     }
-- }) -- Scrapchewer

map.nodes[64162556] = Rare({
    id = 233472,
    quest = 86428,
    rewards = {
        Achievement({id = 41216, criteria = 71611})
    }
}) -- Volstrike the Charged

-- map.nodes[00000000] = Rare({
--     id = 231310,
--     quest = nil,
--     rewards = {
--         Achievement({id = 41216, criteria = 71612})
--     }
-- }) -- The Darkfuse Precipitant

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[48474307] = Treasure({
    location = L['unexploded_fireworks_location'],
    quest = 85683,
    rewards = {Achievement({id = 41217, criteria = 71613})}
}) -- Unexploded Fireworks

map.nodes[49796566] = Treasure({
    location = L['in_building'],
    note = L['suspicious_book_note'],
    pois = {
        POI({49896613, color = 'Red'}), -- first floor
        POI({49536452, color = 'Green'}) -- second floor
    },
    quest = {85866, 85867, 85868},
    rewards = {Achievement({id = 41217, criteria = 71624})}
}) -- Suspicious Book

map.nodes[56015171] = Treasure({
    note = L['fireworks_hat_note'],
    pois = {POI({57845269}), Path({57845269, 56015171})},
    quest = {85838, 85839, 85856},
    rewards = {Achievement({id = 41217, criteria = 71614})}
}) -- Fireworks Hat

local Plunger = Class('Plunger', Treasure, {
    quest = 85698, -- Exploded Plunger
    rewards = {Achievement({id = 41217, criteria = 71615})}
}) -- Plunger

function Plunger.getters:label()
    local complete = C_QuestLog.IsQuestFlaggedCompleted(85694)
    if complete then return L['exploded_plunger_label'] end
    return L['inert_plunger_label']
end

map.nodes[49699025] = Plunger() -- (Inert Plunger?) Exploded Plunger

map.nodes[38965963] = Treasure({
    note = L['blackened_dice_note'],
    quest = 85814,
    rewards = {
        Achievement({id = 41217, criteria = 71625}), Item({item = 235255}) -- Durable Dice
    }
}) -- Blackened Dice

map.nodes[59351912] = Treasure({
    note = L['lonely_tub_note'],
    pois = {POI({58751798, color = 'Blue'})},
    quest = {85860, 85858},
    rewards = {
        Achievement({id = 41217, criteria = 71626}),
        Transmog({item = 235279, slot = L['legs']}) -- Scorched Shorts
    }
}) -- Lonely Tub

map.nodes[69652164] = Treasure({
    location = L['impotent_potable_location'],
    quest = 85426,
    rewards = {
        Achievement({id = 41217, criteria = 71627}), Item({item = 235230}) -- Impotant Potable
    }
}) -- Potent Potable

map.nodes[40852126] = Treasure({
    location = L['abandoned_toolbox_location'],
    pois = {Entrance({39312588})}, -- Entrance
    quest = 85422,
    rewards = {Achievement({id = 41217, criteria = 71628})}
}) -- Abandoned Toolbox

map.nodes[74677988] = Treasure({
    quest = 85424,
    rewards = {
        Achievement({id = 41217, criteria = 71629}),
        Transmog({item = 234821, slot = L['trinket']}) -- Papa's Prized Putter
    }
}) -- Papa's Prized Putter

map.nodes[26864265] = Treasure({
    quest = 85425,
    rewards = {Achievement({id = 41217, criteria = 71630})}
}) -- Unsupervised Takeout

map.nodes[39386103] = Treasure({
    quest = 85492,
    rewards = {
        Achievement({id = 41217, criteria = 71631}), Item({item = 235221}) -- Paricularly Bright Lightbulb
    }
}) -- Particularly Nice Lamp

map.nodes[53405272] = Treasure({
    quest = 85495,
    rewards = {
        Achievement({id = 41217, criteria = 71632}), Toy({item = 234951}) -- Uncracked Cold Ones
    }
}) -- Uncracked Cold Ones

map.nodes[63813220] = Treasure({
    quest = 85494,
    rewards = {
        Achievement({id = 41217, criteria = 71633}), Item({item = 235273}) -- Distracting Floatmingo
    }
}) -- Marooned Floatmingo

map.nodes[43665154] = Treasure({
    location = L['trick_deck_of_cards_location'],
    quest = 85496,
    rewards = {Achievement({id = 41217, criteria = 71634})}
}) -- Trick Deck of Cards

map.nodes[42308231] = Treasure({
    location = L['in_building'],
    quest = 86487,
    rewards = {Achievement({id = 41217, criteria = 71635})}
}) -- Crumpled Schematics

-------------------------------------------------------------------------------
----------------------------------- VENDORS -----------------------------------
-------------------------------------------------------------------------------

map.nodes[35384142] = Vendor({
    id = 236411,
    note = L['ditty_fuzeboy_note'],
    rewards = {
        Pet({item = 232850, id = 4649, count = 5}), -- Blackwater Kegmover
        Pet({item = 232846, id = 4648, count = 5}), -- Steamwheedle Flunkie
        Pet({item = 232849, id = 4650, count = 5}), -- venture Companyman
        Pet({item = 232840, id = 4661, count = 5}), -- Mechagopher
        Pet({item = 232841, id = 4644, count = 8}), -- Professor Punch
        Pet({item = 232842, id = 4638, count = 10}) -- Crimson Mechasaur
    }
}) -- Ditty Fuzeboy

map.nodes[25743813] = Vendor({
    id = 234776,
    note = L['angelo_rustbin_note'],
    rewards = {
        Pet({item = 232858, id = 4655, count = 1}), -- Cruncher
        Pet({item = 232859, id = 4653, count = 3}), -- Lab Rat
        Item({item = 232986, count = 1}) -- GE86 Advance
    }
}) -- Angelo Rustbin

-------------------------------------------------------------------------------
----------------------------- S.C.R.A.P. REWARDS ------------------------------
-------------------------------------------------------------------------------

local function GetScrapRewards(criteriaID)
    return {
        Achievement({id = 41593, criteria = criteriaID}), Achievement({
            id = 41592,
            criteria = {id = 1, qty = true, suffix = L['scrap_heap_suffix']}
        }), Achievement({id = 41594, oneline = true})
    }
end

local ScrapHeap = Class('ScrapHeap', Collectible, {
    label = '{npc:234350}',
    icon = 5768266,
    group = ns.groups.SCRAP_REWARDS
}) -- S.C.R.A.P. Heap

function ScrapHeap.getters:rewards() return GetScrapRewards(self.criteriaID) end

map.nodes[32012173] = ScrapHeap({criteriaID = 103181}) -- Hovel Hill (North)
map.nodes[50426363] = ScrapHeap({criteriaID = 103184}) -- Venturewood
map.nodes[69577652] = ScrapHeap({criteriaID = 103186}) -- Emerald Hills Golf Course
map.nodes[67482929] = ScrapHeap({criteriaID = 103187}) -- Blackwater Marina

-- map.nodes[00000000] = ScrapHeap({criteriaID = 103182}) -- Hovel Hill (South)
-- map.nodes[00000000] = ScrapHeap({criteriaID = 103183}) -- The Vatworks
-- map.nodes[00000000] = ScrapHeap({criteriaID = 103185}) -- The Heaps

hooksecurefunc(VignettePinMixin, 'OnMouseEnter', function(self)
    if self.vignetteID ~= 6687 and self.vignetteID ~= 6757 then return end
    if not ns.groups.SCRAP_REWARDS:IsEnabled() then return end
    local mapID = self:GetMap().mapID
    local x = C_VignetteInfo.GetVignettePosition(self.vignetteGUID, mapID).x
    local y = C_VignetteInfo.GetVignettePosition(self.vignetteGUID, mapID).y
    local coordinates = HandyNotes:getCoord(x, y)
    -- GameTooltip:AddLine('XY: ' .. coordinates, 1, 1, 1, true) -- dev
    local node = map.nodes[coordinates]
    if not node then return end
    if ns:GetOpt('show_loot') then
        local rewards = GetScrapRewards(node.criteriaID)
        for i, reward in ipairs(rewards) do
            if reward:IsEnabled() then reward:Render(GameTooltip) end
        end
        GameTooltip:AddLine(' ')
    end
    GameTooltip:Show()
end)

-------------------------------------------------------------------------------
--------------------- ACHIEVEMENT: NINE-TENTHS OF THE LAW ---------------------
-------------------------------------------------------------------------------

local MuffsAutoLocker = Class('MuffsAutoLocker', Collectible, {
    icon = 2201832,
    label = L['muffs_auto_locker_label'],
    group = ns.groups.NINE_TENTHS
}) -- Muff's Auto-Locker

function MuffsAutoLocker.getters:note()
    local note = L['muffs_auto_locker_note']
    note = note .. ItemStatus(234427, 1, '{item:234427}') -- Gorillion Fork
    note = note .. ItemStatus(234432, 1, '{item:234432}') -- Gorillion Engine
    note = note .. ItemStatus(234433, 1, '{item:234433}') -- Gorillion Chasis
    note = note .. ItemStatus(234430, 1, '{item:234430}') -- Gorillion Grease
    note = note .. ItemStatus(234431, 1, '{item:234431}') -- Gorillion Batteries
    return note
end

function MuffsAutoLocker.getters:rewards()
    return {
        Achievement({
            id = 40948,
            criteria = {
                id = 1,
                qty = true,
                suffix = L['muffs_auto_locker_suffix']
            }
        }), Pet({item = 232843, id = 4642}) -- Gorillion
    }
end

map.nodes[23804538] = MuffsAutoLocker({quest = 85072}) -- Gorillion Fork
map.nodes[56665546] = MuffsAutoLocker({quest = 85116}) -- Gorillion Engine
map.nodes[34318285] = MuffsAutoLocker({quest = 85117}) -- Gorillion Chasis
map.nodes[71458588] = MuffsAutoLocker({quest = 85114}) -- Gorillion Grease
map.nodes[75142295] = MuffsAutoLocker({quest = 85115}) -- Gorillion Batteries

-------------------------------------------------------------------------------
--------------------- ACHIEVEMENT: READ BETWEEN THE LINES ---------------------
-------------------------------------------------------------------------------

local UndermineLoreBook = Class('UndermineLoreBook', Collectible, {
    icon = 4549129,
    group = ns.groups.BETWEEN_THE_LINES
})

trd.nodes[77067315] = UndermineLoreBook({
    quest = 86570,
    rewards = {Achievement({id = 41588, criteria = 103107})}
}) -- Rocket Drill Safety Manual

map.nodes[27327075] = UndermineLoreBook({
    location = L['a_threatening_letter_location'],
    quest = 86567,
    requires = ns.requirement.Quest(85780), -- ![Right Where We Want Him]
    rewards = {Achievement({id = 41588, criteria = 103108})}
}) -- A Threatening Letter

map.nodes[39622690] = UndermineLoreBook({
    location = L['in_sewer'],
    quest = 86572,
    requires = ns.requirement.Quest(85780), -- ![Right Where We Want Him]
    rewards = {Achievement({id = 41588, criteria = 103106})}
}) -- First Half of Noggenfogger's Journal

map.nodes[32805895] = UndermineLoreBook({
    location = L['in_sewer'],
    quest = 86571,
    requires = ns.requirement.Quest(85780), -- ![Right Where We Want Him]
    rewards = {Achievement({id = 41588, criteria = 103109})}
}) -- Second Half of Noggenfogger's Journal

trd.nodes[71419808] = UndermineLoreBook({
    quest = 86569,
    rewards = {Achievement({id = 41588, criteria = 103110})}
}) -- Extractor Drill X-78 Safety Guide

map.nodes[60966439] = UndermineLoreBook({
    location = L['gallywixs_notes_location'],
    pois = {Entrance({58685937})},
    quest = 86573,
    requires = ns.requirement.Quest(85780), -- ![Right Where We Want Him]
    rewards = {Achievement({id = 41588, criteria = 103111})}
}) -- Gallywix's Notes

map.nodes[65611420] = UndermineLoreBook({
    quest = 86568,
    rewards = {Achievement({id = 41588, criteria = 103112})}
}) -- Misplaced Work Order

-------------------------------------------------------------------------------
---------------------- ACHIEVEMENT: THAT CAN-DO ATTITUDE ----------------------
-------------------------------------------------------------------------------

local DiscardedCan = Class('DiscardedCan', Collectible, {
    group = ns.groups.CAN_DO_ATTITUDE,
    icon = 'peg_yw',
    scale = 1.75,
    label = L['discarded_can_label'],
    note = L['discarded_can_note'],
    rewards = {
        Achievement({
            id = 41589,
            criteria = {id = 1, qty = true, suffix = L['discarded_can_suffix']}
        })
    }
}) -- Discarded Can

map.nodes[30674249] = DiscardedCan()
map.nodes[31334208] = DiscardedCan()
map.nodes[28624761] = DiscardedCan()
map.nodes[46374679] = DiscardedCan()
map.nodes[52715868] = DiscardedCan()
map.nodes[39172768] = DiscardedCan()
map.nodes[45098122] = DiscardedCan()
map.nodes[41693493] = DiscardedCan()
map.nodes[50373403] = DiscardedCan()
map.nodes[46194131] = DiscardedCan()
map.nodes[56563837] = DiscardedCan()
map.nodes[56135245] = DiscardedCan()

-------------------------------------------------------------------------------
----------------------------- WORLDSOUL MEMORIES ------------------------------
-------------------------------------------------------------------------------

map.nodes[43251438] = WorldsoulMemory({areaPoiID = 8200}) -- Early Cartel Wars
map.nodes[58196864] = WorldsoulMemory({areaPoiID = 8201}) -- Kaja'mite Contact

-------------------------------------------------------------------------------
-------------------------------- MISCELLEANOUS --------------------------------
-------------------------------------------------------------------------------
