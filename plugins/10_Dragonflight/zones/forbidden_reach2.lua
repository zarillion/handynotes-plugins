-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible
local Node = ns.node.Node
local PetBattle = ns.node.PetBattle
local Rare = ns.node.Rare

local Dragonglyph = ns.node.Dragonglyph
local Dragonrace = ns.node.Dragonrace
local Flag = ns.node.Flag
local SignalTransmitter = ns.node.SignalTransmitter

local Achievement = ns.reward.Achievement
local Currency = ns.reward.Currency
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Recipe = ns.reward.Recipe
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
    quest = 73111,
    location = L['in_small_cave'],
    rewards = {
        Achievement({id = 17525, criteria = 58458}), -- Champion of the Forbidden Reach
        Pet({item = 193364, id = 3291}), -- Scruffles
        Item({item = 204276}), -- Untapped Forbidden Knowledge
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    },
    pois = {POI({58934944})} -- Entrance
}) -- Vakren the Hunter

map.nodes[28303794] = Rare({
    id = 200537,
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
    quest = 73100,
    rewards = {
        Achievement({id = 17525, criteria = 58460}), -- Champion of the Forbidden Reach
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    }
}) -- Ishyra

map.nodes[47722071] = Rare({
    id = 200600,
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
    quest = 73881,
    location = L['in_the_support_creche'],
    note = L['duzalgor_note'],
    rewards = {
        Achievement({id = 17525, criteria = 58462}), -- Champion of the Forbidden Reach
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    }
}) -- Duzalgor

map.nodes[43736121] = Rare({
    id = 200681,
    quest = nil,
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
    quest = 73152,
    rewards = {
        Achievement({id = 17525, criteria = 58464}), -- Champion of the Forbidden Reach
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    }
}) -- Galakhad

map.nodes[43949052] = Rare({
    id = 200721,
    quest = 73154,
    rewards = {
        Achievement({id = 17525, criteria = 58465}), -- Champion of the Forbidden Reach
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    }
}) -- Grugoth the Hullcrusher

map.nodes[59695883] = Rare({
    id = 200885,
    quest = 73222,
    location = L['in_small_cave'],
    rewards = {
        Achievement({id = 17525, criteria = 58466}), -- Champion of the Forbidden Reach
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    },
    pois = {POI({60845827})} -- Entrance
}) -- Lady Shaz'ra

map.nodes[72986738] = Rare({
    id = 200904,
    quest = 70517,
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
    quest = 73367,
    location = L['in_the_war_creche'],
    parent = map.id,
    rewards = {
        Achievement({id = 17525, criteria = 58470}), -- Champion of the Forbidden Reach
        Pet({item = 191930, id = 3261}), -- Wakyn
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    }
}) -- Warden Entrix

map.nodes[36731223] = Rare({
    id = 200956,
    quest = 73366,
    rewards = {
        Achievement({id = 17525, criteria = 58471}), -- Champion of the Forbidden Reach
        Mount({item = 192772, id = 197}), -- Ancient Salamanther -- TODO: REPLACE WILL REAL MOUNTID
        Item({item = 202196}), -- Zskera Vault Key
        DC.WindborneVelocidrake.ShriekerPattern, Currency({id = 2118}) -- Elemental Overflow
    }
}) -- "Captain" Ookbeard

warCreche.nodes[67355579] = Rare({
    id = 200978,
    quest = 73385,
    location = L['in_the_war_creche'],
    parent = map.id,
    rewards = {
        Achievement({id = 17525, criteria = 58472}), -- Champion of the Forbidden Reach
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    }
}) -- Pyrachniss

siegeCreche.nodes[58993931] = Rare({
    id = 200911,
    quest = 73225,
    location = L['in_the_siege_creche'],
    parent = map.id,
    rewards = {
        Achievement({id = 17525, criteria = 58473}), -- Champion of the Forbidden Reach
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    }
}) -- Volcanakk

-------------------------------------------------------------------------------

