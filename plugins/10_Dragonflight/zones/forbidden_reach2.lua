-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible
local Node = ns.node.Node
local NPC = ns.node.NPC
local PetBattle = ns.node.PetBattle
local Rare = ns.node.Rare
local Vendor = ns.node.Vendor

local Dragonglyph = ns.node.Dragonglyph
local ElusiveCreature = ns.node.ElusiveCreature
local Flag = ns.node.Flag
local SignalTransmitter = ns.node.SignalTransmitter

local Achievement = ns.reward.Achievement
local Currency = ns.reward.Currency
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Recipe = ns.reward.Recipe
local Section = ns.reward.Section
local Spacer = ns.reward.Spacer
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

local Arrow = ns.poi.Arrow
local Circle = ns.poi.Circle
local Path = ns.poi.Path
local POI = ns.poi.POI

local DC = ns.DRAGON_CUSTOMIZATIONS

-------------------------------------------------------------------------------

local map = Map({id = 2151, settings = true})

local dragonskullIsland = Map({id = 2150, settings = false}) -- Dragonskull Island
local froststoneVault = Map({id = 2154, settings = false}) -- Froststone Vault
local siegeCreche = Map({id = 2100, settings = false}) -- The Siege Crech
local supportCreche = Map({id = 2101, settings = false}) -- The Support Creche
local warCreche = Map({id = 2102, settings = false}) -- The War Creche

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[58174826] = Rare({
    id = 200584,
    vignette = 5490,
    quest = 73111,
    location = L['in_small_cave'],
    rewards = {
        Achievement({id = 17525, criteria = 58458}), -- Champion of the Forbidden Reach
        Mount({item = 192772, id = 1619}), -- Ancient Salamanther
        Pet({item = 193364, id = 3291}), -- Scruffles
        Item({item = 204276}), -- Untapped Forbidden Knowledge
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    },
    pois = {POI({58934944})} -- Entrance
}) -- Vraken the Hunter

map.nodes[28303794] = Rare({
    id = 200537,
    vignette = 5488,
    quest = 73095,
    location = L['in_water_cave'],
    rewards = {
        Achievement({id = 17525, criteria = 58459}), -- Champion of the Forbidden Reach
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    },
    pois = {POI({27184089})} -- Entrance
}) -- Gahz'raxes

map.nodes[41021436] = Rare({
    id = 200579,
    vignette = 5489,
    quest = 73100,
    rewards = {
        Achievement({id = 17525, criteria = 58460}), -- Champion of the Forbidden Reach
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    }
}) -- Ishyra

map.nodes[47722071] = Rare({
    id = 200600,
    vignette = 5491,
    quest = 73117,
    location = L['in_small_cave'],
    rewards = {
        Achievement({id = 17525, criteria = 58461}), -- Champion of the Forbidden Reach
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    },
    pois = {POI({46961955})} -- Entrance
}) -- Reisa the Drowned

supportCreche.nodes[35254374] = Rare({
    id = 200610,
    vignette = 5492,
    quest = 73118,
    location = L['in_the_support_creche'],
    note = L['duzalgor_note'],
    parent = {id = map.id, pois = {POI({36673239})}},
    rewards = {
        Achievement({id = 17525, criteria = 58462}), -- Champion of the Forbidden Reach
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    }
}) -- Duzalgor

map.nodes[43736121] = Rare({
    id = 200681,
    vignette = 5497,
    quest = 73150,
    location = L['in_small_cave'],
    rewards = {
        Achievement({id = 17525, criteria = 58463}), -- Champion of the Forbidden Reach
        Pet({item = 193374, id = 3293}), -- Ashenwing
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    },
    pois = {
        POI({41176055, 41526214, 41995819, 43565838}) -- Entrances
    }
}) -- Bonesifter Marwak

map.nodes[44727943] = Rare({
    id = 200717,
    vignette = 5498,
    quest = 73152,
    rewards = {
        Achievement({id = 17525, criteria = 58464}), -- Champion of the Forbidden Reach
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    }
}) -- Galakhad

map.nodes[43949052] = Rare({
    id = 200721,
    vignette = 5500,
    quest = 73154,
    rewards = {
        Achievement({id = 17525, criteria = 58465}), -- Champion of the Forbidden Reach
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    }
}) -- Grugoth the Hullcrusher

map.nodes[59695883] = Rare({
    id = 200885,
    vignette = 5514,
    quest = 73222,
    location = L['in_small_cave'],
    rewards = {
        Achievement({id = 17525, criteria = 58466}), -- Champion of the Forbidden Reach
        Mount({item = 192772, id = 1619}), -- Ancient Salamanther
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    },
    pois = {POI({60845827})} -- Entrance
}) -- Lady Shaz'ra

map.nodes[72986738] = Rare({
    id = 200904,
    vignette = 5517,
    quest = 73229,
    location = L['in_small_cave'],
    rewards = {
        Achievement({id = 17525, criteria = 58467}), -- Champion of the Forbidden Reach
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    },
    pois = {POI({70776649, 72086535, 71006875, 71906968})} -- Entrances
}) -- Veltrax

map.nodes[67924531] = Rare({
    id = 201181,
    vignette = 5544,
    quest = 74283,
    location = L['in_small_cave'],
    note = L['mad_eye_carrey_note'],
    rewards = {
        Achievement({id = 17525, criteria = 58468}), -- Champion of the Forbidden Reach
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    },
    pois = {POI({69024597})} -- Entrance
}) -- Mad-Eye Carrey

map.nodes[61723400] = Rare({
    id = 201013,
    vignette = 5526,
    quest = 73409,
    note = L['wymslayer_angvardi_note'],
    rewards = {
        Achievement({id = 17525, criteria = 58469}), -- Champion of the Forbidden Reach
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    }
}) -- Wyrmslayer Angvardi

warCreche.nodes[42958468] = Rare({
    id = 200960,
    vignette = 5520,
    quest = 73367,
    location = L['in_the_war_creche'],
    parent = {id = map.id, pois = {POI({51895982})}},
    rewards = {
        Achievement({id = 17525, criteria = 58470}), -- Champion of the Forbidden Reach
        Pet({item = 191930, id = 3261}), -- Wakyn
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    }
}) -- Warden Entrix

map.nodes[36731223] = Rare({
    id = 200956,
    vignette = 5519,
    quest = 73366,
    rewards = {
        Achievement({id = 17525, criteria = 58471}), -- Champion of the Forbidden Reach
        Mount({item = 192772, id = 1619}), -- Ancient Salamanther
        Item({item = 202196}), -- Zskera Vault Key
        DC.WindborneVelocidrake.ShriekerPattern, Currency({id = 2118}) -- Elemental Overflow
    }
}) -- "Captain" Ookbeard

