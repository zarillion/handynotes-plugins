-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

local PetBattle = ns.node.PetBattle
local Rare = ns.node.Rare
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Title = ns.reward.Title
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

local Path = ns.poi.Path
local POI = ns.poi.POI

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({id = 534, settings = true})

-- Quest Requirements for Treasures (Tanaan Campaign).
local requiredQuests = {
    -- Garrison Campaign: The Bane of the Bleeding Hollow (Horde)
    ['bleeding hollow'] = 38453,
    -- The Cipher of Damnation (Horde)
    ['cipher of damnation'] = 38463
}

if UnitFactionGroup('player') == 'Alliance' then
    requiredQuests = {
        -- Garrison Campaign: The Bane of the Bleeding Hollow (Alliance)
        ['bleeding hollow'] = 38560,
        -- The Cipher of Damnation (Alliance)
        ['cipher of damnation'] = 39394
    }
end

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[51004600] = Rare({
    id = 89675,
    quest = 38749,
    note = L['commander_orgmok_note'],
    rewards = {
        Achievement({id = 10070, criteria = 28731}),
        Transmog({item = 127313, slot = L['mail']}) -- Org'mok's Riding Chaps
    },
    pois = {
        Path({
            51004600, 50904750, 49704810, 48504680, 47404670, 47004540,
            47804440, 49304450, 50304360, 50504470, 51004600
        })
    }
}) -- Commander Org'mok

map.nodes[43003690] = Rare({
    id = 90024,
    quest = 37953,
    rewards = {
        Achievement({id = 10070, criteria = 28339}),
        Transmog({item = 127318, slot = L['plate']}) -- Iron Cleated Warboots
    }
}) -- Sergeant Mor'grak

map.nodes[39603260] = Rare({
    id = 90094,
    quest = 39046,
    rewards = {
        Achievement({id = 10070, criteria = 28724}),
        Transmog({item = 127309, slot = L['mail']}) -- Korak's Reinforced Iron Tunic
    }
}) -- Harbormaster Korak

-- Zoug the Heavy
map.nodes[37003300] = Rare({
    id = 90122,
    quest = 39045,
    rewards = {
        Achievement({id = 10070, criteria = 28723}),
        Item({item = 128252, quest = 39360}), -- Equipment Blueprint: True Iron Rudder
        Transmog({item = 127308, slot = L['leather']}) -- Zoug's Lifting Belt
    }
})

map.nodes[31207220] = Rare({
    id = 90429,
    quest = 38026,
    rewards = {
        Achievement({id = 10070, criteria = 28333}), Toy({item = 127655}) -- Sassy Imp
    }
}) -- Imp-Master Valessa

map.nodes[30906800] = Rare({
    id = 90434,
    quest = 38031,
    note = L['in_cave'] .. ' ' .. L['ceraxas_note'],
    rewards = {
        Achievement({id = 10070, criteria = 28336}),
        Pet({item = 129205, id = 1660}) -- Fel Pup
    }
}) -- Ceraxas

map.nodes[26607520] = Rare({
    id = 90437,
    quest = 38030,
    note = L['in_cave'],
    rewards = {
        Achievement({id = 10070, criteria = 28335}),
        Transmog({item = 127322, slot = L['plate']}) -- Fel Burnished Waistguard
    },
    pois = {POI({29607060})}
}) -- Jax'zor

map.nodes[25607680] = Rare({
    id = 90438,
    quest = 38029,
    note = L['in_cave'],
    rewards = {
        Achievement({id = 10070, criteria = 28334}),
        Transmog({item = 127316, slot = L['mail']}) -- Oran's Cuffs of Malice
    },
    pois = {POI({29607060})}
}) -- Lady Oran

map.nodes[26107910] = Rare({
    id = 90442,
    quest = 38032,
    note = L['mistress_thavra_note'],
    rewards = {
        Achievement({id = 10070, criteria = 28337}),
        Transmog({item = 127300, slot = L['cloth']}) -- Shivan Shoulders of Scorn
    },
    pois = {POI({29607060})}
}) -- Mistress Thavra

-- Cindral the Wildfire
map.nodes[44603760] = Rare({
    id = 90519,
    quest = 37990,
    note = L['in_cave'],
    rewards = {
        Achievement({id = 10070, criteria = 28338}),
        Item({item = 128255, quest = 39363}) -- Equipment Blueprint: Ice Cutter
    }
})

map.nodes[22003780] = Rare({
    id = 90777,
    quest = 38028,
    rewards = {
        Toy({item = 122117}) -- Cursed Feather of Ikzan
    },
    pois = {Path({22604000, 20804160, 20803760, 22003780, 22604000})}
}) -- High Priest Ikzan

map.nodes[17404280] = Rare({
    id = 90782,
    quest = 38034,
    rewards = {Achievement({id = 10070, criteria = 28341})}
}) -- Rasthe

map.nodes[23605200] = Rare({
    id = 90884,
    quest = 38262,
    rewards = {
        Achievement({id = 10070, criteria = 28351}),
        Transmog({item = 127307, slot = L['leather']}) -- Battle-Scuffed Spaulders
    }
}) -- Bilkor the Thrower

