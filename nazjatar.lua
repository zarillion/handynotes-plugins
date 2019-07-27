--[[

This file contains all HandyNotes nodes for the Nazjatar zone. Each node should
be in the following format:

    nodes[XXXXYYYY] = {type=TYPE, id=ID, quest=ID, note=L["NOTE"], rewards={
        {type=TYPE, id=ID, ...},
        {type=TYPE, id=ID, ...}
    }}

The meaning of the id= field changes based on the type. For RARE types it is
the id of the NPC. Every notable reward should be listed so that it can be
added to the tooltip. You can use the following commands to look up pet and
mount ids from their respective journals.

/run print(C_PetJournal.FindPetIDByName("NAME"))
/run for i,m in ipairs(C_MountJournal.GetMountIDs()) do if (C_MountJournal.GetMountInfoByID(m) == "NAME") then print(m); end end

--]]

local _, ns = ...
local L = ns.locale;
local ACHIEVE = ns.types.ACHIEVE;
local CAVE = ns.types.CAVE;
local ITEM = ns.types.ITEM;
local MISC = ns.types.MISC;
local MOUNT = ns.types.MOUNT;
local NPC = ns.types.NPC;
local PET = ns.types.PET;
local RARE = ns.types.RARE;
local SUPPLY_CHEST = ns.types.SUPPLY_CHEST;
local TOY = ns.types.TOY;
local TREASURE = ns.types.TREASURE;
local TRANSMOG = ns.types.TRANSMOG;

local MAPID = 1355;

local nodes = {};
local options = ns.options.args.VisibilityGroup.args;
local defaults = ns.optionDefaults.profile;

-------------------------------------------------------------------------------
----------------------------------- OPTIONS -----------------------------------
-------------------------------------------------------------------------------

defaults['treasure_nazjatar'] = true;
defaults['rare_nazjatar'] = true;
defaults['pet_nazjatar'] = true;
defaults['supply_nazjatar'] = true;
defaults['slime_nazjatar'] = true;
defaults['cats_nazjatar'] = true;
defaults['cave_nazjatar'] = true;
defaults['misc_nazjatar'] = true;

options.groupNazjatar = {
    type = "header",
    name = L["Nazjatar"],
    order = 10,
};

options.treasureNazjatar = {
    type = "toggle",
    arg = "treasure_nazjatar",
    name = L["options_toggle_treasures"],
    desc = L["options_toggle_treasures_nazj"],
    order = 11,
    width = "normal",
};

options.supplyNazjatar = {
    type = "toggle",
    arg = "supply_nazjatar",
    name = L["options_toggle_supplies"],
    desc = L["options_toggle_supplies_desc"],
    order = 12,
    width = "normal",
};

options.rareNazjatar = {
    type = "toggle",
    arg = "rare_nazjatar",
    name = L["options_toggle_rares"],
    desc = L["options_toggle_rares_desc"],
    order = 13,
    width = "normal",
};

options.petNazjatar = {
    type = "toggle",
    arg = "pet_nazjatar",
    name = L["options_toggle_battle_pets"],
    desc = L["options_toggle_battle_pets_desc"],
    order = 14,
    width = "normal",
};

options.slimesNazjatar = {
    type = "toggle",
    arg = "slime_nazjatar",
    name = L["options_toggle_slimes_nazj"],
    desc = L["options_toggle_slimes_nazj_desc"],
    order = 15,
    width = "normal",
};

options.catsNazjatar = {
    type = "toggle",
    arg = "cats_nazjatar",
    name = L["options_toggle_cats_nazj"],
    desc = L["options_toggle_cats_nazj_desc"],
    order = 16,
    width = "normal",
};

options.caveNazjatar = {
    type = "toggle",
    arg = "cave_nazjatar",
    name = L["options_toggle_caves"],
    desc = L["options_toggle_caves_desc"],
    order = 17,
    width = "normal",
};

options.miscNazjatar = {
    type = "toggle",
    arg = "misc_nazjatar",
    name = L["options_toggle_misc"],
    desc = L["options_toggle_misc_nazj"],
    order = 18,
    width = "normal",
};

