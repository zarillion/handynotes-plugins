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

local Achievement = ns.reward.Achievement
local Currency = ns.reward.Currency
local Follower = ns.reward.Follower
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Quest = ns.reward.Quest
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

local Path = ns.poi.Path
local POI = ns.poi.POI

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({id = 535, settings = true})
local tombOfSouls = Map({id = 537})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[53802580] = Rare({
    id = 77529,
    quest = 34135,
    rewards = {
        Transmog({item = 112263, slot = L['mail']}) -- Yazheera's Burning Bracers
    }
}) -- Yazheera the Incinerator

map.nodes[46205500] = Rare({
    id = 77614,
    quest = 34145,
    rewards = {
        Transmog({item = 113288, slot = L['dagger']}), -- Shard of Contempt
        Transmog({item = 113287, slot = L['1h_sword']}) -- Shard of Scorn
    }
}) -- Frenzied Golem

map.nodes[37607040] = Rare({
    id = 77620,
    quest = 34165,
    rewards = {
        Transmog({item = 116123, slot = L['1h_mace']}) -- Fleshrender's Painbringer
    }
}) -- Cro Fleshrender

map.nodes[75405080] = Rare({
    id = 77626,
    quest = 34167,
    rewards = {
        Transmog({item = 112369, slot = L['cloak']}) -- Hami-Down Cloak
    },
    pois = {Path({75405080, 76705070, 77005260, 78005100})}
}) -- Hen-Mother Hami

map.nodes[61404920] = Rare({
    id = 77715,
    quest = 34185,
    rewards = {
        Transmog({item = 116124, slot = L['mail']}) -- Scaled Riverbeast Vest
    },
    pois = {
        Path({
            61404920, 60604800, 61304650, 62704480, 63904330, 65304330,
            65304550, 64004530, 63104590, 62304730, 61404920
        })
    }
}) -- Hammertooth

map.nodes[30406500] = Rare({
    id = 77719,
    quest = 34189,
    rewards = {
        Toy({item = 116113}) -- Breath of Talador
    },
    pois = {
        Path({
            30406500, 31206350, 32306220, 33106330, 33006460, 32706600,
            31306580, 30406500
        })
    }
}) -- Glimmerwing

map.nodes[59405960] = Rare({
    id = 77741,
    quest = 34196,
    note = L['in_cave'],
    rewards = {
        Transmog({item = 116112, slot = L['fist']}) -- Ra'kahn's Bite
    },
    pois = {POI({60305730})}
}) -- Ra'kahn

map.nodes[69603360] = Rare({
    id = 77776,
    quest = 34205,
    note = L['wandering_vindicator_note'],
    rewards = {
        Transmog({item = 112261, slot = L['1h_sword']}) -- Forgotten Vindicator's Blade
    }
}) -- Wandering Vindicator

map.nodes[49009200] = Rare({
    id = 77784,
    quest = 34208,
    rewards = {
        Item({item = 116070, note = L['neck']}) -- Tezzakel's Terrible Talisman
    }
}) -- Lo'marg Jawcrusher

map.nodes[34005720] = Rare({
    id = 77828,
    quest = 34221,
    rewards = {
        Toy({item = 113670}) -- Mournful Moan of Murmur
    }
}) -- Echo of Murmur

map.nodes[66808560] = Rare({
    id = 78872,
    quest = 34498,
    note = L['in_cave'],
    rewards = {
        Toy({item = 116125}) -- Klikixx's Webspinner
    },
    pois = {POI({61308410})}
}) -- Klikixx

map.nodes[86002960] = Rare({
    id = 79334,
    quest = 34859,
    rewards = {
        Item({item = 116077, note = L['trinket']}) -- Pulsating Brain of No'losh
    }
}) -- No'losh

map.nodes[37603760] = Rare({
    id = 82988,
    quest = 37348,
    rewards = {
        Achievement({id = 9638, criteria = 26480}),
        Transmog({item = 119394, slot = L['dagger']}) -- Kurlosh's Kidneyslicer
    }
}) -- Kurlosh Doomfang