warCreche.nodes[67355579] = Rare({
    id = 200978,
    vignette = 5521,
    quest = 73385,
    location = L['in_the_war_creche'],
    parent = {id = map.id, pois = {POI({51895982})}},
    rewards = {
        Achievement({id = 17525, criteria = 58472}), -- Champion of the Forbidden Reach
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    }
}) -- Pyrachniss

siegeCreche.nodes[58993931] = Rare({
    id = 200911,
    vignette = 5515,
    quest = 73225,
    location = L['in_the_siege_creche'],
    parent = {id = map.id, pois = {POI({74425466})}},
    rewards = {
        Achievement({id = 17525, criteria = 58473}), -- Champion of the Forbidden Reach
        DC.WindborneVelocidrake.HeavyScales, Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    }
}) -- Volcanakk

-------------------------------------------------------------------------------

local LootSpecialist = Class('LootSpecialist', Rare, {
    id = 203353,
    vignette = 5635,
    quest = 74936,
    note = L['loot_specialist_note'],
    fgroup = 'loot_specialist',
    rewards = {
        Achievement({id = 17525, criteria = 58830}), -- Champion of the Forbidden Reach
        DC.CliffsideWylderdrake.CoiledHorns, Item({item = 204276}), -- Untapped Forbidden Knowledge
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    }
}) -- Loot Specialist

map.nodes[14971438] = LootSpecialist()
map.nodes[47394256] = LootSpecialist()
map.nodes[53464716] = LootSpecialist()

dragonskullIsland.nodes[28984051] = LootSpecialist({
    location = L['in_dragonskull_island'],
    parent = {id = map.id, pois = {POI({74353661})}}
})

-------------------------------------------------------------------------------
------------------------------ PROFESSION RARES  ------------------------------
-------------------------------------------------------------------------------

local ProfessionRare = Class('ProfessionRare', NPC, {
    icon = 'peg_rd',
    scale = 1.5,
    group = ns.groups.PROFESSION_RARES
}) -- Profession Rare

function ProfessionRare.getters:sublabel()
    return format(L['profession_required'], self.profession:GetName())
end

function ProfessionRare.getters:requires()
    return ns.requirement.Item(self.summoningItem)
end

function ProfessionRare.getters:note()
    local item = self.summoningItem
    local object = self.summoningObject
    if self.summoningReagent and self.summoningRecipe then
        local reagent = self.summoningReagent
        local recipe = self.summoningRecipe
        local note = format(L['pr_crafting_note'], item, reagent, object)
        note = note .. '\n\n' .. format(L['pr_recipe_note'], recipe)
        return note .. '\n\n' .. L['pr_summoning_note']
    else
        local note = format(L['pr_gathering_note'], item, object)
        return note .. '\n\n' .. L['pr_summoning_note']
    end
end

function ProfessionRare.getters:rlabel()
    return ns.GetIconLink(self.profession.icon, 13)
end

local Tectonus = Class('Tectonus', ProfessionRare, {
    id = 200619,
    vignette = 5493,
    quest = 74300,
    profession = ns.professions.MINING,
    summoningItem = 203418, -- Amplified Quaking Stone
    summoningObject = L['pr_rumbling_deposit'], -- Rumbling Deposit
    fgroup = 'fgroup_tectonus',
    rewards = {
        Achievement({id = 17525, criteria = 58474}) -- Champion of the Forbidden Reach
    }
}) -- Tectonus

map.nodes[62098142] = Tectonus()

map.nodes[43264887] = Tectonus({
    location = L['in_small_cave'],
    pois = {POI({45284287})} -- Entrance
})

map.nodes[78743554] = Tectonus({
    location = L['in_dragonskull_island'],
    pois = {POI({74353661})} -- Entrance
})

dragonskullIsland.nodes[57157211] = Tectonus({
    location = L['in_dragonskull_island']
})

local SirPinchalot = Class('SirPinchalot', ProfessionRare, {
    id = 200620,
    vignette = 5494,
    quest = 74305,
    profession = ns.professions.FISHING,
    summoningItem = 203419, -- Elusive Croaking Crab
    summoningObject = L['pr_empty_crab_trap'], -- Empty Crab Trap
    fgroup = 'fgroup_sirpinchalot',
    rewards = {
        Achievement({id = 17525, criteria = 58475}) -- Champion of the Forbidden Reach
    }
}) -- Sir Pinchalot

map.nodes[70524149] = SirPinchalot()
map.nodes[23076701] = SirPinchalot()
map.nodes[47789090] = SirPinchalot()

local Manathema = Class('Manathema', ProfessionRare, {
    id = 200621,
    vignette = 5495,
    quest = 74306,
    profession = ns.professions.ENCHANTING,
    summoningItem = 203410, -- Glowing Crystal Bookmark
    summoningObject = L['pr_book_of_arcane_entities'], -- Book of Arcane Entities
    summoningReagent = 203401, -- Dull Crystal
    summoningRecipe = 203423, -- Formula: Glowing Crystal Bookmark
    fgroup = 'fgroup_manathema',
    rewards = {
        Achievement({id = 17525, criteria = 58476}) -- Champion of the Forbidden Reach
    }
}) -- Manathema

map.nodes[55633611] = Manathema({location = L['in_the_lost_atheneum']})

map.nodes[47106485] = Manathema()

map.nodes[46207802] = Manathema({
    location = L['in_the_war_creche'],
    pois = {POI({51935970})} -- Entrance
})

warCreche.nodes[43017871] = Manathema({location = L['in_the_war_creche']})

local Snarfang = Class('Snarfang', ProfessionRare, {
    id = 200622,
    vignette = 5496,
    quest = 74307,
    profession = ns.professions.LEATHERWORKING,
    summoningItem = 203414, -- Reinforced Pristine Leather
    summoningObject = L['pr_tuskarr_tanning_rack'], -- Tuskarr Tanning Rack
    summoningReagent = 203405, -- Pristine Pelt
    summoningRecipe = 203427, -- Pattern: Reinforced Pristine Leather
    fgroup = 'fgroup_snarfang',
    rewards = {
        Achievement({id = 17525, criteria = 58477}), -- Champion of the Forbidden Reach
        Item({item = 203648}), -- Primalist Necklace
        Item({item = 190456}), -- Artisan's Mettle
        Currency({id = 2118}) -- Elemental Overflow
    }
}) -- Snarfang

map.nodes[37134711] = Snarfang()
map.nodes[48724945] = Snarfang()
map.nodes[64967269] = Snarfang()

local Gareed = Class('Gareed', ProfessionRare, {
    id = 200722,
    vignette = 5499,
    quest = 74321,
    profession = ns.professions.TAILORING,
    summoningItem = 203415, -- Morqut Kite
    summoningObject = L['pr_tuskarr_kite_post'], -- Tuskarr Kite Post
    summoningReagent = 203406, -- Torn Morqut Kite
    summoningRecipe = 203428, -- Pattern: Morqut Kite
    fgroup = 'fgroup_gareed',
    rewards = {
        Achievement({id = 17525, criteria = 58478}) -- Champion of the Forbidden Reach
    }
}) -- Gareed

