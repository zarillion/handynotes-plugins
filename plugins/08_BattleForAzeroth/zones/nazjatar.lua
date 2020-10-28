-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local L = ns.locale
local Class = ns.Class
local Group = ns.Group
local Map = ns.Map

local Node = ns.node.Node
local Cave = ns.node.Cave
local NPC = ns.node.NPC
local PetBattle = ns.node.PetBattle
local Rare = ns.node.Rare
local Supply = ns.node.Supply
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Quest = ns.reward.Quest
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

-------------------------------------------------------------------------------

ns.groups.CATS_NAZJ = Group('cats_nazj', 454045)
ns.groups.MISC_NAZJ = Group('misc_nazj', 528288)
ns.groups.SLIMES_NAZJ = Group('slimes_nazj', 132107)
ns.groups.TREASURES_NAZJ = Group('treasures_nazj', 'chest_bl')

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({ id=1355, phased=false, settings=true })
local nodes = map.nodes

function map:Prepare ()
    Map.Prepare(self)
    self.phased = self.intro:IsCompleted()
end

-------------------------------------------------------------------------------
------------------------------------ INTRO ------------------------------------
-------------------------------------------------------------------------------

local Intro = Class('Intro', ns.node.Intro)

Intro.note = L["naz_intro_note"]

function Intro.getters:label ()
    return GetAchievementCriteriaInfoByID(13709, 45756) -- Welcome to Nazjatar
end

if UnitFactionGroup('player') == 'Alliance' then
    map.intro = Intro({quest=56156, faction='Alliance', rewards={
        -- The Wolf's Offensive => A Way Home
        Quest({id={56031,56043,55095,54969,56640,56641,56642,56643,56644,55175,54972}}),
        -- Essential Empowerment => Scouting the Palace
        Quest({id={55851,55533,55374,55400,55407,55425,55497,55618,57010,56162,56350}}),
        -- The Lost Shaman => A Tempered Blade
        Quest({id={55361,55362,55363,56156}})
    }})
else
    map.intro = Intro({quest=55500, faction='Horde', rewards={
        -- The Warchief's Order => A Way Home
        Quest({id={56030,56044,55054,54018,54021,54012,55092,56063,54015,56429,55094,55053}}),
        -- Essential Empowerment => Scouting the Palace
        Quest({id={55851,55533,55374,55400,55407,55425,55497,55618,57010,56161,55481}}),
        -- Settling In => Save A Friend
        Quest({id={55384,55385,55500}})
    }})
end

nodes[11952801] = map.intro

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

nodes[52394183] = Rare({id=152415, quest=56279, note=L["alga_note"], rewards={
    Achievement({id=13691, criteria=45519}), -- Kill
    Achievement({id=13692, criteria=46083}) -- Blind Eye (170189)
}}) -- Alga the Eyeless

nodes[66443875] = Rare({id=152416, quest=56280, note=L["allseer_note"], rewards={
    Achievement({id=13691, criteria=45520}) -- Kill
}}) -- Allseer Oma'kill

nodes[58605329] = Rare({id=152566, quest=56281, note=L["anemonar_note"], rewards={
    Achievement({id=13691, criteria=45522}), -- Kill
    Achievement({id=13692, criteria={46088,46089}}), -- Ancient Reefwalker Bark, Reefwalker Bark
    Item({item=170184, weekly=57140}) -- Ancient Reefwalker Bark
}}) -- Anemonar

nodes[73985395] = Rare({id=152361, quest=56282, note=L["banescale_note"], rewards={
    Achievement({id=13691, criteria=45524}), -- Kill
    Achievement({id=13692, criteria=46093}) -- Snapdragon Scent Gland
}}) -- Banescale the Packfather

nodes[37378256] = Rare({id=152712, quest=56269, note=L["cave_spawn"], rewards={
    Achievement({id=13691, criteria=45525}), -- Kill
    Pet({id=2682, item=169372}) -- Necrofin Tadpole
}}) -- Blindlight

nodes[40790735] = Rare({id=152464, quest=56283, note=L["cave_spawn"], rewards={
    Achievement({id=13691, criteria=45527}), -- Kill
    Pet({id=2690, item=169356}) -- Caverndark Nightmare
}}) -- Caverndark Terror

