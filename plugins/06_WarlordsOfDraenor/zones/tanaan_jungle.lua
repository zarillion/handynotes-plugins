-- @todo Treasures, Predator FOS, Pets?, Naval Mechanics achiev?, quest ids for npcs

-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

local Rare = ns.node.Rare

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

local Path = ns.poi.Path
local POI = ns.poi.POI

-------------------------------------------------------------------------------

local map = Map({ id=534, settings=true })

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[23004020] = Rare({
    id=95053,
    quest=39287,
    note=L["deathtalon_note"],
    rewards={
        Achievement({id=10061, criteria=28220}),
        Item({item=128315}), -- Medallion of the Legion
        Item({item=128025}), -- Rattling Iron Cage
        Mount({item=116658, id=611}), -- Tundra Icehoof
        Mount({item=116669, id=622}), -- Armored Razorback
        Mount({item=116780, id=643}) -- Warsong Direfang
    }
}) -- Deathtalon

map.nodes[47005260] = Rare({
    id=95056,
    quest=39289,
    note=L["doomroller_note"],
    rewards={
        Achievement({id=10061, criteria=28218}),
        Item({item=128315}), -- Medallion of the Legion
        Item({item=128025}), -- Rattling Iron Cage
        Mount({item=116658, id=611}), -- Tundra Icehoof
        Mount({item=116669, id=622}), -- Armored Razorback
        Mount({item=116780, id=643}) -- Warsong Direfang
    }
}) -- Doomroller

map.nodes[13405960] = Rare({
    id=95044,
    quest=39288,
    note=L["terrorfist_note"],
    rewards={
        Achievement({id=10061, criteria=28221}),
        Item({item=128315}), -- Medallion of the Legion
        Item({item=128025}), -- Rattling Iron Cage
        Mount({item=116658, id=611}), -- Tundra Icehoof
        Mount({item=116669, id=622}), -- Armored Razorback
        Mount({item=116780, id=643}) -- Warsong Direfang
    },
    pois={
        Path({13405960, 13806020, 14206060, 14406180, 14606280, 15206360, 15806380})
    }
}) -- Terrorfist

map.nodes[32607400] = Rare({
    id=95054,
    quest=39290,
    note=L["vengeance_note"],
    rewards={
        Achievement({id=10061, criteria=28219}),
        Item({item=128315}), -- Medallion of the Legion
        Item({item=128025}), -- Rattling Iron Cage
        Mount({item=116658, id=611}), -- Tundra Icehoof
        Mount({item=116669, id=622}), -- Armored Razorback
        Mount({item=116780, id=643}) -- Warsong Direfang
    }
}) -- Vengeance

map.nodes[83604360] = Rare({
    id=98283,
    note=L["iron_armada_note"],
    rewards={
        Toy({item=108631}), -- Crashin' Thrashin' Roller Controller
    }
}) -- Drakum

map.nodes[80605640] = Rare({
    id=98284,
    note=L["iron_armada_note"],
    rewards={
        Toy({item=108633}), -- Crashin' Thrashin' Cannon Controller
    }
}) -- Gondar

map.nodes[88005580] = Rare({
    id=98285,
    note=L["iron_armada_note"],
    rewards={
        Toy({item=108634}), -- Crashin' Thrashin' Mortar Controller
    }
}) -- Smashum Grabb

map.nodes[51004600] = Rare({
    id=89675,
    note=L["commander_orgmok_note"],
    rewards={
        Achievement({id=10070, criteria=28731}),
        Transmog({item=127313, slot=L["mail"]}) -- Org'mok's Riding Chaps
    },
    pois={
        Path({51004600, 50904750, 49704810, 48504680, 47404670, 47004540, 47804440, 49304450, 50304360, 50504470, 51004600})
    }
}) -- Commander Org'mok

map.nodes[43003690] = Rare({
    id=90024,
    rewards={
        Achievement({id=10070, criteria=28339}),
        Transmog({item=127318, slot=L["plate"]}) -- Iron Cleated Warboots
    }
}) -- Sergeant Mor'grak

map.nodes[31207220] = Rare({
    id=90429,
    rewards={
        Achievement({id=10070, criteria=28333}),
        Toy({item=127655}), -- Sassy Imp
    }
}) -- Imp-Master Valessa

