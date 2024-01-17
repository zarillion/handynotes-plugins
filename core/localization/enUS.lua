local ADDON_NAME, ns = ...
local L = ns.NewLocale('enUS')
if not L then return end

-------------------------------------------------------------------------------
------------------------------------ GEAR -------------------------------------
-------------------------------------------------------------------------------

L['bag'] = 'Bag'
L['cloth'] = 'Cloth'
L['leather'] = 'Leather'
L['mail'] = 'Mail'
L['plate'] = 'Plate'
L['cosmetic'] = 'Cosmetic'

L['1h_mace'] = '1h Mace'
L['1h_sword'] = '1h Sword'
L['1h_axe'] = '1h Axe'
L['2h_mace'] = '2h Mace'
L['2h_axe'] = '2h Axe'
L['2h_sword'] = '2h Sword'
L['shield'] = 'Shield'
L['dagger'] = 'Dagger'
L['staff'] = 'Staff'
L['fist'] = 'Fist'
L['polearm'] = 'Polearm'
L['bow'] = 'Bow'
L['gun'] = 'Gun'
L['wand'] = 'Wand'
L['crossbow'] = 'Crossbow'
L['offhand'] = 'Off Hand'
L['warglaive'] = 'Warglaive'

L['ring'] = 'Ring'
L['neck'] = 'Neck'
L['cloak'] = 'Cloak'
L['trinket'] = 'Trinket'

-------------------------------------------------------------------------------
---------------------------------- TOOLTIPS -----------------------------------
-------------------------------------------------------------------------------

L['activation_unknown'] = 'Activation unknown!'
L['requirement_not_found'] = 'Requirement location unknown!'
L['multiple_spawns'] = 'Can appear in multiple locations.'
L['shared_drops'] = 'Shared Drops'
L['zone_drops_label'] = 'Zone Drops'
L['zone_drops_note'] = 'The items listed below can be dropped by several mobs in this zone.'

L['requires'] = 'Requires'
L['ranked_research'] = '%s (Rank %d/%d)'

L['focus'] = 'Focus'
L['retrieving'] = 'Retrieving item link ...'
L['in_cave'] = 'In a cave.'
L['in_small_cave'] = 'In a small cave.'
L['in_water_cave'] = 'In an underwater cave.'
L['in_waterfall_cave'] = 'In a cave behind a waterfall.'
L['in_water'] = 'In the water.'
L['hourly'] = 'Hourly'
L['daily'] = 'Daily'
L['weekly'] = 'Weekly'
L['normal'] = 'Normal'
L['hard'] = 'Hard'
L['heirloom'] = 'Heirloom'
L['item'] = 'Item'
L['mount'] = 'Mount'
L['pet'] = 'Pet'
L['recipe'] = 'Recipe'
L['spell'] = 'Spell'
L['title'] = 'Title'
L['toy'] = 'Toy'
L['currency'] = 'Currency'
L['rep'] = 'Rep'
L['completed'] = 'Completed'
L['incomplete'] = 'Incomplete'
L['known'] = 'Known'
L['missing'] = 'Missing'
L['unobtainable'] = 'Unobtainable'
L['unlearnable'] = 'Unlearnable'
L['defeated'] = 'Defeated'
L['undefeated'] = 'Undefeated'
L['elite'] = 'Elite'
L['quest'] = 'Quest'
L['quest_repeatable'] = 'Repeatable Quest'
L['achievement'] = 'Achievement'

L['follower_type_follower'] = 'Follower'
L['follower_type_champion'] = 'Champion'
L['follower_type_companion'] = 'Companion'

L['rep_honored'] = 'Honored'
L['rep_revered'] = 'Revered'
L['rep_exalted'] = 'Exalted'

L['time_format_12hrs'] = '%B %d - %I:%M %p local time'
L['time_format_24hrs'] = '%B %d - %H:%M local time'

-------------------------------------------------------------------------------
--------------------------------- DRAGONRACES ---------------------------------
-------------------------------------------------------------------------------

