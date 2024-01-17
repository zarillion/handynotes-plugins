-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible
local PetBattle = ns.node.PetBattle
local Rare = ns.node.Rare
local Treasure = ns.node.Treasure
local Vendor = ns.node.Vendor

local AncientStone = ns.node.AncientStone
local Dragonglyph = ns.node.Dragonglyph
local PT = ns.node.ProfessionTreasures
local ElusiveCreature = ns.node.ElusiveCreature

local Achievement = ns.reward.Achievement
local Currency = ns.reward.Currency
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Recipe = ns.reward.Recipe
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

-- local Circle = ns.poi.Circle
local Path = ns.poi.Path
local POI = ns.poi.POI

local DC = ns.DRAGON_CUSTOMIZATIONS

-------------------------------------------------------------------------------

local map = Map({id = 2133, settings = true})

local deepflayerNest = Map({id = 2184, settings = false}) -- Deepflayer Nest

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

-- Interval ID 0 -> Caldera Zone (always active)
-- Interval ID 1 -> Glimmerogg Zone
-- Interval ID 2 -> Nal Ks'Kol Zone
-- Interval ID 3 -> Loamm Zone
-- Interval ID 4 -> Aberrus Zone

-- local ZaralekRotation = Class('ZaralekRotation', ns.Interval, {
--     initial = {eu = 1683259200, us = 1683298800, tw = 1683414000},
--     offset = 86400,
--     interval = 86400
-- })

-- function ZaralekRotation:GetText()
--     local isInactive = math.floor(self:Next() / self.interval) % 4 + 1
--     local text = self.event and L['zaralek_event_active'] or
--                      L['zaralek_rare_active']
--     if self.id == isInactive then
--         text = self.event and L['zaralek_event_inactive'] or
--                    L['zaralek_rare_inactive']
--     end
--     ns.PrepareLinks(text)
--     return text
-- end

map.nodes[56247389] = Rare({
    id = 203515,
    vignette = 5643,
    quest = 75284,
    location = L['in_small_cave'],
    -- interval = ZaralekRotation({id = 2}),
    rewards = {
        Achievement({id = 17783, criteria = 59188}), -- Adventurer of Zaralek Cavern
        Achievement({id = 18100, criteria = 59491}), -- Cavern Clawbbering
        Transmog({item = 205318, slot = L['plate']}), -- Guardian Golems Legplates
        Transmog({item = 205309, slot = L['mail']}), -- Loyal Attendant's Gaze
        DC.WindingSlitherdrake.PlatedBrow, --
        Item({item = 200071}) -- Sacred Tuskarr Totem
    },
    pois = {POI({56937305})} -- Entrance
}) -- Alcanon

map.nodes[48367509] = Rare({
    id = 203468,
    vignette = 5640,
    quest = 75270,
    -- interval = ZaralekRotation({id = 1}),
    rewards = {
        Achievement({id = 17783, criteria = 59185}), -- Adventurer of Zaralek Cavern
        Achievement({id = 18100, criteria = 59492}), -- Cavern Clawbbering
        Pet({item = 205154, id = 3548}), -- Aquapo
        Transmog({item = 205306, slot = L['mail']}), -- Aquiferous Raiment
        Transmog({item = 205295, slot = L['cloth']}), -- Sediment Sifters
        Item({item = 192055}) -- Dragon Isle Artifact
    }
}) -- Aquifon

map.nodes[41518613] = Rare({
    id = 203621,
    vignette = 5652,
    quest = 75325,
    note = L['brulsef_the_stronk_note'],
    -- interval = ZaralekRotation({id = 1}),
    rewards = {
        Achievement({id = 17783, criteria = 59202}), -- Adventurer of Zaralek Cavern
        Achievement({id = 18100, criteria = 59493}), -- Cavern Clawbbering
        Transmog({item = 205313, slot = L['mail']}), -- Brullo's Wristbraces
        Pet({item = 205114, id = 3533}), -- Brul
        Recipe({item = 204847, profession = 185}) -- Recipe: Rocks on the Rocks
    }
}) -- Brulsef the Stronk

map.nodes[48372384] = Rare({
    id = 204093,
    vignette = 5674,
    quest = 75475,
    -- interval = ZaralekRotation({id = 4}),
    rewards = {
        Achievement({id = 17783, criteria = 59212}), -- Adventurer of Zaralek Cavern
        Achievement({id = 18100, criteria = 59494}), -- Cavern Clawbbering
        Transmog({item = 205332, slot = L['1h_mace']}), -- Fist of the Demolisher
        Transmog({item = 205315, slot = L['plate']}), -- Colossian Cuirass
        DC.RenewedProtoDrake.ShortSpikedCrest, --
        Item({item = 200071}) -- Sacred Tuskarr Totem
    }
}) -- Colossian

map.nodes[31805061] = Rare({
    id = 203664,
    vignette = 5663,
    quest = 75361,
    -- interval = ZaralekRotation({id = 0}),
    rewards = {
        Achievement({id = 17783, criteria = 59209}), -- Adventurer of Zaralek Cavern
        Achievement({id = 18100, criteria = 59495}), -- Cavern Clawbbering
        Transmog({item = 205293, slot = L['cloth']}), -- Emberdusk's Embrace
        DC.WindingSlitherdrake.LargeFinnedThroat
    }
}) -- Emberdusk

map.nodes[36324481] = Rare({
    id = 203660,
    vignette = 5661,
    quest = 75357,
    location = L['in_small_cave'],
    -- interval = ZaralekRotation({id = 0}),
    rewards = {
        Achievement({id = 17783, criteria = 59207}), -- Adventurer of Zaralek Cavern
        Achievement({id = 18100, criteria = 59496}), -- Cavern Clawbbering
        Transmog({item = 205303, slot = L['leather']}), -- Leggings of Flowing Flame
        DC.HighlandDrake.SpikedHead
    },
    pois = {POI({35924400})} -- Entrance
}) -- Flowfy

map.nodes[41921857] = Rare({
    id = 203592,
    vignette = 5645,
    quest = 75295,
    -- interval = ZaralekRotation({id = 4}),
    rewards = {
        Achievement({id = 17783, criteria = 59190}), -- Adventurer of Zaralek Cavern
        Achievement({id = 18100, criteria = 59497}), -- Cavern Clawbbering
        Transmog({item = 205331, slot = L['1h_axe']}), -- Zskorran Cleaver
        Transmog({item = 205321, slot = L['plate']}), -- Brimstone Bracers
        Transmog({item = 205291, slot = L['cloak']}), -- Garrison General's Cape
        DC.WindingSlitherdrake.CurledHorns, --
        Item({item = 192055}) -- Dragon Isle Artifact
    },
    pois = {POI({42491885})} -- Entrance
}) -- General Zskorro

map.nodes[68734593] = Rare({
    id = 203477,
    vignette = 5641,
    quest = 75273,
    -- interval = ZaralekRotation({id = 3}),
    rewards = {
        Achievement({id = 17783, criteria = 59186}), -- Adventurer of Zaralek Cavern
        Achievement({id = 18100, criteria = 59498}), -- Cavern Clawbbering
        Transmog({item = 205317, slot = L['plate']}), -- Crystalpod Gauntlets
        Transmog({item = 205296, slot = L['cloth']}), -- Goopal's Visage
        DC.WindingSlitherdrake.LongChinHorn
    }
}) -- Goopal