map.nodes[20404960] = Rare({
    id = 90885,
    quest = 38263,
    rewards = {
        Achievement({id = 10070, criteria = 28352}),
        Transmog({item = 127314, slot = L['mail']}) -- Rogond's Tracking Shoulderguards
    }
}) -- Rogond the Tracker

map.nodes[25204630] = Rare({
    id = 90887,
    quest = 38265,
    note = L['dorg_the_bloody_note'],
    rewards = {
        Achievement({id = 10070, criteria = 28353}),
        Transmog({item = 127301, slot = L['cloth']}) -- Bloody Aberration Strap
    },
    pois = {Path({25204630, 23904730, 23504870, 21504910, 21005110, 21405280})}
}) -- Dorg the Bloody

map.nodes[25604620] = Rare({
    id = 90888,
    quest = 38264,
    rewards = {
        Achievement({id = 10070, criteria = 28354}),
        Transmog({item = 127298, slot = L['cloth']}) -- Blood Infused Leggings
    }
}) -- Drivnul

map.nodes[57002300] = Rare({
    id = 91009,
    quest = 38457,
    rewards = {Achievement({id = 10070, criteria = 28727})}
}) -- Putre'thar

map.nodes[48402860] = Rare({
    id = 91087,
    quest = 38207,
    rewards = {
        Achievement({id = 10070, criteria = 28331}),
        Transmog({item = 127340, slot = L['2h_sword']}) -- Felfire Lit Greatsword
    }
}) -- Zeter'el

map.nodes[40706980] = Rare({
    id = 91093,
    quest = 38209,
    rewards = {
        Achievement({id = 10070, criteria = 28330}), -- Felflame Campfire
        Toy({item = 127652})
    }
}) -- Bramblefell

map.nodes[52802560] = Rare({
    id = 91098,
    quest = 38211,
    rewards = {
        Achievement({id = 10070, criteria = 28332}),
        Transmog({item = 127656, slot = L['cloth']}) -- Fel Singed Wraps
    }
}) -- Felspark

map.nodes[15005420] = Rare({
    id = 91232,
    quest = 38746,
    note = L['commander_kraggoth_note'],
    rewards = {
        Achievement({id = 10070, criteria = 28346}),
        Transmog({item = 127319, slot = L['plate']}) -- Krag'goth's Iron Gauntlets
    }
}) -- Commander Krag'goth

map.nodes[13405680] = Rare({
    id = 91243,
    quest = 38747,
    rewards = {
        Achievement({id = 10070, criteria = 28347}),
        Transmog({item = 127310, slot = L['mail']}) -- Sabatons of Radiating Ire
    }
}) -- Tho'gar Gorefist

map.nodes[16804940] = Rare({
    id = 91374,
    quest = 38282,
    note = L['in_cave'],
    rewards = {
        Achievement({id = 10070, criteria = 28329}),
        Transmog({item = 127336, slot = L['staff']}) -- Rod of the One True Podlord
    },
    pois = {
        POI({17005040}) -- Entrance
    }
}) -- Podlord Wakkawam

map.nodes[47504230] = Rare({
    id = 91695,
    quest = 38400,
    note = L['grand_warlock_netherkurse_note'],
    rewards = {
        Achievement({id = 10070, criteria = 28343}),
        Transmog({item = 127299, slot = L['cloth']}) -- Nethekurse's Robe of Contempt
    },
    pois = {
        Path({
            46204080, 47303980, 48104120, 47504230, 47604330, 46904400,
            46104260, 46204080
        })
    }
}) -- Grand Warlock Nethekurse

map.nodes[49803620] = Rare({
    id = 91727,
    quest = 38411,
    rewards = {
        Achievement({id = 10070, criteria = 28380}),
        Transmog({item = 127323, slot = L['plate']}) -- Bracers of Endless Suffering
    }
}) -- Executor Riloth

map.nodes[52604020] = Rare({
    id = 91871,
    quest = 38430,
    rewards = {
        Achievement({id = 10070, criteria = 28722}),
        Transmog({item = 127326, slot = L['crossbow']}) -- Fel Destroyer Crossbow
    }
}) -- Argosh the Destroyer

map.nodes[26205440] = Rare({
    id = 92197,
    quest = 38496,
    rewards = {
        Achievement({id = 10070, criteria = 28356}),
        Transmog({item = 127335, slot = L['polearm']}) -- Relgor's Master Glaive
    }
}) -- Relgor

map.nodes[53602140] = Rare({
    id = 92274,
    quest = 38557,
    rewards = {
        Achievement({id = 10070, criteria = 28342}),
        Transmog({item = 127297, slot = L['cloth']}) -- Selora's Crown of Thorns
    }
}) -- Painmistress Selora

-- Xanzith the Everlasting
map.nodes[60002100] = Rare({
    id = 92408,
    quest = 38579,
    rewards = {
        Achievement({id = 10070, criteria = 28728}),
        Item({item = 128232, quest = 39356}), -- Equipment Blueprint: High Intensity Fog Lights
        Transmog({item = 127658, slot = L['offhand']}) -- Eye of the Beholder
    }
})