L['dr_your_best_time'] = 'Your best time:'
L['dr_your_target_time'] = 'Target time:'
L['dr_best_time'] = ' - %s: %.3fs'
L['dr_target_time'] = ' - %s: %ss / %ss'
L['dr_normal'] = 'Normal'
L['dr_advanced'] = 'Advanced'
L['dr_reverse'] = 'Reverse'
L['dr_challenge'] = 'Challenge'
L['dr_reverse_challenge'] = 'Reverse Challenge'
L['dr_storm_race'] = 'Storm Race'
L['dr_bronze'] = 'Finish the race to get ' .. ns.color.Bronze('Bronze') .. '.'
L['dr_vendor_note'] = 'Exchange {currency:2588} for drakewatcher manuscripts and transmog.'
L['options_icons_dragonrace'] = 'Dragonriding Races'
L['options_icons_dragonrace_desc'] = 'Display all race locations for the zone.'

-------------------------------------------------------------------------------
--------------------------------- CONTEXT MENU --------------------------------
-------------------------------------------------------------------------------

L['context_menu_set_waypoint'] = 'Set map waypoint'
L['context_menu_add_tomtom'] = 'Add to TomTom'
L['context_menu_add_group_tomtom'] = 'Add group to TomTom'
L['context_menu_add_focus_group_tomtom'] = 'Add related nodes to TomTom'
L['context_menu_hide_node'] = 'Hide this node'
L['context_menu_restore_hidden_nodes'] = 'Restore all hidden nodes'

L['map_button_text'] = 'Adjust icon display, alpha and scaling for this map.'

-------------------------------------------------------------------------------
----------------------------------- OPTIONS -----------------------------------
-------------------------------------------------------------------------------

L['options_global'] = 'Global'
L['options_zones'] = 'Zones'

L['options_general_description'] = 'Settings that control the behavior of nodes and their rewards.'
L['options_global_description'] = 'Settings that control the display of all nodes in all zones.'
L['options_zones_description'] = 'Settings that control the display of nodes in each individual zone.'

L['options_open_settings_panel'] = 'Open Settings Panel ...'
L['options_open_world_map'] = 'Open World Map'
L['options_open_world_map_desc'] = 'Open this zone in the world map.'

------------------------------------ ICONS ------------------------------------

L['options_icon_settings'] = 'Icon Settings'
L['options_scale'] = 'Scale'
L['options_scale_desc'] = '1 = 100%'
L['options_opacity'] = 'Opacity'
L['options_opacity_desc'] = '0 = transparent, 1 = opaque'

---------------------------------- VISIBILITY ---------------------------------

L['options_show_worldmap_button'] = 'Show world map button'
L['options_show_worldmap_button_desc'] = 'Add a quick-toggle dropdown menu to the top-right corner of the world map.'

L['options_visibility_settings'] = 'Visibility'
L['options_general_settings'] = 'General'
L['options_show_completed_nodes'] = 'Show completed'
L['options_show_completed_nodes_desc'] = 'Show all nodes even if they have already been looted or completed today.'
L['options_toggle_hide_done_rare'] = 'Hide rare if all rewards known'
L['options_toggle_hide_done_rare_desc'] = 'Hide all rares for which all loot is known.'
L['options_toggle_hide_minimap'] = 'Hide all icons on the minimap'
L['options_toggle_hide_minimap_desc'] = 'Hides all icons from this addon on the minimap and displays them only on the main map.'
L['options_toggle_maximized_enlarged'] = 'Enlarge icons on maximized world map'
L['options_toggle_maximized_enlarged_desc'] = 'When the world map is maximized, enlarge all icons.'
L['options_toggle_use_char_achieves'] = 'Use character achievements'
L['options_toggle_use_char_achieves_desc'] = 'Display achievement progress for this character instead of the overall account.'
L['options_toggle_per_map_settings'] = 'Use zone-specific settings'
L['options_toggle_per_map_settings_desc'] = 'Apply toggle, scale and opacity settings to each zone individually.'
L['options_restore_hidden_nodes'] = 'Restore hidden nodes'
L['options_restore_hidden_nodes_desc'] = 'Restore all nodes hidden using the right-click context menu.'

