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
local Pet = ns.reward.Pet
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

local POI = ns.poi.POI
local Path = ns.poi.Path

-------------------------------------------------------------------------------

local map = Map({id = 650, settings = true})
local tt_hoc = Map({id = 652, settings = true}) -- Thunder Totem - Hall of Chieftains
local neltharions_vault = Map({id = 657})
local grotto = Map({id = 659}) -- Stonedark Grotto
local tt = Map({id = 750, settings = true}) -- Thunder Totem

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[43404750] = Rare({
    id = 100230,
    quest = 40413,
    note = L['amateur_hunters_note'],
    rewards = {
        Achievement({id = 11264, criteria = 33336}), -- Adventurer of Highmountain
        Transmog({item = 131781, slot = L['plate']}) -- Plate Hiking Boots
    }
}) -- Amateur Hunters ("Sure-Shot" Arnie, Ryael Dawndrifter, Dargok Thunderuin)

map.nodes[48675008] = Rare({
    id = 97220,
    quest = 39784,
    note = L['arru_note'],
    rewards = {
        Achievement({id = 11264, criteria = 33324}) -- Adventurer of Highmountain
    }
}) -- Arru

map.nodes[36661635] = Rare({
    id = 98299,
    quest = 40084,
    rewards = {
        Achievement({id = 11264, criteria = 33375}) -- Adventurer of Highmountain
    }
}) -- Bodash the Hoarder

map.nodes[38044566] = Rare({
    id = 97449,
    quest = 40405,
    note = L['in_small_cave'],
    rewards = {
        Achievement({id = 11264, criteria = 33328}), -- Adventurer of Highmountain
        Transmog({item = 131761, slot = L['leather']}) -- Thick Bristly Hood
    }
}) -- Bristlemaul

map.nodes[56417256] = Rare({
    id = 94877,
    quest = 39235,
    rewards = {
        Transmog({item = 138396, slot = L['mail']}) -- Mighty Chain Footpads
    }
}) -- Brogrul the Mighty

map.nodes[43971131] = Rare({
    id = 97933,
    quest = 39994,
    rewards = {
        Achievement({id = 11264, criteria = 33331}), -- Adventurer of Highmountain
        Transmog({item = 131798, slot = L['leather']}) -- Faded Swashbuckler's Jerkin
    },
    pois = {
        Path({
            43151079, 43671091, 43971131, 44021184, 44211232, 44571268,
            45081277, 45521249, 46001229
        })
    }
}) -- Crab Rider Grmlrml

map.nodes[48394017] = Rare({
    id = 97345,
    quest = 39806,
    note = L['rocfeather_kite_note'],
    fgroup = 'rocfeather_kite',
    rewards = {
        Achievement({id = 11264, criteria = 33326}), -- Adventurer of Highmountain
        Item({item = 131809}) -- Gleaming Roc Feather for Rocfeather Skyhorn Kite
    }
}) -- Crawshuk the Hungry

map.nodes[54414115] = Rare({
    id = 100495,
    quest = 40414,
    note = L['devouring_darkness_note'] .. '\n\n' .. L['in_cave'],
    rewards = {
        Achievement({id = 11264, criteria = 33337}), -- Adventurer of Highmountain
        Transmog({item = 131780, slot = L['cloth']}) -- Void Slippers
    },
    pois = {POI({55134426})}
}) -- Devouring Darkness

-- map.nodes[36404870] = Rare({
--     id = 110378,
--     quest = 44503, -- 44898 bonus roll
--     rewards = {
--         Achievement({id = 11160, criteria = 32094}), -- Unleashed Monstrosities
--         Transmog({item = 141538, slot = L['cloak']}), -- Giant's Handkerchief
--         Transmog({item = 141429, slot = L['leather']}), -- Wax-Sealed Leather Bracers
--         Transmog({item = 141433, slot = L['mail']}), -- Assorted Dragonscale Bracers
--         Transmog({item = 141439, slot = L['plate']}), -- Ettinbone Bracers
--         Transmog({item = 141428, slot = L['cloth']}) -- Snowdrift Bracers
--     }
-- }) -- Drugon the Frostblood (world boss)