ns.included[MAPID] = function (node, profile)
    if node.type == TREASURE then return profile.treasure_nazjatar end
    if node.type == RARE then return profile.rare_nazjatar end
    if node.type == SUPPLY_CHEST then return profile.supply_nazjatar end
    if node.type == CAVE then return profile.cave_nazjatar end
    if node.type == PET then return profile.pet_nazjatar end
    if node.id == 151782 or node.label == L["slimy_cocoon"] then
        return profile.slime_nazjatar
    end
    if node.label == L["cat_figurine"] then
        return profile.cats_nazjatar
    end
    if node.label == L["mardivas_lab"] or node.label == L["murloco"] then
        return profile.misc_nazjatar
    end
    return false
end;

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

nodes[52394183] = {type=RARE, id=152415, quest=56279, note=L["alga_note"], rewards={
    {type=ACHIEVE, id=13691, criteria=45519}, -- Kill
    {type=ACHIEVE, id=13692, criteria=46083} -- Blind Eye (170189)
}}; -- Alga the Eyeless

nodes[66443875] = {type=RARE, id=152416, quest=56280, note=L["allseer_note"], rewards={
    {type=ACHIEVE, id=13691, criteria=45520} -- Kill
}}; -- Allseer Oma'kill

nodes[58605329] = {type=RARE, id=152566, quest=56281, note=L["anemonar_note"], rewards={
    {type=ACHIEVE, id=13691, criteria=45522}, -- Kill
    {type=ACHIEVE, id=13692, criteria={46088,46089}} -- Ancient Reefwalker Bark, Reefwalker Bark
}}; -- Anemonar

nodes[73985395] = {type=RARE, id=152361, quest=56282, note=L["banescale_note"], rewards={
    {type=ACHIEVE, id=13691, criteria=45524}, -- Kill
    {type=ACHIEVE, id=13692, criteria=46093} -- Snapdragon Scent Gland
}}; -- Banescale the Packfather

nodes[37378256] = {type=RARE, id=152712, quest=56269, note=L["cave_spawn"], rewards={
    {type=ACHIEVE, id=13691, criteria=45525}, -- Kill
    {type=PET, id=2682, item=169372} -- Necrofin Tadpole
}}; -- Blindlight

nodes[40790735] = {type=RARE, id=152464, quest=56283, note=L["cave_spawn"], rewards={
    {type=ACHIEVE, id=13691, criteria=45527}, -- Kill
    {type=PET, id=2690, item=169356} -- Caverndark Nightmare
}}; -- Caverndark Terror

nodes[49208875] = {type=RARE, id=152556, quest=56270, note=L["ucav_spawn"], rewards={
    {type=ACHIEVE, id=13691, criteria=45528}, -- Kill
    {type=ACHIEVE, id=13692, criteria=46101}, -- Eel Filet
}}; -- Chasm-Haunter

nodes[57074363] = {type=RARE, id=152291, quest=56272, note=L["cora_spawn"], rewards={
    {type=ACHIEVE, id=13691, criteria=45530}, -- Kill
    {type=ACHIEVE, id=13692, criteria=46096} -- Fathom Ray Wing
}}; -- Deepglider

nodes[64543531] = {type=RARE, id=152414, quest=56284, note=L["elderunu_note"], rewards={
    {type=ACHIEVE, id=13691, criteria=45531} -- Kill
}}; -- Elder Unu

nodes[51757487] = {type=RARE, id=152555, quest=56285, note=nil, rewards={
    {type=ACHIEVE, id=13691, criteria=45532}, -- Kill
    {type=PET, id=2693, item=169359} -- Spawn of Nalaada
}}; -- Elderspawn Nalaada

nodes[36044496] = {type=RARE, id=152553, quest=56273, note=L["area_spawn"], rewards={
    {type=ACHIEVE, id=13691, criteria=45533}, -- Kill
    {type=ACHIEVE, id=13692, criteria=46092} -- Razorshell
}}; -- Garnetscale

nodes[45715170] = {type=RARE, id=152448, quest=56286, note=L["area_spawn"], rewards={
    {type=ACHIEVE, id=13691, criteria=45534}, -- Kill
    {type=ACHIEVE, id=13692, criteria=46099}, -- Giant Crab Leg
    {type=PET, id=2686, item=169352} -- Pearlescent Glimmershell
}}; -- Iridescent Glimmershell

