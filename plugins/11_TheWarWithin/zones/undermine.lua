-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible
local Node = ns.node.Node
local Rare = ns.node.Rare
local Treasure = ns.node.Treasure
local Vendor = ns.node.Vendor

local WorldsoulMemory = ns.node.WorldsoulMemory

local Achievement = ns.reward.Achievement
local HunterPet = ns.reward.HunterPet
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Recipe = ns.reward.Recipe
local Reputation = ns.reward.Reputation
local Section = ns.reward.Section
local Spacer = ns.reward.Spacer
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

local Entrance = ns.poi.Entrance
local Path = ns.poi.Path
local POI = ns.poi.POI

local ItemStatus = ns.tooltip.ItemStatus

-------------------------------------------------------------------------------

local map = Map({id = 2346, patch = 110100, settings = true}) -- Undermine
local trd = ns.maps[2214] -- The Ringing Deeps

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[68508078] = Rare({
    id = 230931,
    quest = 84917,
    rewards = {
        Achievement({id = 41216, criteria = 71591}),
        Reputation({id = 2653, gain = 20, quest = 84917}), -- The Cartels of Undermine
        Transmog({item = 235301, slot = L['cloak']}), -- Drape of the Dazzling Feather
        Transmog({item = 235305, slot = L['cloth']}), -- Golfer's Truestrike Gloves
        Transmog({item = 235321, slot = L['mail']}) -- Feather-Spike Girdle
    }
}) -- Scrapbeak

map.nodes[25243675] = Rare({
    id = 230934,
    location = L['in_sewer'],
    pois = {Entrance({25453498})},
    quest = 84918,
    rewards = {
        Achievement({id = 41216, criteria = 71592}),
        Reputation({id = 2653, gain = 20, quest = 84918}), -- The Cartels of Undermine
        Transmog({item = 235308, slot = L['cloth']}), -- Filthtread Boots
        Transmog({item = 235326, slot = L['leather']}) -- Ratspit's Heirloom Wristwraps
    }
}) -- Ratspit

map.nodes[37684448] = Rare({
    id = 230940,
    quest = 84919,
    rewards = {
        Achievement({id = 41216, criteria = 71593}),
        Reputation({id = 2653, gain = 20, quest = 84919}), -- The Cartels of Undermine
        Transmog({item = 235328, slot = L['leather']}), -- Boots of the Silver Tongue
        Transmog({item = 235355, slot = L['staff']}), -- Gossi-blin's Baton
        Spacer(), Section(L['shared_drops']),
        Transmog({item = 235310, slot = L['cloth']}), -- Flashy Patchwork Trousers
        Transmog({item = 235320, slot = L['mail']}), -- S.1.Z.Z.L.E.S.T.E.P Boots
        Transmog({item = 235327, slot = L['leather']}), -- Mend-and-Match Shoulderpads
        Transmog({item = 235347, slot = L['dagger']}) -- 100% Sharp Glimmerblade
    }
}) -- Tally Doublespeak

map.nodes[36877815] = Rare({
    id = 230946,
    quest = 84920,
    sublabel = L['and_slimesby'],
    rewards = {
        Achievement({id = 41216, criteria = {71595, 71594}}),
        Reputation({id = 2653, gain = 20, quest = 84920}), -- The Cartels of Undermine
        Transmog({item = 235306, slot = L['cloth']}), -- Ooze-fused Mantle
        Transmog({item = 235329, slot = L['leather']}), -- Cowl of Acidic Mire
        Spacer(), Section(L['shared_drops']),
        Transmog({item = 235310, slot = L['cloth']}), -- Flashy Patchwork Trousers
        Transmog({item = 235320, slot = L['mail']}), -- S.1.Z.Z.L.E.S.T.E.P Boots
        Transmog({item = 235327, slot = L['leather']}), -- Mend-and-Match Shoulderpads
        Transmog({item = 235347, slot = L['dagger']}) -- 100% Sharp Glimmerblade
    }
}) -- V.V. Goosworth and Slimesby

map.nodes[54015023] = Rare({
    id = 230951,
    quest = 84921,
    rewards = {
        Achievement({id = 41216, criteria = 71596}),
        Reputation({id = 2653, gain = 20, quest = 84921}), -- The Cartels of Undermine
        Transmog({item = 235317, slot = L['plate']}), -- Chestplate of the Ultimatum
        Transmog({item = 235353, slot = L['1h_axe']}), -- Debtsmasher Axe
        Spacer(), Section(L['shared_drops']),
        Transmog({item = 235310, slot = L['cloth']}), -- Flashy Patchwork Trousers
        Transmog({item = 235320, slot = L['mail']}), -- S.1.Z.Z.L.E.S.T.E.P Boots
        Transmog({item = 235327, slot = L['leather']}), -- Mend-and-Match Shoulderpads
        Transmog({item = 235347, slot = L['dagger']}) -- 100% Sharp Glimmerblade
    }
}) -- Thwack