map.nodes[45673327] = Rare({
    id = 203627,
    vignette = 5654,
    quest = 75335,
    -- interval = ZaralekRotation({id = 4}),
    rewards = {
        Achievement({id = 17783, criteria = 59200}), -- Adventurer of Zaralek Cavern
        Achievement({id = 18100, criteria = 59499}), -- Cavern Clawbbering
        Transmog({item = 205297, slot = L['cloth']}), -- Flamewielder's Trousers
        Toy({item = 205796}), -- Molten Lava Pack
        DC.WindingSlitherdrake.WhiteHorns
    }
}) -- Invoq

map.nodes[28515115] = Rare({
    id = 203646,
    vignette = 5660,
    quest = 75352,
    -- interval = ZaralekRotation({id = 0}),
    rewards = {
        Achievement({id = 17783, criteria = 59206}), -- Adventurer of Zaralek Cavern
        Achievement({id = 18100, criteria = 59500}), -- Cavern Clawbbering
        Toy({item = 205419}), -- Jrumm's Drum
        Transmog({item = 205304, slot = L['leather']}), -- Snareguard Sash
        Transmog({item = 205299, slot = L['cloth']}), -- Rudiment Cuffs
        DC.WindingSlitherdrake.Ears, --
        Currency({id = 2245}) -- Flightstones
    }
}) -- Jrumm

map.nodes[42226524] = Rare({
    id = 203625,
    vignette = 5653,
    quest = 75333,
    -- interval = ZaralekRotation({id = 1}),
    rewards = {
        Achievement({id = 17783, criteria = 59199}), -- Adventurer of Zaralek Cavern
        Achievement({id = 18100, criteria = 59501}), -- Cavern Clawbbering
        Mount({item = 205203, id = 1732}), -- Cobalt Shalewing
        Transmog({item = 205298, slot = L['cloth']}), -- Belt of Floating Stone
        Transmog({item = 205292, slot = L['cloak']}), -- Kairoktra's Mane
        DC.WindingSlitherdrake.SmallFinnedTail, --
        Pet({item = 205147, id = 3541}), -- Ridged Shalewing
        Currency({id = 2245}) -- Flightstones
    }
}) -- Karokta

map.nodes[59593949] = Rare({
    id = 203466,
    vignette = 5639,
    quest = 75268,
    -- interval = ZaralekRotation({id = 3}),
    rewards = {
        Achievement({id = 17783, criteria = 59184}), -- Adventurer of Zaralek Cavern
        Achievement({id = 18100, criteria = 59502}), -- Cavern Clawbbering
        Transmog({item = 205319, slot = L['plate']}), -- Deepflayer Shoulderguards
        Transmog({item = 205310, slot = L['mail']}), -- Legguards of Kaprachu
        DC.WindingSlitherdrake.HeavyScales, --
        Item({item = 192055}) -- Dragon Isle Artifact
    }
}) -- Kaprachu

map.nodes[54074162] = Rare({
    id = 203618,
    vignette = 5651,
    quest = 75321,
    -- interval = ZaralekRotation({id = 3}),
    rewards = {
        Achievement({id = 17783, criteria = 59198}), -- Adventurer of Zaralek Cavern
        Achievement({id = 18100, criteria = 59503}), -- Cavern Clawbbering
        Transmog({item = 205308, slot = L['mail']}), -- Clacking Clawguards
        Item({item = 205686}) -- Clacking Claw
    }
}) -- Klakatak

map.nodes[65435587] = Rare({
    id = 203462,
    vignette = 5638,
    quest = 75266,
    location = L['in_small_cave'],
    -- interval = ZaralekRotation({id = 3}),
    rewards = {
        Achievement({id = 17783, criteria = 59183}), -- Adventurer of Zaralek Cavern
        Achievement({id = 18100, criteria = 59504}), -- Cavern Clawbbering
        Transmog({item = 205307, slot = L['mail']}), -- Kob'rok's Scale Sabatons
        Transmog({item = 205323, slot = L['leather']}), -- Rock-Lined Pauldrons
        Pet({item = 205152, id = 3546}), -- Skaarn
        DC.CliffsideWylderdrake.SpikedClubTail, --
        Item({item = 206021, note = '{item:205151}'}) -- Kob'rok's Luminescent Scale (for Salverun Pet)
    },
    pois = {POI({64785550})} -- Entrance
}) -- Kob'rok

map.nodes[40753817] = Rare({
    id = 200111,
    vignette = 5656,
    quest = 75339,
    -- interval = ZaralekRotation({id = 4}),
    rewards = {
        Achievement({id = 17783, criteria = 59203}), -- Adventurer of Zaralek Cavern
        Achievement({id = 18100, criteria = 59505}), -- Cavern Clawbbering
        Transmog({item = 205311, slot = L['mail']}), -- Magmascale Pauldrons
        Transmog({item = 205300, slot = L['leather']}), -- Magma Waders
        DC.WindingSlitherdrake.ImpalerHorns, --
        Item({item = 192055}), -- Dragon Isle Artifact
        Currency({id = 2245}) -- Flightstones
    }
}) -- Magmanesha

map.nodes[55841899] = Rare({
    id = 203521,
    vignette = 5644,
    quest = 75291,
    location = L['in_cave'],
    -- interval = ZaralekRotation({id = 4}),
    rewards = {
        Achievement({id = 17783, criteria = 59189}), -- Adventurer of Zaralek Cavern
        Achievement({id = 18100, criteria = 59506}), -- Cavern Clawbbering
        Transmog({item = 205322, slot = L['leather']}), -- Algeth'ar Exile's Frock
        DC.WindingSlitherdrake.ClusterHorns, --
        Item({item = 192055}) -- Dragon Isle Artifact
    },
    pois = {POI({52921886})} -- Entrance
}) -- Professor Gastrinax

map.nodes[36205300] = Rare({
    id = 203643,
    vignette = 5659,
    quest = 75348,
    -- interval = ZaralekRotation({id = 0}),
    rewards = {
        Achievement({id = 17783, criteria = 59205}), -- Adventurer of Zaralek Cavern
        Achievement({id = 18100, criteria = 59507}), -- Cavern Clawbbering
        Transmog({item = 205294, slot = L['cloth']}), -- Sandals of Molten Scorn
        Transmog({item = 205301, slot = L['leather']}), -- Hardened Lava Handwraps
        DC.WindingSlitherdrake.CurledCheekHorn, --
        Currency({id = 2245}) -- Flightstones
    }
}) -- Skornak

map.nodes[53106421] = Rare({
    id = 203480,
    vignette = 5642,
    quest = 75275,
    location = L['in_small_cave'],
    -- interval = ZaralekRotation({id = 2}),
    rewards = {
        Achievement({id = 17783, criteria = 59187}), -- Adventurer of Zaralek Cavern
        Achievement({id = 18100, criteria = 59508}), -- Cavern Clawbbering
        Transmog({item = 205326, slot = L['dagger']}), -- Crystalweb Chelicera
        Transmog({item = 205305, slot = L['leather']}), -- Zaralek Arachnid Armbands
        Transmog({item = 205290, slot = L['cloak']}), -- Greatcloak of Spun Marrow
        DC.WindingSlitherdrake.HairyCrest, --
        Item({item = 192055}) -- Dragon Isle Artifact
    },
    pois = {POI({54556605})} -- Entrance
}) -- Spinmarrow

