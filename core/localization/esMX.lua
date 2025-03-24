local ADDON_NAME, ns = ...
local L = ns.NewLocale('esMX')
if not L then return end

-------------------------------------------------------------------------------
------------------------------------ GEAR -------------------------------------
-------------------------------------------------------------------------------

L['bag'] = nil
L['cloth'] = 'Tela'
L['leather'] = 'Cuero'
L['mail'] = 'Malla'
L['plate'] = 'Placas'
L['cosmetic'] = nil
L['tabard'] = nil

L['1h_mace'] = '1m Maza'
L['1h_sword'] = '1m Espada'
L['1h_axe'] = '1m Hacha'
L['2h_mace'] = '2m Maza'
L['2h_axe'] = '2m Hacha'
L['2h_sword'] = '2m Espada'
L['shield'] = 'Escudo'
L['dagger'] = 'Daga'
L['staff'] = 'Bastón'
L['fist'] = 'Puño'
L['polearm'] = 'Arma de asta'
L['bow'] = 'Arco'
L['gun'] = 'Arma de fuego'
L['wand'] = 'Varita'
L['crossbow'] = 'Ballesta'
L['offhand'] = 'Mano Izquierda'
L['warglaive'] = 'Glaive'

L['ring'] = 'Anillo'
L['neck'] = 'Amuleto'
L['cloak'] = 'Capa'
L['trinket'] = 'Abalorio'

-------------------------------------------------------------------------------
---------------------------------- TOOLTIPS -----------------------------------
-------------------------------------------------------------------------------

L['activation_unknown'] = nil
L['requirement_not_found'] = nil
L['multiple_spawns'] = nil
L['shared_drops'] = nil
L['zone_drops_label'] = nil
L['zone_drops_note'] = nil

L['poi_entrance_label'] = nil
L['change_map'] = nil

L['requires'] = nil
L['ranked_research'] = nil

L['focus'] = nil
L['retrieving'] = 'Recuperando el enlace del elemento ...'

L['normal'] = 'Normal'
L['hard'] = 'Difícil'

L['completed'] = 'Terminado'
L['incomplete'] = 'Incompleto'
L['claimed'] = nil
L['unclaimed'] = nil
L['known'] = 'Conocido'
L['missing'] = 'Desconocido'
L['unobtainable'] = 'No se puede obtener'
L['unlearnable'] = 'No se puede aprender'
L['defeated'] = nil
L['undefeated'] = nil
L['elite'] = nil
L['quest'] = nil
L['quest_repeatable'] = nil
L['achievement'] = nil

---------------------------------- LOCATION -----------------------------------
L['in_cave'] = 'En una cueva.'
L['in_small_cave'] = 'En una cueva pequeña.'
L['in_water_cave'] = 'En una cueva submarina.'
L['in_waterfall_cave'] = nil
L['in_water'] = 'Bajo el agua.'
L['in_building'] = nil

------------------------------------ TIME -------------------------------------
L['now'] = 'Ahora'
L['hourly'] = nil
L['daily'] = nil
L['weekly'] = 'Semanal'

L['time_format_12hrs'] = '%I:%M %p - %d/%m heure locale'
L['time_format_24hrs'] = '%H:%M - %d/%m heure locale'

----------------------------------- REWARDS -----------------------------------
L['heirloom'] = nil
L['item'] = nil
L['mount'] = 'Montura'
L['pet'] = 'Mascota'
L['recipe'] = nil
L['spell'] = nil
L['title'] = nil
L['toy'] = 'Juguete'
L['currency'] = nil
L['rep'] = nil
L['buff'] = nil
L['transmog'] = nil
L['hunter_pet'] = nil

---------------------------------- FOLLOWERS ----------------------------------
L['follower_type_follower'] = nil
L['follower_type_champion'] = nil
L['follower_type_companion'] = nil

--------------------------------- REPUTATION ----------------------------------
L['rep_honored'] = nil
L['rep_revered'] = nil
L['rep_exalted'] = nil

-------------------------------------------------------------------------------
------------------------------- SKYRIDING RACES -------------------------------
-------------------------------------------------------------------------------

L['sr_your_best_time'] = nil
L['sr_your_target_time'] = nil
L['sr_best_time'] = nil
L['sr_target_time'] = nil
L['sr_normal'] = nil
L['sr_advanced'] = nil
L['sr_reverse'] = nil
L['sr_challenge'] = nil
L['sr_reverse_challenge'] = nil
L['sr_storm_race'] = nil
L['sr_bronze'] = nil
L['sr_vendor_note'] = nil
L['options_icons_skyriding_race'] = nil
L['options_icons_skyriding_race_desc'] = nil

-------------------------------------------------------------------------------
--------------------------------- CONTEXT MENU --------------------------------
-------------------------------------------------------------------------------

L['context_menu_set_waypoint'] = nil
L['context_menu_add_tomtom'] = 'Agregar a TomTom'
L['context_menu_add_group_tomtom'] = nil
L['context_menu_add_focus_group_tomtom'] = nil
L['context_menu_hide_node'] = 'Ocultar este nodo'
L['context_menu_restore_hidden_nodes'] = 'Restaurar todos los nodos ocultos'

L['map_button_text'] = nil

-------------------------------------------------------------------------------
----------------------------------- OPTIONS -----------------------------------
-------------------------------------------------------------------------------

L['options_global'] = nil
L['options_zones'] = nil