map.nodes[41922563] = Rare({
    id = 230979,
    quest = 84922,
    rewards = {
        Achievement({id = 41216, criteria = 71597}),
        Reputation({id = 2653, gain = 20, quest = 84922}), -- The Cartels of Undermine
        Transmog({item = 235356, slot = L['offhand']}), -- Sapper's Spark Reactor
        Spacer(), Section(L['shared_drops']),
        Transmog({item = 235300, slot = L['cloak']}), -- Cloak of Mecha Shards
        Transmog({item = 235315, slot = L['plate']}), -- Rocketstep Boots
        Transmog({item = 235322, slot = L['mail']}), -- Junkyard Clawguards
        Transmog({item = 235351, slot = L['1h_sword']}) -- Hypersteel CX4 Greatsword
    }
}) -- S.A.L.

map.nodes[46915565] = Rare({
    id = 230995,
    quest = 84926,
    rewards = {
        Achievement({id = 41216, criteria = 71598}),
        Reputation({id = 2653, gain = 20, quest = 84926}), -- The Cartels of Undermine
        Transmog({item = 235318, slot = L['plate']}), -- Ironfang Plate Legguards
        Transmog({item = 235324, slot = L['mail']}), -- Scavenger's Lost Bind
        Transmog({item = 235325, slot = L['leather']}) -- Rusthide Gloves
    }
}) -- Nitro

map.nodes[42227735] = Rare({
    id = 231012,
    quest = 84927,
    rewards = {
        Achievement({id = 41216, criteria = 71599}),
        Reputation({id = 2653, gain = 20, quest = 84927}), -- The Cartels of Undermine
        Transmog({item = 235304, slot = L['cloth']}), -- Gutter Rat Mask
        Transmog({item = 235348, slot = L['dagger']}), -- Back Alley Shank
        Spacer(), Section(L['shared_drops']),
        Transmog({item = 235310, slot = L['cloth']}), -- Flashy Patchwork Trousers
        Transmog({item = 235320, slot = L['mail']}), -- S.1.Z.Z.L.E.S.T.E.P Boots
        Transmog({item = 235327, slot = L['leather']}), -- Mend-and-Match Shoulderpads
        Transmog({item = 235347, slot = L['dagger']}) -- 100% Sharp Glimmerblade
    }
}) -- Candy Stickemup

map.nodes[67333353] = Rare({
    id = 231017,
    quest = 84928,
    rewards = {
        Achievement({id = 41216, criteria = 71600}),
        Reputation({id = 2653, gain = 20, quest = 84928}), -- The Cartels of Undermine
        Transmog({item = 235319, slot = L['mail']}), -- Tidebomb Chestpiece
        Transmog({item = 235323, slot = L['mail']}) -- Blastshell Bracers
    }
}) -- Grimewick

map.nodes[41354357] = Rare({
    id = 231288,
    quest = 85004,
    rewards = {
        Achievement({id = 41216, criteria = 71601}),
        Reputation({id = 2653, gain = 20, quest = 85004}), -- The Cartels of Undermine
        Transmog({item = 235307, slot = L['cloth']}), -- Smoketrail Belt
        Transmog({item = 235314, slot = L['plate']}), -- Knightrider's Steelfists
        Spacer(), Section(L['shared_drops']),
        Transmog({item = 235310, slot = L['cloth']}), -- Flashy Patchwork Trousers
        Transmog({item = 235320, slot = L['mail']}), -- S.1.Z.Z.L.E.S.T.E.P Boots
        Transmog({item = 235327, slot = L['leather']}), -- Mend-and-Match Shoulderpads
        Transmog({item = 235347, slot = L['dagger']}) -- 100% Sharp Glimmerblade
    }
}) -- Swigs Farsight

map.nodes[26516830] = Rare({
    id = 230746,
    quest = 84877,
    vignette = 6593,
    rewards = {
        Achievement({id = 41216, criteria = 71602}),
        Reputation({id = 2653, gain = 50, quest = 84877}), -- The Cartels of Undermine
        Transmog({item = 235309, slot = L['cloth']}), -- Gloomshroud Robe
        Transmog({item = 235350, slot = L['1h_mace']}), -- Void-forged Cudgel
        Transmog({item = 235352, slot = L['wand']}) -- Netherflare Wand
    }
}) -- Ephemeral Agent Lathyd

map.nodes[63354975] = Rare({
    id = 230793,
    quest = 84884,
    vignette = 6594,
    rewards = {
        Achievement({id = 41216, criteria = 71603}),
        Reputation({id = 2653, gain = 50, quest = 84884}), -- The Cartels of Undermine
        Transmog({item = 235313, slot = L['plate']}), -- Shockproof Helm
        Transmog({item = 235354, slot = L['polearm']}), -- Scrapblaster Lance
        Spacer(), Section(L['shared_drops']),
        Transmog({item = 235300, slot = L['cloak']}), -- Cloak of Mecha Shards
        Transmog({item = 235315, slot = L['plate']}), -- Rocketstep Boots
        Transmog({item = 235322, slot = L['mail']}), -- Junkyard Clawguards
        Transmog({item = 235351, slot = L['1h_sword']}) -- Hypersteel CX4 Greatsword
    },
    pois = {Path({63574989, 64085016, 64005291})}
}) -- The Junk-Wall