map.nodes[35607990] = Rare({
    id=93076,
    note=L["in_cave"],
    rewards={
        Achievement({id=10070, criteria=28370}),
        Item({item=128257, quest=39365}), -- Equipment Blueprint: Ghostly Spyglass
        Toy({item=127659}), -- Ghostly Iron Buccaneer's Hat
    },
    pois={
        POI({37507600}) -- Entrance
    }
}) -- Captain Ironbeard

map.nodes[40706980] = Rare({
    id=91093,
    rewards={
        Achievement({id=10070, criteria=28330}),
        Toy({item=127652}), -- Felflame Campfire
    }
}) -- Bramblefell

map.nodes[22003780] = Rare({
    id=90777,
    rewards={
        Toy({item=122117}), -- Cursed Feather of Ikzan
    },
    pois={
        Path({22604000, 20804160, 20803760, 22003780, 22604000})
    }
}) -- High Priest Ikzan

map.nodes[39603260] = Rare({
    id=90094,
    rewards={
        Achievement({id=10070, criteria=28724}),
        Transmog({item=127309, slot=L["mail"]}) -- Korak's Reinforced Iron Tunic
    }
}) -- Harbormaster Korak

map.nodes[37003300] = Rare({
    id=90122,
    rewards={
        Achievement({id=10070, criteria=28723}),
        Item({item=128252, quest=39360}), -- Equipment Blueprint: True Iron Rudder
        Transmog({item=127308, slot=L["leather"]}) -- Zoug's Lifting Belt
    }
}) -- Zoug the Heavy

map.nodes[30906800] = Rare({
    id=90434,
    note=L["in_cave"],
    rewards={
        Achievement({id=10070, criteria=28336}),
    }
}) -- Ceraxas

map.nodes[26607520] = Rare({
    id=90437,
    note=L["in_cave"],
    rewards={
        Achievement({id=10070, criteria=28335}),
        Transmog({item=127322, slot=L["plate"]}) -- Fel Burnished Waistguard
    },
    pois={
        POI({29607060}) -- Entrance
    }
}) -- Jax'zor

map.nodes[25607680] = Rare({
    id=90438,
    note=L["in_cave"],
    rewards={
        Achievement({id=10070, criteria=28334}),
        Transmog({item=127316, slot=L["mail"]}) -- Oran's Cuffs of Malice
    },
    pois={
        POI({29607060}) -- Entrance
    }
}) -- Lady Oran

map.nodes[26107910] = Rare({
    id=90442,
    note=L["mistress_thavra_note"],
    rewards={
        Achievement({id=10070, criteria=28337}),
        Transmog({item=127300, slot=L["cloth"]}) -- Shivan Shoulders of Scorn
    },
    pois={
        POI({29607060}) -- Entrance
    }
}) -- Mistress Thavra

map.nodes[44603760] = Rare({
    id=90519,
    note=L["in_cave"],
    rewards={
        Item({item=128255, quest=39363}), -- Equipment Blueprint: Ice Cutter
        Achievement({id=10070, criteria=28338}),
    }
}) -- Cindral the Wildfire

map.nodes[17404280] = Rare({
    id=90782,
    rewards={
        Achievement({id=10070, criteria=28341}),
    }
}) -- Rasthe

map.nodes[23605200] = Rare({
    id=90884,
    rewards={
        Achievement({id=10070, criteria=28351}),
        Transmog({item=127307, slot=L["leather"]}) -- Battle-Scuffed Spaulders
    }
}) -- Bilkor the Thrower

map.nodes[20404960] = Rare({
    id=90885,
    rewards={
        Achievement({id=10070, criteria=28352}),
        Transmog({item=127314, slot=L["mail"]}) -- Rogond's Tracking Shoulderguards
    }
}) -- Rogond the Tracker

map.nodes[25204630] = Rare({
    id=90887,
    note=L["dorg_the_bloody_note"],
    rewards={
        Achievement({id=10070, criteria=28353}),
        Transmog({item=127301, slot=L["cloth"]}) -- Bloody Aberration Strap
    },
    pois={
        Path({25204630, 23904730, 23504870, 21504910, 21005110, 21405280})
    }
}) -- Dorg the Bloody

map.nodes[25604620] = Rare({
    id=90888,
    rewards={
        Achievement({id=10070, criteria=28354}),
        Transmog({item=127298, slot=L["cloth"]}) -- Blood Infused Leggings
    }
}) -- Drivnul