map.nodes[33603780] = Rare({
    id = 82942,
    quest = 37346,
    rewards = {
        Achievement({id = 9638, criteria = 26478}),
        Transmog({item = 119352, slot = L['cloth']}) -- Demlash's Dashing Robe
    }
}) -- Lady Demlash

map.nodes[53809100] = Rare({
    id = 79485,
    quest = 34668,
    rewards = {
        Transmog({item = 116110, slot = L['cloth']}) -- Zorkra's Hood
    }
}) -- Talonpriest Zorkra

map.nodes[50208620] = Rare({
    id = 80204,
    quest = 35018,
    rewards = {
        Transmog({item = 112373, slot = L['shield']}) -- Felbark's Shin
    },
    pois = {
        Path({
            50208620, 49408570, 49308440, 49108310, 50408310, 51208360,
            51708430, 50908570, 50208620
        })
    }
}) -- Felbark

map.nodes[67408060] = Rare({
    id = 80471,
    quest = 34929,
    rewards = {
        Item({item = 116075, note = L['trinket']}) -- Scales of Gennadian
    }
}) -- Gennadian

map.nodes[63602080] = Rare({
    id = 80524,
    quest = 34945,
    rewards = {
        Item({item = 112475, note = L['ring']}) -- Prize's Horn-Ring
    }
}) -- Underseer Bloodmane

map.nodes[37601460] = Rare({
    id = 82922,
    quest = 37343,
    rewards = {
        Achievement({id = 9633, criteria = 26580}),
        Transmog({item = 119371, slot = L['mail']}) -- Mantle of the Destroyer
    }
}) -- Xothear, the Destroyer

map.nodes[47603280] = Rare({
    id = 82992,
    quest = 37341,
    rewards = {
        Achievement({id = 9633, criteria = 26468}),
        Item({item = 119386, note = L['ring']}) -- Consort's Promise Ring
    }
}) -- Felfire Consort

map.nodes[38804960] = Rare({
    id = 82998,
    quest = 37349,
    rewards = {
        Achievement({id = 9638, criteria = 26481}),
        Transmog({item = 119353, slot = L['cloth']}) -- Matron's Supple Gloves
    }
}) -- Matron of Sin

map.nodes[48002520] = Rare({
    id = 83008,
    quest = 37312,
    rewards = {
        Achievement({id = 9633, criteria = 26467}),
        Transmog({item = 119403, slot = L['1h_sword']}) -- Sargerei Soulbiter
    }
}) -- Haakun the All-Consuming

map.nodes[47603900] = Rare({
    id = 83019,
    quest = 37340,
    rewards = {
        Achievement({id = 9633, criteria = 26466}),
        Transmog({item = 119402, slot = L['1h_sword']}) -- Gug'tol's Imp Imperator
    }
}) -- Gug'tol

map.nodes[22207420] = Rare({
    id = 85572,
    quest = 36919,
    rewards = {
        Transmog({item = 120436, slot = L['leather']}) -- Mrglrgirdle
    }
}) -- Grrbrrgle

map.nodes[68003500] = Rare({
    id = 86549,
    quest = 36858,
    rewards = {
        Transmog({item = 117562, slot = L['polearm']}) -- Steeltusk's Steel Tusk
    }
}) -- Steeltusk

map.nodes[46203140] = Rare({
    id = 88043,
    quest = 37338,
    rewards = {
        Achievement({id = 9633, criteria = 26469}),
        Transmog({item = 119378, slot = L['offhand']}) -- Socrethar's Stone
    },
    pois = {
        Path({
            46203140, 45803420, 45003470, 45403660, 46203550, 48003510, 48303370
        })
    }
}) -- Avatar of Socrethar

map.nodes[38002060] = Rare({
    id = 88494,
    quest = 37342,
    note = L['legion_vanguard_note'],
    rewards = {
        Achievement({id = 9633, criteria = 26579}),
        Transmog({item = 119385, slot = L['plate']}) -- Vanguard's Linebreaking Bracer
    }
}) -- Legion Vanguard

map.nodes[31404760] = Rare({
    id = 87668,
    quest = 37344,
    note = L['orumo_the_observer_note'],
    rewards = {
        Achievement({id = 9638, criteria = 26476}),
        Item({item = 119375, note = L['neck']}), -- Chained Orb of Omniscience
        Pet({item = 119170, id = 1576}) -- Eye of Observation

    }
}) -- Orumo the Observer