map.nodes[43807560] = Rare({
    id = 96072,
    quest = 45508,
    rewards = {
        Transmog({item = 131796, slot = L['leather']}) -- Roggumsoggum's Boppers
    }
}) -- Durguth

map.nodes[40975773] = Rare({
    id = 97793,
    quest = 39963,
    note = L['flamescale_note'],
    rewards = {
        Transmog({item = 131773, slot = L['mail']}) -- Flamescale Mail
    }
}) -- Flamescale

-- map.nodes[50005000] = Rare({
--     id = 99929,
--     quest = 44504, -- 44899 bonus roll
--     rewards = {
--         Achievement({id = 11160, criteria = 32095}), -- Unleashed Monstrosities
--         Transmog({item = 141539, slot = L['cloak']}), -- Ragged Azsharan Sail Fragment
--         Transmog({item = 141476, slot = L['plate']}), -- Kezan Pirate's Mitts
--         Transmog({item = 141475, slot = L['leather']}), -- Salt-Stained Tuskarr Gloves
--         Transmog({item = 141466, slot = L['mail']}), -- Blackwater Raider Handguards
--         Transmog({item = 141470, slot = L['cloth']}) -- Faded Bloodsail Handwraps
--     }
-- }) -- Flotsam (world boss)

map.nodes[55806129] = Rare({
    id = 96590,
    quest = 40347,
    rewards = {
        Achievement({id = 11264, criteria = 33320}), -- Adventurer of Highmountain
        Transmog({item = 131775, slot = L['plate']}) -- Da Basher's Toy Armor
    },
    pois = {
        Path({
            56405942, 56275998, 56136091, 55806129, 55976194, 56506185,
            56766126, 56866021, 56815938
        })
    }
}) -- Gurbog da Basher

map.nodes[51084825] = Rare({
    id = 97326,
    quest = 39802,
    rewards = {
        Achievement({id = 11264, criteria = 33325}) -- Adventurer of Highmountain
    }
}) -- Hartli the Snatcher

map.nodes[50803456] = Rare({
    id = 98024,
    quest = 40406,
    rewards = {
        Achievement({id = 11264, criteria = 33332}) -- Adventurer of Highmountain
    },
    pois = {POI({51493734})}
}) -- Luggut the Eggeater

map.nodes[45923033] = Rare({
    id = 96410,
    quest = 39646,
    rewards = {
        Achievement({id = 11264, criteria = 33319}), -- Adventurer of Highmountain
        Transmog({item = 131791, slot = L['cloth']}), -- Felbreath Bloodsinger Robe
        Toy({item = 131900}) -- Majestic Elderhorn Hoof
    },
    pois = {
        Path({
            45923033, 46263070, 46623117, 46613171, 46523223, 46703279,
            46793330, 47343336, 47623289, 47783170, 47803112, 47833061,
            47873011, 48032959, 48602917, 49112892, 49452849, 49762806,
            50102760, 50132709, 50132655, 50062601, 49742559, 49202569,
            48662556, 48152552, 47672592, 47282624, 46842587, 46392546,
            45852549, 45392567, 45062613, 44732656, 44512704, 44262754,
            44322806, 44592853, 44912901, 45122951, 45363003, 45923033
        })
    }
}) -- Majestic Elderhorn

map.nodes[49182711] = Rare({
    id = 96621,
    quest = 40242,
    rewards = {
        Achievement({id = 11264, criteria = 33321}) -- Adventurer of Highmountain
    }
}) -- Mellok, Son of Torok

map.nodes[46680745] = Rare({
    id = 98311,
    quest = 40096,
    note = L['mrrklr_note'],
    rewards = {
        Achievement({id = 11264, criteria = 33333}) -- Adventurer of Highmountain
    }
}) -- Mrrklr

map.nodes[54544063] = Rare({
    id = 97593,
    quest = 39866,
    note = L['mytna_talonscreech_note'],
    rewards = {
        Achievement({id = 11264, criteria = 33329}), -- Adventurer of Highmountain
        Transmog({item = 131792, slot = L['cloak']}) -- Harefoot Pinnacle Wrap
    }
}) -- Mynta Talonscreech

map.nodes[47607380] = Rare({
    id = 95204,
    quest = 39435,
    rewards = {
        Transmog({item = 131793, slot = L['cloth']}) -- Oubdob's Smashin' Sweatband
    }
}) -- Oubdob da Smasher