map.nodes[57654840] = Gareed()
map.nodes[31185342] = Gareed()
map.nodes[60299154] = Gareed()

local Faunos = Class('Faunos', ProfessionRare, {
    id = 200725,
    vignette = 5501,
    quest = 74322,
    profession = ns.professions.SKINNING,
    summoningItem = 203417, -- Razor-Sharp Animal Bone
    summoningObject = L['pr_raw_argali_pelts'], -- Raw Argali Pelts
    fgroup = 'fgroup_faunos',
    rewards = {
        Achievement({id = 17525, criteria = 58479}) -- Champion of the Forbidden Reach
    }
}) -- Faunos

map.nodes[45013659] = Faunos()
map.nodes[50488602] = Faunos()
map.nodes[70664613] = Faunos()

local TidesmithZarviss = Class('TidesmithZarviss', ProfessionRare, {
    id = 200730,
    vignette = 5502,
    quest = 74325,
    profession = ns.professions.BLACKSMITHING,
    summoningItem = 203408, -- Ceremonial Trident
    summoningObject = L['pr_farescale_shrine'], -- Farscale Shrine
    summoningReagent = 203399, -- Damaged Trident
    summoningRecipe = 203421, -- Plans: Ceremonial Trident
    fgroup = 'fgroup_tidesmithzarviss',
    rewards = {
        Achievement({id = 17525, criteria = 58480}) -- Champion of the Forbidden Reach
    }
}) -- Tidesmith Zarviss

map.nodes[67257598] = TidesmithZarviss()
map.nodes[63096158] = TidesmithZarviss()

map.nodes[80035881] = TidesmithZarviss({
    location = L['in_small_cave'],
    pois = {POI({80546045})}
})

local Arcantrix = Class('Arcantrix', ProfessionRare, {
    id = 200737,
    vignette = 5503,
    quest = 74328,
    profession = ns.professions.INSCRIPTION,
    summoningItem = 203412, -- Dispelling Rune
    summoningObject = L['pr_spellsworn_ward'], -- Spellsword Ward
    summoningReagent = 203403, -- Hastily Scrawled Rune
    summoningRecipe = 203425, -- Technique: Dispellng Rune
    fgroup = 'fgroup_arcantrix',
    rewards = {
        Achievement({id = 17525, criteria = 58481}) -- Champion of the Forbidden Reach
    }
}) -- Arcantrix

map.nodes[61256441] = Arcantrix()
map.nodes[49264174] = Arcantrix()

map.nodes[48347324] = Arcantrix({
    location = L['in_the_war_creche'],
    pois = {POI({51935970})} -- Entrance
})

warCreche.nodes[53105781] = Arcantrix({location = L['in_the_war_creche']})

local Kangalo = Class('Kangalo', ProfessionRare, {
    id = 200738,
    vignette = 5504,
    quest = 74329,
    profession = ns.professions.HERBALISM,
    summoningItem = 203416, -- Dormant Lifebloom Seeds
    summoningObject = L['pr_awakened_soil'], -- Awakened Soil
    fgroup = 'fgroup_kangalo',
    rewards = {
        Achievement({id = 17525, criteria = 58482}) -- Champion of the Forbidden Reach
    }
}) -- Kangalo

map.nodes[35354005] = Kangalo()
map.nodes[40265336] = Kangalo()
map.nodes[56435914] = Kangalo()
map.nodes[75143190] = Kangalo()

local Fimbul = Class('Fimbul', ProfessionRare, {
    id = 200739,
    vignette = 5505,
    quest = 74330,
    profession = ns.professions.ENGINEERING,
    summoningItem = 203411, -- Gnomish Voicebox
    summoningObject = L['pr_damaged_buzzspire'], -- Damaged Buzzspire 505
    summoningReagent = 203402, -- Broken Gnomish Voicebox
    summoningRecipe = 203424, -- Schematic: Gnomish Voicebox
    fgroup = 'fgroup_fimbul',
    rewards = {
        Achievement({id = 17525, criteria = 58483}) -- Champion of the Forbidden Reach
    }
}) -- Fimbul

map.nodes[44307465] = Fimbul()
map.nodes[54707279] = Fimbul()
map.nodes[61172683] = Fimbul()

local AgniBlazehoof = Class('AgniBlazehoof', ProfessionRare, {
    id = 200740,
    vignette = 5506,
    quest = 74331,
    profession = ns.professions.ALCHEMY,
    summoningItem = 203407, -- Draconic Suppression Powder
    summoningObject = L['pr_volatile_brazier'], -- Volatile Brazier
    summoningReagent = 203398, -- Essence of Dampening
    summoningRecipe = 203420, -- Recipe: Draconic Suppression Powder
    fgroup = 'fgroup_agniblazehoof',
    rewards = {
        Achievement({id = 17525, criteria = 58484}) -- Champion of the Forbidden Reach
    }
}) -- Agni Blazehoof

map.nodes[56393902] = AgniBlazehoof()
map.nodes[67256157] = AgniBlazehoof()
map.nodes[69745464] = AgniBlazehoof()

local Luttrok = Class('Luttrok', ProfessionRare, {
    id = 200742,
    vignette = 5507,
    quest = 74332,
    profession = ns.professions.COOKING,
    summoningItem = 203409, -- Sparkling Spice Pouch
    summoningObject = L['pr_spiceless_stew'], -- Spiceless Stew
    summoningReagent = 203400, -- Lackluster Spices
    summoningRecipe = 203422, -- Recipe: Sparkling Spice Pouch
    fgroup = 'fgroup_luttrok',
    rewards = {
        Achievement({id = 17525, criteria = 58485}), -- Champion of the Forbidden Reach
        Pet({item = 193235, id = 3285}) -- Luvvy
    }
}) -- Luttrok

map.nodes[40265337] = Luttrok()
map.nodes[54484598] = Luttrok()
map.nodes[55695153] = Luttrok()

local Amephyst = Class('Amephyst', ProfessionRare, {
    id = 200743,
    vignette = 5508,
    quest = 74333,
    profession = ns.professions.JEWELCRAFTING,
    summoningItem = 203413, -- Tuning Fork
    summoningObject = L['pr_resonant_crystal'], -- Resonant Crystal
    summoningReagent = 203404, -- Crystal Fork
    summoningRecipe = 203426, -- Design: Tuning Fork
    fgroup = 'fgroup_amephyst',
    rewards = {
        Achievement({id = 17525, criteria = 58486}), -- Champion of the Forbidden Reach
        Recipe({item = 204219, profession = 755}) -- Design: Unstable Elementium
    }
}) -- Amephyst

map.nodes[28925706] = Amephyst({
    location = L['in_cave'],
    pois = {POI({31006084})} -- Entrance
})

map.nodes[42694483] = Amephyst({
    location = L['in_small_cave'],
    pois = {POI({45284287})} -- Entrance
})