map.nodes[52354107] = Rare({
    id = 230800,
    quest = 84895,
    vignette = 6595,
    rewards = {
        Achievement({id = 41216, criteria = 71604}),
        Reputation({id = 2653, gain = 50, quest = 84895}), -- The Cartels of Undermine
        Transmog({item = 235349, slot = L['1h_mace']}), -- Shadowfume Club
        Spacer(), Section(L['shared_drops']),
        Transmog({item = 235310, slot = L['cloth']}), -- Flashy Patchwork Trousers
        Transmog({item = 235320, slot = L['mail']}), -- S.1.Z.Z.L.E.S.T.E.P Boots
        Transmog({item = 235327, slot = L['leather']}), -- Mend-and-Match Shoulderpads
        Transmog({item = 235347, slot = L['dagger']}) -- 100% Sharp Glimmerblade
    }
}) -- Slugger the Smart

map.nodes[58488643] = Rare({
    id = 230828,
    quest = 84907,
    vignette = 6596,
    rewards = {
        Achievement({id = 41216, criteria = 71605}),
        Reputation({id = 2653, gain = 50, quest = 84907}), -- The Cartels of Undermine
        Transmog({item = 235311, slot = L['plate']}), -- Rocket-Powered Shoulderguards
        Transmog({item = 235357, slot = L['shield']}), -- Bulletscar Barricade
        Spacer(), Section(L['shared_drops']),
        Transmog({item = 235300, slot = L['cloak']}), -- Cloak of Mecha Shards
        Transmog({item = 235315, slot = L['plate']}), -- Rocketstep Boots
        Transmog({item = 235322, slot = L['mail']}), -- Junkyard Clawguards
        Transmog({item = 235351, slot = L['1h_sword']}) -- Hypersteel CX4 Greatsword
    }
}) -- Chief Foreman Gutso

map.nodes[60580989] = Rare({
    id = 230840,
    quest = 84911,
    rewards = {
        Achievement({id = 41216, criteria = 71606}),
        Reputation({id = 2653, gain = 50, quest = 84911}), -- The Cartels of Undermine
        Transmog({item = 235312, slot = L['plate']}), -- Snooty's Aviator Bindings
        Transmog({item = 235316, slot = L['plate']}), -- Whirly-Giggle Windwhir Wrap
        Spacer(), Section(L['shared_drops']),
        Transmog({item = 235300, slot = L['cloak']}), -- Cloak of Mecha Shards
        Transmog({item = 235315, slot = L['plate']}), -- Rocketstep Boots
        Transmog({item = 235322, slot = L['mail']}), -- Junkyard Clawguards
        Transmog({item = 235351, slot = L['1h_sword']}) -- Hypersteel CX4 Greatsword
    },
    vignette = 6597
}) -- Flyboy Snooty

map.nodes[40002232] = Rare({
    id = 234480,
    note = format(L['complete_event'], 234819), -- Ragzy Cashgrab
    quest = 90488, -- 86298
    vignette = 6689,
    requires = {
        ns.requirement.Reputation(2653, 6, true) -- The Cartels of Undermine
    },
    rewards = {
        Achievement({id = 41216, criteria = 71608}),
        Reputation({id = 2653, gain = 100, quest = 90488}), -- The Cartels of Undermine
        Transmog({item = 235835, type = L['cloak']}), -- Braided Wire Wrap
        Transmog({item = 235836, type = L['2h_sword']}), -- Gas-Powered Chainblade
        Spacer(), Section(L['shared_drops']),
        Transmog({item = 235300, slot = L['cloak']}), -- Cloak of Mecha Shards
        Transmog({item = 235315, slot = L['plate']}), -- Rocketstep Boots
        Transmog({item = 235322, slot = L['mail']}), -- Junkyard Clawguards
        Transmog({item = 235351, slot = L['1h_sword']}) -- Hypersteel CX4 Greatsword
    },
    sublabel = format(L['requires_ally'], 2673) -- Bilgewater Cartel
}) -- M.A.G.N.O.

map.nodes[32027652] = Rare({
    id = 234499,
    note = format(L['complete_event'], 234751), -- Noggenfogger Recall Technician
    quest = 90489, -- 86307
    vignette = {6710, 6694},
    requires = {
        ns.requirement.Reputation(2653, 6, true) -- The Cartels of Undermine
    },
    rewards = {
        Achievement({id = 41216, criteria = 71609}),
        Reputation({id = 2653, gain = 100, quest = 90489}), -- The Cartels of Undermine
        Transmog({item = 235823, type = L['leather']}), -- Scrap-Plated Pants
        Transmog({item = 235824, type = L['gun']}), -- Flame Sputterer
        Spacer(), Section(L['shared_drops']),
        Transmog({item = 235310, slot = L['cloth']}), -- Flashy Patchwork Trousers
        Transmog({item = 235320, slot = L['mail']}), -- S.1.Z.Z.L.E.S.T.E.P Boots
        Transmog({item = 235327, slot = L['leather']}), -- Mend-and-Match Shoulderpads
        Transmog({item = 235347, slot = L['dagger']}) -- 100% Sharp Glimmerblade
    },
    sublabel = format(L['requires_ally'], 2677) -- Steamwheedle Cartel
}) -- Giovante