local LootSpecialist = Class('LootSpecialist', Rare, {
    id = 203353,
    quest = nil,
    note = L['loot_specialist_note'],
    fgroup = 'loot_specialist',
    rewards = {
        Achievement({id = 17525, criteria = 58830}), -- Champion of the Forbidden Reach
        Item({item = 204276}), -- Untapped Forbidden Knowledge
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    }
}) -- Loot Specialist

map.nodes[14971438] = LootSpecialist()
map.nodes[41021436] = LootSpecialist()
map.nodes[47394256] = LootSpecialist()
map.nodes[53464716] = LootSpecialist()

dragonskullIsland.nodes[28984051] = LootSpecialist({
    location = L['in_dragonskull_island'],
    parent = map.id
})

------------------------------ PROFESSION RARES  ------------------------------

local ProfessionRare = Class('ProfessionRare', Rare) -- Profession Rare

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
        return note .. '\n\n' .. format(L['pr_recipe_note'], recipe)
    else
        return format(L['pr_gathering_note'], item, object)
    end
end

function ProfessionRare.getters:rlabel()
    return ns.GetIconLink(self.profession.icon, 13)
end

dragonskullIsland.nodes[56947247] = ProfessionRare({
    id = 200619,
    quest = nil,
    profession = ns.professions.MINING,
    summoningItem = 203418, -- Amplified Quaking Stone
    summoningObject = L['pr_rumbling_deposit'], -- Rumbling Deposit
    location = L['in_dragonskull_island'],
    parent = map.id,
    rewards = {
        Achievement({id = 17525, criteria = 58474}) -- Champion of the Forbidden Reach
    }
}) -- Tectonus

local SirPinchalot = Class('SirPinchalot', ProfessionRare, {
    id = 200620,
    quest = nil,
    profession = ns.professions.FISHING,
    summoningItem = 203419, -- Elusive Croaking Crab
    summoningObject = L['pr_empty_crab_trap'], -- Empty Crab Trap
    fgroup = 'fgroup_sir_pinchalot',
    rewards = {
        Achievement({id = 17525, criteria = 58475}) -- Champion of the Forbidden Reach
    }
}) -- Sir Pinchalot

map.nodes[44307464] = SirPinchalot()
map.nodes[54707281] = SirPinchalot()