map.nodes[81193376] = Amephyst({
    location = L['in_dragonskull_island'],
    pois = {POI({74723614})} -- Entrance
})

dragonskullIsland.nodes[84045351] = Amephyst({
    location = L['in_dragonskull_island']
})

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[48947352] = ns.node.ElementalChest({
    label = L['storm_bound_chest_label'],
    quest = 74567,
    areaPOI = 7415,
    rewards = {
        Item({item = 202196}), -- Zskera Vault Key
        Item({item = 204577}) -- Condensed Nature Magic
    }
}) -- Storm-Bound Chest

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[13095369] = PetBattle({
    id = 200689,
    rewards = {Achievement({id = 17541, criteria = 58574})} -- Global Swarming
}) -- Wildfire

map.nodes[18371315] = PetBattle({
    id = 200769,
    rewards = {Achievement({id = 17541, criteria = 58572})} -- Global Swarming
}) -- Vortex

map.nodes[67251238] = PetBattle({
    id = 200770,
    rewards = {Achievement({id = 17541, criteria = 58573})} -- Global Swarming
}) -- Temblor

map.nodes[89366022] = PetBattle({
    id = 200772,
    rewards = {Achievement({id = 17541, criteria = 58575})} -- Global Swarming
}) -- Flow

-------------------------------------------------------------------------------
-------------------------------- DRAGON GLYPHS --------------------------------
-------------------------------------------------------------------------------

map.nodes[18431305] = Dragonglyph({
    rewards = {Achievement({id = 17411, criteria = 1})}
}) -- Forbidden Reach Glyph Hunter: Warlord's Perch

map.nodes[20529141] = Dragonglyph({
    rewards = {Achievement({id = 17411, criteria = 2})}
}) -- Forbidden Reach Glyph Hunter: Talon's Watch

map.nodes[62533242] = Dragonglyph({
    rewards = {Achievement({id = 17411, criteria = 3})}
}) -- Forbidden Reach Glyph Hunter: Froststone Peak

map.nodes[79433260] = Dragonglyph({
    rewards = {Achievement({id = 17411, criteria = 4})}
}) -- Forbidden Reach Glyph Hunter: Dragonskull Island

map.nodes[77315509] = Dragonglyph({
    rewards = {Achievement({id = 17411, criteria = 5})}
}) -- Forbidden Reach Glyph Hunter: Stormsunder Mountain

map.nodes[48526895] = Dragonglyph({
    rewards = {Achievement({id = 17411, criteria = 6})}
}) -- Forbidden Reach Glyph Hunter: The Frosted Spine

map.nodes[59066506] = Dragonglyph({
    rewards = {Achievement({id = 17411, criteria = 7})}
}) -- Forbidden Reach Glyph Hunter: Talonlord's Perch

map.nodes[37743063] = Dragonglyph({
    rewards = {Achievement({id = 17411, criteria = 8})}
}) -- Forbidden Reach Glyph Hunter: Caldera of the Menders

-------------------------------------------------------------------------------
------------------------------- FORBIDDEN HOARD -------------------------------
-------------------------------------------------------------------------------

local ForbiddenHoard = Class('ForbiddenHoard', Collectible, {
    label = L['forbidden_hoard_label'],
    icon = 'chest_pp',
    scale = 1.3,
    group = ns.groups.FORBIDDEN_HOARD,
    rewards = {
        Achievement({id = 17526, criteria = 58487}), -- Treasures of the Forbidden Reach
        Achievement({
            id = 17529,
            criteria = {
                id = 1,
                qty = true,
                suffix = L['forbidden_spoils_suffix']
            }
        }), -- Forbidden Spoils
        DC.CliffsideWylderdrake.CoiledHorns, Item({item = 202667}), -- Sealed Artifact Scroll
        Item({item = 202668}), -- Sealed Spirit Scroll
        Item({item = 202669}), -- Sealed Fish Scroll
        Item({item = 202670}), -- Sealed Knowledge Scroll
        Item({item = 202196}) -- Zskera Vault Key
    }
}) -- Forbidden Hoard

map.nodes[28414200] = ForbiddenHoard()
map.nodes[39192452] = ForbiddenHoard()
map.nodes[40911121] = ForbiddenHoard()
map.nodes[41154445] = ForbiddenHoard({
    location = L['in_small_cave'],
    pois = {POI({41184350})}
})
map.nodes[58003875] = ForbiddenHoard()
map.nodes[50733679] = ForbiddenHoard({
    location = L['in_small_cave'],
    pois = {POI({49463696})}
})
map.nodes[53157801] = ForbiddenHoard()
map.nodes[54843439] = ForbiddenHoard()
map.nodes[56765534] = ForbiddenHoard()
map.nodes[57142267] = ForbiddenHoard({
    location = L['in_small_cave'],
    pois = {POI({57272170})}
})
map.nodes[58006276] = ForbiddenHoard()
map.nodes[62584946] = ForbiddenHoard()
map.nodes[62954380] = ForbiddenHoard()
map.nodes[67756834] = ForbiddenHoard()

-------------------------------------------------------------------------------
------------------------ FROSTSTONE VAULT PRIMAL STORM ------------------------
-------------------------------------------------------------------------------

local FSV_PS = {
    ['all'] = {
        Achievement({id = 17540, criteria = {58567, 58568, 58569, 58570}}), -- Under the Weather
        Item({item = 199749, quest = 70753}), -- Primal Air Core
        Item({item = 199691, quest = 70723}), -- Primal Earth Core
        Item({item = 199750, quest = 70754}), -- Primal Fire Core
        Item({item = 199748, quest = 70752}), -- Primal Water Core
        Mount({item = 192785, id = 1627}) -- Gooey Snailemental
    },
    [7408] = {
        Achievement({id = 17540, criteria = 58567}), -- Under the Weather
        Spacer(), Item({item = 199749, quest = 70753}), -- Primal Air Core
        Mount({item = 192785, id = 1627}) -- Gooey Snailemental
    }, -- Air
    [7409] = {
        Achievement({id = 17540, criteria = 58568}), -- Under the Weather
        Spacer(), Item({item = 199691, quest = 70723}), -- Primal Earth Core
        Mount({item = 192785, id = 1627}) -- Gooey Snailemental
    }, -- Earth
    [7410] = {
        Achievement({id = 17540, criteria = 58569}), -- Under the Weather
        Spacer(), Item({item = 199750, quest = 70754}), -- Primal Fire Core
        Mount({item = 192785, id = 1627}) -- Gooey Snailemental
    }, -- Fire
    [7411] = {
        Achievement({id = 17540, criteria = 58570}), -- Under the Weather
        Spacer(), Item({item = 199748, quest = 70752}), -- Primal Water Core
        Mount({item = 192785, id = 1627}) -- Gooey Snailemental
    } -- Water
}