map.nodes[57207860] = Rare({
    id = 233471,
    note = format(L['complete_event'], 236035), -- Scrapminer Krazzik
    quest = 90491, -- 85778
    vignette = {6667, 6752},
    requires = {
        ns.requirement.Reputation(2653, 6, true) -- The Cartels of Undermine
    },
    rewards = {
        Achievement({id = 41216, criteria = 71610}),
        Reputation({id = 2653, gain = 100, quest = 90491}), -- The Cartels of Undermine
        Transmog({item = 235829, type = L['mail']}), -- Welded Scrap Hood
        Transmog({item = 235830, type = L['mail']}), -- Unstable Missilecaps
        Transmog({item = 235831, type = L['1h_sword']}) -- Battery-Powered Longshank
    },
    sublabel = format(L['requires_ally'], 2671) -- Venture Company
}) -- Scrapchewer

map.nodes[64162556] = Rare({
    id = 233472,
    note = format(L['complete_event'], 234834), -- Boatwright Frankle
    quest = 90490, -- 85777
    vignette = {6668, 6753},
    requires = {
        ns.requirement.Reputation(2653, 6, true) -- The Cartels of Undermine
    },
    rewards = {
        Achievement({id = 41216, criteria = 71611}),
        Reputation({id = 2653, gain = 100, quest = 90490}), -- The Cartels of Undermine
        Transmog({item = 235826, type = L['cloth']}), -- Electric Wristrags
        Transmog({item = 235827, type = L['leather']}), -- Statically Charged Vest
        Transmog({item = 235828, type = L['staff']}) -- Electrocution Warning
    },
    sublabel = format(L['requires_ally'], 2675) -- Blackwater Cartel
}) -- Volstrike the Charged

map.nodes[40209190] = Rare({
    id = 231310,
    note = format(L['complete_event'], 231329), -- De-Pollution Station X1119
    quest = 90492, -- 85010
    vignette = {6613, 6614},
    requires = {
        ns.requirement.Reputation(2653, 6, true), -- The Cartels of Undermine
        ns.requirement.Item(229823) -- Canister of Darkfuse Solution
    },
    rewards = {
        Achievement({id = 41216, criteria = 71612}),
        Reputation({id = 2653, gain = 100, quest = 90492}), -- The Cartels of Undermine
        Transmog({item = 235832, type = L['cloak']}), -- Oil-Splattered Cloak
        Transmog({item = 235833, type = L['polearm']}), -- Serrated Slickgrip
        Transmog({item = 235834, type = L['warglaive']}), -- Rocketgrip Turboslicer
        Mount({item = 229955, id = 2293}) -- Darkfuse Spy-Eye
    }
}) -- Darkfuse Precipitant

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
        POI({49896613, color = 'Red'}), -- First floor
        POI({49536452, color = 'Green'}) -- Second floor
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

map.nodes[49699025] = Plunger() -- Inert Plunger? / Exploded Plunger

map.nodes[38965963] = Treasure({
    note = L['blackened_dice_note'],
    quest = 85814,
    rewards = {
        Achievement({id = 41217, criteria = 71625}), --
        Item({item = 235255}) -- Durable Dice
    }
}) -- Blackened Dice

map.nodes[59351912] = Treasure({
    note = L['lonely_tub_note'],
    pois = {POI({58751798, color = 'Blue'})},
    quest = {85860, 85858},
    rewards = {
        Achievement({id = 41217, criteria = 71626}), Transmog({item = 235279}) -- Scorched Shorts
    }
}) -- Lonely Tub

map.nodes[69652164] = Treasure({
    location = L['impotent_potable_location'],
    quest = 85426,
    rewards = {
        Achievement({id = 41217, criteria = 71627}), --
        Item({item = 235230}) -- Impotant Potable
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
        Item({item = 234821, note = L['trinket']}) -- Papa's Prized Putter
    }
}) -- Papa's Prized Putter

map.nodes[26864265] = Treasure({
    quest = 85425,
    rewards = {Achievement({id = 41217, criteria = 71630})}
}) -- Unsupervised Takeout

map.nodes[39386103] = Treasure({
    quest = 85492,
    rewards = {
        Achievement({id = 41217, criteria = 71631}), --
        Item({item = 235221}) -- Paricularly Bright Lightbulb
    }
}) -- Particularly Nice Lamp

map.nodes[53405272] = Treasure({
    quest = 85495,
    rewards = {
        Achievement({id = 41217, criteria = 71632}), --
        Toy({item = 234951}) -- Uncracked Cold Ones
    }
}) -- Uncracked Cold Ones

