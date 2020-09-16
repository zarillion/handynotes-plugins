--Spanish Localization by (EU) Krovikan-Minahonda

local ADDON_NAME, _ = ...
local L = LibStub("AceLocale-3.0"):NewLocale(ADDON_NAME, "esES", false, true)
if not L then return end

-------------------------------------------------------------------------------
------------------------------------ GEAR -------------------------------------
-------------------------------------------------------------------------------

L["cloth"] = "Tela"
L["leather"] = "Cuero"
L["mail"] = "Malla"
L["plate"] = "Placas"
L["cosmetic"] = "Cosmético"

L["1h_mace"] = "Maza"
L["1h_sword"] = "Espada"
L["1h_axe"] = "Hacha"
L["2h_mace"] = "Maza 2m"
L["2h_axe"] = "Hacha 2m"
L["2h_sword"] = "Espada 2m"
L["shield"] = "Escudo"
L["dagger"] = "Daga"
L["staff"] = "Bastón"
L["fist"] = "Puño"
L["polearm"] = "Arma de asta"
L["bow"] = "Arco"
L["gun"] = "Arma de fuego"
L["wand"] = "Varita"
L["crossbow"] = "Ballesta"
L["offhand"] = "Mano Izquierda"
L["warglaives"] = "Guja de guerra"

L["ring"] = "Anillo"
L["amulet"] = "Amuleto"
L["cloak"] = "Capa"
L["trinket"] = "Abalorio"

-------------------------------------------------------------------------------
---------------------------------- TOOLTIPS -----------------------------------
-------------------------------------------------------------------------------

L["activation_unknown"] = "¡Activación desconocida!"
L["requirement_not_found"] = "¡Requerimiento de localización desconocido!"

L["Requires"] = "Requiere"
L["focus"] = "Foco"
L["retrieving"] = "Recuperando el enlace del elemento ..."
L["in_cave"] = "En una cueva."
L["in_small_cave"] = "En una cueva pequeña."
L["in_water_cave"] = "En una cueva submarina."
L["in_water"] = "Bajo el agua."
L["daily"] = "Diaria"
L["weekly"] = "Semanal"
L["normal"] = "Normal"
L["hard"] = "Difícil"
L["mount"] = "Montura"
L["pet"] = "Mascota"
L["toy"] = "Juguete"
L["completed"] = "Terminado"
L["incomplete"] = "Incompleto"
L["known"] = "Conocido"
L["missing"] = "Desconocido"
L["unobtainable"] = "No se puede obtener"
L["unlearnable"] = "No se puede aprender"
L["A"] = "V" -- available/alive
L["D"] = "M" -- defeated/dead
L["defeated"] = "Derrotado"
L["undefeated"] = "Sin derrotar"

-------------------------------------------------------------------------------
--------------------------------- CONTEXT MENU --------------------------------
-------------------------------------------------------------------------------

L["context_menu_set_waypoint"] = "Añadir al mapa punto de ruta"
L["context_menu_add_tomtom"] = "Agregar a TomTom"
L["context_menu_hide_node"] = "Ocultar este nodo"
L["context_menu_restore_hidden_nodes"] = "Restaurar todos los nodos ocultos"

L["map_button_text"] = "Ajustar visibilidad del icono, transparencia y escalado para este mapa."

-------------------------------------------------------------------------------
----------------------------------- OPTIONS -----------------------------------
-------------------------------------------------------------------------------

L["options_global"] = "Global"
L["options_zones"] = "Zonas"

L["options_general_description"] = "Ajustes que controlan el comportamiento de los nodos y sus recompensas."
L["options_global_description"] = "Ajustes que controlan la visualización de todos los nodos en todas las zonas."
L["options_zones_description"] = "Ajustes que controlan la visualización de nodos en cada zona individual."

------------------------------------ ICONS ------------------------------------

L["options_icon_settings"] = "Configuración de Iconos"
L["options_scale"] = "Escalar"
L["options_scale_desc"] = "1 = 100%"
L["options_opacity"] = "Opacidad"
L["options_opacity_desc"] = "0 = transparente, 1 = opaco"