local FroststoneVaultPrimalStorm = Class('FroststoneVaultPrimalStorm',
    Collectible, {
        label = L['froststone_vault_storm_label'],
        icon = 463562,
        areaPOIs = {7408, 7409, 7410, 7411},
        mapID = map.id,
        group = ns.groups.FROSTSTONE_VAULT_STORM,
        rewards = FSV_PS['all'],
        note = L['gooey_snailemental_note'],
        IsEnabled = function(self)
            local activePOIs = C_AreaPoiInfo.GetAreaPOIForMap(self.mapID)
            local possiblePOIs = self.areaPOIs
            for a = 1, #activePOIs do
                for p = 1, #possiblePOIs do
                    if activePOIs[a] == possiblePOIs[p] then
                        return false
                    end
                end
            end
            return true
        end
    })

map.nodes[60103875] = FroststoneVaultPrimalStorm()

hooksecurefunc(AreaPOIPinMixin, 'TryShowTooltip', function(self)
    if self and self.areaPoiID then
        local mapID = self:GetMap().mapID
        local group = ns.groups.FROSTSTONE_VAULT_STORM
        if FSV_PS[self.areaPoiID] and group:GetDisplay(mapID) then
            local rewards = FSV_PS[self.areaPoiID]
            ns.PrepareLinks(L['gooey_snailemental_note'])
            if ns:GetOpt('show_notes') then
                local note = ns.RenderLinks(L['gooey_snailemental_note'])
                GameTooltip:AddLine(' ')
                GameTooltip:AddLine(note)
            end
            GameTooltip:AddLine(' ')
            for i, reward in ipairs(rewards) do
                if reward:IsEnabled() then
                    reward:Render(GameTooltip)
                end
            end
            GameTooltip:Show()
        end
    end
end)

-------------------------------------------------------------------------------
------------------------------- SMALL TREASURES -------------------------------
-------------------------------------------------------------------------------

local SMALLTREASURE = Collectible({
    label = L['small_treasures_label'],
    icon = 'chest_rd',
    group = ns.groups.SMALL_TREASURES,
    note = L['small_treasures_note'],
    rewards = {
        Achievement({
            id = 17526,
            criteria = {
                58488, 58489, 58491, 58492, 58493, 58494, 58495, 58496, 58497,
                58498
            }
        }), -- Treasures of the Forbidden Reach
        Achievement({
            id = 17528,
            criteria = {
                id = 1,
                qty = true,
                suffix = L['hoarder_of_the_forbidden_reach_suffix']
            }
        }), -- Hoarder of the Forbidden Reach
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    }
}) -- Small Treasure

map.nodes[17935425] = SMALLTREASURE
map.nodes[29704826] = SMALLTREASURE
map.nodes[33124319] = SMALLTREASURE
map.nodes[35731741] = SMALLTREASURE
map.nodes[37922169] = SMALLTREASURE
map.nodes[36867659] = SMALLTREASURE
map.nodes[36904654] = SMALLTREASURE
map.nodes[39056332] = SMALLTREASURE
map.nodes[40314192] = SMALLTREASURE
map.nodes[42045105] = SMALLTREASURE
map.nodes[44055921] = SMALLTREASURE
map.nodes[44745794] = SMALLTREASURE
map.nodes[44815577] = SMALLTREASURE
map.nodes[45705660] = SMALLTREASURE
map.nodes[47071542] = SMALLTREASURE
map.nodes[48764706] = SMALLTREASURE
map.nodes[49464251] = SMALLTREASURE
map.nodes[49544935] = SMALLTREASURE
map.nodes[50374387] = SMALLTREASURE
map.nodes[50534337] = SMALLTREASURE
map.nodes[51365854] = SMALLTREASURE
map.nodes[51405334] = SMALLTREASURE
map.nodes[54195433] = SMALLTREASURE
map.nodes[54285826] = SMALLTREASURE
map.nodes[54575658] = SMALLTREASURE
map.nodes[54904277] = SMALLTREASURE
map.nodes[57545601] = SMALLTREASURE
map.nodes[57816240] = SMALLTREASURE
map.nodes[58556090] = SMALLTREASURE
map.nodes[59375286] = SMALLTREASURE
map.nodes[59425809] = SMALLTREASURE
map.nodes[63995005] = SMALLTREASURE
map.nodes[66915815] = SMALLTREASURE
map.nodes[67284345] = SMALLTREASURE
map.nodes[68604706] = SMALLTREASURE
map.nodes[70806917] = SMALLTREASURE
map.nodes[70826916] = SMALLTREASURE
map.nodes[70844360] = SMALLTREASURE
map.nodes[71385357] = SMALLTREASURE
map.nodes[72305308] = SMALLTREASURE
map.nodes[72396117] = SMALLTREASURE
map.nodes[74863764] = SMALLTREASURE
map.nodes[79216521] = SMALLTREASURE

warCreche.nodes[38095249] = SMALLTREASURE
warCreche.nodes[45005760] = SMALLTREASURE
warCreche.nodes[49098242] = SMALLTREASURE
warCreche.nodes[60734407] = SMALLTREASURE
warCreche.nodes[62232610] = SMALLTREASURE
warCreche.nodes[64044226] = SMALLTREASURE
warCreche.nodes[68651319] = SMALLTREASURE

siegeCreche.nodes[44804622] = SMALLTREASURE
siegeCreche.nodes[53712134] = SMALLTREASURE

froststoneVault.nodes[33466479] = SMALLTREASURE
froststoneVault.nodes[48535847] = SMALLTREASURE
froststoneVault.nodes[56505366] = SMALLTREASURE
froststoneVault.nodes[66112156] = SMALLTREASURE

dragonskullIsland.nodes[42454551] = SMALLTREASURE
dragonskullIsland.nodes[51466065] = SMALLTREASURE
dragonskullIsland.nodes[69933512] = SMALLTREASURE

-------------------------------------------------------------------------------
------------------ WYRMHOLE GENERATOR - SIGNAL TRANSMITTER --------------------
-------------------------------------------------------------------------------

map.nodes[31822621] = SignalTransmitter({quest = 73143}) -- Caldera of the Menders
map.nodes[39988182] = SignalTransmitter({quest = 73145}) -- Sharpscale Coast
map.nodes[78035110] = SignalTransmitter({quest = 73144}) -- Stormsunder Mountain

-------------------------------------------------------------------------------
------------------------------ ELUSIVE CREATURES ------------------------------
-------------------------------------------------------------------------------

map.nodes[41905742] = ElusiveCreature({
    label = '{npc:202436}',
    quest = 74232,
    rewards = {
        Item({item = 193218}), -- Dense Hide
        Item({item = 193211}), -- Resilient Leather
        Achievement({id = 18833, criteria = 61481}) -- Elusive Legends of the Dragon Isles
    },
    pois = {Path({ns.poi.Circle({origin = 41905742, radius = 4})})}
}) -- Elusive Frienzied Amberfir