map.nodes[41004200] = Rare({
    id = 82930,
    quest = 37347,
    rewards = {
        Achievement({id = 9638, criteria = 26479}),
        Transmog({item = 119393, slot = L['1h_axe']}) -- Searing Shadowflame Axe
    }
}) -- Shadowflame Terrorwalker

map.nodes[31002680] = Rare({
    id = 82920,
    quest = 37345,
    rewards = {
        Achievement({id = 9638, criteria = 26477}),
        Item({item = 119388, note = L['ring']}) -- Doomlord's Seal of Command
    }
}) -- Lord Korinak

map.nodes[37604320] = Rare({
    id = 88436,
    quest = 37350,
    rewards = {
        Achievement({id = 9638, criteria = 26582}),
        Transmog({item = 119383, slot = L['plate']}) -- Shoulderplates of the Vigilant
    }
}) -- Vigilant Paarthos

map.nodes[43203740] = Rare({
    id = 87597,
    quest = 37339,
    rewards = {
        Achievement({id = 9633, criteria = 26465}),
        Transmog({item = 119413, slot = L['crossbow']}) -- Gu'gok's Rangefinder
    },
    pois = {
        Path({
            43203740, 43103840, 43803910, 44203980, 44504070, 45103890,
            44603750, 43803680, 43203740
        })
    }
}) -- Bombadier Gu'gok

map.nodes[59008740] = Rare({
    id = 77634,
    quest = 34171,
    note = L['taladorantula_note'],
    rewards = {
        Transmog({item = 116126, slot = L['1h_sword']}) -- Taladorantula Terrorfang
    }
}) -- Taladorantula

map.nodes[56606320] = Rare({
    id = 78710,
    quest = 35220,
    note = L['kharazos_galzomar_sikthiss_note'],
    rewards = {
        Toy({item = 116122}) -- Burning Legion Missive
    },
    pois = {Path({56606320, 56606490, 56706730})}
}) -- Kharazos the Triumphant

map.nodes[56606490] = Rare({
    id = 78713,
    quest = 34483,
    note = L['kharazos_galzomar_sikthiss_note'],
    rewards = {
        Toy({item = 116122}) -- Burning Legion Missive
    },
    pois = {Path({56606320, 56606490, 56706730})}
}) -- Galzomar

map.nodes[56706730] = Rare({
    id = 78715,
    quest = 35219,
    note = L['kharazos_galzomar_sikthiss_note'],
    rewards = {
        Toy({item = 116122}) -- Burning Legion Missive
    },
    pois = {Path({56606320, 56606490, 56706730})}
}) -- Sikthiss, Maiden of Slaughter

map.nodes[43402700] = Rare({
    id = 88071,
    quest = 37337,
    rewards = {
        Achievement({id = 9633, criteria = 26470}),
        Transmog({item = 119350, slot = L['cloak']}) -- Sargerei Councilor's Drape
    },
    pois = {
        Path({
            43402700, 44402580, 45802580, 46002700, 47302780, 47202920,
            47403090, 46403050, 45303010, 43603020, 43402700
        })
    }
}) -- Sargerei War Council

local Shirzir = Class('Shirzir', Rare, {
    id = 79543,
    quest = 34671,
    rewards = {
        Transmog({item = 112370, slot = L['leather']}) -- Shirzir's Sticky Slippers
    }
})

tombOfSouls.nodes[67602310] = Shirzir()

map.nodes[43005400] = Shirzir({
    note = L['shirzir_note'],
    pois = {POI({41205990})}
})

local Silthide = Rare({
    id = 51015,
    note = L['multiple_spawn_note'],
    fgroup = 'silthide',
    rewards = {
        Mount({item = 116767, id = 630}) -- Sapphire Riverbeast
    }
})