map.nodes[38424650] = Rare({
    id = 203662,
    vignette = 5662,
    quest = 75359,
    -- interval = ZaralekRotation({id = 0}),
    rewards = {
        Achievement({id = 17783, criteria = 59208}), -- Adventurer of Zaralek Cavern
        Achievement({id = 18100, criteria = 59509}), -- Cavern Clawbbering
        Transmog({item = 205328, slot = L['2h_sword']}), -- Earthen Emissasry's Edge
        Transmog({item = 205314, slot = L['plate']}), -- Greathelm of the Emissary
        Transmog({item = 205312, slot = L['mail']}), -- Subterrax's Stout Waistguard
        DC.WindingSlitherdrake.AntlerHorns, --
        Item({item = 199906}) -- Titan Relic
    }
}) -- Subterrax

map.nodes[57766910] = Rare({
    id = 203593,
    vignette = 5646,
    quest = 75297,
    -- interval = ZaralekRotation({id = 3}),
    rewards = {
        Achievement({id = 17783, criteria = 59191}), -- Adventurer of Zaralek Cavern
        Achievement({id = 18100, criteria = 59510}), -- Cavern Clawbbering
        Transmog({item = 205325, slot = L['shield']}), -- Crystal Wing Shield
        Transmog({item = 205302, slot = L['leather']}), -- Underlight Headwrap
        Transmog({item = 205324, slot = L['cloth']}), -- Moth Queen Mantle
        Pet({item = 205159, id = 3551}) -- Teardrop Moth
    }
}) -- Underlight Queen

map.nodes[38867151] = Rare({
    id = 201029,
    vignette = 5664,
    quest = 75365,
    -- interval = ZaralekRotation({id = 1}),
    rewards = {
        Achievement({id = 17783, criteria = 59210}), -- Adventurer of Zaralek Cavern
        Achievement({id = 18100, criteria = 59511}), -- Cavern Clawbbering
        Transmog({item = 205327, slot = L['dagger']}), -- Shard of the Veridian King
        Transmog({item = 205316, slot = L['plate']}), -- Crystal Stompers
        DC.WindingSlitherdrake.SplitJawHorns
    }
}) -- Viridian King

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[36694883] = Treasure({
    quest = 73697,
    note = L['ancient_zaqali_chest_note'],
    rewards = {
        Achievement({id = 17786, criteria = 59222}) -- Treasures of Zaralek Cavern
    },
    pois = {POI({36444822, 2883540})}
}) -- Ancient Zaqali Chest

map.nodes[28544791] = Treasure({
    quest = 72986,
    requires = ns.requirement.Item(15138),
    note = L['blazing_shadowflame_chest_note'],
    rewards = {
        Achievement({id = 17786, criteria = 59220}), -- Treasures of Zaralek Cavern
        Toy({item = 205418}) -- Blazing Shadowflame Cinder
    }
}) -- Blazing Shadowflame Chest

map.nodes[42976040] = Treasure({
    quest = 75231, -- 75232
    requires = {
        ns.requirement.Quest(73047) -- Terrestrial Tunneling
    },
    rewards = {
        Achievement({id = 17786, criteria = 59225}) -- Treasures of Zaralek Cavern
    },
    pois = {POI({40136835})}
}) -- Bloody Body

map.nodes[30044193] = Treasure({
    quest = 73706,
    rewards = {
        Achievement({id = 17786, criteria = 59226}) -- Treasures of Zaralek Cavern
    }
}) -- Charred Egg

map.nodes[56040305] = Treasure({
    quest = 75187,
    location = L['in_small_cave'],
    note = L['chest_of_the_flights_treasure_note'],
    rewards = {
        Achievement({id = 17786, criteria = 59224}), -- Treasures of Zaralek Cavern
        Currency({id = 2245}), -- Flightstones
        Currency({id = 2003}) -- Dragon Isles Supplies
    }
}) -- Chest of the Flights

map.nodes[36397425] = Treasure({
    note = L['crystal_encased_chest_note'],
    quest = {74987, 75559, 75601, 74986}, -- delete 73697, it's Ancient Zaqali Chest Looting Quest
    rewards = {
        Achievement({id = 17786, criteria = 59228}), -- Treasures of Zaralek Cavern
        Item({item = 204985}), -- Barter Brick
        Currency({id = 2245}), -- Flightstones
        Currency({id = 2003}) -- Dragon Isles Supplies
    },
    pois = {
        POI({color = 'Blue', points = {37756886}}), -- Attunement Crystal
        POI({color = 'Red', points = {39417328}}) -- Attunement Crystal
    }
}) -- Crystal-Encased Chest

map.nodes[62715376] = Treasure({
    quest = 75019,
    location = L['in_water'],
    rewards = {
        Achievement({id = 17786, criteria = 59223}) -- Treasures of Zaralek Cavern
    },
    pois = {
        POI({62935317}), -- Water Entrance
        Path({62935317, 62605319, 62745362, 62715376}) -- Treasure Path
    }
}) -- Long-Lost Cache

map.nodes[43058256] = Treasure({
    requires = ns.requirement.Item(204323), -- Old Trunk Key
    quest = 74995,
    note = L['old_trunk_note'],
    rewards = {
        Achievement({id = 17786, criteria = 59227}) -- Treasures of Zaralek Cavern
    },
    pois = {
        POI({42988259, quest = 75526}), -- Mouse 1
        POI({42148016, quest = 75527, questDeps = 75526}), -- Mouse 2
        POI({41708145, quest = 75534, questDeps = 75527}), -- Mouse 3
        POI({42788221, quest = 75535, questDeps = 75534}), -- Mouse 4
        POI({43728385, questDeps = 75535}) -- Mouse 5
    }
}) -- Old Trunk

map.nodes[32333935] = Treasure({
    quest = 73410,
    note = L['seething_cache_treasure_note'],
    rewards = {
        Achievement({id = 17786, criteria = 59221}), -- Treasures of Zaralek Cavern
        Mount({item = 192779, id = 1623}) -- Seething Slug
    },
    pois = {
        POI({
            25244480, 26704700, 27704900, 27955121, 28755530, 29144250,
            29954797, 30204000, 31185195, 32735223, 34414571, 35634877,
            35794139, 36204401, 37594672, 37624663
        }) -- Seething Orb
    }
}) -- Seething Cache

map.nodes[29764054] = Treasure({
    quest = 73395,
    note = L['well_chewed_chest_note'],
    requires = ns.requirement.Item(202869), -- Scorching Key
    rewards = {
        Achievement({id = 17786, criteria = 59219}) -- Treasures of Zaralek Cavern
    },
    pois = {
        POI({30314121}), -- Entrance
        POI({color = 'Green', points = {30134076}}) -- Scorching Key
    }
}) -- Well-Chewed Chest

-------------------------- NON-ACHIEVEMENT TREASURES --------------------------

map.nodes[48411636] = Treasure({
    label = L['molten_hoard_label'],
    quest = 75515,
    location = L['in_small_cave'],
    rewards = {
        Transmog({item = 205981, slot = L['cosmetic']}) -- Molten Primal Fang
    },
    pois = {POI({48411819})}
}) -- Molten Hoard

map.nodes[48451083] = Treasure({
    label = L['fealtys_reward_label'],
    quest = 75514,
    note = L['fealtys_reward_note'],
    rewards = {
        Currency({id = 2245}), -- Flightstones
        Currency({id = 2003}) -- Dragon Isles Supplies
    },
    pois = {POI({43642300})} -- Dragon statue
}) -- Fealty's Reward

