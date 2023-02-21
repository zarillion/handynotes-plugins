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
local Pet = ns.reward.Pet
local Spacer = ns.reward.Spacer
local Toy = ns.reward.Toy

local Path = ns.poi.Path
local POI = ns.poi.POI

-------------------------------------------------------------------------------

local map = Map({id = 2151, settings = true})

local siegeCreche = Map({id = 2100, settings = false}) -- The Siege Crech
local supportCreche = Map({id = 2101, settings = false}) -- The Support Creche
local warCreche = Map({id = 2102, settings = false}) -- The War Creche
local froststoneVault = Map({id = 2154, settings = false}) -- Froststone Vault
local dragonskullIsland = Map({id = 2150, settings = false}) -- Dragonskull Island

-------------------------------------------------------------------------------
------------------------------ HELPER FUNCTIONS -------------------------------
-------------------------------------------------------------------------------

-- Get Vignette information from mouseover
hooksecurefunc(VignettePinMixin, 'DisplayNormalTooltip', function(self)
    if self and self.vignetteID then
        local mapID = self:GetMap().mapID
        local guid = self.vignetteGUID
        local x = C_VignetteInfo.GetVignettePosition(guid, mapID).x
        local y = C_VignetteInfo.GetVignettePosition(guid, mapID).y
        print(C_VignetteInfo.GetVignetteInfo(guid).name)
        print(mapID .. ': ' .. HandyNotes:getCoord(x, y))
    end
end)

-- Get Area POI information from mouseover
hooksecurefunc(AreaPOIPinMixin, 'TryShowTooltip', function(self)
    if self and self.areaPoiID then
        local mapID = self:GetMap().mapID
        local x = C_AreaPoiInfo.GetAreaPOIInfo(mapID, self.areaPoiID).position.x
        local y = C_AreaPoiInfo.GetAreaPOIInfo(mapID, self.areaPoiID).position.y
        print(
            C_AreaPoiInfo.GetAreaPOIInfo(mapID, self.areaPoiID).name .. ' (' ..
                self.areaPoiID .. ')')
        print(mapID .. ': ' .. HandyNotes:getCoord(x, y))
    end
end)

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[58174826] = Rare({
    id = 200584,
    quest = 73111,
    note = L['in_small_cave'],
    rewards = {
        Achievement({id = 17525, criteria = 58458}), -- Champion of the Forbidden Reach
        Item({item = 204276}), -- Untapped Forbidden Knowledge
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    },
    pois = {
        POI({58934944}) -- Entrance
    }
}) -- Vakren the Hunter

map.nodes[28303794] = Rare({
    id = 200537,
    quest = 73095,
    note = L['in_water_cave'],
    rewards = {
        Achievement({id = 17525, criteria = 58459}), -- Champion of the Forbidden Reach
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    },
    pois = {
        POI({27184089}) -- Entrance
    }
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
    note = L['in_small_cave'],
    rewards = {
        Achievement({id = 17525, criteria = 58461}), -- Champion of the Forbidden Reach
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    },
    pois = {
        POI({46961955}) -- Entrance
    }
}) -- Reisa the Drowned

local Duzalgor = Class('Duzalgor', Rare, {
    id = 200610,
    quest = 73881,
    note = L['in_small_cave'] .. '\n\n' .. L['duzalgor_note'],
    rewards = {
        Achievement({id = 17525, criteria = 58462}), -- Champion of the Forbidden Reach
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    }
}) -- Duzalgor

map.nodes[32852931] = Duzalgor({
    pois = {
        POI({34662400}), -- Entrance
        POI({color = 'Green', points = {36933238, 36743276}}) -- Toxin Antidote
    }
}) -- Duzalgor (The Forbidden Reach)

supportCreche.nodes[35254374] = Duzalgor() -- Duzalgor (The Support Creche)