map.nodes[44695492] = Rare({
    id = 101077,
    quest = 40681,
    rewards = {
        Achievement({id = 11264, criteria = 33338}), -- Adventurer of Highmountain
        Transmog({item = 131730, slot = L['leather']}) -- Darksaber Leather Belt
    },
    pois = {
        Path({
            44865457, 44695492, 44785561, 45095535, 45265560, 45215623,
            45525599, 45715479, 45375481, 44865457
        })
    }
}) -- Sekhan

map.nodes[51032570] = Rare({
    id = 97093,
    quest = 39762,
    rewards = {
        Achievement({id = 11264, criteria = 33322}), -- Adventurer of Highmountain
        Transmog({item = 131791, slot = L['cloth']}) -- Felbreath Bloodsinger Robe
    }
}) -- Shara Felbreath

map.nodes[51403180] = Rare({
    id = 95872,
    quest = 39465,
    note = L['in_small_cave'],
    rewards = {
        Achievement({id = 11264, criteria = 33318}), -- Adventurer of Highmountain
        Transmog({item = 131769, slot = L['cloth']}) -- The Taskmaster's Wristwraps
    },
    pois = {POI({50993200})}
}) -- Skullhat

map.nodes[41483178] = Rare({
    id = 98890,
    quest = 40175,
    rewards = {
        Achievement({id = 11264, criteria = 33335}) -- Adventurer of Highmountain
    }
}) -- Slumber

map.nodes[53805120] = Rare({
    id = 97653,
    quest = 39872,
    note = L['taurson_note'] .. '\n\n' .. L['in_waterfall_cave'],
    rewards = {
        Achievement({id = 11264, criteria = 33330}), -- Adventurer of Highmountain
        Transmog({item = 131800, slot = L['plate']}) -- The Beastly Boxer
    },
    pois = {POI({54065085})}
}) -- Taurson - The Beastly Boxer

map.nodes[41964161] = Rare({
    id = 97203,
    quest = 39782,
    rewards = {
        Achievement({id = 11264, criteria = 33323}), -- Adventurer of Highmountain
        Pet({item = 129175, id = 1752}) -- Crispin
    }
}) -- Tenpak Flametotem -- The Exiled Shaman

map.nodes[52755819] = Rare({
    id = 100303,
    quest = 40423,
    label = L['unethical_adventurers'],
    note = L['unethical_adventurers_note'],
    rewards = {
        Achievement({id = 11264, criteria = 33340}), -- Adventurer of Highmountain
        Transmog({item = 131767, slot = L['plate']}), -- Xander's Gauntlets
        Transmog({item = 140681, slot = L['leather']}), -- Jak's Gloves
        Transmog({item = 140683, slot = L['cloth']}), -- Darkful's Mitts
        Transmog({item = 140682, slot = L['cloth']}), -- Zenobia's Handwraps
        Transmog({item = 140680, slot = L['mail']}) -- Lysander's Lovindle Bracers
    }
}) -- Unethical Adventurers

-- map.nodes[28205280] = Rare({id = 104481}) -- Ala'washte
-- map.nodes[57004840] = Rare({id = 104513}) -- Defilia
-- map.nodes[54407460] = Rare({id = 101649}) -- Frostshard
-- map.nodes[58604860] = Rare({id = 104517}) -- Mawat'aki
-- map.nodes[33802160] = Rare({id = 104484}) -- Olokk the Shipbreaker
-- map.nodes[52605840] = Rare({id = 104524}) -- Ormagrogg
-- map.nodes[47003300] = Rare({id = 99846, class = 'SHAMAN'}) -- Raging Earth

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

local TreasuresOfHighmountain = Achievement({
    id = 11257,
    criteria = {id = 1, qty = true}
})

tt.nodes[63525933] = Treasure({
    label = L['steamy_jewelry_box'],
    quest = 39531,
    parent = map.id,
    rewards = {TreasuresOfHighmountain}
})

map.nodes[52325139] = Treasure({
    label = L['totally_safe_treasure_chest'],
    quest = 39766,
    rewards = {
        Achievement({id = 11264, criteria = 33334}), -- Adventurer of Highmountain
        TreasuresOfHighmountain
    }
})