map.nodes[57956632] = Treasure({
    label = L['dreamers_bounty_label'],
    quest = 75762,
    note = L['dreamers_bounty_note']
}) -- Dreamer's Bounty

map.nodes[56734868] = Treasure({
    label = L['moth_pilfered_pouch_label'],
    quest = 75320,
    note = L['moth_pilfered_pouch_note'],
    rewards = {
        Currency({id = 2245}), -- Flightstones
        Currency({id = 2003}) -- Dragon Isles Supplies
    },
    pois = {POI({56664934})} -- Struggling Mothling
}) -- Moth-Pilfered Pouch

map.nodes[62055534] = Treasure({
    label = L['waterlogged_bundle_label'],
    quest = 75015,
    location = L['in_water'],
    rewards = {
        Item({item = 199906}), -- Titan Relic
        Item({item = 204985}), -- Barter Brick
        Currency({id = 2245}) -- Flightstones
    },
    pois = {
        POI({62485528}), -- Water Entrance
        Path({62485528, 62065530}) -- Treasure Path
    }
}) -- Waterlogged Bundle

map.nodes[64197495] = Treasure({
    label = L['nal_kskol_reliquary_label'],
    requires = {ns.requirement.Quest(72962)},
    quest = 75745,
    note = L['nal_kskol_reliquary_note'],
    rewards = {
        Item({item = 191784}), -- Dragon Shard of Knowledge
        Currency({id = 2245}), -- Flightstones
        Currency({id = 2003}) -- Dragon Isles Supplies
    },
    pois = {POI({62577334})}
}) -- Nal ks'kol Reliquary

------------------------------ RANDOM TREASURES -------------------------------

map.nodes[60664622] = Treasure({
    label = L['stolen_stash_label'],
    quest = 75302,
    rewards = {
        Currency({id = 2245}), -- Flightstones
        Currency({id = 2003}) -- Dragon Isles Supplies
    }
}) -- Stolen Stash

deepflayerNest.nodes[63698291] = Treasure({
    label = L['stolen_stash_label'],
    quest = 75303,
    location = L['in_deepflayer_nest'],
    rewards = {
        Currency({id = 2245}), -- Flightstones
        Currency({id = 2003}) -- Dragon Isles Supplies
    },
    parent = {id = map.id, pois = {POI({61463864})}}
}) -- Stolen Stash

local RitualOffering = Class('RitualOffering', Treasure, {
    label = L['ritual_offering_label'],
    group = ns.groups.RITUAL_OFFERING,
    icon = 'chest_bn',
    rewards = {
        Item({item = 199906}), -- Titan Relic
        Item({item = 204985}), -- Barter Brick
        Currency({id = 2245}), -- Flightstones
        DC.RenewedProtoDrake.PlatedJaw
    }
}) -- Ritual Offering

map.nodes[26874611] = RitualOffering({fgroup = 'ritual53', quest = 73553})
map.nodes[27344217] = RitualOffering({fgroup = 'ritual53', quest = 73553})
map.nodes[28195157] = RitualOffering({fgroup = 'ritual53', quest = 73553})
map.nodes[28754415] = RitualOffering({fgroup = 'ritual53', quest = 73553})
map.nodes[28945491] = RitualOffering({fgroup = 'ritual52', quest = 73552})
map.nodes[30055140] = RitualOffering({fgroup = 'ritual52', quest = 73552})
map.nodes[30454365] = RitualOffering({fgroup = 'ritual51', quest = 73551})
map.nodes[31883961] = RitualOffering({fgroup = 'ritual51', quest = 73551})
map.nodes[31955275] = RitualOffering({fgroup = 'ritual52', quest = 73552})
map.nodes[32355045] = RitualOffering({fgroup = 'ritual52', quest = 73552})
map.nodes[32614416] = RitualOffering({fgroup = 'ritual51', quest = 73551})
map.nodes[33103990] = RitualOffering({fgroup = 'ritual51', quest = 73551})
map.nodes[35145225] = RitualOffering({fgroup = 'ritual52', quest = 73552})
map.nodes[36034454] = RitualOffering({fgroup = 'ritual51', quest = 73551})
map.nodes[36395236] = RitualOffering({fgroup = 'ritual52', quest = 73552})
map.nodes[38174991] = RitualOffering({fgroup = 'ritual48', quest = 73548})
map.nodes[40015127] = RitualOffering({fgroup = 'ritual48', quest = 73548})
map.nodes[41054876] = RitualOffering({fgroup = 'ritual48', quest = 73548})
map.nodes[41694457] = RitualOffering({fgroup = 'ritual48', quest = 73548})
map.nodes[41924712] = RitualOffering({fgroup = 'ritual48', quest = 73548}) -- 75814

local SmellyTrashPile = Class('SmellyTrashPile', ns.node.Node, {
    label = L['smelly_trash_pile_label'],
    icon = 'chest_gn',
    group = ns.groups.SMELLY_TRASH_PILE,
    requires = ns.requirement.Reputation(2564, 2, true), -- Loamm Niffen (maybe also quest 72974)
    rewards = {
        DC.WindingSlitherdrake.SpikedChin, --
        Currency({id = 2245}), -- Flightstones
        Item({item = 192055}), -- Dragon Isles Artifact
        Currency({id = 2003}) -- Dragon Isles Supplies
    }
}) -- Smelly Trash Pile

map.nodes[31175207] = SmellyTrashPile()
map.nodes[35044233] = SmellyTrashPile()
map.nodes[35244459] = SmellyTrashPile()
map.nodes[35754907] = SmellyTrashPile()
map.nodes[37056988] = SmellyTrashPile()
map.nodes[37403969] = SmellyTrashPile()
map.nodes[37458125] = SmellyTrashPile()
map.nodes[39377663] = SmellyTrashPile()
map.nodes[39438318] = SmellyTrashPile()
map.nodes[40155751] = SmellyTrashPile()
map.nodes[40415197] = SmellyTrashPile()
map.nodes[40613568] = SmellyTrashPile()
map.nodes[42014541] = SmellyTrashPile()
map.nodes[43163817] = SmellyTrashPile()
map.nodes[43552886] = SmellyTrashPile()
map.nodes[43618578] = SmellyTrashPile()
map.nodes[44686196] = SmellyTrashPile()
map.nodes[45177786] = SmellyTrashPile()
map.nodes[45384348] = SmellyTrashPile()
map.nodes[45443717] = SmellyTrashPile()
map.nodes[46366109] = SmellyTrashPile()
map.nodes[46726819] = SmellyTrashPile()
map.nodes[47054134] = SmellyTrashPile()
map.nodes[47104296] = SmellyTrashPile()
map.nodes[48115839] = SmellyTrashPile()
map.nodes[49154325] = SmellyTrashPile()
map.nodes[50326091] = SmellyTrashPile()
map.nodes[51055710] = SmellyTrashPile()
map.nodes[51224089] = SmellyTrashPile()
map.nodes[51931544] = SmellyTrashPile()
map.nodes[52080709] = SmellyTrashPile()
map.nodes[52562740] = SmellyTrashPile()
map.nodes[57047087] = SmellyTrashPile()
map.nodes[57476456] = SmellyTrashPile()
map.nodes[59225178] = SmellyTrashPile()
map.nodes[60195755] = SmellyTrashPile()
map.nodes[61146860] = SmellyTrashPile()
map.nodes[62325600] = SmellyTrashPile()