map.nodes[78905540] = Silthide
map.nodes[67406000] = Silthide
map.nodes[61803220] = Silthide
map.nodes[62004500] = Silthide
map.nodes[55608060] = Silthide

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[33297680] = Treasure({
    label = L['bonechewer_remnants_treasure'],
    quest = 34259,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Bonechewer Remnants

map.nodes[35409656] = Treasure({
    label = L['farmers_bounty_treasure'],
    quest = 34249,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Farmer's Bounty

map.nodes[36509610] = Treasure({
    label = L['aarkos_family_treasure_treasure'],
    note = L['aarkos_family_treasure_treasure_note'],
    quest = 34182,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Transmog({item = 117567, slot = L['crossbow']}),
        Currency({id = 824})
    }
}) -- Aarko's Family Treasure

map.nodes[37697473] = Treasure({
    label = L['bonechewer_spear_treasure'],
    quest = 34148,
    note = L['in_small_cave'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Transmog({item = 112371, slot = L['mail']})
    },
    pois = {POI({36767529})}
}) -- Bonechewer Spear

map.nodes[38181241] = Treasure({
    label = L['light_of_the_sea_treasure'],
    quest = 34258,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Light of the Sea

map.nodes[38338450] = Treasure({
    label = L['treasure_of_angorosh_treasure'],
    quest = 34257,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 116119})
    }
}) -- Treasure of Ango'rosh

local teroclaw_nest = Treasure({
    label = L['teroclaw_nest_treasure'],
    fgroup = 'teroclaw_nest',
    scale = 0.8,
    quest = 35162,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Pet({item = 112699, id = 1416})
    }
}) -- Teroclaw Nest

map.nodes[39897661] = teroclaw_nest
map.nodes[39357759] = teroclaw_nest
map.nodes[52596167] = teroclaw_nest
map.nodes[51765928] = teroclaw_nest
map.nodes[52435771] = teroclaw_nest
map.nodes[54055623] = teroclaw_nest
map.nodes[53495567] = teroclaw_nest
map.nodes[53375422] = teroclaw_nest
map.nodes[54785247] = teroclaw_nest
map.nodes[55695240] = teroclaw_nest
map.nodes[56835102] = teroclaw_nest
map.nodes[56295354] = teroclaw_nest
map.nodes[57425535] = teroclaw_nest
map.nodes[57505604] = teroclaw_nest
map.nodes[56745697] = teroclaw_nest
map.nodes[56005820] = teroclaw_nest
map.nodes[75125418] = teroclaw_nest
map.nodes[75825499] = teroclaw_nest
map.nodes[75505210] = teroclaw_nest
map.nodes[76275123] = teroclaw_nest
map.nodes[77025231] = teroclaw_nest
map.nodes[78705214] = teroclaw_nest
map.nodes[78095101] = teroclaw_nest
map.nodes[78894956] = teroclaw_nest
map.nodes[78994783] = teroclaw_nest
map.nodes[74524568] = teroclaw_nest
map.nodes[74373406] = teroclaw_nest
map.nodes[74572922] = teroclaw_nest
map.nodes[73413068] = teroclaw_nest
map.nodes[72763560] = teroclaw_nest
map.nodes[72333701] = teroclaw_nest
map.nodes[70923561] = teroclaw_nest
map.nodes[70753196] = teroclaw_nest

local soulbinders_reliquary = Class('soulbinders_reliquary', Treasure, {
    label = L['soulbinders_reliquary_treasure'],
    quest = 34254,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 117570, note = L['ring']})
    }
}) -- Soulbinder's Reliquary

tombOfSouls.nodes[28253502] = soulbinders_reliquary()
map.nodes[39515508] = soulbinders_reliquary({
    note = L['shirzir_note'],
    pois = {POI({41255986})}
})

map.nodes[40608950] = Treasure({
    label = L['yuuris_gift_treasure'],
    quest = 34140,
    faction = 'Alliance',
    requires = ns.requirement.Quest(33530), -- Nightmare in the Tomb
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Yuuri's Gift

map.nodes[46959174] = Treasure({
    label = L['relic_of_telmor_treasure'],
    quest = 34256,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 116128})
    }
}) -- Relic of Telmor

map.nodes[52562954] = Treasure({
    label = L['luminous_shell_treasure'],
    quest = 34235,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 116132, note = L['neck']})
    }
}) -- Luminous Shell

map.nodes[54002760] = Treasure({
    label = L['ketyas_stash_treasure'],
    note = L['in_cave'],
    quest = 34290,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Pet({item = 116402, id = 1515})
    },
    pois = {POI({53232604})}
}) -- Ketya's Stash