nodes[50056991] = {type=RARE, id=152567, quest=56287, note=L["kelpwillow_note"], rewards={
    {type=ACHIEVE, id=13691, criteria=45535}, -- Kill
    {type=ACHIEVE, id=13692, criteria={46088,46089}} -- Ancient Reefwalker Bark, Reefwalker Bark
    -- {type=ITEM, id=170184, quest=57140} -- Weekly Ancient Reefwalker Bark
}}; -- Kelpwillow

nodes[29412899] = {type=RARE, id=152323, quest=55671, note=L["gakula_note"], rewards={
    {type=ACHIEVE, id=13691, criteria=45536}, -- Kill
    {type=PET, id=2681, item=169371} -- Murgle
}}; -- King Gakula

nodes[78132501] = {type=RARE, id=152397, quest=56288, note=L["oronu_note"], rewards={
    {type=ACHIEVE, id=13691, criteria=45539}, -- Kill
    {type=ACHIEVE, id=13692, criteria={46088,46089}} -- Ancient Reefwalker Bark, Reefwalker Bark
}}; -- Oronu

nodes[42728740] = {type=RARE, id=152681, quest=56289, note=nil, rewards={
    {type=ACHIEVE, id=13691, criteria=45540}, -- Kill
    {type=PET, id=2701, item=169367} -- Seafury
}}; -- Prince Typhonus

nodes[42997551] = {type=RARE, id=152682, quest=56290, note=nil, rewards={
    {type=ACHIEVE, id=13691, criteria=45541}, -- Kill
    {type=PET, id=2702, item=169368} -- Stormwrath
}}; -- Prince Vortran

nodes[35554141] = {type=RARE, id=152548, quest=56292, note=L["matriarch_note"], rewards={
    {type=ACHIEVE, id=13691, criteria=45545}, -- Kill
    {type=ACHIEVE, id=13692, criteria=46087}, -- Intact Naga Skeleton
    {type=PET, id=2704, item=169370} -- Scalebrood Hydra
}}; -- Scale Matriarch Gratinax

nodes[27193708] = {type=RARE, id=152545, quest=56293, note=L["matriarch_note"], rewards={
    {type=ACHIEVE, id=13691, criteria=45546}, -- Kill
    {type=ACHIEVE, id=13692, criteria=46087}, -- Intact Naga Skeleton
    {type=PET, id=2704, item=169370} -- Scalebrood Hydra
}}; -- Scale Matriarch Vynara

nodes[28604664] = {type=RARE, id=152542, quest=56294, note=L["matriarch_note"], rewards={
    {type=ACHIEVE, id=13691, criteria=45547}, -- Kill
    {type=ACHIEVE, id=13692, criteria=46087}, -- Intact Naga Skeleton
    {type=PET, id=2704, item=169370} -- Scalebrood Hydra
}}; -- Scale Matriarch Zodia

nodes[62740809] = {type=RARE, id=152552, quest=56295, note=L["cave_spawn"], rewards={
    {type=ACHIEVE, id=13691, criteria=45548}, -- Kill
    {type=TOY, item=170187} -- Shadescale
}}; -- Shassera

nodes[39601700] = {type=RARE, id=153658, quest=56296, note=L["area_spawn"], rewards={
    {type=ACHIEVE, id=13691, criteria=45549}, -- Kill
    {type=ACHIEVE, id=13692, criteria={46090,46091}} -- Voltscale Shield, Tidal Guard
}}; -- Shiz'narasz the Consumer

nodes[71365456] = {type=RARE, id=152359, quest=56297, note=nil, rewards={
    {type=ACHIEVE, id=13691, criteria=45550}, -- Kill
    {type=ACHIEVE, id=13692, criteria=46093} -- Snapdragon Scent Gland
}}; -- Siltstalker the Packmother

nodes[59704791] = {type=RARE, id=152290, quest=56298, note=L["cora_spawn"], rewards={
    {type=ACHIEVE, id=13691, criteria=45551}, -- Kill
    {type=ACHIEVE, id=13692, criteria=46096}, -- Fathom Ray Wing
    {type=MOUNT, id=1257, item=169163} -- Silent Glider
}}; -- Soundless