map.nodes[24505000] = Rare({
    id=90936,
    note=L["bloodhunter_zulk_note"],
    rewards={
        Achievement({id=10070, criteria=28355}),
        Transmog({item=127303, slot=L["leather"]}) -- Zulk's Sneaky Slippers
    },
    pois={
        POI({21005240}), -- Spawn
        POI({22805300}), -- Spawn
        POI({22005160}), -- Spawn
        POI({23804980}), -- Spawn
        POI({23605200}) -- Spawn
    }
}) -- Bloodhunter Zulk

map.nodes[57002300] = Rare({
    id=91009,
    rewards={
        Achievement({id=10070, criteria=28727}),
    }
}) -- Putre'thar

map.nodes[48402860] = Rare({
    id=91087,
    rewards={
        Achievement({id=10070, criteria=28331}),
        Transmog({item=127340, slot=L["2h_sword"]}), -- Felfire Lit Greatsword
    }
}) -- Zeter'el

map.nodes[52802560] = Rare({
    id=91098,
    rewards={
        Achievement({id=10070, criteria=28332}),
        Transmog({item=127656, slot=L["cloth"]}) -- Fel Singed Wraps
    }
}) -- Felspark

map.nodes[15005420] = Rare({
    id=91232,
    note=L["commander_kraggoth_note"],
    rewards={
        Achievement({id=10070, criteria=28346}),
        Transmog({item=127319, slot=L["plate"]}) -- Krag'goth's Iron Gauntlets
    }
}) -- Commander Krag'goth

map.nodes[13405680] = Rare({
    id=91243,
    rewards={
        Achievement({id=10070, criteria=28347}),
        Transmog({item=127310, slot=L["mail"]}) -- Sabatons of Radiating Ire
    }
}) -- Tho'gar Gorefist

map.nodes[16804940] = Rare({
    id=91374,
    note=L["in_cave"],
    rewards={
        Achievement({id=10070, criteria=28329}),
        Transmog({item=127336, slot=L["staff"]}), -- Rod of the One True Podlord
    },
    pois={
        POI({17005040}) -- Entrance
    }
}) -- Podlord Wakkawam

map.nodes[47504230] = Rare({
    id=91695,
    note=L["grand_warlock_netherkurse_note"],
    rewards={
        Achievement({id=10070, criteria=28343}),
        Transmog({item=127299, slot=L["cloth"]}) -- Nethekurse's Robe of Contempt
    },
    pois={
        Path({46204080, 47303980, 48104120, 47504230, 47604330, 46904400, 46104260, 46204080})
    }
}) -- Grand Warlock Nethekurse

map.nodes[49803620] = Rare({
    id=91727,
    rewards={
        Achievement({id=10070, criteria=28380}),
        Transmog({item=127323, slot=L["plate"]}) -- Bracers of Endless Suffering
    }
}) -- Executor Riloth

map.nodes[52604020] = Rare({
    id=91871,
    rewards={
        Achievement({id=10070, criteria=28722}),
        Transmog({item=127326, slot=L["crossbow"]}), -- Fel Destroyer Crossbow
    }
}) -- Argosh the Destroyer

map.nodes[26205440] = Rare({
    id=92197,
    rewards={
        Achievement({id=10070, criteria=28356}),
        Transmog({item=127335, slot=L["polearm"]}) -- Relgor's Master Glaive
    }
}) -- Relgor

map.nodes[53602140] = Rare({
    id=92274,
    rewards={
        Achievement({id=10070, criteria=28342}),
        Transmog({item=127297, slot=L["cloth"]}) -- Selora's Crown of Thorns
    }
}) -- Painmistress Selora

map.nodes[60002100] = Rare({
    id=92408,
    rewards={
        Achievement({id=10070, criteria=28728}),
        Item({item=128232, quest=39356}), -- Equipment Blueprint: High Intensity Fog Lights
        Transmog({item=127658, slot=L["offhand"]}) -- Eye of the Beholder
    }
}) -- Xanzith the Everlasting

map.nodes[52401920] = Rare({
    id=92411,
    note=L["overlord_magruth_note"],
    rewards={
        Achievement({id=10070, criteria=28729}),
        Transmog({item=127320, slot=L["plate"]}) -- Mo'gruth's Discarded Parade Helm
    }
}) -- Overlord Ma'gruth