map.nodes[52401920] = Rare({
    id = 92411,
    quest = 38580,
    note = L['overlord_magruth_note'],
    rewards = {
        Achievement({id = 10070, criteria = 28729}),
        Transmog({item = 127320, slot = L['plate']}) -- Mo'gruth's Discarded Parade Helm
    }
}) -- Overlord Ma'gruth

map.nodes[57606720] = Rare({
    id = 92429,
    quest = 38589,
    rewards = {Achievement({id = 10070, criteria = 28357})}
}) -- Broodlord Ixkor

map.nodes[27403260] = Rare({
    id = 92451,
    quest = 37937,
    rewards = {Achievement({id = 10070, criteria = 28340})}
}) -- Varyx the Damned

map.nodes[48807300] = Rare({
    id = 92465,
    quest = 38597,
    note = L['in_cave'],
    rewards = {
        Achievement({id = 10070, criteria = 28361}),
        Transmog({item = 127330, slot = L['fist']}) -- The Black Fang
    },
    pois = {POI({49907440})}
}) -- The Blackfang

map.nodes[62607220] = Rare({
    id = 92495,
    quest = 38600,
    rewards = {
        Achievement({id = 10070, criteria = 28358}),
        Transmog({item = 127315, slot = L['mail']}) -- Glowing Felskull Belt
    }
}) -- Soulslicer

map.nodes[63208000] = Rare({
    id = 92508,
    quest = 38604,
    note = L['in_cave'],
    rewards = {
        Achievement({id = 10070, criteria = 28359}),
        Transmog({item = 127306, slot = L['leather']}) -- Gloomtalon's Spare Kilt
    },
    pois = {POI({62207910})}
}) -- Gloomtalon

map.nodes[52008360] = Rare({
    id = 92517,
    quest = 38605,
    rewards = {Achievement({id = 10070, criteria = 28360})}
}) -- Krell the Serene

-- Belgork
map.nodes[34904710] = Rare({
    id = 92552,
    quest = 38609,
    note = L['in_cave'] .. ' ' .. L['belgork_thromma_note'],
    rewards = {
        Achievement({id = 10070, criteria = 28363}),
        Item({item = 126950, quest = 38932}), -- Equipment Blueprint: Bilge Pump
        Transmog({item = 127650, slot = L['shield']}) -- Belgork's Bastion
    },
    pois = {POI({32104900, 38604420})}
})

map.nodes[34004440] = Rare({
    id = 92574,
    quest = 38620,
    note = L['in_cave'] .. ' ' .. L['belgork_thromma_note'],
    rewards = {
        Achievement({id = 10070, criteria = 28362}),
        Transmog({item = 127327, slot = L['dagger']}) -- Thromma's Gutslicer
    },
    pois = {POI({32104900, 38604420})}
}) -- Thromma the Gutslicer

map.nodes[41007880] = Rare({
    id = 92606,
    quest = 38628,
    rewards = {
        Achievement({id = 10070, criteria = 28364}),
        Transmog({item = 127311, slot = L['mail']}) -- Serpentine Gloves
    }
}) -- Sylissa

map.nodes[41807590] = Rare({
    id = 92627,
    quest = 38631,
    note = L['rendrak_note'],
    rewards = {Achievement({id = 10070, criteria = 28365})}
}) -- Rendrak

map.nodes[39407590] = Rare({
    id = 92636,
    quest = 38632,
    note = L['the_night_haunter_note'],
    rewards = {Achievement({id = 10070, criteria = 28366})},
    pois = {
        POI({
            38507890, 38407230, 42407760, 40607290, 41206890, 38807510,
            42407740, 40607750, 38007930, 38807520, 44307220, 38307210
        })
    }
}) -- The Night Haunter

-- Felsmith Damorka
map.nodes[45804700] = Rare({
    id = 92647,
    quest = 38634,
    rewards = {
        Achievement({id = 10070, criteria = 28726}),
        Item({item = 128258, quest = 39366}), -- Equipment Blueprint: Felsmoke Launchers
        Transmog({item = 127302, slot = L['leather']}) -- Chemical Resistant Apron
    }
})

map.nodes[50807440] = Rare({
    id = 92657,
    quest = 38696,
    note = L['in_cave'],
    rewards = {Achievement({id = 10070, criteria = 28376})},
    pois = {POI({44507750})}
}) -- Bleeding Hollow Horror

map.nodes[34407260] = Rare({
    id = 92694,
    quest = 38654,
    note = L['in_cave'],
    rewards = {
        Achievement({id = 10070, criteria = 28367}),
        Transmog({item = 127305, slot = L['leather']}) -- Frayed Hunting Cowl
    },
    pois = {POI({36307220})}
}) -- The Goreclaw