nodes[62462964] = {type=RARE, id=153898, quest=56122, note=L["tidelord_note"], rewards={
    {type=ACHIEVE, id=13691, criteria=45553} -- Kill
}}; -- Tidelord Aquatus

nodes[57962648] = {type=RARE, id=153928, quest=56123, note=L["tidelord_note"], rewards={
    {type=ACHIEVE, id=13691, criteria=45554} -- Kill
}}; -- Tidelord Dispersius

nodes[65872243] = {type=RARE, id=154148, quest=56106, note=L["tidemistress_note"], rewards={
    {type=ACHIEVE, id=13691, criteria=45555}, -- Kill
    {type=TOY, item=170196} -- Shirakess Warning Sign
}}; -- Tidemistress Leth'sindra

nodes[66964817] = {type=RARE, id=152360, quest=56278, note=L["area_spawn"], rewards={
    {type=ACHIEVE, id=13691, criteria=45556}, -- Kill
    {type=ACHIEVE, id=13692, criteria=46094} -- Alpha Fin
}}; -- Toxigore the Alpha

nodes[31282935] = {type=RARE, id=152568, quest=56299, note=L["urduu_note"], rewards={
    {type=ACHIEVE, id=13691, criteria=45557}, -- Kill
    {type=ACHIEVE, id=13692, criteria={46088,46089}} -- Ancient Reefwalker Bark, Reefwalker Bark
}}; -- Urduu

nodes[67243458] = {type=RARE, id=151719, quest=56300, note=L["voice_deeps_notes"], rewards={
    {type=ACHIEVE, id=13691, criteria=45558}, -- Kill
    {type=ACHIEVE, id=13692, criteria=46086} -- Abyss Pearl
}}; -- Voice in the Deeps

nodes[36931120] = {type=RARE, id=150191, quest=55584, note=L["avarius_note"], rewards={
    {type=PET, id=2706, item=169373} -- Brinestone Algan
}}; -- Avarius

nodes[54664179] = {type=RARE, id=149653, quest=55366, note=L["lasher_note"], rewards={
    {type=PET, id=2708, item=169375} -- Coral Lashling
}}; -- Carnivorous Lasher

nodes[48002427] = {type=RARE, id=150468, quest=55603, note=L["vorkoth_note"], rewards={
    {type=PET, id=2709, item=169376} -- Skittering Eel
}}; -- Vor'koth

-------------------------------------------------------------------------------
---------------------------------- ZONE RARES ---------------------------------
-------------------------------------------------------------------------------

local start = 09452400;
local function coord(x, y)
    return start + x*2500000 + y*400;
end

nodes[coord(0,0)] = {type=RARE, id=152794, quest=56268, minimap=false, note=L["zone_spawn"], rewards={
    {type=ACHIEVE, id=13691, criteria=45521}, -- Kill
    {type=PET, id=2697, item=169363} -- Amethyst Softshell
}}; -- Amethyst Spireshell

nodes[coord(1,0)] = {type=RARE, id=152756, quest=56271, minimap=false, note=L["zone_spawn"], rewards={
    {type=ACHIEVE, id=13691, criteria=45529}, -- Kill
    {type=PET, id=2695, item=169361} -- Daggertooth Frenzy
}}; -- Daggertooth Terror

nodes[coord(2,0)] = {type=RARE, id=144644, quest=56274, minimap=false, note=L["zone_spawn"], rewards={
    {type=ACHIEVE, id=13691, criteria=45537}, -- Kill
    {type=ACHIEVE, id=13692, criteria=46098}, -- Brightspine Shell
    {type=PET, id=2700, item=169366} -- Wriggler
}}; -- Mirecrawler

nodes[coord(0,1)] = {type=RARE, id=152465, quest=56275, minimap=false, note=L["needle_note"], rewards={
    {type=ACHIEVE, id=13691, criteria=45538}, -- Kill
    {type=ACHIEVE, id=13692, criteria=46099}, -- Giant Crab Leg
    {type=PET, id=2689, item=169355} -- Chitterspine Needler
}}; -- Needlespine