nodes[49208875] = Rare({id=152556, quest=56270, note=L["ucav_spawn"], rewards={
    Achievement({id=13691, criteria=45528}), -- Kill
    Achievement({id=13692, criteria=46101}), -- Eel Filet
}}) -- Chasm-Haunter

nodes[57074363] = Rare({id=152291, quest=56272, note=L["cora_spawn"], rewards={
    Achievement({id=13691, criteria=45530}), -- Kill
    Achievement({id=13692, criteria=46096}) -- Fathom Ray Wing
}}) -- Deepglider

nodes[64543531] = Rare({id=152414, quest=56284, note=L["elderunu_note"], rewards={
    Achievement({id=13691, criteria=45531}) -- Kill
}}) -- Elder Unu

nodes[51757487] = Rare({id=152555, quest=56285, note=nil, rewards={
    Achievement({id=13691, criteria=45532}), -- Kill
    Pet({id=2693, item=169359}) -- Spawn of Nalaada
}}) -- Elderspawn Nalaada

nodes[36044496] = Rare({id=152553, quest=56273, note=L["area_spawn"], rewards={
    Achievement({id=13691, criteria=45533}), -- Kill
    Achievement({id=13692, criteria=46092}) -- Razorshell
}}) -- Garnetscale

nodes[45715170] = Rare({id=152448, quest=56286, note=L["glimmershell_note"], rewards={
    Achievement({id=13691, criteria=45534}), -- Kill
    Achievement({id=13692, criteria=46099}), -- Giant Crab Leg
    Pet({id=2686, item=169352}) -- Pearlescent Glimmershell
}}) -- Iridescent Glimmershell

nodes[50056991] = Rare({id=152567, quest=56287, note=L["kelpwillow_note"], requires=ns.requirement.Item(167893), rewards={
    Achievement({id=13691, criteria=45535}), -- Kill
    Achievement({id=13692, criteria={46088,46089}}), -- Ancient Reefwalker Bark, Reefwalker Bark
    Item({item=170184, weekly=57140}) -- Ancient Reefwalker Bark
}}) -- Kelpwillow

nodes[29412899] = Rare({id=152323, quest=55671, note=L["gakula_note"], rewards={
    Achievement({id=13691, criteria=45536}), -- Kill
    Pet({id=2681, item=169371}) -- Murgle
}}) -- King Gakula

nodes[78132501] = Rare({id=152397, quest=56288, note=L["oronu_note"], rewards={
    Achievement({id=13691, criteria=45539}), -- Kill
    Achievement({id=13692, criteria={46088,46089}}), -- Ancient Reefwalker Bark, Reefwalker Bark
    Item({item=170184, weekly=57140}) -- Ancient Reefwalker Bark
}}) -- Oronu

nodes[42728740] = Rare({id=152681, quest=56289, note=nil, rewards={
    Achievement({id=13691, criteria=45540}), -- Kill
    Pet({id=2701, item=169367}) -- Seafury
}}) -- Prince Typhonus

nodes[42997551] = Rare({id=152682, quest=56290, note=nil, rewards={
    Achievement({id=13691, criteria=45541}), -- Kill
    Pet({id=2702, item=169368}) -- Stormwrath
}}) -- Prince Vortran

nodes[35554141] = Rare({id=152548, quest=56292, note=L["matriarch_note"], rewards={
    Achievement({id=13691, criteria=45545}), -- Kill
    Achievement({id=13692, criteria=46087}), -- Intact Naga Skeleton
    Pet({id=2704, item=169370}) -- Scalebrood Hydra
}}) -- Scale Matriarch Gratinax

nodes[27193708] = Rare({id=152545, quest=56293, note=L["matriarch_note"], rewards={
    Achievement({id=13691, criteria=45546}), -- Kill
    Achievement({id=13692, criteria=46087}), -- Intact Naga Skeleton
    Pet({id=2704, item=169370}) -- Scalebrood Hydra
}}) -- Scale Matriarch Vynara

nodes[28604664] = Rare({id=152542, quest=56294, note=L["matriarch_note"], rewards={
    Achievement({id=13691, criteria=45547}), -- Kill
    Achievement({id=13692, criteria=46087}), -- Intact Naga Skeleton
    Pet({id=2704, item=169370}) -- Scalebrood Hydra
}}) -- Scale Matriarch Zodia