L['options_general_description'] = nil
L['options_global_description'] = nil
L['options_zones_description'] = nil

L['options_open_settings_panel'] = nil
L['options_open_world_map'] = nil
L['options_open_world_map_desc'] = nil

------------------------------------ ICONS ------------------------------------

L['options_icon_settings'] = 'Configuración de Íconos'
L['options_scale'] = 'Escala'
L['options_scale_desc'] = '1 = 100%'
L['options_opacity'] = 'Opacidad'
L['options_opacity_desc'] = '0 = transparencia, 1 = opaco'

---------------------------------- VISIBILITY ---------------------------------

L['options_show_worldmap_button'] = nil
L['options_show_worldmap_button_desc'] = nil

L['options_visibility_settings'] = 'Visibilidad'
L['options_general_settings'] = 'General'
L['options_show_completed_nodes'] = nil
L['options_show_completed_nodes_desc'] = nil
L['options_toggle_hide_done_rare'] = 'Ocultar el raro si todo el botín se conoce'
L['options_toggle_hide_done_rare_desc'] = 'Ocultar todos los raros de botín conocido.'
L['options_toggle_hide_done_treasure'] = nil
L['options_toggle_hide_done_treasure_desc'] = nil
L['options_toggle_hide_minimap'] = 'Ocultar todos los íconos sobre el minimapa'
L['options_toggle_hide_minimap_desc'] = 'Oculta todos íconos de este addon sobre el minimapa y los mostra solamente sobre el mapa principal.'
L['options_toggle_maximized_enlarged'] = nil
L['options_toggle_maximized_enlarged_desc'] = nil
L['options_toggle_use_char_achieves'] = nil
L['options_toggle_use_char_achieves_desc'] = nil
L['options_toggle_per_map_settings'] = nil
L['options_toggle_per_map_settings_desc'] = nil
L['options_restore_hidden_nodes'] = nil
L['options_restore_hidden_nodes_desc'] = nil

L['ignore_class_restrictions'] = nil
L['ignore_class_restrictions_desc'] = nil
L['ignore_faction_restrictions'] = nil
L['ignore_faction_restrictions_desc'] = nil

L['options_rewards_settings'] = nil
L['options_reward_behaviors_settings'] = nil
L['options_reward_types'] = nil
L['options_manuscript_rewards'] = nil
L['options_manuscript_rewards_desc'] = nil
L['options_mount_rewards'] = nil
L['options_mount_rewards_desc'] = nil
L['options_pet_rewards'] = nil
L['options_pet_rewards_desc'] = nil
L['options_recipe_rewards'] = nil
L['options_recipe_rewards_desc'] = nil
L['options_toy_rewards'] = nil
L['options_toy_rewards_desc'] = nil
L['options_transmog_rewards'] = nil
L['options_transmog_rewards_desc'] = nil
L['options_all_transmog_rewards'] = nil
L['options_all_transmog_rewards_desc'] = nil
L['options_rep_rewards'] = nil
L['options_rep_rewards_desc'] = nil
L['options_claimed_rep_rewards'] = nil
L['options_claimed_rep_rewards_desc'] = nil

L['options_icons_misc_desc'] = nil
L['options_icons_misc'] = 'Miscelánea'
L['options_icons_pet_battles_desc'] = 'Mostrar los lugares de instructores de mascotas y PNJs.'
L['options_icons_pet_battles'] = 'Mascotas de duelo'
L['options_icons_rares_desc'] = 'Mostrar los lugares de los NPCs raros.'
L['options_icons_rares'] = 'Raros'
L['options_icons_treasures_desc'] = nil
L['options_icons_treasures'] = 'Tesoros'
L['options_icons_vendors_desc'] = nil
L['options_icons_vendors'] = nil

------------------------------------ FOCUS ------------------------------------

L['options_focus_settings'] = nil
L['options_poi_color'] = nil
L['options_poi_color_desc'] = nil
L['options_path_color'] = nil
L['options_path_color_desc'] = nil
L['options_reset_poi_colors'] = nil
L['options_reset_poi_colors_desc'] = nil

---------------------------------- TOOLTIP ---------------------------------

L['options_tooltip_settings'] = 'Tooltip'
L['options_toggle_show_loot'] = 'Mostrar el botín'
L['options_toggle_show_loot_desc'] = 'Agregar la información de botín al toolip'
L['options_toggle_show_notes'] = 'Mostrar las Notas'
L['options_toggle_show_notes_desc'] = 'Agregar las notas útiles al tooltip cuando esté disponible'
L['options_toggle_use_standard_time'] = nil
L['options_toggle_use_standard_time_desc'] = nil
L['options_toggle_show_npc_id'] = nil
L['options_toggle_show_npc_id_desc'] = nil

--------------------------------- DEVELOPMENT ---------------------------------

L['options_dev_settings'] = 'Desarrollo'
L['options_toggle_show_debug_currency'] = nil
L['options_toggle_show_debug_currency_desc'] = nil
L['options_toggle_show_debug_map'] = 'Debug IDs del Mapa'
L['options_toggle_show_debug_map_desc'] = 'Muestra información de debug para los mapas'
L['options_toggle_show_debug_quest'] = 'Debug IDs de las Misiones'
L['options_toggle_show_debug_quest_desc'] = 'Muestra información de debug para los cambios de las misiones'
L['options_toggle_force_nodes'] = 'Forzar Nodos'
L['options_toggle_force_nodes_desc'] = 'Forzar el mostrar todos los nodos'