map.nodes[45804040] = ElusiveCreature({
    label = '{npc:202441}',
    quest = 74233,
    rewards = {
        Item({item = 193218}), -- Dense Hide
        Item({item = 193211}), -- Resilient Leather
        Item({item = 204092}), -- Auric Fleece
        Achievement({id = 18833, criteria = 61482}) -- Elusive Legends of the Dragon Isles
    },
    pois = {Path({ns.poi.Circle({origin = 45804040, radius = 2})})}
}) -- Elusive Auric Argali

-------------------------------------------------------------------------------
-------------------------------- ZSKERA VAULTS --------------------------------
-------------------------------------------------------------------------------

local ZSKERA_VAULTS_REWARDS = {
    Achievement({id = 17509}), -- Every Door, Everywhere, All At Once
    Achievement({
        id = 17413,
        criteria = {id = 1, qty = true, suffix = L['door_buster_suffix']}
    }), -- Door Buster
    DC.RenewedProtoDrake.Antlers, -- Renewed Proto-Drake: Antlers
    Spacer(), -- Pets
    Pet({item = 193851, id = 3332}), -- Patos
    Pet({item = 193853, id = 3331}), -- Emmah
    Pet({item = 193908, id = 3338}), -- Kobaldt
    Pet({item = 204079, id = 3476}), -- Gilded Mechafrog
    Pet({item = 193835, id = 3323}), -- Brightfeather
    Pet({item = 193854, id = 3333}), -- Berylmane
    Pet({item = 193363, id = 3290}), -- Bunbo
    Spacer(), -- Toys
    Toy({item = 204257}), -- Holoviewer: The Lady of Dreams
    Toy({item = 204256}), -- Holoviewer: The Scarlet Queen
    Toy({item = 204262}), -- Holoviewer: The timeless One
    Toy({item = 203852}), -- Spore-Bound Essence
    Toy({item = 204687}), -- Obsidian Battle Horn
    Spacer(), -- Recipe
    Recipe({item = 204073, profession = 185}), -- Ratcipe: Deviously Deviled Eggs
    Spacer(), -- Mount
    Mount({item = 192790, id = 1634}), -- Mossy Mammoth
    Spacer(), -- Other Achievements
    Achievement({
        id = 17530,
        criteria = {
            58660, -- Living Book
            58661, -- Opera of the Aspects
            58507 -- The Old Gods and the Ordering of Azeroth (Annotated)
        }
    }), -- Librarian of the Reach
    Achievement({
        id = 17315,
        criteria = {
            1, -- Journal Entry: The Creches
            4, -- Journal Entry: Silence
            8 -- Sending Stone: The Prisoner
        }
    }) -- While We Were Sleeping
}

map.nodes[29265268] = Collectible({
    label = L['zskera_vaults_label'],
    icon = 4909720,
    note = L['zskera_vaults_note'],
    fgroup = 'zskera_vaults',
    group = ns.groups.ZSKERA_VAULTS,
    requires = ns.requirement.Quest(73159), -- Exploring Our Past
    areaPOI = 7414,
    rewards = ZSKERA_VAULTS_REWARDS,
    pois = {
        Path({29265268, 29267350}),
        Path({Circle({origin = 29267800, radius = 3})})
    }
}) -- Zskera Vaults

hooksecurefunc(AreaPOIPinMixin, 'TryShowTooltip', function(self)
    if self and self.areaPoiID then
        local mapID = self:GetMap().mapID
        local group = ns.groups.ZSKERA_VAULTS
        if self.areaPoiID == 7414 and group:GetDisplay(mapID) then
            local rewards = ZSKERA_VAULTS_REWARDS
            GameTooltip:AddLine(' ')
            for i, reward in ipairs(rewards) do
                if reward:IsEnabled() then
                    reward:Render(GameTooltip)
                end
            end
            GameTooltip:Show()
        end
    end
end)

------------------------ RENEWED PROTO-DRAKE: ANTLERS -------------------------

map.nodes[28268000] = Collectible({
    label = '{item:204278}',
    icon = 1529267,
    quest = 75047,
    location = L['in_zskera_vaults'],
    note = L['neltharions_toolkit_note'],
    group = ns.groups.ZSKERA_VAULTS,
    fgroup = 'zskera_vaults',
    requires = ns.requirement.Quest(73159), -- Exploring Our Past
    rewards = {
        DC.RenewedProtoDrake.Antlers -- Renewed Proto-Drake: Antlers
    }
}) -- Neltharion's Toolkit

---------------------- RATCIPE: DEVIOUSLY DEVILVED EGGS -----------------------

local RecipeRat = Class('RecipeRat', Collectible, {
    label = '{npc:202982}',
    location = L['in_zskera_vaults'],
    icon = 4509424,
    fgroup = 'zskera_vaults',
    group = ns.groups.ZSKERA_VAULTS,
    requires = ns.requirement.Quest(73159), -- Exploring Our Past
    rewards = {
        Recipe({item = 204073, profession = 185}) -- Ratcipe: Deviously Deviled Eggs
    }
}) -- Recipe Rat

function RecipeRat.getters:note()
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

    local note = L['recipe_rat_note_1'] .. '\n\n'
    note = note .. status(202252, 1, '1') .. ' ' .. L['recipe_rat_note_2'] ..
               '\n\n'
    note = note .. status(204340, 30, '30') .. ' ' .. L['recipe_rat_note_3'] ..
               '\n\n'
    note = note .. status(3927, 1, getString(3927)) .. ' ' ..
               L['recipe_rat_note_4']
    return note
end

map.nodes[28267800] = RecipeRat()

---------------------------- MOUNT: MOSSY MAMMOTH -----------------------------

local MossyMammoth = Class('MossyMammoth', Collectible, {
    label = '{item:192790}',
    location = L['in_zskera_vaults'],
    icon = 4034841,
    fgroup = 'zskera_vaults',
    group = ns.groups.ZSKERA_VAULTS,
    requires = ns.requirement.Quest(73159), -- Exploring Our Past
    rewards = {
        Mount({item = 192790, id = 1634}) -- Mossy Mammoth
    }
}) -- Mossy Mammoth