L['options_rewards_settings'] = 'Rewards'
L['options_reward_types'] = 'Show reward types'
L['options_mount_rewards'] = 'Show mount rewards'
L['options_mount_rewards_desc'] = 'Display mount rewards in tooltips and track their collected status.'
L['options_pet_rewards'] = 'Show pet rewards'
L['options_pet_rewards_desc'] = 'Display pet rewards in tooltips and track their collected status.'
L['options_recipe_rewards'] = 'Show recipe rewards'
L['options_recipe_rewards_desc'] = 'Display recipe rewards in tooltips and track their collected status.'
L['options_toy_rewards'] = 'Show toy rewards'
L['options_toy_rewards_desc'] = 'Display toy rewards in tooltips and track their collected status.'
L['options_transmog_rewards'] = 'Show transmog rewards'
L['options_transmog_rewards_desc'] = 'Display transmog rewards in tooltips and track their collected status.'
L['options_all_transmog_rewards'] = 'Show unobtainable transmog rewards'
L['options_all_transmog_rewards_desc'] = 'Display transmog rewards obtainable by other classes.'

L['options_icons_misc_desc'] = 'Display locations of other miscellaneous nodes.'
L['options_icons_misc'] = 'Miscellaneous'
L['options_icons_pet_battles_desc'] = 'Display locations of battle pet trainers and NPCs.'
L['options_icons_pet_battles'] = 'Pet Battles'
L['options_icons_rares_desc'] = 'Display locations of rare NPCs.'
L['options_icons_rares'] = 'Rares'
L['options_icons_treasures_desc'] = 'Display locations of hidden treasures.'
L['options_icons_treasures'] = 'Treasures'
L['options_icons_vendors_desc'] = 'Display locations for vendors.'
L['options_icons_vendors'] = 'Vendors'

------------------------------------ FOCUS ------------------------------------

L['options_focus_settings'] = 'Points of Interest'
L['options_poi_color'] = 'POI color'
L['options_poi_color_desc'] = 'Sets the color for points of interest when an icon is in focus.'
L['options_path_color'] = 'Path color'
L['options_path_color_desc'] = 'Sets the color for the paths when an icon is in focus.'
L['options_reset_poi_colors'] = 'Reset colors'
L['options_reset_poi_colors_desc'] = 'Reset the above colors to their defaults.'

----------------------------------- TOOLTIP -----------------------------------

L['options_tooltip_settings'] = 'Tooltip'
L['options_toggle_show_loot'] = 'Show Loot'
L['options_toggle_show_loot_desc'] = 'Add loot information to the tooltip'
L['options_toggle_show_notes'] = 'Show Notes'
L['options_toggle_show_notes_desc'] = 'Add helpful notes to the tooltip where available'
L['options_toggle_use_standard_time'] = 'Use 12-Hour Clock'
L['options_toggle_use_standard_time_desc'] = 'Use 12-hour clock (ex: 8:00 PM) instead of 24-hour clock (ex: 20:00) in tooltips.'

--------------------------------- DEVELOPMENT ---------------------------------

L['options_dev_settings'] = 'Development'
L['options_toggle_show_debug_currency'] = 'Debug Currency IDs'
L['options_toggle_show_debug_currency_desc'] = 'Show debug info for currency changes (reload required)'
L['options_toggle_show_debug_map'] = 'Debug Map IDs'
L['options_toggle_show_debug_map_desc'] = 'Show debug information for maps'
L['options_toggle_show_debug_quest'] = 'Debug Quest IDs'
L['options_toggle_show_debug_quest_desc'] = 'Show debug info for quest changes (reload required)'
L['options_toggle_force_nodes'] = 'Force Nodes'
L['options_toggle_force_nodes_desc'] = 'Force display all nodes'
