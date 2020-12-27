local ADDON_NAME, ns = ...
local L = ns.NewLocale("frFR")
if not L then return end

-------------------------------------------------------------------------------
------------------------------------ GEAR -------------------------------------
-------------------------------------------------------------------------------

L["bag"] = "Sac"
L["cloth"] = "Tissu"
L["leather"] = "Cuir"
L["mail"] = "Mailles"
L["plate"] = "Plaques"
L["cosmetic"] = "Cosmétique"

L["1h_mace"] = "1m Masse"
L["1h_sword"] = "1m Epée"
L["1h_axe"] = "1m Hache"
L["2h_mace"] = "2m Masse"
L["2h_axe"] = "2m Hache"
L["2h_sword"] = "2m Epée"
L["shield"] = "Bouclier"
L["dagger"] = "Dague"
L["staff"] = "Bâton"
L["fist"] = "Poing"
L["polearm"] = "Armes d'hast"
L["bow"] = "Arc"
L["gun"] = "Arme à feu"
L["wand"] = "Baguette"
L["crossbow"] = "Arbalète"
L["offhand"] = "Main Gauche"
L["warglaive"] = "Glaive"

L["ring"] = "Anneau"
L["neck"] = "Amulette"
L["cloak"] = "Cape"
L["trinket"] = "Bijou"

-------------------------------------------------------------------------------
---------------------------------- TOOLTIPS -----------------------------------
-------------------------------------------------------------------------------

L["activation_unknown"] = "Activation inconnue"
L["requirement_not_found"] = "Emplacement requis inconnu"

L["Requires"] = "Requiert"
L["focus"] = "Focus"
L["retrieving"] = "Récupérer le lien de l'article..."
L["in_cave"] = "Dans une grotte."
L["in_small_cave"] = "Dans une petite grotte."
L["in_water_cave"] = "Dans une grotte sous-marine."
L["in_waterfall_cave"] = "Dans une grotte derrière une cascade."
L["in_water"] = "Dans l'eau."
L["hourly"] = "Une fois par heure" -- Need review
L["daily"] =  "Quotidiennement"
L["weekly"] = "Hebdomadaire"
L["normal"] = "Normal"
L["hard"] = "Difficile"
L["mount"] = "Monture"
L["pet"] = "Animal de Compagnie"
L["spell"] = "Sort"
L["toy"] = "Jouet"
L["rep"] = nil
L["completed"] = "Complété"
L["incomplete"] = "Incomplet"
L["known"] = "Connu"
L["missing"] = "Inconnu"
L["unobtainable"] = "Introuvable"
L["unlearnable"] = "Non Apprenable"
L["defeated"] = "Vaincu"
L["undefeated"] = "Invaincu"

-------------------------------------------------------------------------------
--------------------------------- CONTEXT MENU --------------------------------
-------------------------------------------------------------------------------

L["context_menu_set_waypoint"] = "Définir les points de passage" -- Need review
L["context_menu_add_tomtom"] = "Ajouter à TomTom"
L["context_menu_hide_node"] = "Cacher ce nœud"
L["context_menu_restore_hidden_nodes"] = "Restaurer tous les nœuds cachés"

L["map_button_text"] = "Ajustez l'affichage des icônes, l'alpha et la mise à l'échelle de cette carte."

-------------------------------------------------------------------------------
----------------------------------- OPTIONS -----------------------------------
-------------------------------------------------------------------------------

L["options_global"] = "Global" --Need review
L["options_zones"] = "Zones"

L["options_general_description"] = "Pramètres qui contrôlent le comportement des nœuds et leurs récompenses."
L["options_global_description"] = "Paramètres qui contrôlent l'affichage de tous les nœuds dans toutes les zones."
L["options_zones_description"] = "Paramètres qui contrôlent l'affichage des nœuds dans chaque zone individuelle."

L["options_open_settings_panel"] = "Ouvrir le panneau de configuration"
L["options_open_world_map"] = "Ouvrir la carte du monde"
L["options_open_world_map_desc"] = "Ouvrir cette zone dans la carte du monde" --Need review

------------------------------------ ICONS ------------------------------------

L["options_icon_settings"] = "Paramètres des Icônes"
L["options_scale"] = "Échelle"
L["options_scale_desc"] = "1 = 100%"
L["options_opacity"] = "Opacité"
L["options_opacity_desc"] = "0 = transparent, 1 = opaque"

---------------------------------- VISIBILITY ---------------------------------

