local ADDON_NAME, _ = ...
local L = LibStub("AceLocale-3.0"):NewLocale(ADDON_NAME, "enUS", true, true)
if not L then return end

-------------------------------------------------------------------------------
------------------------------------ ULDUM ------------------------------------
-------------------------------------------------------------------------------

L["uldum_intro_note"] = "Complete the introductory quest chain to unlock rares, treasures and assault quests in Uldum."

L["aqir_flayer"] = "Shares a spawn with Aqir Hive Workers and Aqir Reapers."
L["aqir_titanus"] = "Shares a spawn with Aqir Goliaths."
L["aqir_warcaster"] = "Shares a spawn with Aqir Voidcasters."
L["chamber_of_the_moon"] = "Underground in the Chamber of the Moon."
L["chamber_of_the_stars"] = "Underground in the Chamber of the Stars."
L["chamber_of_the_sun"] = "Inside the Chamber of the Sun."
L["falconer"] = "Pats north-east and south-west between Neferset and the Cradle of the Ancients."
L["gexec"] = "Spawns on top of the floating platform."
L["spirit_cave"] = "Cave entrance for Spirit of Dark Ritualist Zakahn."

L["amathet_cache"] = "Amathet Cache"
L["black_empire_cache"] = "Black Empire Cache"
L["black_empire_coffer"] = "Black Empire Coffer"
L["infested_cache"] = "Infested Cache"
L["infested_strongbox"] = "Infested Strongbox"

-------------------------------------------------------------------------------
------------------------------------ VALE -------------------------------------
-------------------------------------------------------------------------------

L["vale_intro_note"] = "Complete the introductory quest chain to unlock rares, treasures and assault quests in the Vale of Eternal Blossoms."

L["big_blossom_mine"] = "Inside the Big Blossom Mine. Entrance to the north-east."
L["jadec"] = "Inside Guo-Lai Halls. Go left at the bottom of the stairs."
L["pools_of_power"] = "Inside the Pools of Power. Entrance at The Golden Pagoda."
L["tisiphon"] = "Click on Danielle's Lucky Fishing Rod."

L["ambered_cache"] = "Ambered Cache"

-------------------------------------------------------------------------------
------------------------------------ GEAR -------------------------------------
-------------------------------------------------------------------------------

L["cloth"] = "Cloth";
L["leather"] = "Leather";
L["mail"] = "Mail";
L["plate"] = "Plate";

L["1h_mace"] = "1h Mace";
L["1h_sword"] = "1h Sword";
L["1h_axe"] = "1h Axe";
L["2h_mace"] = "2h Mace";
L["2h_axe"] = "2h Axe";
L["2h_sword"] = "2h Sword";
L["shield"] = "Shield";
L["dagger"] = "Dagger";
L["staff"] = "Staff";
L["fist"] = "Fist";
L["polearm"] = "Polearm";
L["bow"] = "Bow";
L["gun"] = "Gun";
L["wand"] = "Wand";
L["crossbow"] = "Crossbow";
L["offhand"] = "Off Hand";
L["warglaives"] = "Warglaives";

L["ring"] = "Ring";
L["amulet"] = "Amulet";
L["cloak"] = "Cloak";
L["trinket"] = "Trinket";

-------------------------------------------------------------------------------
---------------------------------- TOOLTIPS -----------------------------------
-------------------------------------------------------------------------------

L["retrieving"] = "Retrieving item link ...";
L["in_cave"] = "In a cave.";
L["in_small_cave"] = "In a small cave."
L["in_water_cave"] = "In an underwater cave.";
L["weekly"] = "Weekly";
L["normal"] = "Normal";
L["hard"] = "Hard";
L["mount"] = "Mount";
L["pet"] = "Pet";
L["toy"] = "Toy";
L["completed"] = "Completed"
L["incomplete"] = "Incomplete"
L["known"] = "Known"
L["missing"] = "Missing"
L["unobtainable"] = "Unobtainable"
L["unlearnable"] = "Unlearnable"

-------------------------------------------------------------------------------
--------------------------------- CONTEXT MENU --------------------------------
-------------------------------------------------------------------------------

L["context_menu_title"] = "HandyNotes Visions of N'Zoth";
L["context_menu_add_tomtom"] = "Add to TomTom";
L["context_menu_hide_node"] = "Hide this node";
L["context_menu_restore_hidden_nodes"] = "Restore all hidden nodes";

-------------------------------------------------------------------------------
----------------------------------- OPTIONS -----------------------------------
-------------------------------------------------------------------------------

L["options_title"] = "Visions of N'Zoth";

------------------------------------ ICONS ------------------------------------

L["options_icon_settings"] = "Icon Settings";
L["options_icons_treasures"] = "Treasure Icons";
L["options_icons_rares"] = "Rare Icons";
L["options_icons_caves"] = "Cave Icons";
L["options_icons_pet_battles"] = "Pet Battle Icons";
L["options_icons_other"] = "Other Icons";
L["options_scale"] = "Scale";
L["options_scale_desc"] = "1 = 100%";
L["options_opacity"] = "Opacity";
L["options_opacity_desc"] = "0 = transparent, 1 = opaque";

---------------------------------- VISIBILITY ---------------------------------

L["options_visibility_settings"] = "Visibility";
L["options_general_settings"] = "General";
L["options_toggle_looted_rares"] = "Always show all rares";
L["options_toggle_looted_rares_desc"] = "Show every rare regardless of looted status";
L["options_toggle_looted_treasures"] = "Already looted Treasures";
L["options_toggle_looted_treasures_desc"] = "Show every treasure regardless of looted status";
L["options_toggle_hide_done_rare"] = "Hide rare, if all loot known";
L["options_toggle_hide_done_rare_desc"] = "Hide all rares for which all loot is known.";
L["options_toggle_hide_minimap"] = "Hide all icons on the minimap";
L["options_toggle_hide_minimap_desc"] = "Hides all icons from this addon on the minimap and displays them only on the main map.";

L["options_toggle_battle_pets_desc"] = "Display locations of battle pet trainers and NPCs.";
L["options_toggle_battle_pets"] = "Battle Pets";
L["options_toggle_caves_desc"] = "Display cave entrances for other nodes.";
L["options_toggle_caves"] = "Caves";
L["options_toggle_misc"] = "Miscellaneous";
L["options_toggle_npcs"] = "NPCs";
L["options_toggle_rares_desc"] = "Display locations of rare NPCs.";
L["options_toggle_rares"] = "Rares";
L["options_toggle_supplies_desc"] = "Display all possible locations for war supply crates.";
L["options_toggle_supplies"] = "War Supply Drops";
L["options_toggle_treasures"] = "Treasures";

---------------------------------- TOOLTIP ---------------------------------

L["options_tooltip_settings"] = "Tooltip";
L["options_tooltip_settings_desc"] = "Tooltip";
L["options_toggle_show_loot"] = "Show Loot";
L["options_toggle_show_loot_desc"] = "Add loot information to the tooltip";
L["options_toggle_show_notes"] = "Show Notes";
L["options_toggle_show_notes_desc"] = "Add helpful notes to the tooltip where available";

--------------------------------- DEVELOPMENT ---------------------------------

L["options_dev_settings"] = "Development";
L["options_dev_settings_desc"] = "Development settings";
L["options_toggle_show_debug"] = "Debug";
L["options_toggle_show_debug_desc"] = "Show debug stuff";
L["options_toggle_force_nodes"] = "Force Nodes";
L["options_toggle_force_nodes_desc"] = "Force display all nodes";