local SmellyTreasureChest = Class('SmellyTreasureChest', ns.node.Node, {
    label = L['smelly_treasure_chest_label'],
    icon = 'chest_rd',
    group = ns.groups.SMELLY_TREASURE_CHEST,
    requires = {
        ns.requirement.Reputation(2564, 11, true), -- Loamm Niffen
        ns.requirement.Item(191294) -- Small Expedition Shovel
    },
    rewards = {
        DC.RenewedProtoDrake.PlatedJaw, -- Renewed Proto-Drake: Plated Jaw
        Item({item = 199906}), -- Titan Relic
        Item({item = 204985}), -- Barter Brick
        Item({item = 205188}) -- Barter Boulder
    }
}) -- Smell Treasure Chest

map.nodes[25704360] = SmellyTreasureChest()
map.nodes[28205370] = SmellyTreasureChest()
map.nodes[30204010] = SmellyTreasureChest()
map.nodes[32505300] = SmellyTreasureChest()
map.nodes[35904520] = SmellyTreasureChest()
map.nodes[38808490] = SmellyTreasureChest()
map.nodes[39106200] = SmellyTreasureChest()
map.nodes[41103500] = SmellyTreasureChest()
map.nodes[41305590] = SmellyTreasureChest()
map.nodes[42807810] = SmellyTreasureChest()
map.nodes[44104150] = SmellyTreasureChest()
map.nodes[44403510] = SmellyTreasureChest()
map.nodes[45001570] = SmellyTreasureChest()
map.nodes[45307020] = SmellyTreasureChest()
map.nodes[45705260] = SmellyTreasureChest()
map.nodes[45902240] = SmellyTreasureChest()
map.nodes[45902250] = SmellyTreasureChest()
map.nodes[45908730] = SmellyTreasureChest()
map.nodes[46608050] = SmellyTreasureChest()
map.nodes[47002670] = SmellyTreasureChest()
map.nodes[47306200] = SmellyTreasureChest()
map.nodes[47904880] = SmellyTreasureChest()
map.nodes[49104090] = SmellyTreasureChest()
map.nodes[51302430] = SmellyTreasureChest()
map.nodes[52706540] = SmellyTreasureChest()
map.nodes[52803230] = SmellyTreasureChest()
map.nodes[52902340] = SmellyTreasureChest()
map.nodes[52902350] = SmellyTreasureChest()
map.nodes[53104760] = SmellyTreasureChest()
map.nodes[54107760] = SmellyTreasureChest()
map.nodes[54402290] = SmellyTreasureChest()
map.nodes[54502290] = SmellyTreasureChest()
map.nodes[56903100] = SmellyTreasureChest()
map.nodes[57507040] = SmellyTreasureChest()
map.nodes[57507050] = SmellyTreasureChest()
map.nodes[58704370] = SmellyTreasureChest()
map.nodes[60006300] = SmellyTreasureChest()
map.nodes[62504200] = SmellyTreasureChest()
map.nodes[62906990] = SmellyTreasureChest()
map.nodes[65205530] = SmellyTreasureChest()

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[52416604] = PetBattle({
    id = 201004,
    rewards = {
        Achievement({id = 17880, criteria = 59352}), -- Battle in Zaralek Cavern
        ns.reward.Spacer(),
        Achievement({id = 17881, criteria = 1, oneline = true}), -- Aquatic
        Achievement({id = 17882, criteria = 1, oneline = true}), -- Beast
        Achievement({id = 17883, criteria = 1, oneline = true}), -- Critter
        Achievement({id = 17890, criteria = 1, oneline = true}), -- Dragon
        Achievement({id = 17904, criteria = 1, oneline = true}), -- Elemental
        Achievement({id = 17905, criteria = 1, oneline = true}), -- Flying
        Achievement({id = 17915, criteria = 1, oneline = true}), -- Humanoid
        Achievement({id = 17916, criteria = 1, oneline = true}), -- Magic
        Achievement({id = 17917, criteria = 1, oneline = true}), -- Mechanical
        Achievement({id = 17918, criteria = 1, oneline = true}) -- Undead
    }
}) -- Explorer Bezzert

map.nodes[38254965] = PetBattle({
    id = 204792,
    location = L['in_small_cave'],
    rewards = {
        Achievement({id = 17880, criteria = 59351}), -- Battle in Zaralek Cavern
        ns.reward.Spacer(),
        Achievement({id = 17881, criteria = 2, oneline = true}), -- Aquatic
        Achievement({id = 17882, criteria = 2, oneline = true}), -- Beast
        Achievement({id = 17883, criteria = 2, oneline = true}), -- Critter
        Achievement({id = 17890, criteria = 2, oneline = true}), -- Dragon
        Achievement({id = 17904, criteria = 2, oneline = true}), -- Elemental
        Achievement({id = 17905, criteria = 2, oneline = true}), -- Flying
        Achievement({id = 17915, criteria = 2, oneline = true}), -- Humanoid
        Achievement({id = 17916, criteria = 2, oneline = true}), -- Magic
        Achievement({id = 17917, criteria = 2, oneline = true}), -- Mechanical
        Achievement({id = 17918, criteria = 2, oneline = true}) -- Undead
    },
    pois = {POI({38665044})} -- Entrance
}) -- Shinmura

map.nodes[65374960] = PetBattle({
    id = 204926,
    rewards = {
        Achievement({id = 17880, criteria = 59354}), -- Battle in Zaralek Cavern
        ns.reward.Spacer(),
        Achievement({id = 17881, criteria = 3, oneline = true}), -- Aquatic
        Achievement({id = 17882, criteria = 3, oneline = true}), -- Beast
        Achievement({id = 17883, criteria = 3, oneline = true}), -- Critter
        Achievement({id = 17890, criteria = 3, oneline = true}), -- Dragon
        Achievement({id = 17904, criteria = 3, oneline = true}), -- Elemental
        Achievement({id = 17905, criteria = 3, oneline = true}), -- Flying
        Achievement({id = 17915, criteria = 3, oneline = true}), -- Humanoid
        Achievement({id = 17916, criteria = 3, oneline = true}), -- Magic
        Achievement({id = 17917, criteria = 3, oneline = true}), -- Mechanical
        Achievement({id = 17918, criteria = 3, oneline = true}) -- Undead
    }
}) -- Delver Mardei

map.nodes[45698150] = PetBattle({
    id = 204934,
    rewards = {
        Achievement({id = 17880, criteria = 59353}), -- Battle in Zaralek Cavern
        ns.reward.Spacer(),
        Achievement({id = 17881, criteria = 4, oneline = true}), -- Aquatic
        Achievement({id = 17882, criteria = 4, oneline = true}), -- Beast
        Achievement({id = 17883, criteria = 4, oneline = true}), -- Critter
        Achievement({id = 17890, criteria = 4, oneline = true}), -- Dragon
        Achievement({id = 17904, criteria = 4, oneline = true}), -- Elemental
        Achievement({id = 17905, criteria = 4, oneline = true}), -- Flying
        Achievement({id = 17915, criteria = 4, oneline = true}), -- Humanoid
        Achievement({id = 17916, criteria = 4, oneline = true}), -- Magic
        Achievement({id = 17917, criteria = 4, oneline = true}), -- Mechanical
        Achievement({id = 17918, criteria = 4, oneline = true}) -- Undead
    }
}) -- Trainer Orlogg