nodes[62740809] = Rare({id=152552, quest=56295, note=L["cave_spawn"], rewards={
    Achievement({id=13691, criteria=45548}), -- Kill
    Toy({item=170187}) -- Shadescale
}}) -- Shassera

nodes[39601700] = Rare({id=153658, quest=56296, note=L["area_spawn"], rewards={
    Achievement({id=13691, criteria=45549}), -- Kill
    Achievement({id=13692, criteria={46090,46091}}) -- Voltscale Shield, Tidal Guard
}}) -- Shiz'narasz the Consumer

nodes[71365456] = Rare({id=152359, quest=56297, note=nil, rewards={
    Achievement({id=13691, criteria=45550}), -- Kill
    Achievement({id=13692, criteria=46093}) -- Snapdragon Scent Gland
}}) -- Siltstalker the Packmother

nodes[59704791] = Rare({id=152290, quest=56298, note=L["cora_spawn"], rewards={
    Achievement({id=13691, criteria=45551}), -- Kill
    Achievement({id=13692, criteria=46096}), -- Fathom Ray Wing
    Mount({id=1257, item=169163}) -- Silent Glider
}}) -- Soundless

nodes[62462964] = Rare({id=153898, quest=56122, note=L["tidelord_note"], rewards={
    Achievement({id=13691, criteria=45553}) -- Kill
}}) -- Tidelord Aquatus

nodes[57962648] = Rare({id=153928, quest=56123, note=L["tidelord_note"], rewards={
    Achievement({id=13691, criteria=45554}) -- Kill
}}) -- Tidelord Dispersius

nodes[65872243] = Rare({id=154148, quest=56106, note=L["tidemistress_note"], rewards={
    Achievement({id=13691, criteria=45555}), -- Kill
    Toy({item=170196}) -- Shirakess Warning Sign
}}) -- Tidemistress Leth'sindra

nodes[66964817] = Rare({id=152360, quest=56278, note=L["area_spawn"], rewards={
    Achievement({id=13691, criteria=45556}), -- Kill
    Achievement({id=13692, criteria=46094}) -- Alpha Fin
}}) -- Toxigore the Alpha

nodes[31282935] = Rare({id=152568, quest=56299, note=L["urduu_note"], rewards={
    Achievement({id=13691, criteria=45557}), -- Kill
    Achievement({id=13692, criteria={46088,46089}}), -- Ancient Reefwalker Bark, Reefwalker Bark
    Item({item=170184, weekly=57140}) -- Ancient Reefwalker Bark
}}) -- Urduu

nodes[67243458] = Rare({id=151719, quest=56300, note=L["voice_deeps_notes"], requires=ns.requirement.Item(168161), rewards={
    Achievement({id=13691, criteria=45558}), -- Kill
    Achievement({id=13692, criteria=46086}) -- Abyss Pearl
}}) -- Voice in the Deeps

nodes[36931120] = Rare({id=150191, quest=55584, note=L["avarius_note"], requires=ns.requirement.Item(167012), rewards={
    Pet({id=2706, item=169373}) -- Brinestone Algan
}}) -- Avarius

nodes[54664179] = Rare({id=149653, quest=55366, note=L["lasher_note"], requires=ns.requirement.Item(166888), rewards={
    Pet({id=2708, item=169375}) -- Coral Lashling
}}) -- Carnivorous Lasher

nodes[48002427] = Rare({id=150468, quest=55603, note=L["vorkoth_note"], requires=ns.requirement.Item(167059), rewards={
    Pet({id=2709, item=169376}) -- Skittering Eel
}}) -- Vor'koth

-------------------------------------------------------------------------------
---------------------------------- ZONE RARES ---------------------------------
-------------------------------------------------------------------------------

local start = 09452400
local function coord(x, y)
    return start + x*2500000 + y*400
end

nodes[coord(0,0)] = Rare({id=152794, quest=56268, minimap=false, note=L["zone_spawn"], rewards={
    Achievement({id=13691, criteria=45521}), -- Kill
    Pet({id=2697, item=169363}) -- Amethyst Softshell
}}) -- Amethyst Spireshell

nodes[coord(1,0)] = Rare({id=152756, quest=56271, minimap=false, note=L["zone_spawn"], rewards={
    Achievement({id=13691, criteria=45529}), -- Kill
    Pet({id=2695, item=169361}) -- Daggertooth Frenzy
}}) -- Daggertooth Terror