map.nodes[57606720] = Rare({
    id=92429,
    rewards={
        Achievement({id=10070, criteria=28357}),
    }
}) -- Broodlord Ixkor

map.nodes[27403260] = Rare({
    id=92451,
    rewards={
        Achievement({id=10070, criteria=28340}),
    }
}) -- Varyx the Damned

map.nodes[48807300] = Rare({
    id=92465,
    note=L["in_cave"],
    rewards={
        Achievement({id=10070, criteria=28361}),
        Transmog({item=127330, slot=L["fist"]}), -- The Black Fang
    },
    pois={
        POI({49907440}) -- Entrance
    }
}) -- The Blackfang

map.nodes[62607220] = Rare({
    id=92495,
    rewards={
        Achievement({id=10070, criteria=28358}),
        Transmog({item=127315, slot=L["mail"]}) -- Glowing Felskull Belt
    }
}) -- Soulslicer

map.nodes[63208000] = Rare({
    id=92508,
    note=L["in_cave"],
    rewards={
        Achievement({id=10070, criteria=28359}),
        Transmog({item=127306, slot=L["leather"]}) -- Gloomtalon's Spare Kilt
    },
    pois={
        POI({62207910}) -- Entrance
    }
}) -- Gloomtalon

map.nodes[52008360] = Rare({
    id=92517,
    rewards={
        Achievement({id=10070, criteria=28360}),
    }
}) -- Krell the Serene

map.nodes[34904710] = Rare({
    id=92552,
    note=L["in_cave"]..' '..L["belgork_thromma_note"],
    rewards={
        Achievement({id=10070, criteria=28363}),
        Item({item=126950, quest=38932}), -- Equipment Blueprint: Bilge Pump
        Transmog({item=127650, slot=L["shield"]}), -- Belgork's Bastion
    },
    pois={
        POI({32104900}), -- Entrance
        POI({38604420}) -- Entrance
    }
}) -- Belgork

map.nodes[34004440] = Rare({
    id=92574,
    note=L["in_cave"]..' '..L["belgork_thromma_note"],
    rewards={
        Achievement({id=10070, criteria=28362}),
        Transmog({item=127327, slot=L["dagger"]}), -- Thromma's Gutslicer
    },
    pois={
        POI({32104900}), -- Entrance
        POI({38604420}) -- Entrance
    }
}) -- Thromma the Gutslicer

map.nodes[41007880] = Rare({
    id=92606,
    rewards={
        Achievement({id=10070, criteria=28364}),
        Transmog({item=127311, slot=L["mail"]}) -- Serpentine Gloves
    }
}) -- Sylissa

map.nodes[41807590] = Rare({
    id=92627,
    note=L["rendrak_note"],
    rewards={
        Achievement({id=10070, criteria=28365}),
    }
}) -- Rendrak

map.nodes[39407590] = Rare({
    id=92636,
    note=L["the_night_haunter_note"],
    rewards={
        Achievement({id=10070, criteria=28366}),
    },
    pois={
        POI({38507890}), -- The Night Haunter
        POI({38407230}), -- The Night Haunter
        POI({42407760}), -- The Night Haunter
        POI({40607290}), -- The Night Haunter
        POI({41206890}), -- The Night Haunter
        POI({38807510}), -- The Night Haunter
        POI({42407740}), -- The Night Haunter
        POI({40607750}), -- The Night Haunter
        POI({38007930}), -- The Night Haunter
        POI({38807520}), -- The Night Haunter
        POI({44307220}), -- The Night Haunter
        POI({38307210}) -- The Night Haunter
    }
}) -- The Night Haunter

map.nodes[45804700] = Rare({
    id=92647,
    rewards={
        Achievement({id=10070, criteria=28726}),
        Item({item=128258, quest=39366}), -- Equipment Blueprint: Felsmoke Launchers
        Transmog({item=127302, slot=L["leather"]}) -- Chemical Resistant Apron
    }
}) -- Felsmith Damorka

map.nodes[50807440] = Rare({
    id=92657,
    note=L["in_cave"],
    rewards={
        Achievement({id=10070, criteria=28376}),
    },
    pois={
        POI({44507750}) -- Entrance
    }
}) -- Bleeding Hollow Horror