map.nodes[43736121] = Rare({
    id = 200681,
    quest = nil,
    note = L['in_small_cave'],
    rewards = {
        Achievement({id = 17525, criteria = 58463}), -- Champion of the Forbidden Reach
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
    note = L['in_small_cave'],
    rewards = {
        Achievement({id = 17525, criteria = 58466}), -- Champion of the Forbidden Reach
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    },
    pois = {
        POI({60845827}) -- Entrance
    }
}) -- Lady Shaz'ra

map.nodes[72986738] = Rare({
    id = 200904,
    quest = 70517,
    note = L['in_small_cave'],
    rewards = {
        Achievement({id = 17525, criteria = 58467}), -- Champion of the Forbidden Reach
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    },
    pois = {
        POI({70776649, 72086535, 71006875, 71906968}) -- Entrances
    }
}) -- Veltrax

map.nodes[67924531] = Rare({
    id = 201181,
    quest = 74283,
    note = L['in_small_cave'] .. '\n\n' .. L['mad_eye_carrey_note'],
    rewards = {
        Achievement({id = 17525, criteria = 58468}), -- Champion of the Forbidden Reach
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    },
    pois = {
        POI({69024597}) -- Entrance
    }
}) -- Mad-Eye Carrey

map.nodes[61723400] = Rare({
    id = 201013,
    quest = 73409,
    note = L['wymslayer_angvardi_note'],
    rewards = {
        Achievement({id = 17525, criteria = 58469}), -- Champion of the Forbidden Reach
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    },
    pois = {
        POI({64042478}) -- Nidharr
    }
}) -- Wyrmslayer Angvardi

local WardenEntrix = Class('WardenEntrix', Rare, {
    id = 200960,
    quest = 73367,
    note = L['in_the_war_creche'],
    rewards = {
        Achievement({id = 17525, criteria = 58470}), -- Champion of the Forbidden Reach
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    }
}) -- Warden Entrix

map.nodes[45917966] = WardenEntrix({
    pois = {
        POI({51786020}) -- Entrance
    }
}) -- Warden Entrix (The Forbidden Reach)

warCreche.nodes[42958468] = WardenEntrix({
    pois = {
        POI({47044747, 49915427}), -- Spellsworn Gateways
        Path({47044747, 49915427}) -- Spellsworn Gateways
    }
}) -- Warden Entrix (The War Creche)

map.nodes[36731223] = Rare({
    id = 200956,
    quest = 73366,
    rewards = {
        Achievement({id = 17525, criteria = 58471}), -- Champion of the Forbidden Reach
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    }
}) -- "Captain" Ookbeard

local Pyrachniss = Class('Pyrachniss', Rare, {
    id = 200978,
    quest = 73385,
    note = L['in_the_war_creche'],
    rewards = {
        Achievement({id = 17525, criteria = 58472}), -- Champion of the Forbidden Reach
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    }
}) -- Pyrachniss

map.nodes[51747276] = Pyrachniss({
    pois = {
        POI({51786020}) -- Entrance
    }
}) -- Pyrachniss (The Forbidden Reach)

warCreche.nodes[67355579] = Pyrachniss() -- Pyrachniss (The War Creche)

local Volcanakk = Class('Volcanakk', Rare, {
    id = 200911,
    quest = 73225,
    note = L['in_small_cave'],
    rewards = {
        Achievement({id = 17525, criteria = 58473}), -- Champion of the Forbidden Reach
        Item({item = 202196}), -- Zskera Vault Key
        Currency({id = 2118}) -- Elemental Overflow
    }
}) -- Volcanakk

map.nodes[78205066] = Volcanakk({
    pois = {
        POI({78205066}) -- Entrance
    }
}) -- Volcanakk (The Forbidden Reach)

siegeCreche.nodes[58993931] = Volcanakk() -- Volcanakk (The Siege Creche)

-- map.nodes[] = Rare({
--     id = 200619,
--     quest = nil,
--     rewards = {
--         Achievement({id = 17525, criteria = 58474}), -- Champion of the Forbidden Reach
--     }
-- }) -- Tectonus

-- map.nodes[] = Rare({
--     id = 200620,
--     quest = nil,
--     rewards = {
--         Achievement({id = 17525, criteria = 58475}), -- Champion of the Forbidden Reach
--     }
-- }) -- Sir Pinchalot

-- map.nodes[] = Rare({
--     id = 200621,
--     quest = nil,
--     rewards = {
--         Achievement({id = 17525, criteria = 58476}), -- Champion of the Forbidden Reach
--     }
-- }) -- Manathema

-- map.nodes[] = Rare({
--     id = 200622,
--     quest = nil,
--     rewards = {
--         Achievement({id = 17525, criteria = 58477}), -- Champion of the Forbidden Reach
--     }
-- }) -- Snarfang

-- map.nodes[] = Rare({
--     id = 200722,
--     quest = nil,
--     rewards = {
--         Achievement({id = 17525, criteria = 58478}), -- Champion of the Forbidden Reach
--     }
-- }) -- Gareed

-- map.nodes[] = Rare({
--     id = 200725,
--     quest = nil,
--     rewards = {
--         Achievement({id = 17525, criteria = 58479}), -- Champion of the Forbidden Reach
--     }
-- }) -- Faunos

-- map.nodes[] = Rare({
--     id = 200730,
--     quest = nil,
--     rewards = {
--         Achievement({id = 17525, criteria = 58480}), -- Champion of the Forbidden Reach
--     }
-- }) -- Tidesmith Zarviss

-- map.nodes[] = Rare({
--     id = 200737,
--     quest = nil,
--     rewards = {
--         Achievement({id = 17525, criteria = 58481}), -- Champion of the Forbidden Reach
--     }
-- }) -- Arcantrix

-- map.nodes[] = Rare({
--     id = 200738,
--     quest = nil,
--     rewards = {
--         Achievement({id = 17525, criteria = 58482}), -- Champion of the Forbidden Reach
--     }
-- }) -- Kangalo

-- map.nodes[] = Rare({
--     id = 200739,
--     quest = nil,
--     rewards = {
--         Achievement({id = 17525, criteria = 58483}), -- Champion of the Forbidden Reach
--     }
-- }) -- Fimbul

-- map.nodes[] = Rare({
--     id = 200740,
--     quest = nil,
--     rewards = {
--         Achievement({id = 17525, criteria = 58484}), -- Champion of the Forbidden Reach
--     }
-- }) -- Agni Blazehoof

-- map.nodes[] = Rare({
--     id = 200742,
--     quest = nil,
--     rewards = {
--         Achievement({id = 17525, criteria = 58485}), -- Champion of the Forbidden Reach
--     }
-- }) -- Luttrok

-- map.nodes[] = Rare({
--     id = 200743,
--     quest = nil,
--     rewards = {
--         Achievement({id = 17525, criteria = 58486}), -- Champion of the Forbidden Reach
--     }
-- }) -- Amephyst

-------------------------------------------------------------------------------

-- TODO: A very sus spider named "Unknown" with no Wowhead entry and no silver
-- dragon potrait. Might be one of the rares listed above?

-- map.nodes[53533679] = Node({
--     id = 199238
-- }) -- Unknown

-- TODO: A very sus dragon named Adamanthia. Trapped in earth-bound stasis and
-- referenced all over the place especially by the [While We Were Sleeping]
-- achievement criteria. May be a rare from above? Or possibly quest related?

-- map.nodes[58937114] = Node({
--     id = 199134,
--     note = L['in_the_high_creche'],
--     pois = {
--         POI({58666933}) -- Entrance
--     }
-- }) -- Adamanthia

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

------------------------------- FORBIDDEN HOARD -------------------------------

local ForbiddenHoard = Class('ForbiddenHoard', Collectible, {
    label = L['forbidden_hoard_label'],
    icon = 'chest_pp',
    scale = 1.2,
    group = ns.groups.FORBIDDEN_HOARD,
    note = L['forbidden_hoard_note'],
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
        Item({item = 202196}), -- Zskera Vault Key
        Item({item = 203464}) -- Sealed Spellsworn Scroll
    }
}) -- Forbidden Hoard