nodes[coord(1,2)] = {type=RARE, id=150583, quest=56291, minimap=false, note=L["zone_spawn"]..' '..L["rockweed_note"], rewards={
    {type=ACHIEVE, id=13691, criteria=45542}, -- Kill
    {type=PET, id=2707, item=169374} -- Budding Algan
}}; -- Rockweed Shambler

nodes[coord(1,1)] = {type=RARE, id=151870, quest=56276, minimap=false, note=L["sandcastle_note"], rewards={
    {type=ACHIEVE, id=13691, criteria=45543}, -- Kill
    {type=PET, id=2703, item=169369} -- Sandkeep
}}; -- Sandcastle

nodes[coord(2,1)] = {type=RARE, id=152795, quest=56277, minimap=false, note=L["east_spawn"], rewards={
    {type=ACHIEVE, id=13691, criteria=45544}, -- Kill
    {type=ACHIEVE, id=13692, criteria=46099}, -- Giant Crab Leg
    {type=PET, id=2684, item=169350} -- Glittering Diamondshell
}}; -- Sandclaw Stoneshell

-------------------------------------------------------------------------------
------------------------------------ CAVES ------------------------------------
-------------------------------------------------------------------------------

nodes[39897717] = {type=CAVE, quest=56269, label=L["blindlight_cave"]};
nodes[42261342] = {type=CAVE, quest=56283, label=L["caverndark_cave"]};
nodes[47588538] = {type=CAVE, quest=56270, label=L["chasmhaunt_cave"]};
nodes[63081189] = {type=CAVE, quest=56295, label=L["shassera_cave"]};

-------------------------------------------------------------------------------
------------------------------------ SLIMES -----------------------------------
-------------------------------------------------------------------------------

local SLIME_ICON = 'Interface\\Icons\\ability_creature_poison_05.blp';
local EGG_ICON = 'Interface\\Icons\\Inv_egg_02.blp';
local SLIME_PETS = {
    {type=PET, id=2762, item=167809}, -- Slimy Darkhunter
    {type=PET, id=2758, item=167808}, -- Slimy Eel
    {type=PET, id=2761, item=167807}, -- Slimy Fangtooth
    {type=PET, id=2763, item=167810}, -- Slimy Hermit Crab
    {type=PET, id=2760, item=167806}, -- Slimy Octopode
    {type=PET, id=2757, item=167805}, -- Slimy Otter
    {type=PET, id=2765, item=167804}  -- Slimy Sea Slug
};

-- first quest is daily, second quest means done and gone until weekly reset
nodes[32773951] = {type=NPC, id=151782, icon=SLIME_ICON, quest={55430,55473},
    note=L["ravenous_slime_note"], rewards=SLIME_PETS};
nodes[45692409] = {type=NPC, id=151782, icon=SLIME_ICON, quest={55429,55472},
    note=L["ravenous_slime_note"], rewards=SLIME_PETS};
nodes[54894868] = {type=NPC, id=151782, icon=SLIME_ICON, quest={55427,55470},
    note=L["ravenous_slime_note"], rewards=SLIME_PETS};
nodes[71722569] = {type=NPC, id=151782, icon=SLIME_ICON, quest={55428,55471},
    note=L["ravenous_slime_note"], rewards=SLIME_PETS};

-- once the second quest is true, the eggs should be displayed
nodes[32773952] = {type=MISC, icon=EGG_ICON, quest=55478, requires=55473,
    label=L["slimy_cocoon"], note=L["slimy_cocoon_note"], rewards=SLIME_PETS};
nodes[45692410] = {type=MISC, icon=EGG_ICON, quest=55477, requires=55472,
    label=L["slimy_cocoon"], note=L["slimy_cocoon_note"], rewards=SLIME_PETS};
nodes[54894869] = {type=MISC, icon=EGG_ICON, quest=55475, requires=55470,
    label=L["slimy_cocoon"], note=L["slimy_cocoon_note"], rewards=SLIME_PETS};
nodes[71722570] = {type=MISC, icon=EGG_ICON, quest=55476, requires=55471,
    label=L["slimy_cocoon"], note=L["slimy_cocoon_note"], rewards=SLIME_PETS};