map.nodes[34407260] = Rare({
    id=92694,
    note=L["in_cave"],
    rewards={
        Achievement({id=10070, criteria=28367}),
        Transmog({item=127305, slot=L["leather"]}) -- Frayed Hunting Cowl
    },
    pois={
        POI({36307220}) -- Entrance
    }
}) -- The Goreclaw

map.nodes[53908080] = Rare({
    id=92766,
    note=L["akrrilo_note"],
    rewards={
        Achievement({id=10070, criteria=28373})
    },
    pois={
        POI({55207480}) -- Vendor
    }
}) -- Akrrilo

map.nodes[54408130] = Rare({
    id=92817,
    note=L["rendarr_note"],
    rewards={
        Achievement({id=10070, criteria=28374})
    },
    pois={
        POI({55207480}) -- Vendor
    }
}) -- Rendarr

map.nodes[54408040] = Rare({
    id=92819,
    note=L["eyepiercer_note"],
    rewards={
        Achievement({id=10070, criteria=28375})
    },
    pois={
        POI({55207480}) -- Vendor
    }
}) -- Eyepiercer

map.nodes[65603680] = Rare({
    id=92887,
    rewards={
        Achievement({id=10070, criteria=28344}),
    }
}) -- Steelsnout

map.nodes[33203580] = Rare({
    id=92941,
    rewards={
        Achievement({id=10070, criteria=28368}),
        Transmog({item=127304, slot=L["leather"]}) -- Cave Keeper Wraps
    }
}) -- Gorabosh

map.nodes[12605690] = Rare({
    id=92977,
    note=L["the_iron_houndmaster_note"],
    rewards={
        Achievement({id=10070, criteria=28350}),
        Transmog({item=127321, slot=L["plate"]}) -- Iron Houndmaster's Pauldrons
    }
}) -- The Iron Houndmaster

map.nodes[15705750] = Rare({
    id=93001,
    note=L["szirek_the_twisted_note"],
    rewards={
        Achievement({id=10070, criteria=28349}),
        Transmog({item=127296, slot=L["cloth"]}) -- Twisted Taboo Handwraps
    }
}) -- Szirek the Twisted

map.nodes[52206520] = Rare({
    id=93002,
    rewards={
        Achievement({id=10070, criteria=28345}),
        Transmog({item=127332, slot=L["1h_mace"]}), -- Riverbeast Molar Club
    }
}) -- Magwia

map.nodes[20005380] = Rare({
    id=93028,
    note=L["driss_vile_note"],
    rewards={
        Achievement({id=10070, criteria=28369}),
        Transmog({item=127331, slot=L["gun"]}), -- Double-Scoped Long Rifle
    }
}) -- Driss Vile

map.nodes[16005920] = Rare({
    id=93057,
    note=L["grannok_note"],
    rewards={
        Achievement({id=10070, criteria=28348}),
    }
}) -- Grannok

map.nodes[34607800] = Rare({
    id=93125,
    note=L["in_cave"],
    rewards={
        Achievement({id=10070, criteria=28371}),
        Transmog({item=127317, slot=L["plate"]}) -- Murktide's Coveted Chestplate
    },
    pois={
        POI({37507600}) -- Entrance
    }
}) -- Glub'glok

map.nodes[28805100] = Rare({
    id=93168,
    note=L["in_cave"],
    rewards={
        Achievement({id=10070, criteria=28372}),
    },
    pois={
        POI({31005330}) -- Entrance
    }
}) -- Felbore

map.nodes[49606100] = Rare({
    id=93236,
    rewards={
        Achievement({id=10070, criteria=28725}),
        Transmog({item=127665, slot=L["leather"]}) -- Warpscaled Wristwraps
    }
}) -- Shadowthrash

map.nodes[48605720] = Rare({
    id=93264,
    rewards={
        Achievement({id=10070, criteria=28730}),
        Transmog({item=127664, slot=L["plate"]}) -- Grokmar's Greaves of Fortification
    }
}) -- Captain Grok'mar

map.nodes[39606820] = Rare({
    id=93279,
    note=L["in_cave"],
    rewards={
        Achievement({id=10070, criteria=28377}),
        Transmog({item=127653, slot=L["1h_sword"]}), -- Wingblade of Reckoning
    },
    pois={
        POI({42306880}) -- Entrance
    }
}) -- Kris'kar the Unredeemed