map.nodes[28414200] = ForbiddenHoard()
map.nodes[39192452] = ForbiddenHoard()
map.nodes[41154445] = ForbiddenHoard({
    sublabel = L['in_small_cave'],
    pois = {
        POI({41184350}) -- Entrance
    }
})
map.nodes[50733679] = ForbiddenHoard({
    sublabel = L['in_small_cave'],
    pois = {
        POI({49463696}) -- Entrance
    }
})
map.nodes[53157801] = ForbiddenHoard()
map.nodes[54843439] = ForbiddenHoard()
map.nodes[56765534] = ForbiddenHoard()
map.nodes[58006276] = ForbiddenHoard()
map.nodes[62584946] = ForbiddenHoard()
map.nodes[67756834] = ForbiddenHoard()

-------------------------------------------------------------------------------
------------------------------- SMALL TREASURES -------------------------------
-------------------------------------------------------------------------------

local SmallTreasure = Class('SmallTreasure', Collectible, {
    label = L['small_treasures_label'],
    icon = 'chest_rd',
    group = ns.groups.SMALL_TREASURES,
    note = L['small_treasures_note'],
    rewards = {
        Achievement({
            id = 17526,
            criteria = {
                58488, -- Avian Trove
                58489, -- Obsidian Coffer
                58491, -- Bone Pile
                58492, -- Farscale Cache
                58493, -- Irontide Stash
                58494, -- Storm-Eater Cairn
                58495, -- Stonescaled Cairn
                58496, -- Blazing Cairn
                58497, -- Frozenheart Cairn
                58498 -- Morqut Provisions
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

map.nodes[17935425] = SmallTreasure()
map.nodes[29704826] = SmallTreasure()
map.nodes[33124319] = SmallTreasure()
map.nodes[40314192] = SmallTreasure()
map.nodes[42045105] = SmallTreasure()
map.nodes[44055921] = SmallTreasure()
map.nodes[44745794] = SmallTreasure()
map.nodes[45705660] = SmallTreasure()
map.nodes[47071542] = SmallTreasure()
map.nodes[48764706] = SmallTreasure()
map.nodes[49464251] = SmallTreasure()
map.nodes[50374387] = SmallTreasure()
map.nodes[50534337] = SmallTreasure()
map.nodes[51405334] = SmallTreasure()
map.nodes[54285826] = SmallTreasure()
map.nodes[54575658] = SmallTreasure()
map.nodes[54904277] = SmallTreasure()
map.nodes[57545601] = SmallTreasure()
map.nodes[57816240] = SmallTreasure()
map.nodes[58556090] = SmallTreasure()
map.nodes[59425809] = SmallTreasure()
map.nodes[67284345] = SmallTreasure()
map.nodes[68604706] = SmallTreasure()
map.nodes[70806917] = SmallTreasure()
map.nodes[70826916] = SmallTreasure()
map.nodes[70844360] = SmallTreasure()
map.nodes[71385357] = SmallTreasure()
map.nodes[72305308] = SmallTreasure()
map.nodes[72396117] = SmallTreasure()

warCreche.nodes[38095249] = SmallTreasure()
warCreche.nodes[49098242] = SmallTreasure()
warCreche.nodes[60734407] = SmallTreasure()
warCreche.nodes[64044226] = SmallTreasure()

siegeCreche.nodes[44804622] = SmallTreasure()
siegeCreche.nodes[53712134] = SmallTreasure()

froststoneVault.nodes[56505366] = SmallTreasure()

dragonskullIsland.nodes[42454551] = SmallTreasure()

-------------------------------- MISCELLANEOUS --------------------------------

map.nodes[48947352] = ns.node.ElementalChest({
    label = L['storm_bound_chest_label'],
    quest = 74567,
    rewards = {
        Item({item = 203639}), -- Primalist Mail Boots -- Catch-Up Gear
        Item({item = 202196}), -- Zskera Vault Key
        Item({item = 204577}) -- Condensed Nature Magic
    },
    areaPOI = 7415
}) -- Storm-Bound Chest

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[18371315] = PetBattle({
    id = 200769,
    rewards = {
        Achievement({id = 17541, criteria = 58572}) -- Global Swarming
    }
}) -- Vortex

map.nodes[67251238] = PetBattle({
    id = 200770,
    rewards = {
        Achievement({id = 17541, criteria = 58573}) -- Global Swarming
    }
}) -- Temblor

map.nodes[89366022] = PetBattle({
    id = 200772,
    rewards = {
        Achievement({id = 17541, criteria = 58575}) -- Global Swarming
    }
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
------------------ DRAGONSCALE EXPEDITION: THE HIGHEST PEAKS ------------------
-------------------------------------------------------------------------------

map.nodes[27945985] = Flag({quest = 73696})
map.nodes[54573460] = Flag({quest = 73699})
map.nodes[36903792] = Flag({quest = 73700})
map.nodes[76285343] = Flag({quest = 73702})

-------------------------------------------------------------------------------
------------------ WYRMHOLE GENERATOR - SIGNAL TRANSMITTER --------------------
-------------------------------------------------------------------------------

map.nodes[39988182] = SignalTransmitter({quest = 73145}) -- Sharpscale Coast
map.nodes[78035110] = SignalTransmitter({quest = 73144}) -- Stormsunder Mountain

-------------------------------------------------------------------------------
------------------------------- ARTISAN CURIOS --------------------------------
-------------------------------------------------------------------------------

local ArtisanCurio = Class('ArtisanCurio', Collectible, {
    group = ns.groups.ARTISAN_CURIO,
    IsEnabled = function(self)
        if not ns.PlayerHasProfession(self.skillID) then return false end
        return ns.node.Item.IsEnabled(self)
    end
}) -- Artisan Curio

function ArtisanCurio.getters:note()
    local note = ''
    if self.prenote then note = self.prenote end
    if self.skillID and self.recipeID then
        local profession = C_TradeSkillUI.GetTradeSkillDisplayName(self.skillID)
        local recipeID = self.recipeID
        if self.prenote then note = note .. '\n\n' end
        note = note .. format(L['artisan_curio_note'], profession, recipeID)
    end
    return note
end

-- map.nodes[] = ArtisanCurio({
--     label = nil,
--     icon = 650638,
--     requires = ns.requirement.Item(203407), -- Neutralizing Agent
--     skillID = 171 -- Alchemy
--     recipeID = 203420 -- Recipe: Neutralizing Agent
-- }) -- UNKNOWN

map.nodes[67237599] = ArtisanCurio({
    label = L['farescale_shrine_label'],
    icon = 2735993,
    requires = ns.requirement.Item(203408), -- Ceremonial Trident
    skillID = 164, -- Blacksmithing
    recipeID = 203421 -- Plans: Ceremonial Trident
}) -- Farscale Shrine

map.nodes[55695154] = ArtisanCurio({
    label = L['spiceless_stew_label'],
    icon = 133210,
    requires = ns.requirement.Item(203409), -- Sparkling Spice Pouch
    skillID = 185, -- Cooking
    recipeID = 203422 -- Recipe: Sparkling Spice Pouch
}) -- Spiceless Stew

map.nodes[55633610] = ArtisanCurio({
    label = L['book_of_arcane_entities_label'],
    icon = 1033184,
    requires = ns.requirement.Item(203410), -- Glowing Crystal Bookmark
    skillID = 333, -- Enchanting
    recipeID = 203423, -- Formula: Glowing Crystal Bookmark
    pois = {
        POI({55103837}) -- Entrance
    }
}) -- Book of Arcane Entities

-- map.nodes[] = ArtisanCurio({
--     label = nil,
--     icon = 2902385,
--     requires = ns.requirement.Item(203411), -- Gnomish Voicebox
--     skillID = 202, -- Engineering
--     recipeID = 203424 -- Schematic: Gnomish Voicebox
-- }) -- UNKNOWN

map.nodes[61256442] = ArtisanCurio({
    label = L['spellsworn_ward_label'],
    icon = 4638727,
    requires = ns.requirement.Item(203412), -- Dispelling Rune
    skillID = 773, -- Inscription
    recipeID = 203425 -- Technique: Dispellng Rune
}) -- Spellsworn Ward

map.nodes[28905707] = ArtisanCurio({
    label = L['resonating_crystal_label'],
    icon = 2264901,
    requires = ns.requirement.Item(203413), -- Tuning Fork
    skillID = 755, -- Jewelcrafting
    recipeID = 203426, -- Design: Tuning Fork
    prenote = L['in_small_cave'],
    pois = {
        POI({30496101}) -- Entrance
    }
}) -- Resonating Crystal

-- map.nodes[] = ArtisanCurio({
--     label = nil,
--     icon = 4635266,
--     requires = ns.requirement.Item(203414), -- Reinforced Leather Patch
--     skillID = 165, -- Leatherworking
--     recipeID = 203427, -- Reinforced Leather Patch
-- }) -- UNKNOWN

dragonskullIsland.nodes[56947247] = ArtisanCurio({
    label = L['rumbling_draconium_label'],
    icon = 134463,
    parent = map.id,
    prenote = L['in_cave'],
    requires = ns.requirement.Item(203418), -- Quaking Stone
    skillID = 186, -- Mining
    pois = {
        POI({74533560, 76633764}) -- Entrances
    }
}) -- Rumbling Draconium

map.nodes[57634843] = ArtisanCurio({
    label = L['tuskarr_kite_post_label'],
    icon = 318523,
    requires = ns.requirement.Item(203415), -- Morqut Kite
    skillID = 197, -- Tailoring
    recipeID = 203428 -- Pattern: Morqut Kite
}) -- Tuskarr Kite Post

map.nodes[35905745] = Node({
    label = '{npc:202445}',
    icon = 134327,
    group = ns.groups.ARTISAN_CURIO
}) -- Trader Hag'arth

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
------------------------ FROSTSTONE VAULT PRIMAL STORM ------------------------
-------------------------------------------------------------------------------

local FROSTSTONE_VAULT_PRIMAL_STORM_AREA_POIS = {
    [7409] = 'earth',
    [7410] = 'fire',
    [7411] = 'water'
}

local FROSTSTONE_VAULT_PRIMAL_STORM_REWARDS = {
    ['all'] = {
        Achievement({
            id = 17540,
            criteria = {
                58567, -- Air
                58568, -- Earth
                58569, -- Fire
                58570 -- Water
            }
        }), -- Under the Weather
        Item({item = 199691, quest = 70723}), -- Primal Earth Core
        Item({item = 199750, quest = 70754}), -- Primal Fire Core
        Item({item = 199748, quest = 70752}) -- Primal Water Core
    },
    ['earth'] = {
        Achievement({id = 17540, criteria = 58568}), -- Under the Weather
        Spacer(), Item({item = 199691, quest = 70723}) -- Primal Earth Core
    },
    ['fire'] = {
        Achievement({id = 17540, criteria = 58569}), -- Under the Weather
        Spacer(), Item({item = 199750, quest = 70754}) -- Primal Fire Core
    },
    ['water'] = {
        Achievement({id = 17540, criteria = 58570}), -- Under the Weather
        Spacer(), Item({item = 199748, quest = 70752}) -- Primal Water Core
    }
}

local FroststoneVaultPrimalStorm = Class('FroststoneVaultPrimalStorm',
    Collectible, {
        label = L['froststone_vault_storm_label'],
        icon = 463562,
        areaPOIs = {7409, 7410, 7411},
        mapID = map.id,
        group = ns.groups.FROSTSTONE_VAULT_STORM,
        rewards = FROSTSTONE_VAULT_PRIMAL_STORM_REWARDS['all'],
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
        local stormType =
            FROSTSTONE_VAULT_PRIMAL_STORM_AREA_POIS[self.areaPoiID]

        if FROSTSTONE_VAULT_PRIMAL_STORM_AREA_POIS[mapID] then
            if stormType and group:GetDisplay(mapID) then
                local rewards = FROSTSTONE_VAULT_PRIMAL_STORM_REWARDS[stormType]
                GameTooltip:AddLine(' ')
                for i, reward in ipairs(rewards) do
                    if reward:IsEnabled() then
                        reward:Render(GameTooltip)
                    end
                end
                GameTooltip:Show()
            end
        end
    end
end)

-------------------------------------------------------------------------------
--------------------------- LIBRARIAN OF THE REACH ----------------------------
-------------------------------------------------------------------------------

local LibraryBook = Class('LibraryBook', Collectible,
    {icon = 4549135, group = ns.groups.LIBRARY})

warCreche.nodes[52405962] = LibraryBook({
    label = L['spellsworn_missive_label'],
    note = L['spellsworn_missive_note'],
    parent = map.id,
    rewards = {Achievement({id = 17530, criteria = 58501})}
}) -- The Burden of Lapisagos

froststoneVault.nodes[64775677] = LibraryBook({
    label = L['confiscated_journal_label'],
    note = L['in_froststone_vault'] .. '\n\n' .. L['confiscated_journal_note'],
    parent = map.id,
    rewards = {Achievement({id = 17530, criteria = 58502})}
}) -- A Soldier's Journal

map.nodes[71036732] = LibraryBook({
    label = L['farscale_manifesto_label'],
    note = L['farscale_manifesto_note'],
    rewards = {Achievement({id = 17530, criteria = 58503})}
}) -- A Song of the Depths

-- map.nodes[] = LibraryBook({
--     id = 204328,
--     rewards = {Achievement({id = 17530, criteria = 58504})}
-- })-- Return of the Nightsquall

map.nodes[57446349] = LibraryBook({
    label = L['lost_expeditions_notes_label'],
    note = L['lost_expeditions_notes_note'],
    rewards = {Achievement({id = 17530, criteria = 58505})}
}) -- Expedition Notes

map.nodes[61533375] = LibraryBook({
    label = L['vrykul_tome_label'],
    note = L['vrykul_tome_note'],
    rewards = {Achievement({id = 17530, criteria = 58506})}
}) -- Words of the Wyrmslayer

-- map.nodes[] = LibraryBook({
--     id = 204185,
--     rewards = {Achievement({id = 17530, criteria = 58507})}
-- })-- The Old Gods and the Ordering of Azeroth (Annotated)

-------------------------------------------------------------------------------
--------------------------- WHILE WE WERE SLEEPING ----------------------------
-------------------------------------------------------------------------------

local ScalecommanderItem = Class('scalecommander_item', Collectible, {
    icon = 134422,
    group = ns.groups.SCALECOMMANDER_ITEM
})

-- map.nodes[] = ScalecommanderItem({
--     label = '{item:}',
--     rewards = {Achievement({id = 17315, criteria = 1})}
-- }) -- Journal Entry: The Creches

map.nodes[59646492] = ScalecommanderItem({
    label = '{item:204200}',
    quest = 73110,
    rewards = {Achievement({id = 17315, criteria = 2})}
}) -- Journal Entry: Experiments

map.nodes[50884345] = ScalecommanderItem({
    label = '{item:202335}',
    rewards = {Achievement({id = 17315, criteria = 3})}
}) -- Journal Entry: Relics

-- map.nodes[] = ScalecommanderItem({
--     label = '{item:}',
--     rewards = {Achievement({id = 17315, criteria = 4})}
-- }) -- Journal Entry: Silence

map.nodes[58957238] = ScalecommanderItem({
    label = '{item:202328}',
    quest = 74900,
    note = L['in_the_high_creche'],
    rewards = {Achievement({id = 17315, criteria = 5})},
    pois = {
        POI({58666933}) -- Entrance
    }
}) -- Receiving Stone: Final Warning

map.nodes[58407053] = ScalecommanderItem({
    label = '{item:202203}',
    quest = 74901,
    note = L['in_the_high_creche'],
    rewards = {Achievement({id = 17315, criteria = 6})},
    pois = {
        POI({58666933}) -- Entrance
    }
}) -- Sending Stone: Protest

map.nodes[55393586] = ScalecommanderItem({
    label = '{item:202326}',
    rewards = {Achievement({id = 17315, criteria = 7})},
    pois = {
        POI({55103837}) -- Entrance
    }
}) -- Sending Stone: Initial Report

-- map.nodes[] = ScalecommanderItem({
--     label = '{item:}',
--     rewards = {Achievement({id = 17315, criteria = 8})}
-- }) -- Sending Stone: The Prisoner

-------------------------------------------------------------------------------
-------------------------------- MISCELLANEOUS --------------------------------
-------------------------------------------------------------------------------

-------------------------------- AWAKENED SOIL --------------------------------

-- TODO: Not sure what the following nodes are for yet. But they look
-- interesting so I saved them just in case!

local AwakenedSoil = Class('AwakenedSoil', Node, {
    label = L['awakened_soil_label'],
    icon = 656681,
    requires = ns.requirement.Item(203416) -- Lifebloom Seeds
}) -- Awakened Soil

map.nodes[35354003] = AwakenedSoil()
map.nodes[56435911] = AwakenedSoil()

----------------------------------- EDICTS ------------------------------------

-- TODO: I've ran into several different Edicts while exploring. No quest flips
-- and nothing in the Achievement frame about them. Might be quest related?
-- There was ah achievement in Panderia related to edicts. Starting to save
-- them now just in case.

map.nodes[55616889] = Node({
    label = 'Edict: The Adamant Vigil', -- TODO: Non-localized name for now
    icon = 'chest_yw',
    note = L['in_the_high_creche'],
    pois = {
        POI({58666933}) -- Entrance
    }
}) -- Edict: The Adamant Vigil

warCreche.nodes[32346769] = Node({
    label = 'Edict: Dark Talons', -- TODO: Non-localized name for now
    icon = 'chest_yw',
    note = L['in_the_war_creche'],
    parent = map.id,
    pois = {
        POI({51786020}) -- Entrance
    }
}) -- Edict: Dark Talons

warCreche.nodes[39347578] = Node({
    label = 'Edict: The Earth-Warder', -- TODO: Non-localized name for now
    icon = 'chest_yw',
    note = L['in_the_war_creche'],
    parent = map.id,
    pois = {
        POI({51786020}) -- Entrance
    }
}) -- Edict: The Earth-Warder

warCreche.nodes[31118323] = Node({
    label = 'Edict: Obsidian Warders', -- TODO: Non-localized name for now
    icon = 'chest_yw',
    note = L['in_the_war_creche'],
    parent = map.id,
    pois = {
        POI({51786020}) -- Entrance
    }
}) -- Edict: Obsidian Warders

----------------------------- SPELLSWORN GATEWAYS -----------------------------

warCreche.nodes[46984738] = Node({
    label = L['spellsworn_gateway'],
    icon = 'portal_pp',
    fgroup = 'spellsworn_gateway',
    pois = {Path({46984738, 49915424})}
}) -- Spellsworn Gateway

warCreche.nodes[49915424] = Node({
    label = L['spellsworn_gateway'],
    icon = 'portal_pp',
    fgroup = 'spellsworn_gateway'
}) -- Spellsworn Gateway

--------------------------------- ZSKERA VAULT --------------------------------

map.nodes[29185303] = Collectible({
    label = L['zskera_vault_label'],
    icon = 4909720,
    note = L['zskera_vault_note'],
    rewards = {
        Achievement({id = 17509}), -- Every Door, Everywhere, All At Once
        Achievement({
            id = 17413,
            criteria = {id = 1, qty = true, suffix = L['door_buster_suffix']}
        }), -- Door Buster
        Pet({item = 193851, id = 3332}), -- Patos
        Pet({item = 193908, id = 3338}), -- Kobaldt
        Pet({item = 204079, id = 3476}), -- Gilded Mechafrog
        Spacer(), Toy({item = 204257}), -- Holoviewer: The Lady of Dreams
        Toy({item = 204256}), -- Holoviewer: The Scarlet Queen
        Toy({item = 204262}) -- Holoviewer: The timeless One
    }
}) -- Zskera Vault
