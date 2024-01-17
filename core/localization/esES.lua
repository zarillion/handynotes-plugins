local ADDON_NAME, ns = ...
local L = ns.NewLocale('esES')
if not L then return end
-- Spanish Translation by Krovikan EU-Minahonda
-------------------------------------------------------------------------------
------------------------------------ GEAR -------------------------------------
-------------------------------------------------------------------------------

L['bag'] = 'Bolsa'
L['cloth'] = 'Tela'
L['leather'] = 'Cuero'
L['mail'] = 'Malla'
L['plate'] = 'Placas'
L['cosmetic'] = 'Cosmético'

L['1h_mace'] = 'Maza'
L['1h_sword'] = 'Espada'
L['1h_axe'] = 'Hacha'
L['2h_mace'] = 'Maza 2m'
L['2h_axe'] = 'Hacha 2m'
L['2h_sword'] = 'Espada 2m'
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
L['warglaive'] = 'Guja de guerra'

L['ring'] = 'Anillo'
L['neck'] = 'Amuleto'
L['cloak'] = 'Capa'
L['trinket'] = 'Abalorio'

-------------------------------------------------------------------------------
---------------------------------- TOOLTIPS -----------------------------------
-------------------------------------------------------------------------------

L['activation_unknown'] = '¡Activación desconocida!'
L['requirement_not_found'] = '¡Requerimiento de localización desconocido!'
L['multiple_spawns'] = 'Puede aparecer en varios sitios.'
L['shared_drops'] = 'Botín Compartido'
L['zone_drops_label'] = 'Zonas de Caídas'
L['zone_drops_note'] = 'Los objetos listados debajo los pueden soltar varios enemigos en esta zona.'

L['requires'] = 'Requiere'
L['ranked_research'] = '%s (Rango %d/%d)'

L['focus'] = 'Foco'
L['retrieving'] = 'Recuperando el enlace del elemento ...'
L['in_cave'] = 'En una cueva.'
L['in_small_cave'] = 'En una cueva pequeña.'
L['in_water_cave'] = 'En una cueva submarina.'
L['in_waterfall_cave'] = 'En una cueva detrás de una cascada.'
L['in_water'] = 'Bajo el agua.'
L['hourly'] = 'Horaria'
L['daily'] = 'Diaria'
L['weekly'] = 'Semanal'
L['normal'] = 'Normal'
L['hard'] = 'Difícil'
L['heirloom'] = 'Reliquia'
L['item'] = 'Objeto'
L['mount'] = 'Montura'
L['pet'] = 'Mascota'
L['recipe'] = 'Receta'
L['spell'] = 'Hechizo'
L['title'] = 'Título'
L['toy'] = 'Juguete'
L['currency'] = 'Moneda'
L['rep'] = 'Reputación'
L['completed'] = 'Terminado'
L['incomplete'] = 'Incompleto'
L['known'] = 'Conocido'
L['missing'] = 'Desconocido'
L['unobtainable'] = 'No se puede obtener'
L['unlearnable'] = 'No se puede aprender'
L['defeated'] = 'Derrotado'
L['undefeated'] = 'Sin derrotar'
L['elite'] = 'Élite'
L['quest'] = 'Misión'
L['quest_repeatable'] = 'Misión Repetible'
L['achievement'] = 'Logro'

L['follower_type_follower'] = 'Seguidor'
L['follower_type_champion'] = 'Campeón'
L['follower_type_companion'] = 'Compañero'

L['rep_honored'] = 'Honorable'
L['rep_revered'] = 'Reverenciado'
L['rep_exalted'] = 'Exaltado'

L['time_format_12hrs'] = '%I:%M %p - %d/%m Hora local'
L['time_format_24hrs'] = '%H:%M - %d/%m Hora local'

-------------------------------------------------------------------------------
--------------------------------- DRAGONRACES ---------------------------------
-------------------------------------------------------------------------------

L['dr_your_best_time'] = 'Tu mejor tiempo:'
L['dr_your_target_time'] = 'Tu mejor tiempo:'
L['dr_best_time'] = ' - %s: %.3fs'
L['dr_target_time'] = ' - %s: %ss / %ss'
L['dr_normal'] = 'Normal'
L['dr_advanced'] = 'Avanzado'
L['dr_reverse'] = 'Inverso'
L['dr_challenge'] = 'Desafío'
L['dr_reverse_challenge'] = 'Desafío Inverso'
L['dr_storm_race'] = 'Carrera de la Tormenta'
L['dr_bronze'] = 'Acaba la carrera para conseguir el ' .. ns.color.Bronze('Bronce') .. '.'
L['dr_vendor_note'] = 'Intercambia {currency:2588} por manuscritos de dracovigía y transfiguraciones.'
L['options_icons_dragonrace'] = 'Carreras de Dragones'
L['options_icons_dragonrace_desc'] = 'Muestra dónde están todas las Carreras de Dragones de la zona.'

