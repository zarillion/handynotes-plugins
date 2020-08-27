local ADDON_NAME, _ = ...
local L = LibStub("AceLocale-3.0"):NewLocale(ADDON_NAME, "esMX", false, true)
if not L then return end

-------------------------------------------------------------------------------
------------------------------------ GEAR -------------------------------------
-------------------------------------------------------------------------------

L["cloth"] = "Tela"
L["leather"] = "Cuero"
L["mail"] = "Malla"
L["plate"] = "Placas"

L["1h_mace"] = "1m Maza"
L["1h_sword"] = "1m Espada"
L["1h_axe"] = "1m Hacha"
L["2h_mace"] = "2m Maza"
L["2h_axe"] = "2m Hacha"
L["2h_sword"] = "2m Espada"
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
L["warglaives"] = "Glaive"

L["ring"] = "Anillo"
L["amulet"] = "Amuleto"
L["cloak"] = "Capa"
L["trinket"] = "Abalorio"

-------------------------------------------------------------------------------
---------------------------------- TOOLTIPS -----------------------------------
-------------------------------------------------------------------------------

L["retrieving"] = "Recuperando el enlace del elemento ..."
L["in_cave"] = "En una cueva."
L["in_small_cave"] = "En una cueva pequeña."
L["in_water_cave"] = "En una cueva submarina."
L["in_water"] = "Bajo el agua."
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

-------------------------------------------------------------------------------
--------------------------------- CONTEXT MENU --------------------------------
-------------------------------------------------------------------------------

L["context_menu_add_tomtom"] = "Agregar a TomTom"
L["context_menu_hide_node"] = "Ocultar este nodo"
L["context_menu_restore_hidden_nodes"] = "Restaurar todos los nodos ocultos"

-------------------------------------------------------------------------------
----------------------------------- OPTIONS -----------------------------------
-------------------------------------------------------------------------------

------------------------------------ ICONS ------------------------------------

L["options_icon_settings"] = "Configuración de Íconos"
L["options_icons_treasures"] = "Íconos de Tesoro"
L["options_icons_rares"] = "Íconos de los Monstruos Raros"
L["options_icons_caves"] = "Íconos de Cueva"
L["options_icons_pet_battles"] = "Íconos de duelo de mascotas"
L["options_icons_other"] = "Otros Íconos"
L["options_scale"] = "Escala"
L["options_scale_desc"] = "1 = 100%"
L["options_opacity"] = "Opacidad"
L["options_opacity_desc"] = "0 = transparencia, 1 = opaco"

---------------------------------- VISIBILITY ---------------------------------

L["options_visibility_settings"] = "Visibilidad"
L["options_general_settings"] = "General"
L["options_toggle_looted_rares"] = "Siempre mostrar todos los monstruos raros"
L["options_toggle_looted_rares_desc"] = "Mostrar cada raro independientemente del estado saqueado"
L["options_toggle_looted_treasures"] = "Tesoros ya saqueados"
L["options_toggle_looted_treasures_desc"] = "Mostrar todos los tesoros independientemente del estado saqueado"
L["options_toggle_hide_done_rare"] = "Ocultar el raro si todo el botín se conoce"
L["options_toggle_hide_done_rare_desc"] = "Ocultar todos los raros de botín conocido."
L["options_toggle_hide_minimap"] = "Ocultar todos los íconos sobre el minimapa"
L["options_toggle_hide_minimap_desc"] = "Oculta todos íconos de este addon sobre el minimapa y los mostra solamente sobre el mapa principal."

L["options_toggle_battle_pets_desc"] = "Mostrar los lugares de instructores de mascotas y PNJs."
L["options_toggle_battle_pets"] = "Mascotas de duelo"
L["options_toggle_caves_desc"] = "Mostrar entradas de cuevas para otros nodos."
L["options_toggle_caves"] = "Cuevas"
L["options_toggle_chests_desc"] = "Mostrar el lugar de los cofres (se puede ser saqueable diariamente)."
L["options_toggle_chests"] = "Cofres"
L["options_toggle_misc"] = "Miscelánea"
L["options_toggle_npcs"] = "NPCs"
L["options_toggle_rares_desc"] = "Mostrar los lugares de los NPCs raros."
L["options_toggle_rares"] = "Raros"
L["options_toggle_supplies_desc"] = "Mostrar todos lugares posibles para los cajones de suministros de guerra."
L["options_toggle_supplies"] = "Suministros de guerra lugares"
L["options_toggle_treasures"] = "Tesoros"

---------------------------------- TOOLTIP ---------------------------------

L["options_tooltip_settings"] = "Tooltip"
L["options_tooltip_settings_desc"] = "Tooltip"
L["options_toggle_show_loot"] = "Mostrar el botín"
L["options_toggle_show_loot_desc"] = "Agregar la información de botín al toolip"
L["options_toggle_show_notes"] = "Mostrar las Notas"
L["options_toggle_show_notes_desc"] = "Agregar las notas útiles al tooltip cuando esté disponible"

--------------------------------- DEVELOPMENT ---------------------------------

L["options_dev_settings"] = "Desarrollo"
L["options_dev_settings_desc"] = "Opciones de Desarrollo"
L["options_toggle_show_debug_map"] = "Debug IDs del Mapa"
L["options_toggle_show_debug_map_desc"] = "Muestra información de debug para los mapas"
L["options_toggle_show_debug_quest"] = "Debug IDs de las Misiones"
L["options_toggle_show_debug_quest_desc"] = "Muestra información de debug para los cambios de las misiones"
L["options_toggle_force_nodes"] = "Forzar Nodos"
L["options_toggle_force_nodes_desc"] = "Forzar el mostrar todos los nodos"