ns.addon:RegisterEvent('UNIT_SPELLCAST_SUCCEEDED', function (...)
    -- Watch for a spellcast event that signals the slime was fed.
    -- https://www.wowhead.com/spell=293775/schleimphage-feeding-tracker
    local _, source, _, spellID = ...
    if (source == 'player' and spellID == 293775) then
        C_Timer.After(1, function()
            ns.addon:Refresh();
        end);
    end
end)

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

-- Arcane Chests
nodes[34454040] = {type=TREASURE, quest=55954, label=L["arcane_chest"], note=L["arcane_chest_01"]};
nodes[49576450] = {type=TREASURE, quest=55949, label=L["arcane_chest"], note=L["arcane_chest_02"]};
nodes[85303860] = {type=TREASURE, quest=55938, label=L["arcane_chest"], note=L["arcane_chest_03"]};
nodes[37906050] = {type=TREASURE, quest=55957, label=L["arcane_chest"], note=L["arcane_chest_04"]};
nodes[79502720] = {type=TREASURE, quest=55942, label=L["arcane_chest"], note=L["arcane_chest_05"]};
nodes[44704890] = {type=TREASURE, quest=55947, label=L["arcane_chest"], note=L["arcane_chest_06"]};
nodes[34604360] = {type=TREASURE, quest=55952, label=L["arcane_chest"], note=L["arcane_chest_07"]};
nodes[26003240] = {type=TREASURE, quest=55953, label=L["arcane_chest"], note=L["arcane_chest_08"]};
nodes[50605000] = {type=TREASURE, quest=55955, label=L["arcane_chest"], note=L["arcane_chest_09"]};
nodes[64303330] = {type=TREASURE, quest=55943, label=L["arcane_chest"], note=L["arcane_chest_10"]};
nodes[52804980] = {type=TREASURE, quest=55945, label=L["arcane_chest"], note=L["arcane_chest_11"]};
nodes[48508740] = {type=TREASURE, quest=55951, label=L["arcane_chest"], note=L["arcane_chest_12"]};
nodes[43405820] = {type=TREASURE, quest=55948, label=L["arcane_chest"], note=L["arcane_chest_13"]};
nodes[73203580] = {type=TREASURE, quest=55941, label=L["arcane_chest"], note=L["arcane_chest_14"]};
nodes[80402980] = {type=TREASURE, quest=55939, label=L["arcane_chest"], note=L["arcane_chest_15"]};
nodes[58003500] = {type=TREASURE, quest=55946, label=L["arcane_chest"], note=L["arcane_chest_16"]};
nodes[74805320] = {type=TREASURE, quest=55940, label=L["arcane_chest"], note=L["arcane_chest_17"]};
nodes[39804920] = {type=TREASURE, quest=55956, label=L["arcane_chest"], note=L["arcane_chest_18"]};
nodes[38707440] = {type=TREASURE, quest=55950, label=L["arcane_chest"], note=L["arcane_chest_19"]};
nodes[56303380] = {type=TREASURE, quest=55944, label=L["arcane_chest"], note=L["arcane_chest_20"]};

-- Glowing Arcane Chests
nodes[37900640] = {type=TREASURE, quest=55959, icon='starChestBlue', label=L["glowing_chest"], note=L["glowing_chest_1"]}
nodes[43951693] = {type=TREASURE, quest=55963, icon='starChestBlue', label=L["glowing_chest"], note=L["glowing_chest_2"]}
nodes[24803520] = {type=TREASURE, quest=56912, icon='starChestBlue', label=L["glowing_chest"], note=L["glowing_chest_3"]}
nodes[55701450] = {type=TREASURE, quest=55961, icon='starChestBlue', label=L["glowing_chest"], note=L["glowing_chest_4"]}
nodes[61402290] = {type=TREASURE, quest=55958, icon='starChestBlue', label=L["glowing_chest"], note=L["glowing_chest_5"]}
nodes[64102860] = {type=TREASURE, quest=55962, icon='starChestBlue', label=L["glowing_chest"], note=L["glowing_chest_6"]}
nodes[37201920] = {type=TREASURE, quest=55960, icon='starChestBlue', label=L["glowing_chest"], note=L["glowing_chest_7"]}
nodes[80493194] = {type=TREASURE, quest=56547, icon='starChestBlue', label=L["glowing_chest"], note=L["glowing_chest_8"]}