-------------------------------------------------------------------------------
----------------------------- PROFESSION TREASURES ----------------------------
-------------------------------------------------------------------------------

map.nodes[40485918] = PT.Alchemy({id = 205213, quest = 75651}) -- Suspicious Mold
map.nodes[52631830] = PT.Alchemy({id = 205211, quest = 75646}) -- Nutrient Diluted Protofluid
map.nodes[62154115] = PT.Alchemy({id = 205212, quest = 75649}) -- Marrow-Ripened Slime

map.nodes[36674615] = PT.Inscription({id = 206031, quest = 76117}) -- Intricate Zaqali Runes
map.nodes[53007440] = PT.Inscription({id = 206034, quest = 76120}) -- Hissing Rune Draft
map.nodes[54472026] = PT.Inscription({
    id = 206035,
    quest = 76121,
    location = L['in_cave'],
    pois = {POI({52781885})}
}) -- Ancient Research

map.nodes[34504542] = PT.Jewelcrafting({id = 205216, quest = 75653}) -- Gently Jostled Jewels
map.nodes[40378070] = PT.Jewelcrafting({id = 205214, quest = 75652}) -- Snubbed Snail Shells
map.nodes[54413247] = PT.Jewelcrafting({id = 205219, quest = 75654}) -- Broken Barter Boulder

map.nodes[44521565] = PT.Tailoring({id = 206030, quest = 76116}) -- Exquisitely Embroidered Banner
map.nodes[47214855] = PT.Tailoring({id = 206019, quest = 76102}) -- Abandoned Reserve Chute
map.nodes[59117314] = PT.Tailoring({id = 206025, quest = 76110}) -- Used Medical Wrap Kit

map.nodes[36666933] = PT.Enchanting({id = 205001, quest = 75510}) -- Resonating Arcane Crystal
map.nodes[48251702] = PT.Enchanting({id = 204990, quest = 75508}) -- Lava-Drenched Shadow Crystal
map.nodes[62395380] = PT.Enchanting({id = 204999, quest = 75509}) -- Shimmering Aqueous Orb