nodes[coord(2,0)] = Rare({id=144644, quest=56274, minimap=false, note=L["zone_spawn"], rewards={
    Achievement({id=13691, criteria=45537}), -- Kill
    Achievement({id=13692, criteria=46098}), -- Brightspine Shell
    Pet({id=2700, item=169366}) -- Wriggler
}}) -- Mirecrawler

nodes[coord(0,1)] = Rare({id=152465, quest=56275, minimap=false, note=L["needle_note"], rewards={
    Achievement({id=13691, criteria=45538}), -- Kill
    Achievement({id=13692, criteria=46099}), -- Giant Crab Leg
    Pet({id=2689, item=169355}) -- Chitterspine Needler
}}) -- Needlespine

nodes[coord(1,2)] = Rare({id=150583, quest=56291, minimap=false, note=L["zone_spawn"]..' '..L["rockweed_note"], rewards={
    Achievement({id=13691, criteria=45542}), -- Kill
    Pet({id=2707, item=169374}) -- Budding Algan
}}) -- Rockweed Shambler

nodes[coord(1,1)] = Rare({id=151870, quest=56276, minimap=false, note=L["sandcastle_note"], requires=ns.requirement.Item(167077), rewards={
    Achievement({id=13691, criteria=45543}), -- Kill
    Pet({id=2703, item=169369}) -- Sandkeep
}}) -- Sandcastle

nodes[coord(2,1)] = Rare({id=152795, quest=56277, minimap=false, note=L["east_spawn"], rewards={
    Achievement({id=13691, criteria=45544}), -- Kill
    Achievement({id=13692, criteria=46099}), -- Giant Crab Leg
    Pet({id=2684, item=169350}) -- Glittering Diamondshell
}}) -- Sandclaw Stoneshell

-------------------------------------------------------------------------------
------------------------------------ CAVES ------------------------------------
-------------------------------------------------------------------------------

nodes[39897717] = Cave({parent=nodes[37378256], label=L["blindlight_cave"]})
nodes[42261342] = Cave({parent=nodes[40790735], label=L["caverndark_cave"]})
nodes[47588538] = Cave({parent=nodes[49208875], label=L["chasmhaunt_cave"]})
nodes[63081189] = Cave({parent=nodes[62740809], label=L["shassera_cave"]})

-------------------------------------------------------------------------------
------------------------------------ SLIMES -----------------------------------
-------------------------------------------------------------------------------

local SLIME_PETS = {
    Pet({id=2762, item=167809}), -- Slimy Darkhunter
    Pet({id=2758, item=167808}), -- Slimy Eel
    Pet({id=2761, item=167807}), -- Slimy Fangtooth
    Pet({id=2763, item=167810}), -- Slimy Hermit Crab
    Pet({id=2760, item=167806}), -- Slimy Octopode
    Pet({id=2757, item=167805}), -- Slimy Otter
    Pet({id=2765, item=167804})  -- Slimy Sea Slug
}

-- first quest is daily, second quest means done and gone until weekly reset
nodes[32773951] = NPC({id=151782, icon=132107, group=ns.groups.SLIMES_NAZJ, quest={55430,55473}, questAny=true,
    note=L["ravenous_slime_note"], requires=ns.requirement.Item(167893), rewards=SLIME_PETS})
nodes[45692409] = NPC({id=151782, icon=132107, group=ns.groups.SLIMES_NAZJ, quest={55429,55472}, questAny=true,
    note=L["ravenous_slime_note"], requires=ns.requirement.Item(167893), rewards=SLIME_PETS})
nodes[54894868] = NPC({id=151782, icon=132107, group=ns.groups.SLIMES_NAZJ, quest={55427,55470}, questAny=true,
    note=L["ravenous_slime_note"], requires=ns.requirement.Item(167893), rewards=SLIME_PETS})
nodes[71722569] = NPC({id=151782, icon=132107, group=ns.groups.SLIMES_NAZJ, quest={55428,55471}, questAny=true,
    note=L["ravenous_slime_note"], requires=ns.requirement.Item(167893), rewards=SLIME_PETS})