-------------------------------------------------------------------------------
--------------------------------- CONTEXT MENU --------------------------------
-------------------------------------------------------------------------------

L['context_menu_set_waypoint'] = 'Añadir al mapa punto de ruta'
L['context_menu_add_tomtom'] = 'Añadir en TomTom'
L['context_menu_add_group_tomtom'] = 'Añadir grupo en TomTom'
L['context_menu_add_focus_group_tomtom'] = 'Añadir nodos relacionados en TomTom'
L['context_menu_hide_node'] = 'Ocultar este nodo'
L['context_menu_restore_hidden_nodes'] = 'Restaurar todos los nodos ocultos'

L['map_button_text'] = 'Ajustar visibilidad del icono, transparencia y escalado para este mapa.'

-------------------------------------------------------------------------------
----------------------------------- OPTIONS -----------------------------------
-------------------------------------------------------------------------------

L['options_global'] = 'Global'
L['options_zones'] = 'Zonas'

L['options_general_description'] = 'Ajustes que controlan el comportamiento de los nodos y sus recompensas.'
L['options_global_description'] = 'Ajustes que controlan la visualización de todos los nodos en todas las zonas.'
L['options_zones_description'] = 'Ajustes que controlan la visualización de nodos en cada zona individual.'

L['options_open_settings_panel'] = 'Abrir el Panel de Preferencias...'
L['options_open_world_map'] = 'Abrir el Mapa del Mundo'
L['options_open_world_map_desc'] = 'Abre esta zona en el mapa del mundo.'

------------------------------------ ICONS ------------------------------------

L['options_icon_settings'] = 'Configuración de Iconos'
L['options_scale'] = 'Escalar'
L['options_scale_desc'] = '1 = 100%'
L['options_opacity'] = 'Opacidad'
L['options_opacity_desc'] = '0 = transparente, 1 = opaco'

---------------------------------- VISIBILITY ---------------------------------

L['options_show_worldmap_button'] = 'Mostrar botón del mapa del mundo'
L['options_show_worldmap_button_desc'] = 'Añade un menú desplegable para cambiar opciones rápidamente en la esquina superior derecha del mapa del mundo.'

L['options_visibility_settings'] = 'Visibilidad'
L['options_general_settings'] = 'General'
L['options_show_completed_nodes'] = 'Mostrar completados'
L['options_show_completed_nodes_desc'] = 'Muestra todos los nodos incluso si ya han sido despojados o completados hoy.'
L['options_toggle_hide_done_rare'] = 'Ocultar los raros, si se conoce todo el botín'
L['options_toggle_hide_done_rare_desc'] = 'Oculta todos los raros a los que se les conozca el botín.'
L['options_toggle_hide_minimap'] = 'Ocultar todos los iconos sobre el minimapa'
L['options_toggle_hide_minimap_desc'] = 'Oculta todos los iconos de este addon sobre el minimapa y mostrarlos solamente sobre el mapa principal.'
L['options_toggle_maximized_enlarged'] = 'Agrandar iconos en el mapa del mundo maximizado'
L['options_toggle_maximized_enlarged_desc'] = 'Cuando el mapa del mundo está maximizado, agranda todos los iconos.'
L['options_toggle_use_char_achieves'] = 'Mostrar logros de personaje'
L['options_toggle_use_char_achieves_desc'] = 'Muestra el progreso de logros para este personaje en lugar de para toda la cuenta.'
L['options_toggle_per_map_settings'] = 'Usar opciones específicas para cada zona'
L['options_toggle_per_map_settings_desc'] = 'Aplicar opciones, escalado y opacidad para cada zona individualmente.'
L['options_restore_hidden_nodes'] = 'Restaurar los nodos ocultos'
L['options_restore_hidden_nodes_desc'] = 'Vuelve a mostrar todos los nodos ocultos usando el menú contextual con click derecho.'