map.nodes[41004932] = Treasure({
    label = '{npc:95958}',
    quest = 39494,
    rewards = {TreasuresOfHighmountain},
    pois = {
        Path({
            37384655, 37654716, 38344758, 38764761, 39334785, 39934854,
            40084890, 40434918, 41004932, 41774959, 42045048, 42115143,
            42005206, 42075271
        }), POI({37384655, 42075271})
    }
})

map.nodes[46662813] = Treasure({
    label = L['glimmering_treasure_chest'],
    quest = 40482,
    note = L['treasure_40482'],
    rewards = {TreasuresOfHighmountain}
})

map.nodes[54184160] = Treasure({
    label = L['glimmering_treasure_chest'],
    quest = 40483,
    rewards = {TreasuresOfHighmountain}
})

Map({id = 655}).nodes[52892396] = Treasure({
    label = L['glimmering_treasure_chest'],
    quest = 40476,
    parent = {id = map.id, note = L['in_cave'], pois = {POI({38326116})}},
    rewards = {TreasuresOfHighmountain}
})

map.nodes[45553459] = Treasure({
    label = L['small_treasure_chest'],
    quest = 40481,
    rewards = {TreasuresOfHighmountain}
})

map.nodes[45182745] = Treasure({
    label = L['small_treasure_chest'],
    quest = 44279,
    note = L['in_water_cave'],
    rewards = {TreasuresOfHighmountain},
    pois = {POI({45772738})}
})

map.nodes[53504350] = Treasure({
    label = L['small_treasure_chest'],
    quest = 40484,
    note = L['in_cave'],
    rewards = {TreasuresOfHighmountain},
    pois = {POI({55134426})}
})

map.nodes[37353380] = Treasure({
    label = L['small_treasure_chest'],
    quest = 40477,
    rewards = {TreasuresOfHighmountain}
})

map.nodes[53045223] = Treasure({
    label = L['small_treasure_chest'],
    quest = 40493,
    note = L['in_cave'],
    rewards = {TreasuresOfHighmountain},
    pois = {POI({50115364})}
})

map.nodes[53063947] = Treasure({
    label = L['small_treasure_chest'],
    quest = 40499,
    rewards = {TreasuresOfHighmountain}
})

neltharions_vault.nodes[60535467] = Treasure({
    label = L['small_treasure_chest'],
    quest = 40508,
    parent = {id = map.id, note = L['in_cave'], pois = {POI({44967201})}},
    rewards = {TreasuresOfHighmountain}
})

map.nodes[43747275] = Treasure({
    label = L['small_treasure_chest'],
    quest = 40510,
    rewards = {TreasuresOfHighmountain}
})

map.nodes[50253862] = Treasure({
    label = L['small_treasure_chest'],
    quest = 40497,
    note = L['in_cave'],
    rewards = {TreasuresOfHighmountain},
    pois = {POI({51493734})}
})

map.nodes[53404868] = Treasure({
    label = L['small_treasure_chest'],
    quest = 40500,
    rewards = {TreasuresOfHighmountain}
})

map.nodes[55154966] = Treasure({
    label = L['small_treasure_chest'],
    quest = 40487,
    rewards = {TreasuresOfHighmountain}
})

map.nodes[46814014] = Treasure({
    label = L['small_treasure_chest'],
    quest = 40507,
    rewards = {TreasuresOfHighmountain}
})

map.nodes[50813505] = Treasure({
    label = L['small_treasure_chest'],
    quest = 40506,
    rewards = {TreasuresOfHighmountain}
})

map.nodes[42503504] = Treasure({
    label = L['small_treasure_chest'],
    quest = 40480,
    rewards = {TreasuresOfHighmountain}
})

tt.nodes[13715540] = Treasure({
    label = L['small_treasure_chest'],
    quest = 40491,
    parent = map.id,
    rewards = {TreasuresOfHighmountain}
})

tt.nodes[32354170] = Treasure({
    label = L['small_treasure_chest'],
    quest = 40475,
    parent = map.id,
    rewards = {TreasuresOfHighmountain}
})

tt.nodes[50607540] = Treasure({
    label = L['small_treasure_chest'],
    quest = 40472,
    parent = map.id,
    rewards = {TreasuresOfHighmountain}
})