-------------------------------------------------------------------------------
-------------------------------- CAT FIGURINES --------------------------------
-------------------------------------------------------------------------------

local CAT_ICON = 'Interface\\Icons\\trade_archaeology_catstatueemeraldeyes.blp'

nodes[28752910] = {type=MISC, quest=56983, icon=CAT_ICON, label=L["cat_figurine"], note=L["cat_figurine_01"]}
nodes[71342369] = {type=MISC, quest=56988, icon=CAT_ICON, label=L["cat_figurine"], note=L["cat_figurine_02"]}
nodes[73582587] = {type=MISC, quest=56992, icon=CAT_ICON, label=L["cat_figurine"], note=L["cat_figurine_03"]}
nodes[58212198] = {type=MISC, quest=56990, icon=CAT_ICON, label=L["cat_figurine"], note=L["cat_figurine_04"]}
nodes[61092681] = {type=MISC, quest=56984, icon=CAT_ICON, label=L["cat_figurine"], note=L["cat_figurine_05"]}
nodes[40168615] = {type=MISC, quest=56987, icon=CAT_ICON, label=L["cat_figurine"], note=L["cat_figurine_06"]}
nodes[59093053] = {type=MISC, quest=56985, icon=CAT_ICON, label=L["cat_figurine"], note=L["cat_figurine_07"]}
nodes[55362715] = {type=MISC, quest=56986, icon=CAT_ICON, label=L["cat_figurine"], note=L["cat_figurine_08"]}
nodes[61641079] = {type=MISC, quest=56991, icon=CAT_ICON, label=L["cat_figurine"], note=L["cat_figurine_09"]}
nodes[38004925] = {type=MISC, quest=56989, icon=CAT_ICON, label=L["cat_figurine"], note=L["cat_figurine_10"]}

ns.addon:RegisterEvent('CRITERIA_EARNED', function (...)
    -- Watch for criteria events that signal the figurine was clicked
    local _, achievement = ...
    if achievement == 13836 then
        C_Timer.After(1, function()
            ns.addon:Refresh();
        end);
    end
end)

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

nodes[34702740] = {type=PET, id=154910, icon='battle_pet', note=L["in_cave"]} -- Prince Wiggletail
nodes[71905110] = {type=PET, id=154911, icon='battle_pet'} -- Chomp
nodes[58304810] = {type=PET, id=154912, icon='battle_pet'} -- Silence
nodes[42201400] = {type=PET, id=154913, icon='battle_pet'} -- Shadowspike Lurker
nodes[50605030] = {type=PET, id=154914, icon='battle_pet', note=L["in_cave"]} -- Pearlhusk Crawler
nodes[51307500] = {type=PET, id=154915, icon='battle_pet'} -- Elderspawn of Nalaada
nodes[29604970] = {type=PET, id=154916, icon='battle_pet', note=L["in_cave"]} -- Ravenous Scalespawn
nodes[56400810] = {type=PET, id=154917, icon='battle_pet', note=L["in_cave"]} -- Mindshackle
nodes[46602800] = {type=PET, id=154918, icon='battle_pet', note=L["in_cave"]} -- Kelpstone
nodes[37501670] = {type=PET, id=154919, icon='battle_pet', note=L["in_cave"]} -- Voltgorger
nodes[59102660] = {type=PET, id=154920, icon='battle_pet', note=L["in_cave"]} -- Frenzied Knifefang
nodes[28102670] = {type=PET, id=154921, icon='battle_pet', note=L["in_cave"]} -- Giant Opaline Conch

-------------------------------------------------------------------------------
------------------------------ WAR SUPPLY CHESTS ------------------------------
-------------------------------------------------------------------------------

local ASSASSIN_ACHIEVE = {type=ACHIEVE, id=13720, criteria={
    {id=45790, suffix=L["assassin_looted"]}
}};