L['options_rewards_settings'] = 'Recompensas'
L['options_reward_types'] = 'Mostrar tipos de recompensas'
L['options_mount_rewards'] = 'Mostrar recompensas de monturas'
L['options_mount_rewards_desc'] = 'Muestra las recompensas de monturas en las notas y rastrea el estado de si ha sido aprendida.'
L['options_pet_rewards'] = 'Mostrar recompensas de mascotas'
L['options_pet_rewards_desc'] = 'Muestra las recompensas de mascotas en las notas y rastrea el estado de si ha sido aprendida.'
L['options_recipe_rewards'] = 'Mostrar recompensas de recetas'
L['options_recipe_rewards_desc'] = 'Muestra las recompensas de recetas en las notas y rastrea el estado de si ha sido aprendida.'
L['options_toy_rewards'] = 'Mostrar recompensas de juguetes'
L['options_toy_rewards_desc'] = 'Muestra las recompensas de juguetes en las notas y rastrea el estado de si ha sido aprendida.'
L['options_transmog_rewards'] = 'Mostrar recompensas de transfiguraciones'
L['options_transmog_rewards_desc'] = 'Muestra las recompensas de transfiguraciones en las notas y rastrea el estado de si ha sido aprendida.'
L['options_all_transmog_rewards'] = 'Mostrar las recompensas de transfiguraciones que no pueden conseguirse'
L['options_all_transmog_rewards_desc'] = 'Muestra las recompensas de transfiguraciones conseguibles por otras clases.'

L['options_icons_misc_desc'] = 'Muestra dónde están los nodos sin categoría.'
L['options_icons_misc'] = 'Miscelánea'
L['options_icons_pet_battles_desc'] = 'Muestra dónde están los entrenadores de mascotas y NPC.'
L['options_icons_pet_battles'] = 'Mascotas de combate'
L['options_icons_rares_desc'] = 'Muestra dónde están los NPC raros.'
L['options_icons_rares'] = 'Raros'
L['options_icons_treasures_desc'] = 'Muestra dónde están los tesoros ocultos.'
L['options_icons_treasures'] = 'Tesoros'
L['options_icons_vendors_desc'] = 'Muestra dónde están los vendedores.'
L['options_icons_vendors'] = 'Vendedores'

---------------------------------- FOCUS ---------------------------------

L['options_focus_settings'] = 'Lugares de Interés'
L['options_poi_color'] = 'Color de Lugares de Interés'
L['options_poi_color_desc'] = 'Establece el color para el punto de interés cuando un icono está en el foco.'
L['options_path_color'] = 'Color de Caminos'
L['options_path_color_desc'] = 'Establece el color para los caminos cuando un icono está en el foco.'
L['options_reset_poi_colors'] = 'Resetear colores'
L['options_reset_poi_colors_desc'] = 'Establece los colores de encima a sus valores por defecto.'

---------------------------------- TOOLTIP ---------------------------------

L['options_tooltip_settings'] = 'Tooltip'
L['options_toggle_show_loot'] = 'Mostrar el botín'
L['options_toggle_show_loot_desc'] = 'Muestra la información de botín al tooltip'
L['options_toggle_show_notes'] = 'Mostrar las Notas'
L['options_toggle_show_notes_desc'] = 'Agrega las notas útiles al tooltip cuando esté disponible'
L['options_toggle_use_standard_time'] = 'Usar Reloj de 12-Horas'
L['options_toggle_use_standard_time_desc'] = 'Usa el reloj de 12-horas (ej: 8:00 PM) en lugar del reloj de 24-horas (ej: 20:00) en las descripciones.'

--------------------------------- DEVELOPMENT ---------------------------------

L['options_dev_settings'] = 'Desarrollo'
L['options_toggle_show_debug_currency'] = 'Depurar las ID de las Monedas'
L['options_toggle_show_debug_currency_desc'] = 'Muestra información de depuración para cambios de moneda (requiere hacer reload)'
L['options_toggle_show_debug_map'] = 'Depurar las ID del Mapa'
L['options_toggle_show_debug_map_desc'] = 'Muestra información de depuración para los mapas'
L['options_toggle_show_debug_quest'] = 'Depurar IDs de las Misiones'
L['options_toggle_show_debug_quest_desc'] = 'Muestra información de depuración para los cambios de las misiones'
L['options_toggle_force_nodes'] = 'Forzar Nodos'
L['options_toggle_force_nodes_desc'] = 'Fuerza el mostrar todos los nodos'