-- once the second quest is true, the eggs should be displayed
nodes[32773952] = Node({icon=132833, group=ns.groups.SLIMES_NAZJ, quest=55478, questDeps=55473,
    label=L["slimy_cocoon"], note=L["slimy_cocoon_note"], rewards=SLIME_PETS})
nodes[45692410] = Node({icon=132833, group=ns.groups.SLIMES_NAZJ, quest=55477, questDeps=55472,
    label=L["slimy_cocoon"], note=L["slimy_cocoon_note"], rewards=SLIME_PETS})
nodes[54894869] = Node({icon=132833, group=ns.groups.SLIMES_NAZJ, quest=55475, questDeps=55470,
    label=L["slimy_cocoon"], note=L["slimy_cocoon_note"], rewards=SLIME_PETS})
nodes[71722570] = Node({icon=132833, group=ns.groups.SLIMES_NAZJ, quest=55476, questDeps=55471,
    label=L["slimy_cocoon"], note=L["slimy_cocoon_note"], rewards=SLIME_PETS})

ns.addon:RegisterEvent('UNIT_SPELLCAST_SUCCEEDED', function (...)
    -- Watch for a spellcast event that signals the slime was fed.
    -- https://www.wowhead.com/spell=293775/schleimphage-feeding-tracker
    local _, source, _, spellID = ...
    if (source == 'player' and spellID == 293775) then
        C_Timer.After(1, function()
            ns.addon:Refresh()
        end)
    end
end)

-------------------------------------------------------------------------------
-------------------------------- TROVE TRACKER --------------------------------
-------------------------------------------------------------------------------

local Arcane = Class('ArcaneChest', Treasure, {
    group=ns.groups.TREASURES_NAZJ,
    label=L["arcane_chest"],
    rewards={
        Achievement({id=13549, criteria=1})
    },
    IsCompleted = function (self)
        if self:IsCollected() then return true end
        return Treasure.IsCompleted(self)
    end
})

local Glowing = Class('GlowingChest', Treasure, {
    icon='chest_bl',
    group=ns.groups.TREASURES_NAZJ,
    label=L["glowing_chest"],
    rewards={
        Achievement({id=13549, criteria=2})
    },
    IsCompleted = function (self)
        if self:IsCollected() then return true end
        return Treasure.IsCompleted(self)
    end
})

-- Arcane Chests
nodes[34454040] = Arcane({quest=55954, note=L["arcane_chest_01"]})
nodes[49576450] = Arcane({quest=55949, note=L["arcane_chest_02"]})
nodes[85303860] = Arcane({quest=55938, note=L["arcane_chest_03"]})
nodes[37906050] = Arcane({quest=55957, note=L["arcane_chest_04"]})
nodes[79502720] = Arcane({quest=55942, note=L["arcane_chest_05"]})
nodes[44704890] = Arcane({quest=55947, note=L["arcane_chest_06"]})
nodes[34604360] = Arcane({quest=55952, note=L["arcane_chest_07"]})
nodes[26003240] = Arcane({quest=55953, note=L["arcane_chest_08"]})
nodes[50605000] = Arcane({quest=55955, note=L["arcane_chest_09"]})
nodes[64303330] = Arcane({quest=55943, note=L["arcane_chest_10"]})
nodes[52804980] = Arcane({quest=55945, note=L["arcane_chest_11"]})
nodes[48508740] = Arcane({quest=55951, note=L["arcane_chest_12"]})
nodes[43405820] = Arcane({quest=55948, note=L["arcane_chest_13"]})
nodes[73203580] = Arcane({quest=55941, note=L["arcane_chest_14"]})
nodes[80402980] = Arcane({quest=55939, note=L["arcane_chest_15"]})
nodes[58003500] = Arcane({quest=55946, note=L["arcane_chest_16"]})
nodes[74805320] = Arcane({quest=55940, note=L["arcane_chest_17"]})
nodes[39804920] = Arcane({quest=55956, note=L["arcane_chest_18"]})
nodes[38707440] = Arcane({quest=55950, note=L["arcane_chest_19"]})
nodes[56303380] = Arcane({quest=55944, note=L["arcane_chest_20"]})