map.nodes[55256672] = Treasure({
    label = L['draenei_weapons_treasure'],
    quest = 34253,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 116118}), Currency({id = 824})
    }
}) -- Draenei Weapons

map.nodes[57362866] = Treasure({
    label = L['foremans_lunchbox_treasure'],
    quest = 34238,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Toy({item = 116120})
    }
}) -- Foreman's Lunchbox

map.nodes[58841206] = Treasure({
    label = L['deceptias_smoldering_boots_treasure'],
    quest = 33933,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Toy({item = 108743})
    }
}) -- Deceptia's Smoldering Boots

map.nodes[62083240] = Treasure({
    label = L['amethyl_crystal_treasure'],
    quest = 34236,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 116131}), Currency({id = 824})
    }
}) -- Amethyl Crystal

map.nodes[62414797] = Treasure({
    label = L['barrel_of_fish_treasure'],
    quest = 34252,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 110506})
    }
}) -- Barrel of Fish

map.nodes[64587920] = Treasure({
    label = L['iron_box_treasure'],
    quest = 34251,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Transmog({item = 117571, slot = L['1h_mace']})
    }
}) -- Iron Box

map.nodes[64911331] = Treasure({
    label = L['rooks_tacklebox_treasure'],
    quest = 34232,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 116117})
    }
}) -- Rook's Tacklebox

map.nodes[65461137] = Treasure({
    label = L['jug_of_aged_ironwine_treasure'],
    note = L['in_cave'],
    quest = 34233,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 117568})
    },
    pois = {POI({64800937})}
}) -- Jug of Aged Ironwine

map.nodes[65448860] = Treasure({
    label = L['webbed_sac_treasure'],
    note = L['in_cave'],
    quest = 34255,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 116129})
    },
    pois = {POI({61308410})}
}) -- Webbed Sac

map.nodes[65908520] = Treasure({
    label = L['rusted_lockbox_treasure'],
    note = L['rusted_lockbox_treasure_note'],
    quest = 34276,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    },
    pois = {POI({61308410})}
}) -- Rusted Lockbox

map.nodes[66498691] = Treasure({
    label = L['curious_deathweb_egg_treasure'],
    note = L['in_cave'],
    quest = 34239,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Toy({item = 117569})
    },
    pois = {POI({61308410})}
}) -- Curious Deathweb Egg

map.nodes[68785621] = Treasure({
    label = L['lightbearer_treasure'],
    quest = 34101,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 109192})
    }
}) -- Lightbearer

map.nodes[70130710] = Treasure({
    label = L['burning_blade_cache_treasure'],
    quest = 36937,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 823})
    }
}) -- Burning Blade Cache

map.nodes[73525137] = Treasure({
    label = L['bright_coin_treasure'],
    quest = 34471,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 116127})
    }
}) -- Bright Coin

map.nodes[75684140] = Treasure({
    label = L['keluus_belongings_treasure'],
    quest = 34261,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    }
}) -- Keluu's Belongings

map.nodes[75774472] = Treasure({
    label = L['relic_of_aruuna_treasure'],
    quest = 34250,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 116128})
    }
}) -- Relic of Aruuna

map.nodes[77044996] = Treasure({
    label = L['charred_sword_treasure'],
    quest = 34248,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Transmog({item = 116116, slot = L['2h_sword']})
    }
}) -- Charred Sword

map.nodes[78201480] = Treasure({
    label = L['pure_crystal_dust_treasure'],
    quest = 34263,
    note = L['pure_crystal_dust_note'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 117572})
    },
    pois = {POI({75342234})}
}) -- Pure Crystal Dust

map.nodes[81853494] = Treasure({
    label = L['aruuna_mining_cart_treasure'],
    note = L['in_cave'],
    quest = 34260,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 109118})
    },
    pois = {POI({78213556})}
}) -- Aruuna Mining Cart

map.nodes[57207540] = Treasure({
    label = L['isarris_cache_treasure'],
    quest = 34134,
    faction = 'Alliance',
    note = L['isaaris_cache_note'],
    rewards = {Item({item = 117563, note = L['neck']})}
}) -- Isarri's Cache