map.nodes[63813220] = Treasure({
    quest = 85494,
    rewards = {
        Achievement({id = 41217, criteria = 71633}), --
        Item({item = 235273}) -- Distracting Floatmingo
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
    rewards = {
        Achievement({id = 41217, criteria = 71635}),
        Item({item = 235037, quest = 86630, profession = 202}) -- Crumpled Schematic: Wormhole Generator: Undermine
    }
}) -- Crumpled Schematics

-------------------------------------------------------------------------------
----------------------------------- VENDORS -----------------------------------
-------------------------------------------------------------------------------

local BreakneckCustomization = Class('BreakneckCustomization', Item,
    {type = L['breakneck_customization']})

map.nodes[35384142] = Vendor({
    id = 236411,
    note = L['ditty_fuzeboy_note'],
    rewards = {
        Pet({item = 232850, id = 4649, count = 5}), -- Blackwater Kegmover
        Pet({item = 232846, id = 4648, count = 5}), -- Steamwheedle Flunkie
        Pet({item = 232849, id = 4650, count = 5}), -- Venture Companyman
        Pet({item = 232840, id = 4661, count = 5}), -- Mechagopher
        Pet({item = 232841, id = 4644, count = 8}), -- Professor Punch
        Pet({item = 232842, id = 4638, count = 10}) -- Crimson Mechasaur
    }
}) -- Ditty Fuzeboy <Entertainment Supplier>

map.nodes[43208280] = Vendor({
    id = 228286,
    note = L['skedgit_cinderbangs_note'],
    rewards = {
        Mount({item = 229941, id = 2283, count = 25}), -- Innovation Investigator
        Mount({item = 229952, id = 2290, count = 25}), -- Asset Advocator
        Mount({item = 229954, id = 2292, count = 25}) -- Margin Manipulator
    }
}) -- Skedgit Cinderbangs <Entrepreneur Inc.>

map.nodes[25743813] = Vendor({
    id = 234776,
    note = L['angelo_rustbin_note'],
    rewards = {
        Section('{currency:3218}'), -- Empty Kaja'Cola Can
        Toy({item = 237382, count = 999}), -- Undermine Supply Crate
        BreakneckCustomization({item = 232986, count = 2000, quest = 85781}), -- GE86 Advance
        Spacer(), Section('{item:233557}'), -- Sifted Pile of Scrap
        Pet({item = 232838, id = 4639}), -- Viridian Mechasaur
        Mount({item = 229949, id = 2288}), -- Personalized Goblin S.C.R.A.P.per
        Spacer(), Section('{currency:3220}'), -- Vintage Kaja'Cola Can
        Pet({item = 232858, id = 4655, count = 1}), -- Cruncher
        Pet({item = 232859, id = 4653, count = 3}) -- Lab Rat
    }
}) -- Angelo Rustbin <S.C.R.A.P. Exchange>

map.nodes[34097126] = Vendor({
    id = 226994,
    note = L['blair_bass_note'],
    rewards = {
        Toy({item = 237346, count = 5}), -- Artisan Beverage Goblet Bobber
        Toy({item = 237347, count = 5}), -- Organically-Sourced Wellington Bobber
        Toy({item = 237345, count = 5}) -- Limited Edition Rocket Bobber
    }
}) -- Blair Bass <"Gold" Fish Exchange>

map.nodes[24606320] = Vendor({
    id = 236849,
    note = L['greexit_coarsebub_note'],
    rewards = {
        Section('{faction:2673}'), -- Bilgewater
        Transmog({item = 231742, count = 190}), -- Bilgewater Bruisers Helm
        Transmog({item = 231748, count = 95}), -- Bilgewater Bruisers Spaulders
        Transmog({item = 231736, count = 475}), -- Bilgewater Bruisers Tabard
        Spacer(), --
        Section('{faction:2677}'), -- Steamwheedle
        Transmog({item = 231740, count = 190}), -- Steamwheedle Bruisers Helm
        Transmog({item = 231747, count = 95}), -- Steamwheedle Bruisers Spaulders
        Transmog({item = 231735, count = 475}), -- Steamwheedle Bruisers Tabard
        Spacer(), --
        Section('{faction:2675}'), -- Blackwater
        Transmog({item = 231741, count = 190}), -- Blackwater Bruisers Helm
        Transmog({item = 231746, count = 95}), -- Blackwater Bruisers Spaulders
        Transmog({item = 231734, count = 475}), -- Blackwater Bruisers Tabard
        Spacer(), --
        Section('{faction:2671}'), -- Venture Company
        Transmog({item = 231744, count = 190}), -- Venture Co. Bruisers Helm
        Transmog({item = 231750, count = 95}), -- Venture Co. Bruisers Spaulders
        Transmog({item = 231738, count = 475}) -- Venture Co. Bruisers Tabard
    }
}) -- Greexit Coarsebub <Discount Fashion>

------------------------ GOBLIN CARTEL QUARTERMASTERS -------------------------

map.nodes[39152219] = Vendor({
    id = 231406,
    sublabel = format(L['quartermaster'], '{faction:2673}'),
    location = L['rocco_razzboom_location'],
    note = L['quartermaster_note'],
    rewards = {
        Section(L['rep_honored']),
        BreakneckCustomization({item = 236672, quest = 85785}), -- The Ol' Low-and-Slow
        Toy({item = 235670}), -- Bilgewater Cartel Banner
        Spacer(), Section(L['rep_revered']), --
        Toy({item = 235807}), -- Storefront-in-a-Box
        Pet({item = 232845, id = 4645}), -- Bilgewater Junkhauler
        Spacer(), Section(L['rep_exalted']),
        BreakneckCustomization({item = 235388, quest = 86773}), -- Paint: Redlining Red
        Transmog({item = 231526}), -- Bilgewater Undermine Tabard
        Mount({item = 229935, id = 2272}) -- Crimson Armored Growler
    }
}) -- Rocco Razzboom <Bilgewater Quartermaster>

map.nodes[27127256] = Vendor({
    id = 231408,
    sublabel = format(L['quartermaster'], '{faction:2677}'),
    location = L['lab_assistant_laszly_location'],
    note = L['quartermaster_note'],
    rewards = {
        Section(L['rep_honored']),
        BreakneckCustomization({item = 236670, quest = 85787}), -- Maniacle Melodies
        Toy({item = 235669}), -- Steamwheedle Cartel Banner
        Spacer(), Section(L['rep_revered']), --
        Toy({item = 226373}), -- Everlasting Noggenfogger Elixer
        Pet({item = 232853, id = 4632}), -- Eepy
        Spacer(), Section(L['rep_exalted']),
        BreakneckCustomization({item = 235389, quest = 86772}), -- Paint: Goblin Green
        Transmog({item = 231527}), -- Steamwheedle Undermine Tabard
        Mount({item = 229956, id = 2294}) -- Mean Green Flying Machine
    }
}) -- Lab Assistant Laszly <Steamwheedle Quartermaster>

map.nodes[63421673] = Vendor({
    id = 231405,
    sublabel = format(L['quartermaster'], '{faction:2675}'),
    location = L['boatswain_hardee_location'],
    note = L['quartermaster_note'],
    rewards = {
        Section(L['rep_honored']),
        BreakneckCustomization({item = 236671, quest = 85786}), -- The Buzzer
        Toy({item = 235671}), -- Blackwater Cartel Banner
        Spacer(), Section(L['rep_revered']), --
        Toy({item = 235801}), -- Personal Fishing Barge
        Pet({item = 232839, id = 4637}), -- Wavebreaker Mechasaur
        Spacer(), Section(L['rep_exalted']),
        BreakneckCustomization({item = 235390, quest = 86771}), -- Paint: Body Roll Blue
        Transmog({item = 231528}), -- Blackwater Undermine Tabard
        Mount({item = 229948, id = 2286}) -- Blackwater Shredder Deluxe Mk 2
    }
}) -- Boatswain Hardee <Blackwater Quartermaster>

map.nodes[53297271] = Vendor({
    id = 231407,
    sublabel = format(L['quartermaster'], '{faction:2671}'),
    location = L['shrez_the_scrapper_location'],
    note = L['quartermaster_note'],
    rewards = {
        Section(L['rep_honored']),
        BreakneckCustomization({item = 236669, quest = 85788}), -- The Whole Brass Band
        Toy({item = 235672}), -- Venture Co. Banner
        Spacer(), Section(L['rep_revered']), --
        Toy({item = 235799}), -- Throwin' Sawblade
        Pet({item = 232851, id = 4641}), -- Rocketfist
        Spacer(), Section(L['rep_exalted']),
        BreakneckCustomization({item = 235391, quest = 86774}), -- Paint: Yellow Cake Yellow
        Transmog({item = 231542}), -- Venture Co. Undermine Tabard
        Mount({item = 229946, id = 2284}) -- Ocher Delivery Rocket
    }
}) -- Shredz the Scapper <Venture Quartermaster>

map.nodes[30723890] = Vendor({
    id = 231396,
    sublabel = format(L['quartermaster'], '{faction:2669}'),
    location = L['in_sewer'],
    note = L['quartermaster_note'],
    pois = {Entrance({29754112})},
    rewards = {
        Section(L['rep_honored']), --
        Toy({item = 234950}), -- Atomic Regoblinator
        Spacer(), Section(L['rep_revered']), --
        Mount({item = 229950, id = 2287}), -- Darkfuse Demolisher
        Spacer(), Section(L['rep_exalted']), --
        Transmog({item = 231550}) -- Darkfuse Lowdown Coat
    }
}) -- Sitch Lowdown <Darkfuse Solutions Quartermaster>

-------------------------------------------------------------------------------
----------------------------- S.C.R.A.P. REWARDS ------------------------------
-------------------------------------------------------------------------------

local function GetScrapRewards(criteriaID)
    return {
        Achievement({id = 41593, criteria = criteriaID}), -- Cleanin' the Streets
        Achievement({
            id = 41592,
            criteria = {id = 1, qty = true, suffix = L['scrap_heap_suffix']}
        }), -- Absolutely Zero Littering
        Achievement({id = 41594, oneline = true}),
        Transmog({item = 236161, type = L['gun']}), -- Broiler Supreme 300
        Transmog({item = 236178, type = L['bow']}), -- Gammy's Hand-Me-Down Bow
        Transmog({item = 236181, type = L['1h_sword']}), -- Center-Stage Remover
        Transmog({item = 236191, type = L['1h_mace']}), -- Mechanic's Best Motivator
        Spacer(), Section('{npc:234621}'), -- Gallagio Garbage <Luxury Trash>
        Reputation({id = 2653, gain = 20, quest = 87007}), -- The Cartels of Undermine
        Transmog({item = 235821, type = L['mail']}), -- Pressed-Gold Pantaloons
        Transmog({item = 235822, type = L['cloak']}), -- Coin-Woven Shawl
        Transmog({item = 235854, type = L['cosmetic']}), -- Gold-Inlaid Jetpack
        Mount({item = 229953, id = 2291}) -- Salvaged Goblin Gazillionaire's Flying Machine
    }
end

local ScrapHeap = Class('ScrapHeap', Collectible, {
    label = '{npc:234350}',
    icon = 5768266,
    group = ns.groups.SCRAP_REWARDS
}) -- S.C.R.A.P. Heap

function ScrapHeap.getters:rewards() return GetScrapRewards(self.criteriaID) end

map.nodes[32012173] = ScrapHeap({criteriaID = 103181}) -- Hovel Hill (North)
map.nodes[36354508] = ScrapHeap({criteriaID = 103182}) -- Hovel Hill (South)
map.nodes[38658109] = ScrapHeap({criteriaID = 103183}) -- The Vatworks
map.nodes[50426363] = ScrapHeap({criteriaID = 103184}) -- Venturewood
map.nodes[52498333] = ScrapHeap({criteriaID = 103185}) -- The Heaps
map.nodes[69577652] = ScrapHeap({criteriaID = 103186}) -- Emerald Hills Golf Course
map.nodes[67482929] = ScrapHeap({criteriaID = 103187}) -- Blackwater Marina

ns.hook.Vignette({group = ns.groups.SCRAP_REWARDS, vignetteID = 6687})
ns.hook.Vignette({group = ns.groups.SCRAP_REWARDS, vignetteID = 6757})

-------------------------------------------------------------------------------
--------------------- ACHIEVEMENT: NINE-TENTHS OF THE LAW ---------------------
-------------------------------------------------------------------------------

local gorillion = {
    [23804538] = {quest = 85072, item = 234427}, -- Gorillion Fork
    [56665546] = {quest = 85116, item = 234432}, -- Gorillion Engine
    [34318285] = {quest = 85117, item = 234433}, -- Gorillion Chasis
    [71458588] = {quest = 85114, item = 234430}, -- Gorillion Grease
    [75142295] = {quest = 85115, item = 234431} -- Gorillion Batteries
}

local MuffsAutoLocker = Class('MuffsAutoLocker', Collectible, {
    icon = 2201832,
    label = L['muffs_auto_locker_label'],
    group = ns.groups.NINE_TENTHS
}) -- Muff's Auto-Locker

function MuffsAutoLocker.getters:note()
    local note = L['muffs_auto_locker_note']
    for _, part in pairs(gorillion) do
        note = note .. ItemStatus(part.item, 1, format('{item:%d}', part.item))
    end
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

for coords, part in pairs(gorillion) do
    map.nodes[coords] = MuffsAutoLocker({quest = part.quest})
end

-------------------------------------------------------------------------------
--------------------- ACHIEVEMENT: READ BETWEEN THE LINES ---------------------
-------------------------------------------------------------------------------

local UndermineLoreBook = Class('UndermineLoreBook', Collectible, {
    icon = 4549129,
    group = ns.groups.BETWEEN_THE_LINES
})

trd.nodes[72907315] = UndermineLoreBook({
    quest = 86570,
    rewards = {Achievement({id = 41588, criteria = 103107})}
}) -- Rocket Drill Safety Manual

map.nodes[27327075] = UndermineLoreBook({
    location = L['a_threatening_letter_location'],
    quest = 86567,
    requires = ns.requirement.Quest(83130), -- ![Sour Victory]
    rewards = {Achievement({id = 41588, criteria = 103108})}
}) -- A Threatening Letter

map.nodes[39622690] = UndermineLoreBook({
    location = L['in_sewer'],
    quest = 86572,
    requires = ns.requirement.Quest(83130), -- ![Sour Victory]
    rewards = {Achievement({id = 41588, criteria = 103106})}
}) -- First Half of Noggenfogger's Journal

map.nodes[32805895] = UndermineLoreBook({
    location = L['in_sewer'],
    quest = 86571,
    requires = ns.requirement.Quest(83130), -- ![Sour Victory]
    rewards = {Achievement({id = 41588, criteria = 103109})}
}) -- Second Half of Noggenfogger's Journal

trd.nodes[67259808] = UndermineLoreBook({
    quest = 86569,
    rewards = {Achievement({id = 41588, criteria = 103110})}
}) -- Extractor Drill X-78 Safety Guide

map.nodes[60966439] = UndermineLoreBook({
    location = L['gallywixs_notes_location'],
    pois = {Entrance({58685937})},
    quest = 86573,
    requires = ns.requirement.Quest(83130), -- ![Sour Victory]
    rewards = {Achievement({id = 41588, criteria = 103111})}
}) -- Gallywix's Notes

map.nodes[65611420] = UndermineLoreBook({
    quest = 86568,
    rewards = {Achievement({id = 41588, criteria = 103112})}
}) -- Misplaced Work Order

-------------------------------------------------------------------------------
--------------------- ACHIEVEMENT: YOU'RE MY FRIEND NOW -----------------------
-------------------------------------------------------------------------------

local YoureMyFriendNow = Class('youre_my_friend_now', Collectible, {
    icon = 6351952,
    group = ns.groups.YOURE_MY_FRIEND_NOW,
    rewards = {
        Achievement({id = 41708, criteria = {id = 1, qty = true}}) -- You're My Friend Now
    }
})

map.nodes[43591131] = YoureMyFriendNow({id = 239250})
map.nodes[28485579] = YoureMyFriendNow({
    id = 239248,
    note = L['rat_2nd_floor_trash_can']
})
map.nodes[35958563] = YoureMyFriendNow({
    id = 239252,
    note = L['rat_in_building_rail']
})
map.nodes[65268826] = YoureMyFriendNow({id = 239249})
map.nodes[65864395] = YoureMyFriendNow({id = 239251})

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
        }) -- That Can-Do Attitude
    }
}) -- Discarded Can