-- Glowing Arcane Chests
nodes[37900640] = Glowing({quest=55959, note=L["glowing_chest_1"]})
nodes[43951693] = Glowing({quest=55963, note=L["glowing_chest_2"]})
nodes[24803520] = Glowing({quest=56912, note=L["glowing_chest_3"]})
nodes[55701450] = Glowing({quest=55961, note=L["glowing_chest_4"]})
nodes[61402290] = Glowing({quest=55958, note=L["glowing_chest_5"]})
nodes[64102860] = Glowing({quest=55962, note=L["glowing_chest_6"]})
nodes[37201920] = Glowing({quest=55960, note=L["glowing_chest_7"]})
nodes[80493194] = Glowing({quest=56547, note=L["glowing_chest_8"]})

-------------------------------------------------------------------------------
-------------------------------- CAT FIGURINES --------------------------------
-------------------------------------------------------------------------------

local Figurine = Class('CatFigurine', Node, {
    icon=454045,
    group=ns.groups.CATS_NAZJ,
    label=L["cat_figurine"],
    rewards={
        Achievement({id=13836, criteria={
            {id=1, qty=true, suffix=L["figurines_found"]}
        }})
    },
    IsCompleted = function (self)
        if self:IsCollected() then return true end
        return Node.IsCompleted(self)
    end
})

nodes[28752910] = Figurine({quest=56983, note=L["cat_figurine_01"]})
nodes[71342369] = Figurine({quest=56988, note=L["cat_figurine_02"]})
nodes[73582587] = Figurine({quest=56992, note=L["cat_figurine_03"]})
nodes[58212198] = Figurine({quest=56990, note=L["cat_figurine_04"]})
nodes[61092681] = Figurine({quest=56984, note=L["cat_figurine_05"]})
nodes[40168615] = Figurine({quest=56987, note=L["cat_figurine_06"]})
nodes[59093053] = Figurine({quest=56985, note=L["cat_figurine_07"]})
nodes[55362715] = Figurine({quest=56986, note=L["cat_figurine_08"]})
nodes[61641079] = Figurine({quest=56991, note=L["cat_figurine_09"]})
nodes[38004925] = Figurine({quest=56989, note=L["cat_figurine_10"]})

ns.addon:RegisterEvent('CRITERIA_EARNED', function (...)
    -- Watch for criteria events that signal the figurine was clicked
    local _, achievement = ...
    if achievement == 13836 then
        C_Timer.After(1, function()
            ns.addon:Refresh()
        end)
    end
end)

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

nodes[34702740] = PetBattle({id=154910, rewards={Achievement({id=13626, criteria=45467})}, note=L["in_cave"]}) -- Prince Wiggletail
nodes[71905110] = PetBattle({id=154911, rewards={Achievement({id=13626, criteria=45468})} }) -- Chomp
nodes[58304810] = PetBattle({id=154912, rewards={Achievement({id=13626, criteria=45469})} }) -- Silence
nodes[42201400] = PetBattle({id=154913, rewards={Achievement({id=13626, criteria=45470})} }) -- Shadowspike Lurker
nodes[50605030] = PetBattle({id=154914, rewards={Achievement({id=13626, criteria=45471})}, note=L["in_cave"]}) -- Pearlhusk Crawler
nodes[51307500] = PetBattle({id=154915, rewards={Achievement({id=13626, criteria=45472})} }) -- Elderspawn of Nalaada
nodes[29604970] = PetBattle({id=154916, rewards={Achievement({id=13626, criteria=45473})}, note=L["in_cave"]}) -- Ravenous Scalespawn
nodes[56400810] = PetBattle({id=154917, rewards={Achievement({id=13626, criteria=45474})}, note=L["in_cave"]}) -- Mindshackle
nodes[46602800] = PetBattle({id=154918, rewards={Achievement({id=13626, criteria=45475})}, note=L["in_cave"]}) -- Kelpstone
nodes[37501670] = PetBattle({id=154919, rewards={Achievement({id=13626, criteria=45476})}, note=L["in_cave"]}) -- Voltgorger
nodes[61472290] = PetBattle({id=154920, rewards={Achievement({id=13626, criteria=45477})}, note=L["in_cave"]}) -- Frenzied Knifefang
nodes[28102670] = PetBattle({id=154921, rewards={Achievement({id=13626, criteria=45478})}, note=L["in_cave"]}) -- Giant Opaline Conch

-------------------------------------------------------------------------------
------------------------------ WAR SUPPLY CHESTS ------------------------------
-------------------------------------------------------------------------------