function MossyMammoth.getters:note()
    local function HasItem(id) return GetItemCount(id, true) > 0 end

    local function HasMount(id)
        return select(11, C_MountJournal.GetMountInfoByID(id))
    end

    local steps = {
        [1] = {complete = false, item = 204363}, -- Particularly Ordinary Egg
        [2] = {complete = false, item = 204364}, -- Magically Altered Egg
        [3] = {complete = false, item = 204366}, -- Egg of Unknown Contents
        [4] = {complete = false, item = 204367}, -- Sleeping Ancient Mammoth
        [5] = {complete = false, item = 192790}, -- Mossy Mammoth
        [6] = {complete = false}
    }

    local mountID = self.rewards[1].id
    if HasItem(192790) or HasMount(mountID) then steps[6].complete = true end

    for i = 5, 1, -1 do
        if steps[i + 1].complete == true then
            steps[i].complete = true
        else
            steps[i].complete = HasItem(steps[i].item)
        end
    end

    local function status(idx)
        if steps[idx].complete == true then
            return ns.status.Green(idx)
        else
            return ns.status.Red(idx)
        end
    end

    local note = L['mm_start_note']
    note = note .. '\n\n' .. status(1) .. ' ' ..
               format(L['mm_status_note'], 204369, 204360, 204363)
    note = note .. '\n\n' .. status(2) .. ' ' ..
               format(L['mm_status_note'], 204363, 204371, 204364)
    note = note .. '\n\n' .. status(3) .. ' ' ..
               format(L['mm_status_note'], 204364, 204375, 204366)
    note = note .. '\n\n' .. status(4) .. ' ' ..
               format(L['mm_status_note'], 204366, 204372, 204367)
    note = note .. '\n\n' .. status(5) .. ' ' ..
               format(L['mm_status_note'], 204367, 204374, 192790)
    return note
end

map.nodes[30267800] = MossyMammoth()

------------------------- TOY: TINY BOX OF TINY ROCKS -------------------------

map.nodes[30268000] = Collectible({
    label = '{achievement:18559}',
    location = L['in_zskera_vaults'],
    icon = 132762,
    note = L['tiny_box_of_tiny_rocks_note'], -- TODO: can also be less often found in the waking shores
    fgroup = 'zskera_vaults',
    group = ns.groups.ZSKERA_VAULTS,
    rewards = {
        Achievement({id = 18559, criteria = {id = 1, qty = true}}), -- Many Boxes, Many Rockses
        Toy({item = 207099}) -- Tiny Box of Tiny Rocks
    }
}) -- TOY: Tiny Box of Tiny Rocks

-------------------------------------------------------------------------------
------------------ DRAGONSCALE EXPEDITION: THE HIGHEST PEAKS ------------------
-------------------------------------------------------------------------------

map.nodes[54573460] = Flag({quest = 73699})
map.nodes[36903792] = Flag({quest = 73700})

-------------------------------------------------------------------------------
--------------------------- LIBRARIAN OF THE REACH ----------------------------
-------------------------------------------------------------------------------

local LibraryBook = Class('LibraryBook', Collectible,
    {icon = 4549135, group = ns.groups.LIBRARY})

warCreche.nodes[52405962] = LibraryBook({
    label = L['spellsworn_missive_label'],
    location = L['in_the_war_creche'],
    note = format(L['library_note'], L['spellsworn_missive_label'], 204338),
    parent = {id = map.id, pois = {POI({51895982})}},
    rewards = {Achievement({id = 17530, criteria = 58501})}
}) -- The Burden of Lapisagos

froststoneVault.nodes[64775677] = LibraryBook({
    label = L['confiscated_journal_label'],
    location = L['in_froststone_vault'],
    note = format(L['library_note'], L['confiscated_journal_label'], 204316),
    parent = {id = map.id, pois = {POI({60793775})}},
    rewards = {Achievement({id = 17530, criteria = 58502})}
}) -- A Soldier's Journal

map.nodes[71036732] = LibraryBook({
    label = L['farscale_manifesto_label'],
    note = format(L['library_note'], L['farscale_manifesto_label'], 204335),
    rewards = {Achievement({id = 17530, criteria = 58503})}
}) -- A Song of the Depths

map.nodes[34910896] = LibraryBook({
    label = L['pirate_proclamation_label'],
    note = format(L['library_note'], L['pirate_proclamation_label'], 204328),
    rewards = {Achievement({id = 17530, criteria = 58504})}
}) -- Return of the Nightsquall

map.nodes[57446349] = LibraryBook({
    label = L['lost_expeditions_notes_label'],
    note = format(L['library_note'], L['lost_expeditions_notes_label'], 204321),
    rewards = {Achievement({id = 17530, criteria = 58505})}
}) -- Expedition Notes

map.nodes[61533375] = LibraryBook({
    label = L['vrykul_tome_label'],
    note = format(L['library_note'], L['vrykul_tome_label'], 204317),
    rewards = {Achievement({id = 17530, criteria = 58506})}
}) -- Words of the Wyrmslayer

-------------------------------------------------------------------------------
-------------------------------- SCROLL HUNTER --------------------------------
-------------------------------------------------------------------------------

local ScrollHunter = Class('ScrollHunter', Collectible, {
    icon = 4549192,
    group = ns.groups.SCROLL_HUNTER,
    rewards = {
        Achievement({
            id = 17532,
            criteria = {id = 1, qty = true, suffix = L['scroll_hunter_suffix']}
        }) -- Scroll Hunter
    }
}) -- Scroll Hunter

local DracthyrRunestone = Class('DracthyrRunestone', ScrollHunter, {
    label = L['dracthyr_runestone_label'],
    note = format(L['scroll_hunter_note'], 202667, -- Sealed Artifact Scroll
    202871, -- Draconic Artifact
    2507 -- Dragonscale Expedition
    )
}) -- Dracthyr Runestone

map.nodes[39593108] = DracthyrRunestone()

local SpiritOfBlessing = Class('SpiritOfBlessing', ScrollHunter, {
    label = '{npc:201006}',
    note = format(L['scroll_hunter_note'], 202668, -- Sealed Spirit Scroll
    202872, -- Token of Blessing
    2503 -- Maruuk Centaur
    )
}) -- Spirit of Blessing

map.nodes[60515053] = SpiritOfBlessing()

-- local WondrousFish = Class('WondrousFish', ScrollHunter, {
--     label = '{npc:200958}',
--     note = format(L['scroll_hunter_note'],
--         202669, -- Sealed Fish Scroll
--         202854, -- Wondrous Fish
--         2511 -- Iskaara Tuskarr
--     )
-- }) -- Wondrous Fish

local MysteriousWritings = Class('MysteriousWritings', ScrollHunter, {
    label = '{item:202870}',
    note = format(L['scroll_hunter_note'], 202670, -- Sealed Knowledge Scroll
    202870, -- Mysterious Writings
    2510 -- Valdrakken Accord
    )
}) -- Mysterious Writings

map.nodes[58147167] = MysteriousWritings()

dragonskullIsland.nodes[56317256] = MysteriousWritings({
    location = L['in_dragonskull_island'],
    parent = {id = map.id, pois = {POI({74353661})}}
})

-------------------------------------------------------------------------------
--------------------------- WHILE WE WERE SLEEPING ----------------------------
-------------------------------------------------------------------------------

local ScalecommanderItem = Class('scalecommander_item', Collectible, {
    icon = 134422,
    group = ns.groups.SCALECOMMANDER_ITEM,
    IsCollected = function(self)
        local item = ns.faction == 'Horde' and self.item[1] or self.item[2]
        if ns.PlayerHasItem(item) then return true end
        return Collectible.IsCollected(self)
    end
})

function ScalecommanderItem.getters:label()
    return ns.faction == 'Alliance' and self.allianceLabel or self.hordeLabel