L["options_show_worldmap_button"] = nil
L["options_show_worldmap_button_desc"] = nil

L["options_visibility_settings"] = "Visibilité"
L["options_general_settings"] = "Général"
L["options_show_completed_nodes"] = "Afficher les noeuds complétés"
L["options_show_completed_nodes_desc"] = "Afficher tous les nœuds même s'ils ont déjà été looté ou terminés aujourd'hui."
L["options_toggle_hide_done_rare"] = "Cacher rare si tout le butin est connu"
L["options_toggle_hide_done_rare_desc"] = "Cacher toutes les rares pour qui tout le butin est connu."
L["options_toggle_hide_minimap"] = "Cacher toutes les icônes sur la minicarte"
L["options_toggle_hide_minimap_desc"] = "Cache toutes les icônes de cet addon sur la minicarte et les affiche uniquement sur la carte principale."
L["options_toggle_maximized_enlarged"] = "Augmenter la taille des icones sur la carte du monde plein écran"
L["options_toggle_maximized_enlarged_desc"] = "Quand la carte du monde est en plein écran, augmente la taille des icones"
L["options_toggle_use_char_achieves"] = "Utilisez les hauts faits du joueur"
L["options_toggle_use_char_achieves_desc"] = "Afficher la progression du haut fait de ce joueur plutôt que du compte complet"
L["options_toggle_per_map_settings"] = nil
L["options_toggle_per_map_settings_desc"] = nil
L["options_restore_hidden_nodes"] = "Restaurer les nœuds cachés"
L["options_restore_hidden_nodes_desc"] = "Restaure tous les nœuds cachés en utilisant le clic droit du menu contextuel" -- Need review

L["options_rewards_settings"] = nil
L["options_reward_types"] = nil
L["options_mount_rewards"] = nil
L["options_mount_rewards_desc"] = nil
L["options_pet_rewards"] = nil
L["options_pet_rewards_desc"] = nil
L["options_toy_rewards"] = nil
L["options_toy_rewards_desc"] = nil
L["options_transmog_rewards"] = nil
L["options_transmog_rewards_desc"] = nil

L["options_icons_misc_desc"] = "Afficher les emplacements des nœuds divers"
L["options_icons_misc"] = "Divers"
L["options_icons_pet_battles_desc"] = "Afficher les emplacements des Dresseurs de Mascottes de Combat et des PNJ."
L["options_icons_pet_battles"] = "Mascottes de Combat"
L["options_icons_rares_desc"] = "Afficher les emplacements des PNJ rares."
L["options_icons_rares"] = "Rares"
L["options_icons_treasures_desc"] = "Afficher les emplacements des trésors cachés"
L["options_icons_treasures"] = "Trésors"

------------------------------------ FOCUS ------------------------------------

L["options_focus_settings"] = "Point d'intéret"
L["options_poi_color"] = "Couleur POI"
L["options_poi_color_desc"] = "Définit une couleur pour les points d'intérêts quand une icône est ciblée"
L["options_path_color"] = "Couleur du chemin" -- Need review
L["options_path_color_desc"] = "Définit une couleur pour les chemin quand une icône est ciblée"
L["options_reset_poi_colors"] = "Réinitialiser les couleurs"
L["options_reset_poi_colors_desc"] = "Réinitialise les couleurs ci-dessus par celles par défaut"

---------------------------------- TOOLTIP ---------------------------------

L["options_tooltip_settings"] = "Infobulle"
L["options_toggle_show_loot"] = "Montrer le Butin"
L["options_toggle_show_loot_desc"] = "Ajouter l'information de butin à l'infobulle"
L["options_toggle_show_notes"] = "Montrer les Notes"
L["options_toggle_show_notes_desc"] = "Ajouter les notes utiles à l'infobulle le cas échéant"

--------------------------------- DEVELOPMENT ---------------------------------

L["options_dev_settings"] = "Développement"
L["options_toggle_show_debug_map"] = "Debug ID Carte" --Need review
L["options_toggle_show_debug_map_desc"] = "Afficher les informations de déboguage pour les cartes"
L["options_toggle_show_debug_quest"] = "Debug ID Quête"
L["options_toggle_show_debug_quest_desc"] = "Afficher les informations de déboguage pour les quêtes"
L["options_toggle_force_nodes"] = "Forcer les Nœuds"
L["options_toggle_force_nodes_desc"] = "Forcer l'affichage de tous les nœuds"
