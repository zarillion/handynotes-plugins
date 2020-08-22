local ADDON_NAME, _ = ...
local L = LibStub("AceLocale-3.0"):NewLocale(ADDON_NAME, "enUS", true, true)
if not L then return end

-------------------------------------------------------------------------------
----------------------------------- GENERAL -----------------------------------
-------------------------------------------------------------------------------

L["nightfae"] = "Night Fae"
L["kyrian"] = "Kyrian"
L["necrolords"] = "Necrolords"
L["venthir"] = "Venthyr"

L["covenant_summon"] = "Requires a %s to summon."

-------------------------------------------------------------------------------
--------------------------------- ARDENWEALD ----------------------------------
-------------------------------------------------------------------------------

L["deifir_note"] = "Ride the rare around in a circle and use {spell:319566} and {spell:319575} to slow and stun him."
L["faeflayer_note"] = "In a small cave hidden behind a waterfall."
L["lehgo_note"] = "Destroy Quivering Gorm Eggs and kill {npc:171827} until he spawns. In a cave (entrance to the south-east in the Dusty Burrows)."
L["rootwrithe_note"] = "Poke the {npc:167928}s until the rare appears."
L["rotbriar_note"] = "Talk to {npc:171684} nearby to summon the rare after some dialog."
L["slumbering_note"] = "Running into the fog will stun and port you out. Use a flare or a pet with AOE to knock him out of the fog."

-------------------------------------------------------------------------------
----------------------------------- BASTION -----------------------------------
-------------------------------------------------------------------------------

L["bastion"] = "Bastion"

L["beasts_of_bastion"] = "Beasts of Bastion"
L["beasts_of_bastion_note"] = "Talk to Orator Kloe to summon one of the four beasts."
L["herculon_note"] = [[
Charge all four Anima Conduits using {item:172451}.

Motes can be collected from nearby Depleted Anima Canisters located the room or just outside. Each conduit requires 3 motes.
]]
L["nikara_note"] = "With two other players, click the Ancient Incense to summon."
L["wingflayer_note"] = "Click the horn on the nearby table (up the stairs) to summon."

L["vesper_of_virtues"] = "Vesper of Virtues"

-------------------------------------------------------------------------------
--------------------------------- MALDRAXXUS ----------------------------------
-------------------------------------------------------------------------------

L["chelicerae_note"] = "Destroy the {npc:159885} to activate the rare."
L["gristlebeak_note"] = "Break all nearby {npc:162761} to engage the rare."
L["malkorak_note"] = "At the top of the tower (lots of stairs)."
L["schmitd_note"] = "Use nearby {spell:313451} to break his shield."

L["mixed_pool_note"] = [[
Gather ingredients from the surrounding mobs and toss them into the pool. Once 30 ingredients have been added, one of seven rares will spawn depending on the combination used.

• Collect {spell:306713} from {npc:167923} and {npc:167948} to the north.

• Collect {spell:306719} from {npc:165015} and {npc:171142} to the south.

• Collect {spell:306722} from {npc:165027} and {npc:166438} to the south.
]]

L["strange_growth_note"] = "Pull on the {npc:165037} to reveal the treasure."

-------------------------------------------------------------------------------
--------------------------------- REVENDRETH ----------------------------------
-------------------------------------------------------------------------------

L["leeched_soul_note"] = "Inside the nearby crypt. Walk near {npc:165151} to start the event."

-------------------------------------------------------------------------------
------------------------------------ GEAR -------------------------------------
-------------------------------------------------------------------------------

L["cloth"] = "Cloth"
L["leather"] = "Leather"
L["mail"] = "Mail"
L["plate"] = "Plate"

L["1h_mace"] = "1h Mace"
L["1h_sword"] = "1h Sword"
L["1h_axe"] = "1h Axe"
L["2h_mace"] = "2h Mace"
L["2h_axe"] = "2h Axe"
L["2h_sword"] = "2h Sword"
L["shield"] = "Shield"
L["dagger"] = "Dagger"
L["staff"] = "Staff"
L["fist"] = "Fist"
L["polearm"] = "Polearm"
L["bow"] = "Bow"
L["gun"] = "Gun"
L["wand"] = "Wand"
L["crossbow"] = "Crossbow"
L["offhand"] = "Off Hand"
L["warglaive"] = "Warglaive"

L["ring"] = "Ring"
L["amulet"] = "Amulet"
L["cloak"] = "Cloak"
L["trinket"] = "Trinket"

-------------------------------------------------------------------------------
---------------------------------- TOOLTIPS -----------------------------------
-------------------------------------------------------------------------------