map.nodes[53908080] = Rare({
    id = 92766,
    quest = 39399,
    requires = ns.requirement.Item(124093),
    note = L['akrrilo_note'],
    rewards = {Achievement({id = 10070, criteria = 28373})},
    pois = {
        POI({55207480}) -- Vendor
    }
}) -- Akrrilo

map.nodes[54408130] = Rare({
    id = 92817,
    quest = 39400,
    requires = ns.requirement.Item(124094),
    note = L['rendarr_note'],
    rewards = {Achievement({id = 10070, criteria = 28374})},
    pois = {
        POI({55207480}) -- Vendor
    }
}) -- Rendarr

map.nodes[54408040] = Rare({
    id = 92819,
    quest = 39379,
    requires = ns.requirement.Item(124095),
    note = L['eyepiercer_note'],
    rewards = {Achievement({id = 10070, criteria = 28375})},
    pois = {
        POI({55207480}) -- Vendor
    }
}) -- Eyepiercer

map.nodes[65603680] = Rare({
    id = 92887,
    quest = 38700,
    rewards = {Achievement({id = 10070, criteria = 28344})}
}) -- Steelsnout

map.nodes[33203580] = Rare({
    id = 92941,
    quest = 38709,
    rewards = {
        Achievement({id = 10070, criteria = 28368}),
        Transmog({item = 127304, slot = L['leather']}) -- Cave Keeper Wraps
    }
}) -- Gorabosh

map.nodes[12605690] = Rare({
    id = 92977,
    quest = 38751,
    note = L['the_iron_houndmaster_note'],
    rewards = {
        Achievement({id = 10070, criteria = 28350}),
        Transmog({item = 127321, slot = L['plate']}) -- Iron Houndmaster's Pauldrons
    }
}) -- The Iron Houndmaster

map.nodes[15705750] = Rare({
    id = 93001,
    quest = 38752,
    note = L['szirek_the_twisted_note'],
    rewards = {
        Achievement({id = 10070, criteria = 28349}),
        Transmog({item = 127296, slot = L['cloth']}) -- Twisted Taboo Handwraps
    }
}) -- Szirek the Twisted

map.nodes[52206520] = Rare({
    id = 93002,
    quest = 38726,
    rewards = {
        Achievement({id = 10070, criteria = 28345}),
        Transmog({item = 127332, slot = L['1h_mace']}) -- Riverbeast Molar Club
    }
}) -- Magwia

map.nodes[20005380] = Rare({
    id = 93028,
    quest = 38736,
    note = L['driss_vile_note'],
    rewards = {
        Achievement({id = 10070, criteria = 28369}),
        Transmog({item = 127331, slot = L['gun']}) -- Double-Scoped Long Rifle
    }
}) -- Driss Vile

map.nodes[16005920] = Rare({
    id = 93057,
    quest = 38750,
    note = L['grannok_note'],
    rewards = {Achievement({id = 10070, criteria = 28348})}
}) -- Grannok

-- Captain Ironbeard
map.nodes[35607990] = Rare({
    id = 93076,
    quest = 38756,
    note = L['in_cave'],
    rewards = {
        Achievement({id = 10070, criteria = 28370}),
        Item({item = 128257, quest = 39365}), -- Equipment Blueprint: Ghostly Spyglass
        Toy({item = 127659}) -- Ghostly Iron Buccaneer's Hat
    },
    pois = {POI({37507600})}
})

map.nodes[34607800] = Rare({
    id = 93125,
    quest = 38764,
    note = L['in_cave'],
    rewards = {
        Achievement({id = 10070, criteria = 28371}),
        Transmog({item = 127317, slot = L['plate']}) -- Murktide's Coveted Chestplate
    },
    pois = {POI({37507600})}
}) -- Glub'glok

map.nodes[28805100] = Rare({
    id = 93168,
    quest = 38775,
    note = L['in_cave'],
    rewards = {Achievement({id = 10070, criteria = 28372})},
    pois = {POI({31005330})}
}) -- Felbore

map.nodes[49606100] = Rare({
    id = 93236,
    quest = 38812,
    rewards = {
        Achievement({id = 10070, criteria = 28725}),
        Transmog({item = 127665, slot = L['leather']}) -- Warpscaled Wristwraps
    }
}) -- Shadowthrash

map.nodes[48605720] = Rare({
    id = 93264,
    quest = 38820,
    rewards = {
        Achievement({id = 10070, criteria = 28730}),
        Transmog({item = 127664, slot = L['plate']}) -- Grokmar's Greaves of Fortification
    }
}) -- Captain Grok'mar

map.nodes[39606820] = Rare({
    id = 93279,
    quest = 38825,
    note = L['in_cave'],
    rewards = {
        Achievement({id = 10070, criteria = 28377}),
        Transmog({item = 127653, slot = L['1h_sword']}) -- Wingblade of Reckoning
    },
    pois = {POI({42306880})}
}) -- Kris'kar the Unredeemed