nodes[47864647] = {type=SUPPLY_CHEST, label=L["supply_chest"], rewards={ASSASSIN_ACHIEVE}}; -- north basin
nodes[47285170] = {type=SUPPLY_CHEST, label=L["supply_chest"], rewards={ASSASSIN_ACHIEVE}}; -- south basin
nodes[45237040] = {type=SUPPLY_CHEST, label=L["supply_chest"], rewards={ASSASSIN_ACHIEVE}}; -- south of newhome
nodes[33493889] = {type=SUPPLY_CHEST, label=L["supply_chest"], rewards={ASSASSIN_ACHIEVE}}; -- ashen strand (also 33283441?)
nodes[59663755] = {type=SUPPLY_CHEST, label=L["supply_chest"], rewards={ASSASSIN_ACHIEVE}}; -- coral forest
nodes[76873699] = {type=SUPPLY_CHEST, label=L["supply_chest"], rewards={ASSASSIN_ACHIEVE}}; -- zin-azshari

-------------------------------------------------------------------------------
-------------------------------- MISCELLANEOUS --------------------------------
-------------------------------------------------------------------------------

nodes[60683221] = {type=MISC, quest=55121, icon='portal', label=L["mardivas_lab"], rewards={
    {type=ACHIEVE, id=13699, criteria={ -- Periodic Destruction
        {id=45678, suffix=' ('..L["no_reagent"]..')'}, -- Arcane Amalgamation
        {id=45679, suffix=' ('..L["water"]..')'}, -- Watery Amalgamation
        {id=45680, suffix=' ('..L["fire"]..')'}, -- Burning Amalgamation
        {id=45681, suffix=' ('..L["sand"]..')'}, -- Dusty Amalgamation
        {id=45682, suffix=' ('..L["water"].." + "..L["sand"]..')'}, -- Zomera
        {id=45683, suffix=' ('..L["water"].." + "..L["fire"]..')'}, -- Omus
        {id=45684, suffix=' ('..L["water"].." + "..L["water"]..')'}, -- Osgen
        {id=45685, suffix=' ('..L["fire"].." + "..L["sand"]..')'}, -- Moghiea
        {id=45686, suffix=' ('..L["fire"].." + "..L["water"]..')'}, -- Xue
        {id=45687, suffix=' ('..L["fire"].." + "..L["fire"]..')'}, -- Ungormath
        {id=45688, suffix=' ('..L["sand"].." + "..L["water"]..')'}, -- Spawn of Salgos
        {id=45689, suffix=' ('..L["sand"].." + "..L["sand"]..')'}, -- Herald of Salgos
        {id=45690, suffix=' ('..L["sand"].." + "..L["fire"]..')'} -- Salgos the Eternal
    }},
    {type=TRANSMOG, item=170138, slot=L["offhand"], note=L["Watery"]}, -- Scroll of Violent Tides
    {type=TRANSMOG, item=170126, slot=L["bow"], note=L["Burning"]}, -- Igneous Longbow
    {type=TRANSMOG, item=170383, slot=L["shield"], note=L["Dusty"]}, -- Coralspine Bulwark
    {type=TRANSMOG, item=170137, slot=L["dagger"], note=L["Zomera"]}, -- Azerite-Infused Crystal Flayer
    {type=TRANSMOG, item=170132, slot=L["1h_sword"], note=L["Omus"]}, -- Slicer of Omus
    {type=TRANSMOG, item=170130, slot=L["warglaives"], note=L["Osgen"]}, -- Glaive of Swells
    {type=TRANSMOG, item=170128, slot=L["staff"], note=L["Moghiea"]}, -- Majestic Shirakess Greatstaff
    {type=TRANSMOG, item=170127, slot=L["polearm"], note=L["Xue"]}, -- Pyroclastic Halberd
    {type=TRANSMOG, item=170131, slot=L["wand"], note=L["Ungormath"]}, -- Tidal Wand of Malevolence
    {type=TRANSMOG, item=170124, slot=L["2h_sword"], note=L["Spawn"]}, -- Coral-Sharpened Greatsword
    {type=TRANSMOG, item=170125, slot=L["fist"], note=L["Herald"]}, -- Behemoth Claw of the Abyss
    {type=TRANSMOG, item=170129, slot=L["1h_mace"], note=L["Salgos"]} -- Salgos' Volatile Basher
}};

local MURLOCO_ICON = { icon='Interface\\Icons\\inv_pet_diablobabymurloc.blp', scale=1 }
nodes[45993245] = {type=MISC, icon=MURLOCO_ICON, label=L["murloco"], note=L["tentacle_taco"]}

ns.nodes[MAPID] = nodes;