local ASSASSIN_ACHIEVE = Achievement({id=13720, criteria={
    {id=45790, suffix=L["assassin_looted"]}
}})

nodes[47864647] = Supply({label=L["supply_chest"], rewards={ASSASSIN_ACHIEVE}}) -- north basin
nodes[47285170] = Supply({label=L["supply_chest"], rewards={ASSASSIN_ACHIEVE}}) -- south basin
nodes[45237040] = Supply({label=L["supply_chest"], rewards={ASSASSIN_ACHIEVE}}) -- south of newhome
nodes[33493889] = Supply({label=L["supply_chest"], rewards={ASSASSIN_ACHIEVE}}) -- ashen strand (also 33283441?)
nodes[59663755] = Supply({label=L["supply_chest"], rewards={ASSASSIN_ACHIEVE}}) -- coral forest
nodes[76873699] = Supply({label=L["supply_chest"], rewards={ASSASSIN_ACHIEVE}}) -- zin-azshari

-------------------------------------------------------------------------------
-------------------------------- MISCELLANEOUS --------------------------------
-------------------------------------------------------------------------------

nodes[60683221] = Node({quest=55121, group=ns.groups.MISC_NAZJ, icon="portal_b", scale=1.5, label=L["mardivas_lab"], rewards={
    Achievement({id=13699, criteria={ -- Periodic Destruction
        {id=45678, note=' ('..L["no_reagent"]..')'}, -- Arcane Amalgamation
        {id=45679, note=' ('..L["swater"]..')'}, -- Watery Amalgamation
        {id=45680, note=' ('..L["sfire"]..')'}, -- Burning Amalgamation
        {id=45681, note=' ('..L["searth"]..')'}, -- Dusty Amalgamation
        {id=45682, note=' ('..L["swater"].." + "..L["gearth"]..')'}, -- Zomera
        {id=45683, note=' ('..L["swater"].." + "..L["gfire"]..')'}, -- Omus
        {id=45684, note=' ('..L["swater"].." + "..L["gwater"]..')'}, -- Osgen
        {id=45685, note=' ('..L["sfire"].." + "..L["gearth"]..')'}, -- Moghiea
        {id=45686, note=' ('..L["sfire"].." + "..L["gwater"]..')'}, -- Xue
        {id=45687, note=' ('..L["sfire"].." + "..L["gfire"]..')'}, -- Ungormath
        {id=45688, note=' ('..L["searth"].." + "..L["gwater"]..')'}, -- Spawn of Salgos
        {id=45689, note=' ('..L["searth"].." + "..L["gearth"]..')'}, -- Herald of Salgos
        {id=45690, note=' ('..L["searth"].." + "..L["gfire"]..')'} -- Salgos the Eternal
    }}),
    Transmog({item=170138, slot=L["offhand"], note=L["Watery"]}), -- Scroll of Violent Tides
    Transmog({item=170126, slot=L["bow"], note=L["Burning"]}), -- Igneous Longbow
    Transmog({item=170383, slot=L["shield"], note=L["Dusty"]}), -- Coralspine Bulwark
    Transmog({item=170137, slot=L["dagger"], note=L["Zomera"]}), -- Azerite-Infused Crystal Flayer
    Transmog({item=170132, slot=L["1h_sword"], note=L["Omus"]}), -- Slicer of Omus
    Transmog({item=170130, slot=L["warglaives"], note=L["Osgen"]}), -- Glaive of Swells
    Transmog({item=170128, slot=L["staff"], note=L["Moghiea"]}), -- Majestic Shirakess Greatstaff
    Transmog({item=170127, slot=L["polearm"], note=L["Xue"]}), -- Pyroclastic Halberd
    Transmog({item=170131, slot=L["wand"], note=L["Ungormath"]}), -- Tidal Wand of Malevolence
    Transmog({item=170124, slot=L["2h_sword"], note=L["Spawn"]}), -- Coral-Sharpened Greatsword
    Transmog({item=170125, slot=L["fist"], note=L["Herald"]}), -- Behemoth Claw of the Abyss
    Transmog({item=170129, slot=L["1h_mace"], note=L["Salgos"]}) -- Salgos' Volatile Basher
}})

nodes[45993245] = NPC({id=152593, icon=528288, group=ns.groups.MISC_NAZJ, note=L["tentacle_taco"]})