map.nodes[61107170] = Treasure({
    label = L['noranas_cache_treasure'],
    quest = 34116,
    faction = 'Horde',
    note = L['noranas_cache_note'],
    rewards = {Item({item = 117563, note = L['neck']})}
}) -- Norana's Cache

map.nodes[75073609] = Treasure({
    quest = 33649,
    label = '{npc:75644}',
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Iron Scout

map.nodes[28387419] = Treasure({
    quest = 36829,
    label = L['gift_of_the_ancients_treasure'],
    note = L['gift_of_the_ancients_treasure_note'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    },
    pois = {POI({27877542})}
}) -- Gift of the Ancients

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[49008040] = PetBattle({
    id = 87125,
    rewards = {Achievement({id = 9724, criteria = 27016})}
}) -- Taralune

-------------------------------------------------------------------------------
-------------------------------- I FOUND PEPE! --------------------------------
-------------------------------------------------------------------------------

map.nodes[50976330] = Collectible({
    label = L['knight_pepe_treasure'],
    note = L['knight_pepe_note'],
    icon = 1044996,
    quest = 39266,
    group = ns.groups.PEPE,
    rewards = {
        Achievement({id = 10053, criteria = 28183}), Item({item = 127869})
    }
}) -- Knight Pepe

-------------------------------------------------------------------------------
------------------------------ CUT OFF THE HEAD -------------------------------
-------------------------------------------------------------------------------

local ShattrathCityRare = Class('ShattrathCityRare', Collectible, {
    icon = 'peg_rd',
    scale = 1.5,
    group = ns.groups.CUT_OFF_THE_HEAD
})

map.nodes[44003800] = ShattrathCityRare({
    id = 87597,
    rewards = {Achievement({id = 9633, criteria = 26465})}
}) -- Bombardier Gu'gok

map.nodes[47603900] = ShattrathCityRare({
    id = 83019,
    rewards = {Achievement({id = 9633, criteria = 26466})}
}) -- Gug'tol

map.nodes[48002540] = ShattrathCityRare({
    id = 83008,
    rewards = {Achievement({id = 9633, criteria = 26467})}
}) --  Haakun the All-Consuming

map.nodes[44803720] = ShattrathCityRare({
    id = 82992,
    rewards = {Achievement({id = 9633, criteria = 26468})}
}) -- Felfire Consort

map.nodes[46603520] = ShattrathCityRare({
    id = 88043,
    rewards = {Achievement({id = 9633, criteria = 26469})},
    pois = {POI({45203540})}
}) -- Avatar of Socrethar

map.nodes[45203100] = ShattrathCityRare({
    id = 88071,
    rewards = {Achievement({id = 9633, criteria = 26470})},
    pois = {POI({46603100, 47602880, 45802840, 44202920, 43802640})}
}) -- Sargerei War Council

map.nodes[38002060] = ShattrathCityRare({
    id = 88494,
    rewards = {Achievement({id = 9633, criteria = 26579})}
}) -- Legion Vanguard

map.nodes[37601460] = ShattrathCityRare({
    id = 82922,
    rewards = {Achievement({id = 9633, criteria = 26580})}
}) -- Xothear, the Destroyer

-------------------------------------------------------------------------------
----------------------------------- WINGMEN -----------------------------------
-------------------------------------------------------------------------------

local FelPortal = Collectible({
    label = L['fel_portal'],
    icon = 'peg_gn',
    scale = 1.5,
    -- requires = ns.requirement.GarrisonTalent(152), -- TODO: This should be Barracks: Level 2 but I can get it to show up correctly
    group = ns.groups.WINGMEN,
    note = L['wingmen_note'],
    rewards = {
        Achievement({
            id = 9499,
            criteria = {
                25890, -- Leorajh
                25894, -- Talonpriest Ishaal
                25895, -- Tormmok
                25891, -- Aeda Brightdawn
                25893, -- Defender Illona
                25889, -- Delvar Ironfist
                25892 -- Vivianne
            }
        }) -- Wingmen
    }
}) -- Fel Portal

map.nodes[57256451] = FelPortal
map.nodes[56336444] = FelPortal
map.nodes[55436489] = FelPortal

-------------------------------------------------------------------------------
---------------------------------- VOIDTALON ----------------------------------
-------------------------------------------------------------------------------

local Voidtalon = Collectible({
    icon = 1094600,
    label = L['edge_of_reality'],
    note = L['edge_of_reality_note'],
    rewards = {
        Mount({id = 682, item = 121815}) -- Voidtalon of the Dark Star
    }
})

map.nodes[39885561] = Voidtalon
map.nodes[46265256] = Voidtalon
map.nodes[47164882] = Voidtalon
map.nodes[52144113] = Voidtalon
map.nodes[52252587] = Voidtalon
map.nodes[52683437] = Voidtalon
map.nodes[50963241] = Voidtalon

-------------------------------------------------------------------------------
---------------------------------- FOLLOWERS ----------------------------------
-------------------------------------------------------------------------------

map.nodes[58095306] = Collectible({
    id = 85768,
    icon = 136172,
    group = ns.groups.GARRFOLLOWER,
    note = L['aeda_brightdawn_follower_note'],
    faction = 'Horde',
    rewards = {Follower({id = 207, icon = 136172})}
}) -- Aeda Brightdawn

map.nodes[57405120] = Collectible({
    id = 85772,
    icon = 236264,
    group = ns.groups.GARRFOLLOWER,
    note = L['defender_illona_follower_note'],
    faction = 'Alliance',
    rewards = {Follower({id = 207, icon = 236264})}
}) -- Defender Illona

map.nodes[64214772] = Collectible({
    id = 79870,
    icon = 132347,
    group = ns.groups.GARRFOLLOWER,
    faction = 'Horde',
    note = string.format(L['pleasure_bot_8000_follower_note'], 34751),
    rewards = {Follower({id = 171, icon = 132347})}
}) -- Pleasure-Bot 8000 - Horde

map.nodes[62755038] = Collectible({
    id = 79901,
    icon = 132347,
    group = ns.groups.GARRFOLLOWER,
    faction = 'Alliance',
    note = string.format(L['pleasure_bot_8000_follower_note'], 34761),
    rewards = {Follower({id = 171, icon = 132347})}
}) -- Pleasure-Bot 8000 - Alliance

map.nodes[56902597] = Collectible({
    id = 85776,
    icon = 132355,
    group = ns.groups.GARRFOLLOWER,
    note = L['ahm_follower_note'],
    rewards = {Follower({id = 208, icon = 132355})}
}) -- Ahm

map.nodes[45283706] = Collectible({
    label = '{quest:34465}', -- Mysterious Hat
    icon = 135932,
    group = ns.groups.GARRFOLLOWER,
    note = L['image_of_archmage_vargoth_follower_note'],
    rewards = {Quest({id = 34465}), Follower({id = 190, icon = 135932})}
}) -- Image of Archmage Vargoth

map.nodes[85003100] = Collectible({
    id = 86949,
    icon = 135932,
    group = ns.groups.GARRFOLLOWER,
    quest = 34472, -- Temporal Juxtaposition
    note = L['image_of_archmage_vargoth_follower_note'],
    requires = {
        ns.requirement.Quest(34463), -- Mysterious Ring
        ns.requirement.Quest(34464), -- Mysterious Boots
        ns.requirement.Quest(34465), -- Mysterious Hat
        ns.requirement.Quest(34466) -- Mysterious Staff
    },
    rewards = {Follower({id = 190, icon = 135932})}
}) -- Zooti Fizzlefury

-------------------------------------------------------------------------------
---------------------------------- SQUIRRELS ----------------------------------
-------------------------------------------------------------------------------

map.nodes[80932730] = ns.node.Squirrel({
    id = 88996,
    rewards = {Achievement({id = 14728, criteria = 12})}
}) -- Shadow Sporebat

map.nodes[38716966] = ns.node.Squirrel({
    id = 88975,
    label = '{npc:88975}, {npc:88994}',
    rewards = {Achievement({id = 14728, criteria = {1, 6}})}
}) -- Royal Moth, Brilliant Bloodfeather

map.nodes[55768145] = ns.node.Squirrel({
    id = 88983,
    rewards = {Achievement({id = 14728, criteria = 7})}
}) -- Flat-Tooth Calf