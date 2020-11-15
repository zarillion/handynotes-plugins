local ADDON_NAME, ns = ...
local L = ns.NewLocale("deDE")
if not L then return end
--German translation by Dathwada EU-Eredar
-------------------------------------------------------------------------------
------------------------------------ GEAR -------------------------------------
-------------------------------------------------------------------------------

L["bag"] = "Tasche"
L["cloth"] = "Stoff"
L["leather"] = "Leder"
L["mail"] = "Kette"
L["plate"] = "Platte"
L["cosmetic"] = "Kosmetisch"

L["1h_mace"] = "Einhandstreikolben"
L["1h_sword"] = "Einhandschwert"
L["1h_axe"] = "Einhandaxt"
L["2h_mace"] = "Zweihandstreitkolben"
L["2h_axe"] = "Zweihandaxt"
L["2h_sword"] = "Zweihandschwert"
L["shield"] = "Schild"
L["dagger"] = "Dolch"
L["staff"] = "Stab"
L["fist"] = "Faustwaffe"
L["polearm"] = "Stangenwaffe"
L["bow"] = "Bogen"
L["gun"] = "Schusswaffe"
L["wand"] = "Zauberstab"
L["crossbow"] = "Armbrust"
L["offhand"] = "Nebenhand"
L["warglaive"] = "Kriegsgleve"

L["ring"] = "Finger"
L["neck"] = "Hals"
L["cloak"] = "Umhang"
L["trinket"] = "Schmuck"

-------------------------------------------------------------------------------
---------------------------------- TOOLTIPS -----------------------------------
-------------------------------------------------------------------------------

L["activation_unknown"] = "Aktivierung unbekannt!"
L["requirement_not_found"] = "Voraussetzungsort unbekannt!"

L["Requires"] = "Benötigt"
L["focus"] = "fokussieren"
L["retrieving"] = "Gegenstandslink wird abgerufen ..."
L["in_cave"] = "In einer Höhle."
L["in_small_cave"] = "In einer kleinen Höhle."
L["in_water_cave"] = "In einer Unterwasserhöhle."
L["in_waterfall_cave"] = "In einer Höhle hinter einem Wasserfall."
L["in_water"] = "Im Wasser."
L["hourly"] = "Stündlich"
L["daily"] = "Täglich"
L["weekly"] = "Wöchentlich"
L["normal"] = "Normal"
L["hard"] = "Schwer"
L["mount"] = "Reittier"
L["pet"] = "Haustier"
L["spell"] = "Fähigkeit"
L["toy"] = "Spielzeug"
L["completed"] = "Abgeschlossen"
L["incomplete"] = "Unvollständig"
L["known"] = "Bekannt"
L["missing"] = "Fehlt"
L["unobtainable"] = "Nicht erhältlich"
L["unlearnable"] = "Nicht erlernbar"
L["A"] = "L" -- available/alive
L["D"] = "T" -- dead/defeated
L["defeated"] = "Besiegt"
L["undefeated"] = "Unbesiegt"

-------------------------------------------------------------------------------
--------------------------------- CONTEXT MENU --------------------------------
-------------------------------------------------------------------------------

L["context_menu_set_waypoint"] = "Kartenmarkierung setzen"
L["context_menu_add_tomtom"] = "Zu TomTom hinzufügen"
L["context_menu_hide_node"] = "Verstecke diesen Punkt"
L["context_menu_restore_hidden_nodes"] = "Versteckte Punkte wiederherstellen"

L["map_button_text"] = "Passe die Symbolanzeige, die Transparenz und die Größe für diese Karte an."

-------------------------------------------------------------------------------
----------------------------------- OPTIONS -----------------------------------
-------------------------------------------------------------------------------

L["options_global"] = "Global"
L["options_zones"] = "Zonen"

L["options_general_description"] = "Einstellungen, die das Verhalten von Punkten und deren Belohnungen steuern."
L["options_global_description"] = "Einstellungen, die die Darstellung aller Punkte in allen Zonen steuern."
L["options_zones_description"] = "Einstellungen, die die Darstellung von Punkten in jeder einzelnen Zone steuern."

L["options_open_settings_panel"] = "Einstellungsmenü öffnen ..."
L["options_open_world_map"] = "Weltkarte öffnen"
L["options_open_world_map_desc"] = "Öffnet diese Zone auf der Weltkarte."

------------------------------------ ICONS ------------------------------------