L["retrieving"] = "Retrieving item link ..."
L["in_cave"] = "In a cave."
L["in_small_cave"] = "In a small cave."
L["in_water_cave"] = "In an underwater cave."
L["in_water"] = "In the water."
L["weekly"] = "Weekly"
L["normal"] = "Normal"
L["hard"] = "Hard"
L["mount"] = "Mount"
L["pet"] = "Pet"
L["toy"] = "Toy"
L["completed"] = "Completed"
L["incomplete"] = "Incomplete"
L["known"] = "Known"
L["missing"] = "Missing"
L["unobtainable"] = "Unobtainable"
L["unlearnable"] = "Unlearnable"

-------------------------------------------------------------------------------
--------------------------------- CONTEXT MENU --------------------------------
-------------------------------------------------------------------------------

L["context_menu_title"] = "HandyNotes Shadowlands"
L["context_menu_add_tomtom"] = "Add to TomTom"
L["context_menu_hide_node"] = "Hide this node"
L["context_menu_restore_hidden_nodes"] = "Restore all hidden nodes"

-------------------------------------------------------------------------------
----------------------------------- OPTIONS -----------------------------------
-------------------------------------------------------------------------------

L["options_title"] = "Shadowlands"

------------------------------------ ICONS ------------------------------------

L["options_icon_settings"] = "Icon Settings"
L["options_icons_treasures"] = "Treasure Icons"
L["options_icons_assaultevents"] = "Assault Event Icons"
L["options_icons_rares"] = "Rare Icons"
L["options_icons_caves"] = "Cave Icons"
L["options_icons_pet_battles"] = "Pet Battle Icons"
L["options_icons_other"] = "Other Icons"
L["options_scale"] = "Scale"
L["options_scale_desc"] = "1 = 100%"
L["options_opacity"] = "Opacity"
L["options_opacity_desc"] = "0 = transparent, 1 = opaque"

---------------------------------- VISIBILITY ---------------------------------

L["options_visibility_settings"] = "Visibility"
L["options_general_settings"] = "General"
L["options_toggle_looted_rares"] = "Always show all rares"
L["options_toggle_looted_rares_desc"] = "Show every rare regardless of looted status"
L["options_toggle_looted_treasures"] = "Already looted treasures"
L["options_toggle_looted_treasures_desc"] = "Show every treasure regardless of looted status"
L["options_toggle_hide_done_rare"] = "Hide rare, if all loot known"
L["options_toggle_hide_done_rare_desc"] = "Hide all rares for which all loot is known."
L["options_toggle_hide_minimap"] = "Hide all icons on the minimap"
L["options_toggle_hide_minimap_desc"] = "Hides all icons from this addon on the minimap and displays them only on the main map."
L["options_restore_hidden_nodes"] = "Restore hidden nodes"
L["options_restore_hidden_nodes_desc"] = "Restore all nodes hidden using the right-click context menu."

L["options_toggle_battle_pets_desc"] = "Display locations of battle pet trainers and NPCs."
L["options_toggle_battle_pets"] = "Battle Pets"
L["options_toggle_caves_desc"] = "Display cave entrances for other nodes."
L["options_toggle_caves"] = "Caves"
L["options_toggle_chests_desc"] = "Display locations of chests (lootable daily)."
L["options_toggle_chests"] = "Chests"
L["options_toggle_misc"] = "Miscellaneous"
L["options_toggle_npcs"] = "NPCs"
L["options_toggle_rares_desc"] = "Display locations of rare NPCs."
L["options_toggle_rares"] = "Rares"
L["options_toggle_supplies_desc"] = "Display all possible locations for war supply crates."
L["options_toggle_supplies"] = "War Supply Drops"
L["options_toggle_treasures"] = "Treasures"
L["options_toggle_treasures_desc"] = "Display locations of hidden treasures."

---------------------------------- TOOLTIP ---------------------------------

L["options_tooltip_settings"] = "Tooltip"
L["options_tooltip_settings_desc"] = "Tooltip"
L["options_toggle_show_loot"] = "Show Loot"
L["options_toggle_show_loot_desc"] = "Add loot information to the tooltip"
L["options_toggle_show_notes"] = "Show Notes"
L["options_toggle_show_notes_desc"] = "Add helpful notes to the tooltip where available"

--------------------------------- DEVELOPMENT ---------------------------------

L["options_dev_settings"] = "Development"
L["options_dev_settings_desc"] = "Development settings"
L["options_toggle_show_debug_map"] = "Debug Map IDs"
L["options_toggle_show_debug_map_desc"] = "Show debug information for maps"
L["options_toggle_show_debug_quest"] = "Debug Quest IDs"
L["options_toggle_show_debug_quest_desc"] = "Show debug info for quest changes"
L["options_toggle_force_nodes"] = "Force Nodes"
L["options_toggle_force_nodes_desc"] = "Force display all nodes"