end

map.nodes[59646492] = ScalecommanderItem({
    allianceLabel = '{quest:74866}',
    hordeLabel = '{quest:73110}',
    quest = 73110,
    rewards = {Achievement({id = 17315, criteria = 2})},
    item = {202329, 204200}
}) -- Journal Entry: Experiments

map.nodes[50884345] = ScalecommanderItem({
    allianceLabel = '{quest:73113}',
    hordeLabel = '{quest:74880}',
    rewards = {Achievement({id = 17315, criteria = 3})},
    item = {204221, 202335}
}) -- Journal Entry: Relics

map.nodes[58957238] = ScalecommanderItem({
    allianceLabel = '{quest:73109}',
    hordeLabel = '{quest:74900}',
    location = L['in_the_high_creche'],
    rewards = {Achievement({id = 17315, criteria = 5})},
    pois = {POI({58666933})}, -- Entrance
    item = {204250, 202328}
}) -- Receiving Stone: Final Warning

map.nodes[58407053] = ScalecommanderItem({
    allianceLabel = '{quest:72944}',
    hordeLabel = '{quest:74901}',
    location = L['in_the_high_creche'],
    rewards = {Achievement({id = 17315, criteria = 6})},
    pois = {POI({58666933})}, -- Entrance
    item = {204251, 202203}
}) -- Sending Stone: Protest

map.nodes[55393586] = ScalecommanderItem({
    allianceLabel = '{quest:73107}',
    hordeLabel = '{quest:74902}',
    location = L['in_the_lost_atheneum'],
    rewards = {Achievement({id = 17315, criteria = 7})},
    pois = {POI({55103837})}, -- Entrance
    item = {204252, 202326}
}) -- Sending Stone: Initial Report

-------------------------------------------------------------------------------
----------------------------------- VENDORS -----------------------------------
-------------------------------------------------------------------------------

map.nodes[35615948] = Vendor({
    id = 200559,
    note = L['treysh_note'],
    rewards = {
        Transmog({item = 204562, slot = L['2h_mace']}), -- Maruuk Maul
        Transmog({item = 204563, slot = L['1h_mace']}), -- Morqut Club
        Transmog({item = 204564, slot = L['gun']}), -- Dragonscale Expeditioner's Rifle
        Transmog({item = 204566, slot = L['offhand']}), -- Journal of the Forbidden Reach
        Transmog({item = 204569, slot = L['fist']}), -- Valdrakken Talons
        Transmog({item = 204570, slot = L['dagger']}), -- Valdrakken Pocketknife
        Spacer(), -- Mounts
        Mount({item = 201719, id = 1686}), -- Obsidian Vorquin
        Mount({item = 201704, id = 1684}), -- Sapphire Vorquin
        Mount({item = 201702, id = 1683}), -- Crimson Vorquin
        Mount({item = 201720, id = 1685}), -- Bronze Vorquin
        Mount({item = 198808, id = 1664}), -- Guardian Vorquin
        Mount({item = 198809, id = 1667}), -- Armored Vorquin Leystrider
        Mount({item = 198811, id = 1668}), -- Majestic Armored Vorquin
        Mount({item = 198810, id = 1665}) -- Swift Armored Vorquin
    }
}) -- Treysh <Quartermaster>

map.nodes[34325997] = Vendor({
    label = L['renown_envoy_label'],
    note = L['renown_envoy_note'],
    rewards = {
        Section('{npc:200566}'), -- Cataloger Daela
        Pet({item = 191915, id = 3259, count = 2000}), -- Shaggy
        Spacer(), Section('{npc:200562}'), -- Turik
        Pet({item = 193850, id = 3330, count = 25000}), -- Buckie
        Spacer(), Section('{npc:200564}'), -- Storykeepe Ashekh
        Mount({item = 204382, id = 1467, count = 100000}), -- Noble Bruffalon
        Spacer(), Section('{npc:200563}'), -- Kraxxus
        DC.SetCount(DC.WindborneVelocidrake.ExposedFinnedNeck, 2500),
        DC.SetCount(DC.HighlandDrake.TaperedNose, 2500)
    }
}) -- Cataloger Daela, Turik, Storykeeper Ashekh, and Kraxxus <Renown Envoys>

map.nodes[35905744] = Vendor({
    id = 202445,
    note = L['trader_hagarth_note'],
    rewards = {
        Recipe({item = 203420, profession = 171, count = 10}), -- Recipe: Draconic Suppression Powder
        Recipe({item = 203421, profession = 164, count = 10}), -- Plans: Ancient Ceremonial Trident
        Recipe({item = 203422, profession = 185, count = 10}), -- Recipe: Sparkling Spice Pouch
        Recipe({item = 203423, profession = 333, count = 10}), -- Formula: Glowing Crystal Bookmark
        Recipe({item = 203424, profession = 202, count = 10}), -- Schematic: Gnomish Voicebox
        Recipe({item = 203425, profession = 773, count = 10}), -- Technique: Arcane Dispelling Rune
        Recipe({item = 203426, profession = 755, count = 10}), -- Design: Crystal Tuning Fork
        Recipe({item = 203427, profession = 165, count = 10}), -- Pattern: Reinforced Pristine Leather
        Recipe({item = 203428, profession = 197, count = 10}) -- Pattern: Traditional Morqut Kite
    }
}) -- Trader Hag'arth <Artisan's Consortium Quartermaster>

-------------------------------------------------------------------------------
-------------------------------- MISCELLANEOUS --------------------------------
-------------------------------------------------------------------------------

---------------------------- PET: MOTE OF NASZ'URO ----------------------------

map.nodes[36043426] = ns.node.MoteOfNaszuro({
    quest = 76188,
    note = L['naszuro_caldera_of_the_menders']
}) -- Caldera of the Menders

----------------------------- SPELLSWORN GATEWAYS -----------------------------

local SpellswornGateway = Class('SpellswornGateway', Node, {
    label = L['spellsworn_gateway'],
    icon = 'portal_pp',
    scale = 1.5,
    fgroup = 'spellsworn_gateway'
}) -- Spellsworn Gateway

warCreche.nodes[46984738] = SpellswornGateway({
    pois = {Path({46984738, 49915424})}
})

warCreche.nodes[49915424] = SpellswornGateway()

----------------------------- GEMSTONES OF RETURN -----------------------------

local GemstoneOfReturn = Class('GemstoneOfReturn', Node, {
    label = L['gemstone_of_return'],
    icon = 'portal_gn',
    scale = 1.5,
    fgroup = 'gemstone_of_return'
}) -- Gemstone of Return

warCreche.nodes[47808130] = GemstoneOfReturn({
    pois = {Arrow({47808130, 67030720})}
}) -- Warden Entrix

warCreche.nodes[65376249] = GemstoneOfReturn({
    pois = {Arrow({65376249, 67030720})}
}) -- Pyrachniss