map.nodes[46237341] = Treasure({
    label = L['treasure_chest'],
    quest = 40489,
    note = L['in_cave'],
    rewards = {TreasuresOfHighmountain},
    pois = {POI({41447253})}
})

map.nodes[47634406] = Treasure({
    label = L['treasure_chest'],
    quest = 39503,
    note = L['rocfeather_kite_note'],
    fgroup = 'rocfeather_kite',
    rewards = {
        TreasuresOfHighmountain, Item({item = 131926}) -- Delicate Roc Feather for Rocfeather Skyhorn Kite
    }
})

map.nodes[50983880] = Treasure({
    label = L['treasure_chest'],
    quest = 40498,
    rewards = {TreasuresOfHighmountain}
})

map.nodes[36616213] = Treasure({
    label = L['treasure_chest'],
    quest = 40488,
    rewards = {TreasuresOfHighmountain}
})

Map({id = 654}).nodes[60622506] = Treasure({
    label = L['treasure_chest'],
    quest = 40494,
    parent = {id = map.id, note = L['in_cave'], pois = {POI({38544276})}},
    rewards = {TreasuresOfHighmountain}

})

neltharions_vault.nodes[40235008] = Treasure({
    label = L['treasure_chest'],
    quest = 40509,
    parent = {id = map.id, note = L['in_cave'], pois = {POI({44967201})}},
    rewards = {TreasuresOfHighmountain}
})

map.nodes[39307620] = Treasure({
    label = L['treasure_chest'],
    quest = 40473,
    rewards = {TreasuresOfHighmountain}
}) -- probably phased

map.nodes[40983446] = Treasure({
    label = L['treasure_chest'],
    quest = 40496,
    note = L['in_cave'],
    rewards = {TreasuresOfHighmountain},
    pois = {POI({51493734})}
})

map.nodes[53625103] = Treasure({
    label = '{item:131811}',
    icon = 604252,
    quest = 39824,
    note = L['rocfeather_kite_note'],
    fgroup = 'rocfeather_kite',
    rewards = {
        TreasuresOfHighmountain, Item({item = 131810}), Toy({item = 131811})
    }
    -- ,pois = {
    --     Path({53625103,48394017}), -- Gleaming Roc Feather
    --     Path({53625103,47634406}), -- Delicate Roc Feather
    --     Path({53625103,49643775}) -- Shimmering Roc Feather
    -- }
})

grotto.nodes[36067252] = Treasure({
    label = L['treasure_chest'],
    quest = 40478,
    parent = {id = map.id, note = L['in_cave'], pois = {POI({})}},
    rewards = {TreasuresOfHighmountain}
})

map.nodes[49643775] = Treasure({
    label = L['treasure_chest'],
    quest = 39466,
    note = L['rocfeather_kite_note'],
    fgroup = 'rocfeather_kite',
    rewards = {
        TreasuresOfHighmountain, Item({item = 131927}) -- Shimmering Roc Feather for Rocfeather Skyhorn Kite
    }
})

map.nodes[52033241] = Treasure({
    label = L['treasure_chest'],
    quest = 40505,
    rewards = {TreasuresOfHighmountain}
})

map.nodes[42202731] = Treasure({
    label = L['treasure_chest'],
    quest = 40479,
    rewards = {TreasuresOfHighmountain}
})

tt_hoc.nodes[62826761] = Treasure({
    label = L['treasure_chest'],
    quest = 40471,
    parent = {
        {id = tt.id, note = L['tt_hoc']}, {id = map.id, note = L['tt_hoc']}
    },
    rewards = {TreasuresOfHighmountain}
})

tt.nodes[31963835] = Treasure({
    label = L['treasure_chest'],
    quest = 44352,
    note = L['in_water_cave'],
    parent = map.id,
    rewards = {TreasuresOfHighmountain},
    pois = {POI({32144497})}
})

map.nodes[39386228] = Treasure({
    label = L['treasure_chest'],
    quest = 40474,
    rewards = {TreasuresOfHighmountain}
})

map.nodes[39535744] = Treasure({
    label = L['treasure_chest'],
    quest = 39812,
    note = L['in_small_cave'],
    rewards = {TreasuresOfHighmountain},
    pois = {POI({39945781})}
})