map.nodes[13405960] = Rare({
    id = 95044,
    quest = 39288,
    note = L['terrorfist_note'],
    rewards = {
        Achievement({id = 10061, criteria = 28221}), --
        Item({item = 128315}), -- Medallion of the Legion
        Item({item = 128025}), -- Rattling Iron Cage
        Mount({item = 116658, id = 611}), -- Tundra Icehoof
        Mount({item = 116669, id = 622}), -- Armored Razorback
        Mount({item = 116780, id = 643}) -- Warsong Direfang
    },
    pois = {
        Path({
            13405960, 13806020, 14206060, 14406180, 14606280, 15206360, 15806380
        })
    }
}) -- Terrorfist

map.nodes[23004020] = Rare({
    id = 95053,
    quest = 39287,
    note = L['deathtalon_note'],
    rewards = {
        Achievement({id = 10061, criteria = 28220}), --
        Item({item = 128315}), -- Medallion of the Legion
        Item({item = 128025}), -- Rattling Iron Cage
        Mount({item = 116658, id = 611}), -- Tundra Icehoof
        Mount({item = 116669, id = 622}), -- Armored Razorback
        Mount({item = 116780, id = 643}) -- Warsong Direfang
    }
}) -- Deathtalon

map.nodes[32607400] = Rare({
    id = 95054,
    quest = 39290,
    note = L['vengeance_note'],
    rewards = {
        Achievement({id = 10061, criteria = 28219}), --
        Item({item = 128315}), -- Medallion of the Legion
        Item({item = 128025}), -- Rattling Iron Cage
        Mount({item = 116658, id = 611}), -- Tundra Icehoof
        Mount({item = 116669, id = 622}), -- Armored Razorback
        Mount({item = 116780, id = 643}) -- Warsong Direfang
    }
}) -- Vengeance

map.nodes[47005260] = Rare({
    id = 95056,
    quest = 39289,
    note = L['doomroller_note'],
    rewards = {
        Achievement({id = 10061, criteria = 28218}), --
        Item({item = 128315}), -- Medallion of the Legion
        Item({item = 128025}), -- Rattling Iron Cage
        Mount({item = 116658, id = 611}), -- Tundra Icehoof
        Mount({item = 116669, id = 622}), -- Armored Razorback
        Mount({item = 116780, id = 643}) -- Warsong Direfang
    }
}) -- Doomroller

map.nodes[69603820] = Rare({
    id = 96235,
    requires = {
        ns.requirement.Achievement(10070), -- Jungle Stalker
        ns.requirement.Reputation(1849, 8) -- Order of the Awakened (Exalted)
    },
    note = L['xemirkol_note'],
    rewards = {
        Achievement({id = 10334}), -- Predator
        Title({id = 59, pattern = '{title} {player}'}) -- Predator
    },
    pois = {
        POI({60404660}), -- Vendor Horde
        POI({57805940}) -- Vendor Alliance
    }
}) -- Xemirkol

map.nodes[83604360] = Rare({
    id = 98283,
    quest = 40105,
    note = L['iron_armada_note'],
    rewards = {
        Achievement({id = 10353, criteria = 28990}), -- Iron Armada
        Toy({item = 108631}) -- Crashin' Thrashin' Roller Controller
    }
}) -- Drakum

map.nodes[80605640] = Rare({
    id = 98284,
    quest = 40106,
    note = L['iron_armada_note'],
    rewards = {
        Achievement({id = 10353, criteria = 28989}), -- Iron Armada
        Toy({item = 108633}) -- Crashin' Thrashin' Cannon Controller
    }
}) -- Gondar

map.nodes[88005580] = Rare({
    id = 98285,
    quest = 40104,
    note = L['iron_armada_note'],
    rewards = {
        Achievement({id = 10353, criteria = 28988}), -- Iron Armada
        Toy({item = 108634}) -- Crashin' Thrashin' Mortar Controller
    }
}) -- Smashum Grabb

local BloodhunterZulk = Rare({
    id = 90936,
    quest = 38266,
    note = L['multiple_spawn_note'],
    rewards = {
        Achievement({id = 10070, criteria = 28355}),
        Transmog({item = 127303, slot = L['leather']}) -- Zulk's Sneaky Slippers
    }
})

map.nodes[24505000] = BloodhunterZulk
map.nodes[21005240] = BloodhunterZulk
map.nodes[22805300] = BloodhunterZulk
map.nodes[22005160] = BloodhunterZulk
map.nodes[23804980] = BloodhunterZulk
map.nodes[23605200] = BloodhunterZulk

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[36304340] = Treasure({
    quest = 37956,
    label = L['strange_sapphire_treasure'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        }), Item({item = 127397, note = L['trinket']}) -- Splendid Skettis Sapphire
    }
}) -- Strange Sapphire

map.nodes[15904970] = Treasure({
    quest = 38208,
    label = L['weathered_axe_treasure'],
    note = L['in_cave'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        }), Transmog({item = 127324, slot = L['1h_axe']}) -- Weathered Memento Axe
    },
    pois = {POI({17105080})}
}) -- Weathered Axe

map.nodes[17005290] = Treasure({
    quest = 38283,
    label = L['stolen_captains_chest_treasure'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        })
    }
}) -- Stolen Captain's Chest