map.nodes[28624761] = DiscardedCan()
map.nodes[30674249] = DiscardedCan()
map.nodes[31334208] = DiscardedCan()
map.nodes[35874872] = DiscardedCan()
map.nodes[39172768] = DiscardedCan()
map.nodes[41693493] = DiscardedCan()
map.nodes[45098122] = DiscardedCan()
map.nodes[46194131] = DiscardedCan()
map.nodes[46374679] = DiscardedCan()
map.nodes[50373403] = DiscardedCan()
map.nodes[52715868] = DiscardedCan()
map.nodes[56135245] = DiscardedCan()
map.nodes[56563837] = DiscardedCan()
map.nodes[56923313] = DiscardedCan()
map.nodes[41524238] = DiscardedCan()
map.nodes[41313863] = DiscardedCan()
map.nodes[48995316] = DiscardedCan()

-------------------------------------------------------------------------------
----------------------------- WORLDSOUL MEMORIES ------------------------------
-------------------------------------------------------------------------------

map.nodes[43251438] = WorldsoulMemory({areaPoiID = 8200}) -- Early Cartel Wars
map.nodes[58196864] = WorldsoulMemory({areaPoiID = 8201}) -- Kaja'mite Contact

-------------------------------------------------------------------------------
-------------------------------- MISCELLANEOUS --------------------------------
-------------------------------------------------------------------------------

