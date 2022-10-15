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
local Squirrel = ns.node.Squirrel

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Toy = ns.reward.Toy
local Currency = ns.reward.Currency
local Transmog = ns.reward.Transmog

local Path = ns.poi.Path
local POI = ns.poi.POI

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({id = 535, settings = true})

-- Workaround for Luacheck 331.
local maps = {}
local minimap = maps

-- Minimaps in Talador.
minimap['tomb_of_souls'] = Map({id = 537, settings = true})

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

minimap['tomb_of_souls'].nodes[67602310] = Shirzir()

map.nodes[43005400] = Shirzir({
    note = L['shirzir_note'],
    pois = {POI({41205990})}
})

local Silthide = Rare({
    id = 51015,
    fgroup = 'silthide',
    note = L['multiple_spawn_note'],
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

map.nodes[38181241] = Treasure({
    quest = 34258,
    label = L['light_of_the_sea'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Light of the Sea

local soulbinders_reliquary = Class('soulbinders_reliquary', Treasure, {
    quest = 34254,
    label = L['soulbinders_reliquary'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 117570, note = L['ring']}) -- Auchenai Soulbinder's Signet
    }
}) -- Soulbinder's Reliquary

map.nodes[39515508] = soulbinders_reliquary({
    note = L['shirzir_note'],
    pois = {POI({41255986})}
}) -- Soulbinder's Reliquary

minimap['tomb_of_souls'].nodes[28253502] = soulbinders_reliquary()

map.nodes[33297680] = Treasure({
    quest = 34259,
    label = L['bonechewer_remnants'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    }
}) -- Bonechewer Remnants

map.nodes[37697473] = Treasure({
    quest = 34148,
    label = L['bonechewer_spear'],
    note = L['bonechewer_spear_note'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Transmog({item = 112371, slot = L['mail']}) -- Warpstalker-Scale Grips
    }
}) -- Bonechewer Spear

local teroclaw_nest = Treasure({
    quest = 35162,
    label = L['teroclaw_nest'],
    fgroup = 'teroclaw_nest',
    scale = 0.8,
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Pet({item = 112699, id = 1416}) -- Teroclaw Hatchling
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

map.nodes[38338450] = Treasure({
    quest = 34257,
    label = L['treasure_of_angorosh'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    }
}) -- Treasure of Ango'rosh

map.nodes[36529598] = Treasure({
    quest = 34182,
    label = L['aarkos_family_treasure'],
    note = L['aarkos_family_treasure_note'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Transmog({item = 117567, slot = L['crossbow']}), -- Aarko's Antique Crossbow
        Currency({id = 824})
    }
}) -- Aarko's Family Treasure

map.nodes[35409656] = Treasure({
    quest = 34249,
    label = L['farmers_bounty'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    }
}) -- Farmer's Bounty

map.nodes[46959174] = Treasure({
    quest = 34256,
    label = L['relic_of_telmor'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    },
    pois = {POI({47859076})}
}) -- Relic of Telmor

map.nodes[65448860] = Treasure({
    quest = 34255,
    label = L['webbed_sac'],
    note = L['in_cave'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 116129}) -- Desiccated Orc's Coin Pouch
    },
    pois = {POI({61308410})}
}) -- Webbed Sac

map.nodes[66498691] = Treasure({
    quest = 34239,
    label = L['curious_deathweb_egg'],
    note = L['in_cave'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Toy({item = 117569}) -- Giant Deathweb Egg
    },
    pois = {POI({61308410})}
}) -- Curious Deathweb Egg

map.nodes[65908520] = Treasure({
    quest = 34276,
    label = L['rusted_lockbox'],
    note = L['rusted_lockbox_note'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    },
    pois = {POI({61308410})}
}) -- Rusted Lockbox

map.nodes[64587920] = Treasure({
    quest = 34251,
    label = L['iron_box'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Transmog({item = 117571, slot = L['1h_mace']}) -- Gordunni Skullthumper
    }
}) -- Iron Box

map.nodes[55256672] = Treasure({
    quest = 34253,
    label = L['draenei_weapons'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Draenei Weapons

map.nodes[62414797] = Treasure({
    quest = 34252,
    label = L['barrel_of_fish'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Currency({id = 824})
    }
}) -- Barrel of Fish

map.nodes[68775622] = Treasure({
    quest = 34101,
    label = '{item:109192}',
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 109192, note = '100g'}) -- Lightbearer
    }
}) -- Lightbearer

map.nodes[73525137] = Treasure({
    quest = 34471,
    label = '{item:116127}',
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 116127}) -- Bright Coin
    }
}) -- Bright Coin

map.nodes[77044996] = Treasure({
    quest = 34248,
    label = L['charred_sword'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Transmog({item = 116116, slot = L['2h_sword']}) -- Blazegrease Greatsword
    }
}) -- Charred Sword

map.nodes[75774472] = Treasure({
    quest = 34250,
    label = L['relic_of_aruuna'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 116128, note = '~76g'}) -- Tiny Naaru Statue
    }
}) -- Relic of Aruuna

map.nodes[75684140] = Treasure({
    quest = 34261,
    label = L['keluus_belongings'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    }
}) -- Keluu's Belongings

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

map.nodes[62083240] = Treasure({
    quest = 34236,
    label = '{item:116131}',
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 116131}) -- Amethyl Crystal
    }
}) -- Amethyl Crystal

map.nodes[52562954] = Treasure({
    quest = 34235,
    label = L['luminous_shell'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    }
}) -- Luminous Shell