map.nodes[19304090] = Treasure({
    quest = 38320,
    label = L['the_blade_of_kranak_treasure'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        }), Transmog({item = 127338, slot = L['1h_sword']}) -- Guardian Swiftblade of Kra'nak
    }
}) -- The Blade of Kra'nak

map.nodes[28702330] = Treasure({
    quest = 38334,
    label = L['jewel_of_hellfire_treasure'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        }), Toy({item = 127668}) -- Jewel of Hellfire
    }
}) -- Jewel of Hellfire

map.nodes[32407050] = Treasure({
    quest = 38426,
    label = L['tome_of_secrets_treasure'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        }), Toy({item = 127670}) -- Accursed Tome of the Sargerei
    }
}) -- Tome of Secrets

map.nodes[56906510] = Treasure({
    quest = 38591,
    label = L['forgotten_sack_treasure'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        })
    }
}) -- Forgotten Sack

map.nodes[54806930] = Treasure({
    quest = 38593,
    label = L['lodged_hunting_spear_treasure'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        }), Transmog({item = 127334, slot = L['polearm']}) -- Ravager Hunting Spear
    }
}) -- Lodged Hunting Spear

map.nodes[61207570] = Treasure({
    quest = 38601,
    label = L['blackfang_island_cache_treasure'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        })
    }
}) -- Blackfang Island Cache

map.nodes[62007080] = Treasure({
    quest = 38602,
    label = L['crystallized_fel_spike_treasure'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        }), Item({item = 128217, note = L['trinket']}) -- Fel Shard
    }
}) -- Crystallized Fel Spike

map.nodes[30507200] = Treasure({
    quest = 38629,
    label = L['polished_crystal_treasure'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        }), Item({item = 127389}) -- Polished Crystal
    }
}) -- Polished Crystal

map.nodes[40607980] = Treasure({
    quest = 38638,
    label = L['snake_charmers_flute_treasure'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        }), Transmog({item = 127333, slot = L['2h_mace']}) -- Ogra'mal Snake Charming Flute
    }
}) -- Snake Charmer's Flute

map.nodes[40807550] = Treasure({
    quest = 38639,
    label = L['the_perfect_blossom_treasure'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        }), Toy({item = 127766}) -- The Perfect Blossom
    }
}) -- The Perfect Blossom

map.nodes[37104620] = Treasure({
    quest = 38640,
    label = L['pale_removal_equipment_treasure'],
    note = L['in_cave'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        })
    },
    pois = {POI({38604420})}
}) -- Pale Removal Equipment

map.nodes[41507340] = Treasure({
    quest = 38657,
    label = L['forgotten_champions_blade_treasure'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        }), Transmog({item = 127339, slot = L['2h_sword']}) -- Forgotten Champion's Blade
    }
}) -- Forgotten Champion's Blade

map.nodes[20004780] = Treasure({
    quest = 38678,
    label = L['bleeding_hollow_warchest_treasure'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        })
    }
}) -- Bleeding Hollow Warchest

map.nodes[58502540] = Treasure({
    quest = 38679,
    label = L['jewel_of_the_fallen_star_treasure'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        })
    }
}) -- Jewel of the Fallen Star

map.nodes[62502060] = Treasure({
    quest = 38682,
    label = L['censer_of_torment_treasure'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        }), Item({item = 127401, note = L['trinket']}) -- Tormented Skull
    }
}) -- Censer of Torment

map.nodes[26804420] = Treasure({
    quest = 38683,
    label = L['looted_bleeding_hollow_treasure_treasure'],
    requires = ns.requirement.Quest(requiredQuests['bleeding hollow']),
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        }), Toy({item = 127709}) -- Throbbing Blood Orb
    }
}) -- Looted Bleeding Hollow Treasure

map.nodes[51802430] = Treasure({
    quest = 38686,
    label = L['rune_etched_femur_treasure'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        }), Transmog({item = 127341, slot = L['wand']}) -- Rune-Etched Femur
    }
}) -- Rune Etched Femur

map.nodes[64504210] = Treasure({
    quest = 38701,
    label = L['strange_fruit_treasure'],
    note = L['strange_fruit_note'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        }), Item({item = 127396}), -- Strange Fruit
        Toy({item = 127394}) -- Podling Camouflage
    }
}) -- Strange Fruit

map.nodes[50008120] = Treasure({
    quest = 38702,
    label = L['discarded_helm_treasure'],
    note = L['in_cave'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        }), Transmog({item = 127312, slot = L['mail']}) -- Fallen Adventurer's Helm
    },
    pois = {POI({51207960})}
}) -- Discarded Helm

map.nodes[50007970] = Treasure({
    quest = 38703,
    label = L['scouts_belongings_treasure'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        }), Transmog({item = 127354, slot = L['cloak']}) -- Scout's Spy Cloak
    }
}) -- Scout's Belongings

map.nodes[69705600] = Treasure({
    quest = 38704,
    label = L['forgotten_iron_horde_supplies_treasure'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        })
    }
}) -- Forgotten Iron Horde Supplies