---------------------------- UNDERMINE UNDERSHIRT -----------------------------

map.nodes[33085816] = Collectible({
    label = L['sewer_cheese_label'],
    icon = 'peg_bl',
    scale = 2.0,
    note = L['undermine_undershirt_note'],
    rlabel = ns.status.Gray('#1, #2'),
    location = L['in_sewer'],
    pois = {
        Entrance({33815756}),
        POI({33615811, label = '{npc:238661}', color = 'Red'}) -- Hungry Rat
    },
    rewards = {Transmog({item = 237130})} -- Undermine Undershirt
}) -- Sewer Cheese

map.nodes[63231691] = Collectible({
    label = '{npc:237412}',
    icon = 'peg_bl',
    scale = 2.0,
    note = L['undermine_undershirt_note'],
    rlabel = ns.status.Gray('#3'),
    requires = ns.requirement.Item(237129), -- Tarnished Undermine Real
    rewards = {Transmog({item = 237130})} -- Undermine Undershirt
}) -- Pix Xizzix

------------------ RECIPE: AUTHENTIC UNDERMINE CLAM CHOWDER -------------------

map.nodes[38058868] = Collectible({
    label = L['undermine_clam_chowder_label'],
    icon = 'peg_bl',
    scale = 2.0,
    location = L['undermine_clam_chowder_location'],
    note = format(L['undermine_clam_chowder_note'],
        C_CurrencyInfo.GetCoinTextureString(3000)),
    requires = {
        ns.requirement.Profession(185, 2548, 225), -- Classic Cooking 225
        ns.requirement.Profession(185, 2873, 35) -- The War Within Cooking 35
    },
    rewards = {
        Recipe({item = 235800, profession = 185}) -- Recipe: Authentic Undermine Clam Chowder
    }
}) -- Authentic Undermine Clam Chowder