L["options_icon_settings"] = "Symboleinstellungen"
L["options_scale"] = "Größe"
L["options_scale_desc"] = "1 = 100%"
L["options_opacity"] = "Transparenz"
L["options_opacity_desc"] = "0 = transparent, 1 = undurchsichtig"

---------------------------------- VISIBILITY ---------------------------------

L["options_visibility_settings"] = "Sichtbarkeit"
L["options_general_settings"] = "Allgemeines"
L["options_show_completed_nodes"] = "Zeige abgeschlossenes"
L["options_show_completed_nodes_desc"] = "Zeigt alle Punkte an, auch wenn diese heute bereits geplündert oder abgeschlossen wurden."
L["options_toggle_hide_done_rare"] = "Blende seltene Gegner aus deren Beute bekannt ist."
L["options_toggle_hide_done_rare_desc"] = "Blendet alle seltenen Gegner deren Beute bereits bekannt ist aus."
L["options_toggle_hide_minimap"] = "Blende alle Symbole auf der Minikarte aus"
L["options_toggle_hide_minimap_desc"] = "Blendet alle Symbole dieses Addons auf der Minikarte aus und zeigt sie nur auf der Hauptkarte an."
L["options_toggle_maximized_enlarged"] = "Symbole bei maximierter Weltkarte vergrößern"
L["options_toggle_maximized_enlarged_desc"] = "Wenn die Weltkarte maximiert ist, werden alle Symbole vergrößert."
L["options_toggle_use_char_achieves"] = "Verwende charakterspezifische Erfolge"
L["options_toggle_use_char_achieves_desc"] = "Zeigt den Erfolgsfortschritt von diesem Charakter, anstelle des gesamten Accounts an."
L["options_restore_hidden_nodes"] = "Versteckte Punkte wiederherstellen"
L["options_restore_hidden_nodes_desc"] = "Stellt alle Punkte wieder her, die über das Kontextmenü versteckt wurden."

L["options_icons_misc_desc"] = "Zeigt die Positionen von anderen nicht kategorisierten Punkten an."
L["options_icons_misc"] = "Sonstiges"
L["options_icons_pet_battles_desc"] = "Zeigt Standorte von Kampfhaustiertrainern und NPCs an."
L["options_icons_pet_battles"] = "Kampfhaustiere"
L["options_icons_rares_desc"] = "Zeigt die Positionen von seltenen Gegnern an."
L["options_icons_rares"] = "Seltene Gegner"
L["options_icons_treasures_desc"] = "Zeigt die Standorte versteckter Schätze an."
L["options_icons_treasures"] = "Schätze"

---------------------------------- FOCUS ---------------------------------

L["options_focus_settings"] = "Orte von Interesse"
L["options_poi_color"] = "Punktfarbe"
L["options_poi_color_desc"] = "Legt die Farbe für Punkte fest, wenn ein Symbol fokussiert ist."
L["options_path_color"] = "Wegfarbe"
L["options_path_color_desc"] = "Legt die Farbe des Weges fest, wenn ein Symbol fokussiert ist."
L["options_reset_poi_colors"] = "Farben zurücksetzen"
L["options_reset_poi_colors_desc"] = "Setzet die obigen Farben auf ihre Standardeinstellungen zurück."

---------------------------------- TOOLTIP ---------------------------------

L["options_tooltip_settings"] = "Tooltip"
L["options_tooltip_settings_desc"] = "Tooltip"
L["options_toggle_show_loot"] = "Zeige Beute"
L["options_toggle_show_loot_desc"] = "Zeigt Beuteinformationen im Tooltip an."
L["options_toggle_show_notes"] = "Zeige Notizen"
L["options_toggle_show_notes_desc"] = "Zeigt hilfreiche Notizen an sofern diese verfügbar sind."

--------------------------------- DEVELOPMENT ---------------------------------

L["options_dev_settings"] = "Entwicklung"
L["options_dev_settings_desc"] = "Entwicklungseinstellungen"
L["options_toggle_show_debug_map"] = "Debug Karten IDs"
L["options_toggle_show_debug_map_desc"] = "Zeigt debug informationen für Karten"
L["options_toggle_show_debug_quest"] = "Debug Quest IDs"
L["options_toggle_show_debug_quest_desc"] = "Zeigt debug informationen für Quest Änderungen"
L["options_toggle_force_nodes"] = "Erzwinge Punkte"
L["options_toggle_force_nodes_desc"] = "Anzeige aller Punkte erzwingen"