map.nodes[46362163] = Treasure({
    label = L['small_treasure_chest'],
    quest = 44280,
    rewards = {TreasuresOfHighmountain}
})

map.nodes[49647128] = Treasure({
    label = L['small_treasure_chest'],
    quest = 39606,
    rewards = {TreasuresOfHighmountain}
})

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[47606900] = PetBattle({
    id = 99077,
    note = L['bredda_tenderhide_note'],
    rewards = {
        Achievement({id = 10876, criteria = 31531}), ns.reward.Spacer(),
        Achievement({id = 9686, criteria = 6, oneline = true}), -- Aquatic
        Achievement({id = 9687, criteria = 6, oneline = true}), -- Beast
        Achievement({id = 9688, criteria = 6, oneline = true}), -- Critter
        Achievement({id = 9689, criteria = 6, oneline = true}), -- Dragon
        Achievement({id = 9690, criteria = 6, oneline = true}), -- Elemental
        Achievement({id = 9691, criteria = 6, oneline = true}), -- Flying
        Achievement({id = 9692, criteria = 6, oneline = true}), -- Humanoid
        Achievement({id = 9693, criteria = 6, oneline = true}), -- Magic
        Achievement({id = 9694, criteria = 6, oneline = true}), -- Mechanical
        Achievement({id = 9695, criteria = 6, oneline = true}) -- Undead
    }
}) -- Bredda Tenderhide

map.nodes[41803580] = PetBattle({
    id = 99150,
    note = L['general_pet_tamer_note'] .. '\n\n' .. L['grixis_tinypop_note'],
    rewards = {
        Achievement({id = 10876, criteria = 31532}), ns.reward.Spacer(),
        Achievement({id = 9686, criteria = 7, oneline = true}), -- Aquatic
        Achievement({id = 9687, criteria = 7, oneline = true}), -- Beast
        Achievement({id = 9688, criteria = 7, oneline = true}), -- Critter
        Achievement({id = 9689, criteria = 7, oneline = true}), -- Dragon
        Achievement({id = 9690, criteria = 7, oneline = true}), -- Elemental
        Achievement({id = 9691, criteria = 7, oneline = true}), -- Flying
        Achievement({id = 9692, criteria = 7, oneline = true}), -- Humanoid
        Achievement({id = 9693, criteria = 7, oneline = true}), -- Magic
        Achievement({id = 9694, criteria = 7, oneline = true}), -- Mechanical
        Achievement({id = 9695, criteria = 7, oneline = true}) -- Undead
    }
}) -- Grixis Tinypop

map.nodes[53205300] = PetBattle({
    id = 104782,
    note = L['general_pet_tamer_note'],
    rewards = {Achievement({id = 10876, criteria = 31533})}
}) -- Hungry Icefang

map.nodes[43200760] = PetBattle({
    id = 105841,
    note = L['general_pet_tamer_note'],
    rewards = {Achievement({id = 10876, criteria = 31534})}
}) -- Lil'idan

grotto.nodes[47744458] = PetBattle({
    id = 104553,
    note = format('%s\n\n%s\n%s', L['general_pet_tamer_note'], L['in_cave'],
        L['odrogg_note']),
    parent = {id = map.id, note = L['in_cave'], pois = {POI({42572533})}},
    rewards = {
        Achievement({id = 10876, criteria = 31535}), ns.reward.Spacer(),
        Achievement({id = 9686, criteria = 8, oneline = true}), -- Aquatic
        Achievement({id = 9687, criteria = 8, oneline = true}), -- Beast
        Achievement({id = 9688, criteria = 8, oneline = true}), -- Critter
        Achievement({id = 9689, criteria = 8, oneline = true}), -- Dragon
        Achievement({id = 9690, criteria = 8, oneline = true}), -- Elemental
        Achievement({id = 9691, criteria = 8, oneline = true}), -- Flying
        Achievement({id = 9692, criteria = 8, oneline = true}), -- Humanoid
        Achievement({id = 9693, criteria = 8, oneline = true}), -- Magic
        Achievement({id = 9694, criteria = 8, oneline = true}), -- Mechanical
        Achievement({id = 9695, criteria = 8, oneline = true}) -- Undead
    }
}) -- Odrogg