--------------------------------- HUNTER PETS ---------------------------------

local HunterPetNode = Class('HunterPetNode', Node,
    {icon = 'peg_gn', scale = 2.0, class = 'HUNTER'})

map.nodes[39801260] = HunterPetNode({
    label = '{npc:226555}',
    requires = ns.requirement.Quest(87008), -- ![Ad-Hoc Wedding Planner]
    note = format(L['blazefeather_peacock_note'],
        GetCoinTextureString(5000000000)),
    rewards = {HunterPet({id = 226561, icon = 132200})} -- Blazefeather Peakcock
}) -- Grelik Greaseguard <Exotic Beasts> (Blazefeather Peacock)

map.nodes[28007080] = HunterPetNode({
    label = '{npc:239325}',
    note = L['radioactive_subject_note'],
    rewards = {HunterPet({id = 239325, icon = 644001})} -- Radioactive Subject
}) -- Radioactive Subject

local zul = ns.maps[862] or Map({id = 862, settings = false})

zul.nodes[17576104] = HunterPetNode({
    label = '{npc:233938}',
    note = L['george_the_big_pinch_note'],
    rewards = {HunterPet({id = 233938, icon = 132186})}, -- George <The Big Pinch>
    pois = {
        POI({22845943, 21715939, 21526072, 20445985, 19156043}),
        Path({22845943, 21715939, 21526072, 20445985, 19156043, 17576104})
    }
}) -- George <The Big Pinch>