map.nodes[50504790] = PT.Engineering({id = 204471, quest = 75184}) -- Defective Survival Pack
map.nodes[37825884] = PT.Engineering({
    id = 204475,
    quest = 75186,
    note = L['busted_wyrmhole_generator_note']
}) -- Busted Wyrmhole Generator
map.nodes[48101659] = PT.Engineering({
    id = 204855,
    quest = 75433,
    location = L['in_small_cave'],
    note = L['molten_scoutbot_note']
}) -- Molten Scoutbot (Overclocked Determination Core)
map.nodes[48162790] = PT.Engineering({id = 204470, quest = 75183}) -- Haphazardly Discarded Bombs
map.nodes[48484868] = PT.Engineering({id = 204469, quest = 75180}) -- Misplace Aberrus Outflow Blueprints
map.nodes[49437901] = PT.Engineering({id = 204853, quest = 75431}) -- Discarded Dracothyst Drill
map.nodes[49875919] = PT.Engineering({id = 204480, quest = 75188}) -- Inconspicuous Data Miner
map.nodes[57657393] = PT.Engineering({
    id = 204850,
    quest = 75430,
    note = L['bolts_and_brass_note']
}) -- Bolts and Brass (Handful of Khaz'gorite Bolts)

map.nodes[27514286] = PT.Blacksmithing({id = 205988, quest = 76080}) -- Zaqali Elder Spear
map.nodes[48312201] = PT.Blacksmithing({id = 205987, quest = 76079}) -- Brimstone Rescue Ring
map.nodes[57155464] = PT.Blacksmithing({id = 205986, quest = 76078}) -- Well-Worn Kiln

map.nodes[41164881] = PT.Leatherworking({id = 204986, quest = 75495}) -- Flame-Infused Scale Oil
map.nodes[45252112] = PT.Leatherworking({id = 204987, quest = 75496}) -- Lava-Forged Leatherworker's "Knife"
map.nodes[49565480] = PT.Leatherworking({id = 204988, quest = 75502}) -- Sulfur-Soaked Skins

-------------------------------------------------------------------------------
-------------------------------- DRAGON GLYPHS --------------------------------
-------------------------------------------------------------------------------

map.nodes[30414530] = Dragonglyph({rewards = {Achievement({id = 17513})}}) -- Dragon Glyphs: Zaqali Caldera
map.nodes[41638037] = Dragonglyph({rewards = {Achievement({id = 17510})}}) -- Dragon Glyphs: Glimmerogg
map.nodes[47443702] = Dragonglyph({rewards = {Achievement({id = 17516})}}) -- Dragon Glphys: Sulfur Ravine
map.nodes[48060438] = Dragonglyph({rewards = {Achievement({id = 17517})}}) -- Dragon Glyphs: Brimstone Garrison
map.nodes[54735470] = Dragonglyph({rewards = {Achievement({id = 17512})}}) -- Dragon Glyphs: Loamm
map.nodes[55342771] = Dragonglyph({rewards = {Achievement({id = 17514})}}) -- Dragon Glyphs: Slitherdrake Roost
map.nodes[62717036] = Dragonglyph({rewards = {Achievement({id = 17511})}}) -- Dragon Glyphs: Nal Ks'kol
map.nodes[72114844] = Dragonglyph({rewards = {Achievement({id = 17515})}}) -- Dragon Glyphs: The Throughway

-------------------------------------------------------------------------------
------------------------------ ELUSIVE CREATURES ------------------------------
-------------------------------------------------------------------------------

map.nodes[60233957] = ElusiveCreature({
    label = '{npc:204821}',
    quest = 74234,
    rewards = {
        Item({item = 193215}), -- Adamant Scales
        Item({item = 193224}), -- Lustrous Scaled Hide
        Item({item = 205451, quest = 75866}), -- Flawless Crystal Scale
        Achievement({id = 18833, criteria = 61483}) -- Elusive Legends of the Dragon Isles
    },
    pois = {Path({ns.poi.Circle({origin = 60233957, radius = 3})})}
}) -- Elusive Crystalscale Stonecleaver

map.nodes[44054787] = ElusiveCreature({
    label = '{npc:204831}',
    quest = 74235,
    rewards = {
        Item({item = 193215}), -- Adamant Scales
        Item({item = 193224}), -- Lustrous Scaled Hide
        Item({item = 204460}), -- Zaralek Glowspores
        Item({item = 205413}), -- Obsidian Cobraskin
        Achievement({id = 18833, criteria = 61484}) -- Elusive Legends of the Dragon Isles
    }
}) -- Elusive Magma Cobra

-------------------------------------------------------------------------------
--------------------------------- ZONE EVENTS ---------------------------------
-------------------------------------------------------------------------------

-- local EventRotation = Class('EventRotation', ZaralekRotation, {event = true})

local ZoneEvent = Class('ZoneEvent', ns.node.Node, {
    group = ns.groups.ZONE_EVENT,
    icon = 'peg_rd',
    scale = 1.3,
    rewards = {
        Item({item = 205248}), -- Clanging Dirt-Covered Pouch
        Item({item = 205247}) -- Clinking Dirt-Covered Pouch
    }
})

function ZoneEvent.getters:label()
    return C_QuestLog.GetTitleForQuestID(self.quest[1]) or UNKNOWN
end

function ZoneEvent.getters:rlabel()
    local completed = C_QuestLog.IsQuestFlaggedCompleted(self.quest[1])
    local color = completed and ns.status.Green or ns.status.Gray
    return color(L['weekly'])
end

map.nodes[44507490] = ZoneEvent({
    quest = 75612
    -- interval = EventRotation({id = 1})
}) -- Cascades Calling

map.nodes[63004720] = ZoneEvent({
    quest = 75471
    -- interval = EventRotation({id = 3})
}) -- Crystalline Survey

map.nodes[32104360] = ZoneEvent({
    quest = 75455
    -- interval = EventRotation({id = 0})
}) -- Conspiracy of Flame

map.nodes[56606540] = ZoneEvent({
    quest = 75664
    -- interval = EventRotation({id = 2})
}) -- Discordant Crystals

map.nodes[45008450] = ZoneEvent({
    quest = 75611
    -- interval = EventRotation({id = 1})
}) -- Glimmerfish Before It's Gone

map.nodes[48102020] = ZoneEvent({
    quest = 75478
    -- interval = EventRotation({id = 4})
}) -- Hungry Hungry Hydra

map.nodes[35405230] = ZoneEvent({
    quest = 75451
    -- interval = EventRotation({id = 0})
}) -- Imperfect Balance

map.nodes[46602570] = ZoneEvent({
    quest = 75461
    -- interval = EventRotation({id = 4})
}) -- Magmaclaw Matriarch

map.nodes[61707210] = ZoneEvent({
    quest = 75705
    -- interval = EventRotation({id = 2})
}) -- Monument Maintenance

map.nodes[40204350] = ZoneEvent({
    quest = 75454
    -- interval = EventRotation({id = 0})
}) -- Mortar Warfare

map.nodes[34304770] = ZoneEvent({
    quest = 75450
    -- interval = EventRotation({id = 0})
}) -- Seismic Ceremony

map.nodes[57504890] = ZoneEvent({
    quest = 75222
    -- interval = EventRotation({id = 3})
}) -- Shellfire

map.nodes[60605310] = ZoneEvent({
    quest = 75370
    -- interval = EventRotation({id = 3})
}) -- Smellincense

map.nodes[44902080] = ZoneEvent({
    quest = 75494
    -- interval = EventRotation({id = 4})
}) -- Strike the Colors

map.nodes[57705690] = ZoneEvent({
    quest = 75441
    -- interval = EventRotation({id = 3})
}) -- Smelly Scramble

map.nodes[63905070] = ZoneEvent({
    quest = 75156
    -- interval = EventRotation({id = 3})
}) -- Stress Express

map.nodes[45308320] = ZoneEvent({
    quest = 75624
    -- interval = EventRotation({id = 1})
}) -- The Champion's Challenge

map.nodes[58206740] = ZoneEvent({
    quest = 74352
    -- interval = EventRotation({id = 2})
}) -- Whirling Zephyr

-------------------------------------------------------------------------------
---------------------- ANCIENT STONES OF ZARALEK CAVERN -----------------------
-------------------------------------------------------------------------------

map.nodes[43282372] = AncientStone({
    rewards = {Achievement({id = 17567, criteria = 58826})}
}) -- Demanding Perfection

map.nodes[61257181] = AncientStone({
    rewards = {Achievement({id = 17567, criteria = 58827})}
}) -- Binding Oaths

map.nodes[47384855] = AncientStone({
    rewards = {Achievement({id = 17567, criteria = 58828})}
}) -- Primal Power

-------------------------------------------------------------------------------
-------------------------------- SNIFFEN SAGE ---------------------------------
-------------------------------------------------------------------------------

map.nodes[55625745] = Collectible({
    id = 203773,
    icon = 5140835,
    requires = {
        ns.requirement.Quest(74876) -- The Buddy System
        -- Are part of the Sniffen Sage Achievement:
        -- ns.requirement.Quest(75765), -- Liquid Art
        -- ns.requirement.Quest(75766), -- Ruby in the Rough
        -- ns.requirement.Quest(75767), -- Good Time Boy
        -- ns.requirement.Quest(75768), -- Lucky Ducky
        -- ns.requirement.Quest(75769), -- Drawing a Blank
        -- ns.requirement.Quest(75770), -- A Glass of Bubbly
        -- ns.requirement.Quest(75771), -- Incense Replay
        -- ns.requirement.Quest(75772), -- Flask Manager
        -- ns.requirement.Quest(75774) --- doesnt exist or is a hidden tracking quest
    },
    rewards = {
        Achievement({
            id = 18257,
            criteria = {id = 1, qty = true, suffix = L['sniffen_digs_suffix']}
        }), -- Can You Dig It?
        Achievement({
            id = 17833,
            criteria = {id = 1, qty = true, suffix = L['sniffen_sage_suffix']}
        }), -- Sniffen Sage
        Achievement({
            id = 18255,
            criteria = {
                59744, 59745, 59746, 59747, 59749, 59750, 59751, 59752, 59753,
                59754, 59755, 59756, 59757, 59758, 59759, 59760
            }
        }) -- Proof of Myrrit
    }
}) -- Myrrit <Sniffenseeker>

-------------------------------------------------------------------------------
------------------------ SLOW AND STEADY WINS THE RACE ------------------------
-------------------------------------------------------------------------------

map.nodes[44458040] = Collectible({
    label = '{npc:201099}',
    icon = 5003559,
    requires = ns.requirement.Reputation(2564, 7, true), -- Loamm Niffen
    note = L['grogul_note'],
    rewards = {
        Achievement({
            id = 17741,
            criteria = {
                59148, -- Bashful wins
                59149, -- Tricky wins
                59150, -- Brulee wins
                59151 -- Roggy wins
            }
        }), -- Slow And Steady Wins The Race
        Pet({item = 205231, id = 3557}), -- Roggy
        Pet({item = 205119, id = 3536}), -- Bashful
        Pet({item = 205121, id = 3538}), -- Tricky
        Pet({item = 205123, id = 3540}) -- Brulee
    }
}) -- Grogul <Race Coordinator>

-------------------------------------------------------------------------------
-------------------------------- MISCELLANEOUS --------------------------------
-------------------------------------------------------------------------------

------------------------ MOUNT: BIG SLICK IN THE CITY -------------------------

local Briggul = Class('Briggul', Collectible, {
    id = 201752,
    icon = 5003561,
    requires = {
        ns.requirement.Quest(73708), -- Pay to Play
        ns.requirement.Quest(73709), -- Favor on the Side
        ns.requirement.Quest(75725), -- Off to the Track
        ns.requirement.Reputation(2564, 7, true) -- Loamm Niffen
    },
    rewards = {
        Mount({item = 205155, id = 1729}) -- Big Slick in the City
    }
}) -- Briggul <Snail Trainer>

function Briggul.getters:note()
    local function status(questID)
        if C_QuestLog.IsQuestFlaggedCompleted(questID) then
            return ns.status.Green(L['completed'])
        else
            return ns.status.Red(L['incomplete'])
        end
    end

    local note = L['big_slick_note'] .. '\n\n'
    local pets = { -- {quest, npc}
        {74948, 154836}, {74949, 184187}, {74950, 154718}, {74952, 184195},
        {74959, 98445}, {74960, 183292}, {74961, 154837}, {74962, 64352},
        {74963, 62313}, {74964, 51635}, {74965, 184196}, {74786, 62246},
        {74966, 63001}, {74967, 154716}, {74968, 107206}
    }
    for i in ipairs(pets) do
        note = note .. status(pets[i][1]) .. ' {npc:' .. pets[i][2] .. '}\n'
    end

    return note
end

map.nodes[44257993] = Briggul()

----------------------------- PET: LORD STANTLEY ------------------------------

local CuriousTopHat = Class('CuriousTopHat', Collectible, {
    id = 205010,
    icon = 5008076,
    note = L['curious_top_hat_note'],
    fgroup = 'CuriousTopHat',
    rewards = {
        Pet({item = 205021, id = 3521}) -- Lord Stantley
    }
})

map.nodes[38866432] = CuriousTopHat()
map.nodes[43967748] = CuriousTopHat()
map.nodes[51586689] = CuriousTopHat()
map.nodes[61736979] = CuriousTopHat()
map.nodes[63205574] = CuriousTopHat()
deepflayerNest.nodes[70016555] = CuriousTopHat({
    parent = {id = map.id, location = L['in_cave'], pois = {POI({61463864})}}
})

-------------------------------------------------------------------------------
----------------------- ACHIEVEMENT: THE GIFT OF CHEESE -----------------------
-------------------------------------------------------------------------------

local TheGiftOfCheese = Class('TheGiftOfCheese', Collectible, {
    label = '{achievement:17736}',
    icon = 515993,
    rewards = {
        Achievement({id = 17736, criteria = {qty = true, id = 1}}), -- The Gift of Cheese
        Recipe({item = 204849, profession = 185}), -- Ratcipe: Charitable Cheddar
        Pet({item = 204894, id = 3493}) -- Roland
    }
}) -- The Gift of Cheese

function TheGiftOfCheese.getters:note()
    local function status(id, itemsNeed, itemsNeedString)
        local itemsHave = GetItemCount(id, true);
        if ns.PlayerHasItem(id, itemsNeed) then
            return ns.status.Green(itemsHave .. '/' .. itemsNeedString)
        else
            return ns.status.Red(itemsHave .. '/' .. itemsNeedString)
        end
    end

    local function getString(id)
        local s = '??????'
        return s:sub(1, #tostring(GetItemCount(id))) -- 1/? or 26/?? or 159/???
    end

    local note = L['the_gift_of_cheese_note_1'] .. '\n\n'
    note = note .. status(204871, 1, '1') .. ' ' ..
               L['the_gift_of_cheese_note_2'] .. '\n\n'
    note = note .. status(204872, 30, '30') .. ' ' ..
               L['the_gift_of_cheese_note_3'] .. '\n\n'
    note = note .. status(3927, 1, getString(3927)) .. ' ' ..
               L['the_gift_of_cheese_note_4'] .. '\n\n'
    return note .. L['the_gift_of_cheese_note_5']
end

map.nodes[52442683] = TheGiftOfCheese()

-------------------------------------------------------------------------------
------------------------------- ZARALEK SAFARI --------------------------------
-------------------------------------------------------------------------------

-- local Zaralek_Safari = Class('Zaralek_Safari', ns.node.Safari,
--     {group = ns.groups.ZARALEK_SAFARI})

-- map.nodes[49003260] = Zaralek_Safari({
--     id = 203287,
--     rewards = {Achievement({id = 17879, criteria = 59342}), Pet({id = 3477})},
--     pois = {
--         POI({
--             44004020, 44004900, 44405020, 44405060, 44805840, 44805860,
--             45005080, 45005160, 45203900, 45204000, 45205640, 45205660,
--             46205400, 47203840, 47403740, 47403860, 47603720, 47603760,
--             48203500, 48205240, 48403600, 48405320, 48603600, 48605320,
--             48803460, 49003240, 49003260, 49005160, 49203360, 49403940,
--             49403960, 49405040, 49405140, 49603860, 49604120, 49605040,
--             49605140, 49605160, 49803340, 49803740, 49803780, 49804940,
--             50004580, 50203960, 50404480, 50404740, 50404760, 50604640,
--             50604660, 50604920, 50804300, 50804780
--         })
--     }
-- })-- Puddlehopper

-- map.nodes[1234] = Zaralek_Safari({
--     id = nil,
--     rewards = {Achievement({id = 17879, criteria = nil}), Pet({id = nil})},
--     pois = {
--         POI({})
--     }
-- })-- Yellabon

-- map.nodes[1234] = Zaralek_Safari({
--     id = nil,
--     rewards = {Achievement({id = 17879, criteria = nil}), Pet({id = nil})},
--     pois = {
--         POI({})
--     }
-- })-- Stonewhisker

-- map.nodes[1234] = Zaralek_Safari({
--     id = nil,
--     rewards = {Achievement({id = 17879, criteria = nil}), Pet({id = nil})},
--     pois = {
--         POI({})
--     }
-- })-- Boulderfang

-- map.nodes[1234] = Zaralek_Safari({
--     id = nil,
--     rewards = {Achievement({id = 17879, criteria = nil}), Pet({id = nil})},
--     pois = {
--         POI({})
--     }
-- })-- Hollow Moth

-- map.nodes[1234] = Zaralek_Safari({
--     id = nil,
--     rewards = {Achievement({id = 17879, criteria = nil}), Pet({id = nil})},
--     pois = {
--         POI({})
--     }
-- })-- Rock Martin

-- map.nodes[1234] = Zaralek_Safari({
--     id = nil,
--     rewards = {Achievement({id = 17879, criteria = nil}), Pet({id = nil})},
--     pois = {
--         POI({})
--     }
-- })-- Endmite

-- map.nodes[1234] = Zaralek_Safari({
--     id = nil,
--     rewards = {Achievement({id = 17879, criteria = nil}), Pet({id = nil})},
--     pois = {
--         POI({})
--     }
-- })-- Cobbleshell

-- map.nodes[1234] = Zaralek_Safari({
--     id = nil,
--     rewards = {Achievement({id = 17879, criteria = nil}), Pet({id = nil})},
--     pois = {
--         POI({})
--     }
-- })-- Slabwing

-------------------------------------------------------------------------------
----------------------------------- VENDORS -----------------------------------
-------------------------------------------------------------------------------

map.nodes[55895537] = Vendor({
    id = 203615,
    note = L['saccratos_note'],
    rewards = {
        Pet({item = 205118, id = 3535, count = 55}), -- Diamondshell
        Mount({item = 191838, id = 1603, count = 100}), -- Subterranean Magmammoth
        Mount({item = 205197, id = 1730, count = 400}) -- Igneous Shalewing
    }
}) -- Saccratos <Coveted Bauble Exchange>

map.nodes[58085381] = Vendor({
    id = 204693,
    note = L['ponzo_note'],
    rewards = {
        DC.SetCount(DC.WindingSlitherdrake.HairyBrow, 55),
        DC.SetCount(DC.WindingSlitherdrake.ClusterChinHorn, 55),
        DC.SetCount(DC.WindingSlitherdrake.CurledNose, 55),
        Pet({item = 205120, id = 3537, count = 85}), -- Thimblerig
        Mount({item = 205209, id = 1736, count = 170}) -- Boulder Hauler
    }
}) -- Ponzo <Barterer Extraordinaire>