map.nodes[32705760] = PetBattle({
    id = 98572,
    note = L['general_pet_tamer_note'],
    rewards = {Achievement({id = 10876, criteria = 31536})}
}) -- Rocko

-------------------------------------------------------------------------------
----------------------------- BROKEN ISLES SAFARI -----------------------------
-------------------------------------------------------------------------------

map.nodes[44005120] = ns.node.Safari.BlackFootedFoxKit({
    pois = {
        POI({
            26006200, 34002440, 34006160, 35407080, 35802300, 35802360,
            36006640, 36006660, 36802080, 37206680, 39804740, 41405180,
            42604660, 43405440, 44005120, 46606800, 48204400, 48206700,
            49004420, 50406480, 50606480, 51204980, 51804560, 52004420,
            52203820, 52604320, 55006200, 56605560, 57406300
        })
    }
})

map.nodes[45807120] = ns.node.Safari.BurrowSpiderling({
    pois = {
        POI({
            42203600, 42803240, 42803260, 43203000, 43402440, 44403040,
            44403060, 44803500, 45807120, 46802980, 46803340, 47802420,
            48003260, 48207360, 51007320, 51007560
        })
    }
})

map.nodes[42601080] = ns.node.Safari.CoralbackFiddler({
    pois = {
        POI({
            25803580, 26403480, 27003300, 27203420, 27402980, 27804820,
            28003400, 28403100, 29403600, 30403380, 31402500, 31602540,
            32802200, 33602100, 35001880, 35202040, 35802020, 36201660,
            36201940, 37601580, 38001420, 39001400, 39401460, 39801240,
            41001020, 42400840, 42400900, 42601080, 43001000, 43400840,
            44001020, 44001220, 44200700, 44801280, 45201180, 46400920,
            46601120, 47400720, 47600880, 48400700, 48401340, 48401360,
            49000900, 49400980, 57002040
        })
    }
})

map.nodes[50403600] = ns.node.Safari.EchoBatling({
    pois = {
        POI({
            40804560, 49203480, 50403600, 50603540, 50603600, 49604040,
            50603620, 54604100, 54804260
        })
    }
})

map.nodes[49603640] = ns.node.Safari.HogNosedBat({
    pois = {
        POI({
            46403940, 48403680, 49203620, 49403680, 49603640, 49603660,
            50403200, 50403500, 50803360, 52803420, 53203540, 53403560
        })
    }
})

map.nodes[56406500] = ns.node.Safari.LongEaredOwl({
    pois = {POI({35002460, 55206520, 56005440, 56406500, 57605520, 58002760})}
})

map.nodes[46603280] = ns.node.Safari.MistFoxKit({
    pois = {POI({26404380, 46603280, 47803020})}
})

map.nodes[48201220] = ns.node.Safari.MudshellConch({
    pois = {
        POI({
            36201700, 37001620, 38601440, 39601360, 40001200, 42201020,
            43400780, 43600780, 43600900, 45600900, 45601060, 46200680,
            46801020, 47600780, 47801080, 48201220, 49200700, 49400920,
            49400960, 49600820, 56202020, 56202140, 57002120
        })
    }
})

map.nodes[54608960] = ns.node.Safari.NorthernHawkOwl({
    pois = {
        POI({
            47607280, 47607480, 49207860, 49607720, 49807540, 50007040,
            50007800, 50208180, 50407940, 51007800, 51207520, 51408020,
            52208320, 52407860, 53007680, 53008440, 53008460, 53408120,
            53608120, 54407240, 54408960, 54608960, 54807920, 54808140,
            55008600, 55407020, 56007720, 56407120, 56408000, 56608320,
            57207180, 58207100
        })
    }
})

map.nodes[41805940] = ns.node.Safari.SpiketailBeaver({
    pois = {
        POI({
            27405520, 27805460, 31606220, 33206480, 33806340, 34806740,
            34806760, 34806900, 38206420, 38606460, 39404740, 39404780,
            40206260, 40604880, 40605920, 41005760, 41405020, 41605020,
            41606020, 41805440, 41805940, 42005460, 42205300, 42205560,
            42605940, 42605960, 44804600, 44804820, 44806700, 45204460,
            47206740, 47806700, 48206760, 49006760, 49406680, 50406580,
            50606580, 51606380, 51606520, 52206120
        })
    }
})