map.nodes[48007040] = Treasure({
    quest = 38705,
    label = L['crystallized_essence_of_the_elements_treasure'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        }), Transmog({item = 127329, slot = L['fist']}) -- Element-Infused Knuckles
    }
}) -- Crystallized Essence of the Elements

map.nodes[50906490] = Treasure({
    quest = 38731,
    label = L['overgrown_relic_treasure'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        }), Item({item = 127412, note = L['ring']}) -- Luminous Relic Ring
    }
}) -- Overgrown Relic

map.nodes[31503110] = Treasure({
    quest = 38732,
    label = L['jeweled_arakkoa_effigy_treasure'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        }), Item({item = 127413}) -- Jeweled Arakkoa Effigy
    }
}) -- Jeweled Arakkoa Effigy

map.nodes[25305020] = Treasure({
    quest = 38735,
    label = L['borrowed_enchanted_spyglass_treasure'],
    note = L['tower_chest_note'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        }), Item({item = 128222, note = L['trinket']}) -- Smokeglass Lens Spyglass
    }
}) -- 'Borrowed' Enchanted Spyglass

map.nodes[46307270] = Treasure({
    quest = 38739,
    label = L['mysterious_corrupted_obelist_treasure'],
    note = L['in_cave'],
    requires = ns.requirement.Quest(requiredQuests['cipher of damnation']),
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        }), Item({item = 128320}) -- Corrupted Primal Obelisk
    },
    pois = {POI({47307070})}
}) -- Mysterious Corrupted Obelisk

map.nodes[63302810] = Treasure({
    quest = 38740,
    label = L['forgotten_shard_of_the_cipher_treasure'],
    requires = ns.requirement.Quest(requiredQuests['cipher of damnation']),
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        }), Pet({item = 128309, id = 1690}) -- Shard of Cyrukh
    }
}) -- Forgotten Shard of the Cipher

map.nodes[26506290] = Treasure({
    quest = 38741,
    label = L['looted_bleeding_hollow_treasure_treasure'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        })
    }
}) -- Looted Bleeding Hollow Treasure

map.nodes[34703470] = Treasure({
    quest = 38742,
    label = L['skull_of_the_mad_chief_treasure'],
    note = L['in_cave'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        }), Toy({item = 127669}) -- Skull of the Mad Chief
    },
    pois = {POI({32503730})}
}) -- Skull of the Mad Chief

map.nodes[15505440] = Treasure({
    quest = 38754,
    label = L['axe_of_the_weeping_wolf_treasure'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        }), Transmog({item = 127325, slot = L['2h_axe']}) -- Axe of the Weeping Wolf
    }
}) -- Axe of the Weeping Wolf

map.nodes[17305700] = Treasure({
    quest = 38755,
    label = L['spoils_of_war_treasure'],
    note = L['spoils_of_war_note'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        })
    }
}) -- Spoils of War

map.nodes[16005940] = Treasure({
    quest = 38757,
    label = L['the_eye_of_grannok_treasure'],
    note = L['the_eye_of_grannok_note'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        }), Item({item = 128220, note = L['trinket']}) -- Grannok's Lidless Eye
    },
    pois = {POI({16405860})}
}) -- The Eye of Grannok

map.nodes[35907860] = Treasure({
    quest = 38758,
    label = L['ironbeards_treasure_treasure'],
    note = L['in_cave'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        })
    },
    pois = {POI({37607590})}
}) -- Ironbeard's Treasure

map.nodes[33907810] = Treasure({
    quest = 38760,
    label = L['stashed_iron_sea_booty_treasure'],
    note = L['in_cave'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        })
    },
    pois = {POI({37607590})}
}) -- Stashed Iron Sea Booty

map.nodes[35007720] = Treasure({
    quest = 38761,
    label = L['stashed_iron_sea_booty_treasure'],
    note = L['in_cave'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        })
    },
    pois = {POI({37607590})}
}) -- Stashed Iron Sea Booty

map.nodes[34507830] = Treasure({
    quest = 38762,
    label = L['stashed_iron_sea_booty_treasure'],
    note = L['in_cave'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        })
    },
    pois = {POI({37607590})}
}) -- Stashed Iron Sea Booty

map.nodes[46903670] = Treasure({
    quest = 38771,
    label = L['book_of_zyzzix_treasure'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        }), Transmog({item = 127347, slot = L['offhand']}) -- Resonating Tome of Zyzzix
    }
}) -- Book of Zyzzix

map.nodes[46904440] = Treasure({
    quest = 38773,
    label = L['fel_drenched_satchel_treasure'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        }), Transmog({item = 128218, slot = L['cosmetic']}) -- Fel-Proof Goggles
    }
}) -- Fel-Drenched Satchel

map.nodes[46804210] = Treasure({
    quest = 38776,
    label = L['sacrificial_blade_treasure'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        }), Transmog({item = 127328, slot = L['dagger']}) -- Feltwisted Sacrificial Blade
    }
}) -- Sacrificial Blade