map.nodes[53982769] = Treasure({
    quest = 34290,
    label = L['ketyas_stash'],
    note = L['in_cave'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Pet({item = 116402, id = 1515}), -- Stonegrinder
        Item({item = 116121, note = '50g'}), -- A Steamy Romance Novel: I'm In Love
        Currency({id = 824})
    },
    pois = {POI({53232604})}
}) -- Ketya's Stash

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[49008040] = PetBattle({
    id = 87125,
    rewards = {Achievement({id = 9724, criteria = 27016})}
}) -- Taralune

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

map.nodes[47543928] = ShattrathCityRare({
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

map.nodes[57362866] = Treasure({
    quest = 34238,
    label = L['foremans_lunchbox'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Toy({item = 116120}) -- Tasty Talador Lunch
    }
}) -- Foreman's Lunchbox

map.nodes[58841206] = Treasure({
    quest = 33933,
    label = '{item:108743}',
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Toy({item = 108743}) -- Deceptia's Smoldering Boots
    }
}) -- Deceptia's Smoldering Boots

map.nodes[64911331] = Treasure({
    quest = 34232,
    label = L['rooks_tacklebox'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 116117}) -- Rook's Lucky Fishin' Line
    }
}) -- Rook's Tacklebox

map.nodes[65461137] = Treasure({
    quest = 34233,
    label = L['jug_of_aged_ironwine'],
    note = L['in_cave'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        }), Item({item = 117568}) -- Jug of Ironwine
    },
    pois = {POI({64800937})}
}) -- Jug of Aged Ironwine

map.nodes[70130710] = Treasure({
    quest = 36937,
    label = L['burning_blade_cache'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    }
}) -- Burning Blade Cache

map.nodes[78211472] = Treasure({
    quest = 34263,
    label = L['pure_crystal_dust'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    },
    pois = {
        POI({75342234}), Path({
            78211472, 78841505, 79351604, 79731753, 79421838, 78941880,
            78191861, 77351902
        })
    }
}) -- Pure Crystal Dust

map.nodes[81853494] = Treasure({
    quest = 34260,
    label = L['aruuna_mining_cart'],
    note = L['in_cave'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    },
    pois = {
        POI({78213556}), Path({
            81853494, 81643544, 81483597, 81073581, 80423492, 80053469,
            79083516, 78213556
        })
    }
}) -- Aruuna Mining Cart

map.nodes[28387419] = Treasure({
    quest = 36829,
    label = L['gift_of_the_ancients'],
    note = L['gift_of_the_ancients_note'],
    rewards = {
        Achievement({
            id = 9728,
            criteria = {id = 1, qty = true, suffix = L['treasures_discovered']}
        })
    },
    pois = {POI({27877542})}
}) -- Gift of the Ancients
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
---------------------------------- FOLLOWER -----------------------------------
-------------------------------------------------------------------------------

map.nodes[45283706] = Collectible({
    icon = 1033590,
    label = '{item:110470}',
    quest = 34465,
    note = L['follower_archmage_vargoth_note'],
    rewards = {ns.reward.Follower({id = 190})}
}) -- Image of Archmage Vargoth - Mysterious Hat

map.nodes[58095306] = Collectible({
    icon = 1033590,
    label = '{npc:79978}',
    quest = 36518,
    note = L['complete_quest'],
    rewards = {ns.reward.Follower({id = 207})}
}) -- Aeda Brightdawn

map.nodes[56902597] = Collectible({
    icon = 1033590,
    label = '{npc:77031}',
    quest = 36522,
    note = L['complete_quest'] .. '\n' .. L['appears_outside_garrison'],
    rewards = {ns.reward.Follower({id = 208})}
}) -- Ahm

map.nodes[64214772] = Collectible({
    icon = 1033590,
    faction = 'Horde',
    label = '{npc:79870}',
    quest = 35238,
    note = L['complete_quest'],
    rewards = {ns.reward.Follower({id = 171})}
}) -- Pleasure-Bot 8000 - Horde

map.nodes[62875034] = Collectible({
    icon = 1033590,
    faction = 'Alliance',
    label = '{npc:79901}',
    quest = 35239,
    note = L['complete_quest'],
    rewards = {ns.reward.Follower({id = 171})}
}) -- Pleasure-Bot 8000 - Alliance

-------------------------------------------------------------------------------
------------------------------------ PEPE -------------------------------------
-------------------------------------------------------------------------------

map.nodes[50976330] = Treasure({
    quest = 39265,
    icon = 1044996,
    label = L['knight_pepe'],
    rewards = {
        Achievement({id = 10053, criteria = 28183}), -- I Found Pepe!
        Item({item = 127869}) -- A Tiny Plated Helm
    }
}) -- Knight Pepe

map.nodes[80932730] = Squirrel({
    id = 88996,
    rewards = {Achievement({id = 14728, criteria = 12})} -- To All the Squirrels Through Time and Space
}) -- Shadow Sporebat

map.nodes[38716966] = Squirrel({
    id = 88975,
    label = '{npc:88975}, {npc:88994}',
    rewards = {Achievement({id = 14728, criteria = {1, 6}})} -- To All the Squirrels Through Time and Space
}) -- Royal Moth, Brilliant Bloodfeather

map.nodes[55768145] = Squirrel({
    id = 88983,
    rewards = {Achievement({id = 14728, criteria = 7})} -- To All the Squirrels Through Time and Space
}) -- Flat-Tooth Calf