local Manathema = Class('Manathema', ProfessionRare, {
    id = 200621,
    quest = nil,
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

map.nodes[49264172] = Manathema()
map.nodes[61256442] = Manathema()

local Snarfang = Class('Snarfang', ProfessionRare, {
    id = 200622,
    quest = nil,
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

map.nodes[37124708] = Snarfang()
map.nodes[48734944] = Snarfang()
map.nodes[64967269] = Snarfang()

local TuskarrKitePost = Class('TuskarrKitePost', ProfessionRare, {
    id = 200722,
    quest = nil,
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

map.nodes[31195341] = TuskarrKitePost()
map.nodes[57634843] = TuskarrKitePost()
map.nodes[60309155] = TuskarrKitePost()

local Faunos = Class('Faunos', ProfessionRare, {
    id = 200725,
    quest = nil,
    profession = ns.professions.SKINNING,
    summoningItem = 203417, -- Razor-Sharp Animal Bone
    summoningObject = L['pr_raw_argali_pelts'], -- Raw Argali Pelts
    fgroup = 'fgroup_faunos',
    rewards = {
        Achievement({id = 17525, criteria = 58479}) -- Champion of the Forbidden Reach
    }
}) -- Faunos

map.nodes[40488600] = Faunos()
map.nodes[44993658] = Faunos()
map.nodes[50498602] = Faunos()
map.nodes[70664614] = Faunos()

map.nodes[67237599] = ProfessionRare({
    id = 200730,
    quest = nil,
    profession = ns.professions.BLACKSMITHING,
    summoningItem = 203408, -- Ceremonial Trident
    summoningObject = L['pr_farescale_shrine'], -- Farscale Shrine
    summoningReagent = 203399, -- Damaged Trident
    summoningRecipe = 203421, -- Plans: Ceremonial Trident
    rewards = {
        Achievement({id = 17525, criteria = 58480}) -- Champion of the Forbidden Reach
    }
}) -- Tidesmith Zarviss

warCreche.nodes[31308084] = ProfessionRare({
    id = 200737,
    quest = nil,
    profession = ns.professions.INSCRIPTION,
    summoningItem = 203412, -- Dispelling Rune
    summoningObject = L['pr_spellsworn_ward'], -- Spellsword Ward
    summoningReagent = 203403, -- Hastily Scrawled Rune
    summoningRecipe = 203425, -- Technique: Dispellng Rune
    location = L['in_the_war_creche'],
    parent = map.id,
    rewards = {
        Achievement({id = 17525, criteria = 58481}) -- Champion of the Forbidden Reach
    }
}) -- Arcantrix

local Kangalo = Class('Kangalo', ProfessionRare, {
    id = 200738,
    quest = nil,
    profession = ns.professions.HERBALISM,
    summoningItem = 203416, -- Dormant Lifebloom Seeds
    summoningObject = L['pr_awakened_soil'], -- Awakened Soil
    fgroup = 'fgroup_kanalo',
    rewards = {
        Achievement({id = 17525, criteria = 58482}) -- Champion of the Forbidden Reach
    }
}) -- Kangalo

map.nodes[35354003] = Kangalo()
map.nodes[56435911] = Kangalo()

local Fimbul = Class('Fimbul', ProfessionRare, {
    id = 200739,
    quest = nil,
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

map.nodes[67256157] = Fimbul()
map.nodes[69755462] = Fimbul()

local AgniBlazehoof = Class('AgniBlazehoof', ProfessionRare, {
    id = 200740,
    quest = nil,
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

map.nodes[40295336] = AgniBlazehoof()
map.nodes[54494599] = AgniBlazehoof()
map.nodes[55695154] = AgniBlazehoof()

map.nodes[23066700] = ProfessionRare({
    id = 200742,
    quest = nil,
    profession = ns.professions.COOKING,
    summoningItem = 203409, -- Sparkling Spice Pouch
    summoningObject = L['pr_spiceless_stew'], -- Spiceless Stew
    summoningReagent = 203400, -- Lackluster Spices
    summoningRecipe = 203422, -- Recipe: Sparkling Spice Pouch
    rewards = {
        Achievement({id = 17525, criteria = 58485}) -- Champion of the Forbidden Reach
    }
}) -- Luttrok

map.nodes[28905707] = ProfessionRare({
    id = 200743,
    quest = nil,
    profession = ns.professions.JEWELCRAFTING,
    summoningItem = 203413, -- Tuning Fork
    summoningObject = L['pr_resonating_crystal'], -- Resonating Crystal
    summoningReagent = 203404, -- Crystal Fork
    summoningRecipe = 203426, -- Design: Tuning Fork
    location = L['in_small_cave'],
    rewards = {
        Achievement({id = 17525, criteria = 58486}) -- Champion of the Forbidden Reach
    },
    pois = {
        POI({30496101}) -- Entrance
    }
}) -- Amephyst

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
--------------------------------- DRAGONRACES ---------------------------------
-------------------------------------------------------------------------------

map.nodes[76136563] = Dragonrace({
    label = '{quest:73017}',
    normal = {2201, 46, 43},
    advanced = {2207, 47, 42},
    reverse = {2213, 47, 42},
    rewards = {
        Achievement({id = 17279, criteria = 1, oneline = true}), -- normal bronze
        Achievement({id = 17280, criteria = 1, oneline = true}), -- normal silver
        Achievement({id = 17281, criteria = 1, oneline = true}), -- normal gold
        Achievement({id = 17284, criteria = 1, oneline = true}), -- advanced bronze
        Achievement({id = 17286, criteria = 1, oneline = true}), -- advanced silver
        Achievement({id = 17287, criteria = 1, oneline = true}), -- advanced gold
        Achievement({id = 17288, criteria = 1, oneline = true}), -- reverse bronze
        Achievement({id = 17289, criteria = 1, oneline = true}), -- reverse silver
        Achievement({id = 17290, criteria = 1, oneline = true}) -- reverse gold
    }
}) -- Stormsunder Crater Circuit

map.nodes[31326573] = Dragonrace({
    label = '{quest:73020}',
    normal = {2202, 55, 52},
    advanced = {2208, 54, 49},
    reverse = {2214, 58, 53},
    rewards = {
        Achievement({id = 17279, criteria = 2, oneline = true}), -- normal bronze
        Achievement({id = 17280, criteria = 2, oneline = true}), -- normal silver
        Achievement({id = 17281, criteria = 2, oneline = true}), -- normal gold
        Achievement({id = 17284, criteria = 2, oneline = true}), -- advanced bronze
        Achievement({id = 17286, criteria = 2, oneline = true}), -- advanced silver
        Achievement({id = 17287, criteria = 2, oneline = true}), -- advanced gold
        Achievement({id = 17288, criteria = 2, oneline = true}), -- reverse bronze
        Achievement({id = 17289, criteria = 2, oneline = true}), -- reverse silver
        Achievement({id = 17290, criteria = 2, oneline = true}) -- reverse gold
    }
}) -- Morqut Ascent

map.nodes[63095195] = Dragonrace({
    label = '{quest:73025}',
    normal = {2203, 56, 53},
    advanced = {2209, 55, 50},
    reverse = {2215, 55, 50},
    rewards = {
        Achievement({id = 17279, criteria = 3, oneline = true}), -- normal bronze
        Achievement({id = 17280, criteria = 3, oneline = true}), -- normal silver
        Achievement({id = 17281, criteria = 3, oneline = true}), -- normal gold
        Achievement({id = 17284, criteria = 3, oneline = true}), -- advanced bronze
        Achievement({id = 17286, criteria = 3, oneline = true}), -- advanced silver
        Achievement({id = 17287, criteria = 3, oneline = true}), -- advanced gold
        Achievement({id = 17288, criteria = 3, oneline = true}), -- reverse bronze
        Achievement({id = 17289, criteria = 3, oneline = true}), -- reverse silver
        Achievement({id = 17290, criteria = 3, oneline = true}) -- reverse gold
    }
}) -- Aerie Chasm Cruise

map.nodes[63658406] = Dragonrace({
    label = '{quest:73029}',
    normal = {2204, 73, 70},
    advanced = {2210, 73, 68},
    reverse = {2216, 68, 63},
    rewards = {
        Achievement({id = 17279, criteria = 4, oneline = true}), -- normal bronze
        Achievement({id = 17280, criteria = 4, oneline = true}), -- normal silver
        Achievement({id = 17281, criteria = 4, oneline = true}), -- normal gold
        Achievement({id = 17284, criteria = 4, oneline = true}), -- advanced bronze
        Achievement({id = 17286, criteria = 4, oneline = true}), -- advanced silver
        Achievement({id = 17287, criteria = 4, oneline = true}), -- advanced gold
        Achievement({id = 17288, criteria = 4, oneline = true}), -- reverse bronze
        Achievement({id = 17289, criteria = 4, oneline = true}), -- reverse silver
        Achievement({id = 17290, criteria = 4, oneline = true}) -- reverse gold
    }
}) -- Southern Reach Route

map.nodes[41361455] = Dragonrace({
    label = '{quest:73033}',
    normal = {2205, 61, 58},
    advanced = {2211, 61, 58},
    reverse = {2217, 55, 50},
    rewards = {
        Achievement({id = 17279, criteria = 5, oneline = true}), -- normal bronze
        Achievement({id = 17280, criteria = 5, oneline = true}), -- normal silver
        Achievement({id = 17281, criteria = 5, oneline = true}), -- normal gold
        Achievement({id = 17284, criteria = 5, oneline = true}), -- advanced bronze
        Achievement({id = 17286, criteria = 5, oneline = true}), -- advanced silver
        Achievement({id = 17287, criteria = 5, oneline = true}), -- advanced gold
        Achievement({id = 17288, criteria = 5, oneline = true}), -- reverse bronze
        Achievement({id = 17289, criteria = 5, oneline = true}), -- reverse silver
        Achievement({id = 17290, criteria = 5, oneline = true}) -- reverse gold
    }
}) -- Caldera Coaster

map.nodes[49426006] = Dragonrace({
    label = '{quest:73061}',
    normal = {2206, 62, 59},
    advanced = {2212, 61, 58},
    reverse = {2218, 61, 58},
    rewards = {
        Achievement({id = 17279, criteria = 6, oneline = true}), -- normal bronze
        Achievement({id = 17280, criteria = 6, oneline = true}), -- normal silver
        Achievement({id = 17281, criteria = 6, oneline = true}), -- normal gold
        Achievement({id = 17284, criteria = 6, oneline = true}), -- advanced bronze
        Achievement({id = 17286, criteria = 6, oneline = true}), -- advanced silver
        Achievement({id = 17287, criteria = 6, oneline = true}), -- advanced gold
        Achievement({id = 17288, criteria = 6, oneline = true}), -- reverse bronze
        Achievement({id = 17289, criteria = 6, oneline = true}), -- reverse silver
        Achievement({id = 17290, criteria = 6, oneline = true}) -- reverse gold
    }
}) -- Forbidden Reach Rush

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
            id = 17528,
            criteria = {
                id = 1,
                qty = true,
                suffix = L['hoarder_of_the_forbidden_reach_suffix']
            }
        }), -- Hoarder of the Forbidden Reach
        Achievement({
            id = 17529,
            criteria = {
                id = 1,
                qty = true,
                suffix = L['forbidden_spoils_suffix']
            }
        }), -- Forbidden Spoils
        Item({item = 202667}), -- Sealed Artifact Scroll
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
        Mount({item = 192785, id = 197}) -- Gooey Snailemental -- TODO: REPLACE WILL REAL MOUNTID
    },
    [7408] = {
        Achievement({id = 17540, criteria = 58567}), -- Under the Weather
        Spacer(), Item({item = 199749, quest = 70753}), -- Primal Air Core
        Mount({item = 192785, id = 197}) -- Gooey Snailemental -- TODO: REPLACE WILL REAL MOUNTID
    }, -- Air
    [7409] = {
        Achievement({id = 17540, criteria = 58568}), -- Under the Weather
        Spacer(), Item({item = 199691, quest = 70723}), -- Primal Earth Core
        Mount({item = 192785, id = 197}) -- Gooey Snailemental -- TODO: REPLACE WILL REAL MOUNTID
    }, -- Earth
    [7410] = {
        Achievement({id = 17540, criteria = 58569}), -- Under the Weather
        Spacer(), Item({item = 199750, quest = 70754}), -- Primal Fire Core
        Mount({item = 192785, id = 197}) -- Gooey Snailemental -- TODO: REPLACE WILL REAL MOUNTID
    }, -- Fire
    [7411] = {
        Achievement({id = 17540, criteria = 58570}), -- Under the Weather
        Spacer(), Item({item = 199748, quest = 70752}), -- Primal Water Core
        Mount({item = 192785, id = 197}) -- Gooey Snailemental -- TODO: REPLACE WILL REAL MOUNTID
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

map.nodes[39988182] = SignalTransmitter({quest = 73145}) -- Sharpscale Coast
map.nodes[78035110] = SignalTransmitter({quest = 73144}) -- Stormsunder Mountain

-------------------------------------------------------------------------------
-------------------------------- ZSKERA VAULTS --------------------------------
-------------------------------------------------------------------------------

local ZSKERA_VAULTS_REWARDS = {
    Achievement({id = 17509}), -- Every Door, Everywhere, All At Once
    Achievement({
        id = 17413,
        criteria = {id = 1, qty = true, suffix = L['door_buster_suffix']}
    }), -- Door Buster
    Pet({item = 193851, id = 3332}), -- Patos
    Pet({item = 193853, id = 3331}), -- Emmah
    Pet({item = 193908, id = 3338}), -- Kobaldt
    Pet({item = 204079, id = 3476}), -- Gilded Mechafrog
    Pet({item = 193835, id = 3323}), -- Brightfeather
    Pet({item = 193854, id = 3333}), -- Berylmane
    Spacer(), -- Toys
    Toy({item = 204257}), -- Holoviewer: The Lady of Dreams
    Toy({item = 204256}), -- Holoviewer: The Scarlet Queen
    Toy({item = 204262}), -- Holoviewer: The timeless One
    Toy({item = 203852}), -- Spore-Bound Essence
    Toy({item = 204687}), -- Obsidian Battle Horn
    Spacer(), -- Recipe
    Recipe({item = 204073, profession = 185}), -- Ratcipe: Deviously Deviled Eggs
    Spacer(), -- Mount
    Mount({item = 192790, id = 197}), -- Mossy Mammoth -- TODO: REPLACE WILL REAL MOUNTID
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

---------------------- RATCIPE: DEVIOUSLY DEVILVED EGGS -----------------------

local RecipeRat = Class('RecipeRat', Node, {
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
        Mount({item = 192790, id = 197}) -- Mossy Mammoth -- TODO: REPLACE WILL REAL MOUNTID
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

-------------------------------------------------------------------------------
------------------ DRAGONSCALE EXPEDITION: THE HIGHEST PEAKS ------------------
-------------------------------------------------------------------------------

map.nodes[27945985] = Flag({quest = 73696})
map.nodes[54573460] = Flag({quest = 73699})
map.nodes[36903792] = Flag({quest = 73700})
map.nodes[76285343] = Flag({quest = 73702})

-------------------------------------------------------------------------------
--------------------------- LIBRARIAN OF THE REACH ----------------------------
-------------------------------------------------------------------------------

local LibraryBook = Class('LibraryBook', Collectible,
    {icon = 4549135, group = ns.groups.LIBRARY})

warCreche.nodes[52405962] = LibraryBook({
    label = L['spellsworn_missive_label'],
    location = L['in_the_war_creche'],
    note = format(L['library_note'], L['spellsworn_missive_label'], 204338),
    parent = map.id,
    rewards = {Achievement({id = 17530, criteria = 58501})}
}) -- The Burden of Lapisagos

froststoneVault.nodes[64775677] = LibraryBook({
    label = L['confiscated_journal_label'],
    location = L['in_froststone_vault'],
    note = format(L['library_note'], L['confiscated_journal_label'], 204316),
    parent = map.id,
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

-- local DraconicArtifact = Class('DraconicArtifact', ScrollHunter, {
--     label = '{npc:196127}',
--     note = format(L['scroll_hunter_note'],
--         202667, -- Sealed Artifact Scroll
--         202871, -- Draconic Artifact
--         2507 -- Dragonscale Expedition
--     )
-- }) -- Draconic Artifact

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

-------------------------------------------------------------------------------
--------------------------- WHILE WE WERE SLEEPING ----------------------------
-------------------------------------------------------------------------------

local ScalecommanderItem = Class('scalecommander_item', Collectible, {
    icon = 134422,
    group = ns.groups.SCALECOMMANDER_ITEM
})

function ScalecommanderItem.getters:label()
    return ns.faction == 'Alliance' and self.allianceLabel or self.hordeLabel
end

map.nodes[59646492] = ScalecommanderItem({
    allianceLabel = '{quest:74866}',
    hordeLabel = '{quest:73110}',
    quest = 73110,
    rewards = {Achievement({id = 17315, criteria = 2})}
}) -- Journal Entry: Experiments

map.nodes[50884345] = ScalecommanderItem({
    allianceLabel = '{quest:73113}',
    hordeLabel = '{quest:74880}',
    rewards = {Achievement({id = 17315, criteria = 3})}
}) -- Journal Entry: Relics

map.nodes[58957238] = ScalecommanderItem({
    allianceLabel = '{quest:73109}',
    hordeLabel = '{quest:74900}',
    location = L['in_the_high_creche'],
    rewards = {Achievement({id = 17315, criteria = 5})},
    pois = {POI({58666933})} -- Entrance
}) -- Receiving Stone: Final Warning

map.nodes[58407053] = ScalecommanderItem({
    allianceLabel = '{quest:72944}',
    hordeLabel = '{quest:74901}',
    location = L['in_the_high_creche'],
    rewards = {Achievement({id = 17315, criteria = 6})},
    pois = {POI({58666933})} -- Entrance
}) -- Sending Stone: Protest

map.nodes[55393586] = ScalecommanderItem({
    allianceLabel = '{quest:73107}',
    hordeLabel = '{quest:74902}',
    location = L['in_the_lost_atheneum'],
    rewards = {Achievement({id = 17315, criteria = 7})},
    pois = {POI({55103837})} -- Entrance
}) -- Sending Stone: Initial Report

-------------------------------------------------------------------------------
-------------------------------- MISCELLANEOUS --------------------------------
-------------------------------------------------------------------------------

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

warCreche.nodes[67030720] = GemstoneOfReturn() -- Entrance

--------------------------- MORQUT VILLAGE VENDORS ----------------------------

local MorqutVillageVendor = Class('MorqutVillageVendor', Collectible, {
    icon = 'peg_bl',
    scale = 1.3,
    note = L['morqut_village_vendor_note']
}) -- Morqut Village Vendor

map.nodes[35615948] = MorqutVillageVendor({
    id = 200559,
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

map.nodes[34216002] = MorqutVillageVendor({
    id = 200562,
    rewards = {
        Pet({item = 193850, id = 3330, note = 'x25000'}) -- Buckie
    }
}) -- Turik <Renown Envoy>

map.nodes[34075997] = MorqutVillageVendor({
    id = 200564,
    rewards = {
        Mount({item = 204382, id = 1467, note = 'x100000'}) -- Noble Bruffalon
    }
}) -- Storykeeper Ashekh <Renown Envoy>

map.nodes[34015980] = MorqutVillageVendor({
    id = 200563,
    rewards = {
        Item({item = 197626, quest = 69831, note = 'x2500'}), -- Windbone Velocidrake: Exposed Finned Neck
        Item({item = 197136, quest = 69337, note = 'x2500'}) -- Highland Drake: Tapered Nose
    }
}) -- Kraxxus <Renown Envoy>

map.nodes[35905744] = MorqutVillageVendor({
    id = 202445,
    rewards = {
        Recipe({item = 203420, profession = 171}), -- Recipe: Draconic Suppression Powder
        Recipe({item = 203421, profession = 164}), -- Plans: Ancient Ceremonial Trident
        Recipe({item = 203422, profession = 185}), -- Recipe: Sparkling Spice Pouch
        Recipe({item = 203423, profession = 333}), -- Formula: Glowing Crystal Bookmark
        Recipe({item = 203424, profession = 202}), -- Schematic: Gnomish Voicebox
        Recipe({item = 203425, profession = 773}), -- Technique: Arcane Dispelling Rune
        Recipe({item = 203426, profession = 755}), -- Design: Crystal Tuning Fork
        Recipe({item = 203427, profession = 165}), -- Pattern: Reinforced Pristine Leather
        Recipe({item = 203428, profession = 197}) -- Pattern: Traditional Morqut Kite
    }
}) -- Trader Hag'arth <Artisan's Consortium Quartermaster>

-- STOP: DO NOT ADD NEW NODES HERE UNLESS THEY BELONG IN MISCELLANEOUS