map.nodes[73604320] = Treasure({
    quest = 38779,
    label = L['stashed_bleeding_hollow_loot_treasure'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        })
    }
}) -- Stashed Bleeding Hollow Loot

map.nodes[37808080] = Treasure({
    quest = 38788,
    label = L['brazier_of_awakening_treasure'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        }), Item({item = 127770}) -- Brazier of Awakening
    }
}) -- Brazier of Awakening

map.nodes[49907680] = Treasure({
    quest = 38809,
    label = L['bleeding_hollow_mushroom_stash_treasure'],
    note = L['in_cave'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        }), Toy({item = 128223}) -- Bottomless Stygana Mushroom Brew
    },
    pois = {POI({44607750})}
}) -- Bleeding Hollow Mushroom Stash

map.nodes[48607530] = Treasure({
    quest = 38814,
    label = L['looted_mystical_staff_treasure'],
    note = L['in_cave'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        }), Transmog({item = 127337, slot = L['staff']}) -- Emanating Staff of Shadow
    },
    pois = {POI({44607750})}
}) -- Looted Mystical Staff

map.nodes[43203830] = Treasure({
    quest = 38821,
    label = L['the_commanders_shield_treasure'],
    note = L['the_commanders_shield_note'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        }), Transmog({item = 127348, slot = L['shield']}) -- Commander's Citadel Shield
    },
    pois = {POI({42203780})}
}) -- The Commander's Shield

map.nodes[42903530] = Treasure({
    quest = 38822,
    label = L['dazzling_rod_treasure'],
    note = L['tower_chest_note'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        }), Toy({item = 127859}) -- Dazzling Rod
    },
    pois = {POI({43003580})}
}) -- Dazzling Rod

map.nodes[28903460] = Treasure({
    quest = 38863,
    label = L['partially_mined_apexis_crystal_treasure'],
    note = L['in_cave'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        })
    },
    pois = {POI({29203460})}
}) -- Partially Mined Apexis Crystal

map.nodes[51603250] = Treasure({
    quest = 39075,
    label = L['fel_tainted_apexis_formation_treasure'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        })
    }
}) -- Fel-Tainted Apexis Formation

map.nodes[65908500] = Treasure({
    quest = 39469,
    label = L['bejeweled_egg_treasure'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        })
    }
}) -- Bejeweled Egg

map.nodes[55009070] = Treasure({
    quest = 39470,
    label = L['dead_mans_chest_treasure'],
    rewards = {
        Achievement({
            id = 10262,
            criteria = {
                {id = 1, qty = true, suffix = L['treasures_discovered']}
            }
        })
    }
}) -- Dead Man's Chest

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[26103160] = PetBattle({
    id = 94601,
    rewards = {Achievement({id = 10052, criteria = 28796})}
}) -- Felsworn Sentry

map.nodes[53106520] = PetBattle({
    id = 94637,
    rewards = {Achievement({id = 10052, criteria = 28797})}
}) -- Corrupted Thundertail

map.nodes[25107620] = PetBattle({
    id = 94638,
    note = L['in_cave'],
    rewards = {Achievement({id = 10052, criteria = 28798})},
    pois = {POI({29607060})}
}) -- Chaos Pup

map.nodes[31403810] = PetBattle({
    id = 94639,
    rewards = {Achievement({id = 10052, criteria = 28799})}
}) -- Cursed Spirit

map.nodes[55908080] = PetBattle({
    id = 94640,
    rewards = {Achievement({id = 10052, criteria = 28800})}
}) -- Felfly

map.nodes[43208450] = PetBattle({
    id = 94641,
    rewards = {Achievement({id = 10052, criteria = 28801})}
}) -- Tainted Maulclaw

map.nodes[57703740] = PetBattle({
    id = 94642,
    rewards = {Achievement({id = 10052, criteria = 28802})}
}) -- Direflame

map.nodes[42307180] = PetBattle({
    id = 94643,
    rewards = {Achievement({id = 10052, criteria = 28803})}
}) -- Mirecroak

map.nodes[54002990] = PetBattle({
    id = 94644,
    rewards = {Achievement({id = 10052, criteria = 28804})}
}) -- Dark Gazer

map.nodes[16004480] = PetBattle({
    id = 94645,
    rewards = {Achievement({id = 10052, criteria = 28805})}
}) -- Bleakclaw

map.nodes[44004570] = PetBattle({
    id = 94646,
    rewards = {Achievement({id = 10052, criteria = 28806})}
}) -- Vile Blood of Draenor

map.nodes[46405300] = PetBattle({
    id = 94647,
    rewards = {Achievement({id = 10052, criteria = 28807})}
}) -- Dreadwalker

map.nodes[48003500] = PetBattle({
    id = 94648,
    rewards = {Achievement({id = 10052, criteria = 28810})}
}) -- Netherfist

map.nodes[48503130] = PetBattle({
    id = 94649,
    rewards = {Achievement({id = 10052, criteria = 28808})}
}) -- Skrillix

map.nodes[75403740] = PetBattle({
    id = 94650,
    rewards = {Achievement({id = 10052, criteria = 28809})}
}) -- Defiled Earth