---------------------------------- VISIBILITY ---------------------------------

L["options_visibility_settings"] = "Visibilidad"
L["options_general_settings"] = "General"
L["options_show_completed_nodes"] = "Mostrar completados"
L["options_show_completed_nodes_desc"] = "Muestra todos los nodos incluso si ya han sido despojados o completados hoy."
L["options_toggle_hide_done_rare"] = "Ocultar los raros, si se conoce todo el botín"
L["options_toggle_hide_done_rare_desc"] = "Oculta todos los raros a los que se les conozca el botín."
L["options_toggle_hide_minimap"] = "Ocultar todos los iconos sobre el minimapa"
L["options_toggle_hide_minimap_desc"] = "Oculta todos los iconos de este addon sobre el minimapa y mostrarlos solamente sobre el mapa principal."
L["options_restore_hidden_nodes"] = "Restaurar los nodos ocultos"
L["options_restore_hidden_nodes_desc"] = "Vuelve a mostrar todos los nodos ocultos usando el menú contextual con click-derecho."

L["options_icons_pet_battles_desc"] = "Muestra las localizaciones de los entrenadores de mascotas y NPCs."
L["options_icons_pet_battles"] = "Mascotas de combate"
L["options_icons_caves_desc"] = "Muestra las entradas de cuevas para otros nodos."
L["options_icons_caves"] = "Cuevas"
L["options_icons_daily_chests_desc"] = "Muestra la localización de los cofres (despojables diariamente)."
L["options_icons_daily_chests"] = "Cofres"
L["options_icons_daily_quests_desc"] = "Muestra las localizaciones de las misiones diarias no reflejadas en el mapa."
L["options_icons_daily_quests"] = "Misiones Diarias"
L["options_icons_misc"] = "Miscelánea"
L["options_icons_npcs"] = "NPCs"
L["options_icons_other_desc"] = "Muestra las localizaciones de otros nodos sin categoría."
L["options_icons_other"] = "Otros Iconos"
L["options_icons_quests_desc"] = "Muestra las localizaciones de las líneas de misiones no reflejadas en el mapa."
L["options_icons_quests"] = "Misiones"
L["options_icons_rares_desc"] = "Muestra las localizaciones de los NPCs raros."
L["options_icons_rares"] = "Raros"
L["options_icons_supplies_desc"] = "Muestra todas las localizaciones posibles para los cajones de suministros de guerra."
L["options_icons_supplies"] = "Localizaciones de suministros de guerra"
L["options_icons_treasures"] = "Tesoros"
L["options_icons_treasures_desc"] = "Muestra las localizaciones de los tesoros ocultos."

---------------------------------- TOOLTIP ---------------------------------

L["options_tooltip_settings"] = "Tooltip"
L["options_tooltip_settings_desc"] = "Tooltip"
L["options_toggle_show_loot"] = "Mostrar el botín"
L["options_toggle_show_loot_desc"] = "Muestra la información de botín al tooltip"
L["options_toggle_show_notes"] = "Mostrar las Notas"
L["options_toggle_show_notes_desc"] = "Agrega las notas útiles al tooltip cuando esté disponible"

--------------------------------- DEVELOPMENT ---------------------------------

L["options_dev_settings"] = "Desarrollo"
L["options_dev_settings_desc"] = "Opciones de Desarrollo"
L["options_toggle_show_debug_map"] = "Depurar IDs del Mapa"
L["options_toggle_show_debug_map_desc"] = "Muestra información de depuración para los mapas"
L["options_toggle_show_debug_quest"] = "Depurar IDs de las Misiones"
L["options_toggle_show_debug_quest_desc"] = "Muestra información de debug para los cambios de las misiones"
L["options_toggle_force_nodes"] = "Forzar Nodos"
L["options_toggle_force_nodes_desc"] = "Fuerza el mostrar todos los nodos"
