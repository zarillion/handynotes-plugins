--[[

This file contains all HandyNotes nodes for the Mechagon zone. Each node should
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
local ITEM = ns.types.ITEM;
local MISC = ns.types.MISC;
local MOUNT = ns.types.MOUNT;
local NPC = ns.types.NPC;
local PET = ns.types.PET;
local RARE = ns.types.RARE;
local TRANSMOG = ns.types.TRANSMOG;
local TOY = ns.types.TOY;

local MAPID = 1462;

local nodes = {};
local options = ns.options.args.VisibilityGroup.args;
local defaults = ns.optionDefaults.profile;

-------------------------------------------------------------------------------
----------------------------------- OPTIONS -----------------------------------
-------------------------------------------------------------------------------

defaults['treasure_mech'] = true;
defaults['rare_mech'] = true;
defaults['pet_mech'] = true;

options.groupMechagon = {
    type = "header",
    name = L["Mechagon"],
    order = 0,
};

options.treasureMechagon = {
    type = "toggle",
    arg = "treasure_mech",
    name = L["options_toggle_treasures"],
    desc = L["options_toggle_treasures_mech"],
    order = 1,
    width = "normal",
};

options.rareMechagon = {
    type = "toggle",
    arg = "rare_mech",
    name = L["options_toggle_rares"],
    desc = L["options_toggle_rares_desc"],
    order = 2,
    width = "normal",
};

options.petMechagon = {
    type = "toggle",
    arg = "pet_mech",
    name = L["options_toggle_battle_pets"],
    desc = L["options_toggle_battle_pets_desc"],
    order = 3,
    width = "normal",
};

ns.included[MAPID] = function (node, profile)
    if node.type == MISC then return profile.treasure_mech end
    if node.type == RARE then return profile.rare_mech end
    if node.type == NPC then return profile.pet_mech end
    return false;
end;

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

nodes[52894092] = {type=RARE, id=151934, quest=55512, note=nil, rewards={
    {type=ACHIEVE, id=13470, criteria=45124}, -- Kill
    {type=MOUNT, id=1229, item=168823} -- Rusty Mechanocrawler
}}; -- Arachnoid Harvester

nodes[55622571] = {type=RARE, id=151308, quest=55539, note=nil, rewards={
    {type=ACHIEVE, id=13470, criteria=45131}, -- Kill
    {type=ITEM, item=169688, quest=56515} -- Vinyl: Gnomeregan Forever
}}; -- Boggac Skullbash

nodes[51265010] = {type=RARE, id=153200, quest=55857, note=L["drill_rig"]..'(DR-JD41).', rewards={
    {type=ACHIEVE, id=13470, criteria=45152}, -- Kill
    {type=ITEM, item=167042, quest=55030}, -- Blueprint: Scrap Trap
    {type=ITEM, item=169691, quest=56518} -- Vinyl: Depths of Ulduar
}}; -- Boilburn

nodes[65842288] = {type=RARE, id=152001, quest=55537, note=L["cave_spawn"], rewards={
    {type=ACHIEVE, id=13470, criteria=45130}, -- Kill
    {type=ITEM, item=167846, quest=55061}, -- Blueprint: Mechano-Treat
    {type=PET, id=2719, item=169392} -- Bonebiter
}}; -- Bonepicker

nodes[66535891] = {type=RARE, id=154739, quest=56368, note=L["drill_rig"]..'(DR-CC73).', rewards={
    {type=ACHIEVE, id=13470, criteria=45411}, -- Kill
    {type=ITEM, item=169170, quest=55078} -- Blueprint: Utility Mechanoclaw
}}; -- Caustic Mechaslime

nodes[82522072] = {type=RARE, id=149847, quest=55812, note=L["crazed_trogg_note"], rewards={
    {type=ACHIEVE, id=13470, criteria=45137}, -- Kill
    {type=ITEM, item=169169, quest=55077}, -- Blueprint: Blue Spraybot
    {type=ITEM, item=169168, quest=55076}, -- Blueprint: Green Spraybot
    {type=ITEM, item=169167, quest=55075}, -- Blueprint: Orange Spraybot
    {type=ITEM, item=167792, quest=55452}, -- Paint Vial: Fel Mint Green
    {type=ITEM, item=167793, quest=55457} -- Paint Vial: Overload Orange
}}; -- Crazed Trogg

nodes[35464229] = {type=RARE, id=151569, quest=55514, note=L["deepwater_note"], rewards={
    {type=ACHIEVE, id=13470, criteria=45128}, -- Kill
    {type=ITEM, item=167836, quest=55057}, -- Blueprint: Canned Minnows
}}; --Deepwater Maw

nodes[63122559] = {type=RARE, id=150342, quest=55814, note=L["drill_rig"]..'(DR-TR35).', rewards={
    {type=ACHIEVE, id=13470, criteria=45138}, -- Kill
    {type=ITEM, item=167042, quest=55030}, -- Blueprint: Scrap Trap
    {type=ITEM, item=169691, quest=56518} -- Vinyl: Depths of Ulduar
}}; -- Earthbreaker Gulroc

nodes[55075684] = {type=RARE, id=154153, quest=56207, note=nil, rewards={
    {type=ACHIEVE, id=13470, criteria=45373}, -- Kill
    {type=ITEM, item=169174, quest=55082}, -- Blueprint: Rustbolt Pocket Turret
    {type=TRANSMOG, item=170466, slot=L["staff"]}, -- Junkyard Motivator
    {type=TRANSMOG, item=170470, slot=L["shield"]}, -- Reinforced Grease Deflector
    {type=TRANSMOG, item=170467, slot=L["1h_sword"]}, -- Whirring Chainblade
    {type=TRANSMOG, item=170468, slot=L["gun"]} -- Supervolt Zapper
}}; -- Enforcer KX-T57

nodes[65515167] = {type=RARE, id=151202, quest=55513, note=L["foul_manifest_note"], rewards={
    {type=ACHIEVE, id=13470, criteria=45127}, -- Kill
    {type=ITEM, item=167871, quest=55063} -- Blueprint: G99.99 Landshark
}}; -- Foul Manifestation

nodes[44553964] = {type=RARE, id=151884, quest=55367, note=L["furor_note"], rewards={
    {type=ACHIEVE, id=13470, criteria=45126}, -- Kill
    {type=ITEM, item=167793, quest=55457}, -- Paint Vial: Overload Orange
    {type=PET, id=2712, item=169379} -- Snowsoft Nibbler
}}; -- Fungarian Furor

nodes[61395117] = {type=RARE, id=153228, quest=55852, note=L["cogstar_note"], rewards={
    {type=ACHIEVE, id=13470, criteria=45155}, -- Kill
    {type=ITEM, item=167847, quest=55062}, -- Blueprint: Ultrasafe Transporter: Mechagon
    {type=TRANSMOG, item=170467, slot=L["1h_sword"]} -- Whirring Chainblade
}}; -- Gear Checker Cogstar

nodes[59836701] = {type=RARE, id=153205, quest=55855, note=L["drill_rig"]..'(DR-JD99).', rewards={
    {type=ACHIEVE, id=13470, criteria=45146}, -- Kill
    {type=ITEM, item=169691, quest=56518} -- Vinyl: Depths of Ulduar
}}; -- Gemicide

nodes[73135414] = {type=RARE, id=154701, quest=56367, note=L["drill_rig"]..'(DR-CC61).', rewards={
    {type=ACHIEVE, id=13470, criteria=45410}, -- Kill
    {type=ITEM, item=167846, quest=55061} -- Blueprint: Mechano-Treat
}}; -- Gorged Gear-Cruncher

nodes[77124471] = {type=RARE, id=151684, quest=55399, note=nil, rewards={
    {type=ACHIEVE, id=13470, criteria=45121} -- Kill
}}; -- Jawbreaker

nodes[44824637] = {type=RARE, id=152007, quest=55369, note=L["killsaw_note"], rewards={
    {type=ACHIEVE, id=13470, criteria=45125}, -- Kill
    {type=TOY, item=167931} -- Mechagonian Sawblades
}}; -- Killsaw

nodes[60654217] = {type=RARE, id=151933, quest=55544, note=L["beastbot_note"], rewards={
    {type=ACHIEVE, id=13470, criteria=45136}, -- Kill
    {type=ACHIEVE, id=13708, criteria={45772,45775,45776,45777,45778}}, -- Most Minis Wins
    {type=PET, id=2715, item=169382} -- Lost Robogrip
}}; -- Malfunctioning Beastbot

nodes[57165258] = {type=RARE, id=151124, quest=55207, note=L["nullifier_note"], rewards={
    {type=ACHIEVE, id=13470, criteria=45117}, -- Kill
    {type=ITEM, item=168490, quest=55069}, -- Blueprint: Protocol Transference Device
    {type=ITEM, item=169688, quest=56515} -- Vinyl: Gnomeregan Forever
}}; -- Mechagonian Nullifier

nodes[88142077] = {type=RARE, id=151672, quest=55386, note=nil, rewards={
    {type=ACHIEVE, id=13470, criteria=45119}, -- Kill
    {type=PET, id=2720, item=169393} -- Arachnoid Skitterbot
}}; -- Mecharantula

nodes[61036101] = {type=RARE, id=151627, quest=55859, note=nil, rewards={
    {type=ACHIEVE, id=13470, criteria=45156}, -- Kill
    {type=ITEM, item=168248, quest=55068}, -- Blueprint: BAWLD-371
    {type=TRANSMOG, item=170467, slot=L["1h_sword"]} -- Whirring Chainblade
}}; -- Mr. Fixthis

nodes[56243595] = {type=RARE, id=153206, quest=55853, note=L["drill_rig"]..'(DR-TR28).', rewards={
    {type=ACHIEVE, id=13470, criteria=45145}, -- Kill
    {type=ITEM, item=167846, quest=55061}, -- Blueprint: Mechano-Treat
    {type=ITEM, item=169691, quest=56518}, -- Vinyl: Depths of Ulduar
    {type=TRANSMOG, item=170466, slot=L["staff"]} -- Junkyard Motivator
}}; -- Ol' Big Tusk

nodes[57063944] = {type=RARE, id=151296, quest=55515, note=L["avenger_note"], rewards={
    {type=ACHIEVE, id=13470, criteria=45129} -- Kill
}}; -- OOX-Avenger/MG

nodes[56636287] = {type=RARE, id=152764, quest=55856, note=L["leachbeast_note"], rewards={
    {type=ACHIEVE, id=13470, criteria=45157}, -- Kill
    {type=ITEM, item=167794, quest=55454}, -- Paint Vial: Lemonade Steel
}}; -- Oxidized Leachbeast

nodes[22466873] = {type=RARE, id=151702, quest=55405, note=nil, rewards={
    {type=ACHIEVE, id=13470, criteria=45122}, -- Kill
    {type=TRANSMOG, item=170468, slot=L["gun"]} -- Supervolt Zapper
}}; -- Paol Pondwader

nodes[40235317] = {type=RARE, id=150575, quest=55368, note=L["cave_spawn"], rewards={
    {type=ACHIEVE, id=13470, criteria=45123}, -- Kill
    {type=ITEM, item=168001, quest=55517} -- Paint Vial: Big-ol Bronze
}}; -- Rumblerocks

nodes[65637850] = {type=RARE, id=152182, quest=55811, note=nil, rewards={
    {type=ACHIEVE, id=13470, criteria=45135}, -- Kill
    {type=ITEM, item=169173, quest=55081}, -- Blueprint: Anti-Gravity Pack
    {type=MOUNT, id=1248, item=168370} -- Rusted Keys to the Junkheap Drifter
}}; -- Rustfeather

nodes[82287300] = {type=RARE, id=155583, quest=56737, note=L["scrapclaw_note"], rewards={
    {type=ACHIEVE, id=13470, criteria=45691}, -- Kill
    {type=TRANSMOG, item=170470, slot=L["shield"]} -- Reinforced Grease Deflector
}}; -- Scrapclaw

nodes[19127975] = {type=RARE, id=150937, quest=55545, note=nil, rewards={
    {type=ACHIEVE, id=13470, criteria=45133}, -- Kill
    {type=ITEM, item=168063, quest=55065} -- Blueprint: Rustbolt Kegerator
}}; -- Seaspit

nodes[81852708] = {type=RARE, id=153000, quest=55810, note=L["sparkqueen_note"], rewards={
    {type=ACHIEVE, id=13470, criteria=45134} -- Kill
}}; -- Sparkqueen P'Emp

nodes[26257806] = {type=RARE, id=153226, quest=55854, note=nil, rewards={
    {type=ACHIEVE, id=13470, criteria=45154}, -- Kill
    {type=ITEM, item=168062, quest=55064}, -- Blueprint: Rustbolt Gramophone
    {type=ITEM, item=169690, quest=56517}, -- Vinyl: Battle of Gnomeregan
    {type=ITEM, item=169689, quest=56516}, -- Vinyl: Mimiron's Brainstorm
    {type=ITEM, item=169692, quest=56519} -- Vinyl: Triumph of Gnomeregan
}}; -- Steel Singer Freza

nodes[80962019] = {type=RARE, id=155060, quest=56419, note=L["doppel_note"], label=L["doppel_gang"], rewards={
    {type=ACHIEVE, id=13470, criteria=45433} -- Kill
}}; -- The Doppel Gang

nodes[68434776] = {type=RARE, id=152113, quest=55858, note=L["drill_rig"]..'(DR-CC88).', rewards={
    {type=ACHIEVE, id=13470, criteria=45153}, -- Kill
    {type=ITEM, item=169691, quest=56518}, -- Vinyl: Depths of Ulduar
    {type=PET, id=2753, item=169886} -- Spraybot 0D
}}; -- The Kleptoboss

nodes[57335827] = {type=RARE, id=154225, quest=56182, note=L["rusty_note"], rewards={
    {type=ACHIEVE, id=13470, criteria=45374}, -- Kill
    {type=TOY, item=169347}, -- Judgment of Mechagon
    {type=TRANSMOG, item=170467, slot=L["1h_sword"]} -- Whirring Chainblade
}}; -- The Rusty Prince

nodes[72344987] = {type=RARE, id=151625, quest=55364, note=nil, rewards={
    {type=ACHIEVE, id=13470, criteria=45118}, -- Kill
    {type=ITEM, item=167846, quest=55061}, -- Blueprint: Mechano-Treat
    {type=TRANSMOG, item=170467, slot=L["1h_sword"]} -- Whirring Chainblade
}}; -- The Scrap King

nodes[57062218] = {type=RARE, id=151940, quest=55538, note=L["cave_spawn"], rewards={
    {type=ACHIEVE, id=13470, criteria=45132} -- Kill
}}; -- Uncle T'Rogg

nodes[53824933] = {type=RARE, id=150394, quest=55546, note=L["vaultbot_note"], rewards={
    {type=ACHIEVE, id=13470, criteria=45158}, -- Kill
    {type=ITEM, item=167843, quest=55058}, -- Blueprint: Vaultbot Key
    {type=ITEM, item=167796, quest=55455} -- Paint Vial: Mechagon Gold
}}; -- Armored Vaultbot

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

nodes[64706460] = {type=NPC, id=154922, icon='battle_pet'} -- Gnomefeaster
nodes[60704650] = {type=NPC, id=154923, icon='battle_pet'} -- Sputtertude
nodes[60605690] = {type=NPC, id=154924, icon='battle_pet'} -- Goldenbot XD
nodes[59205090] = {type=NPC, id=154925, icon='battle_pet'} -- Creakclank
nodes[65405770] = {type=NPC, id=154926, icon='battle_pet'} -- CK-9 Micro-Oppression Unit
nodes[51104540] = {type=NPC, id=154927, icon='battle_pet'} -- Unit 35
nodes[39504010] = {type=NPC, id=154928, icon='battle_pet'} -- Unit 6
nodes[72107290] = {type=NPC, id=154929, icon='battle_pet'} -- Unit 17

-------------------------------------------------------------------------------
-------------------------------- MISCELLANEOUS --------------------------------
-------------------------------------------------------------------------------

-- Recently it looks like these are in fixed spawns compared to when 8.2 hit
nodes[23195699] = {type=MISC, icon='treasure', label=L["iron_chest"], note=L["iron_chest_note"]};
nodes[13228581] = {type=MISC, icon='treasure', label=L["iron_chest"], note=L["iron_chest_note"]};
nodes[19018086] = {type=MISC, icon='treasure', label=L["iron_chest"], note=L["iron_chest_note"]};
nodes[20537120] = {type=MISC, icon='treasure', label=L["mech_chest"], note=L["mech_chest_note"]};
nodes[18357618] = {type=MISC, icon='treasure', label=L["rust_chest"], note=L["rust_chest_note"]};
nodes[25267825] = {type=MISC, icon='treasure', label=L["rust_chest"], note=L["rust_chest_note"]};

ns.nodes[MAPID] = nodes;
