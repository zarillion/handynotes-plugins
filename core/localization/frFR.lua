local ADDON_NAME, _ = ...
local L = LibStub("AceLocale-3.0"):NewLocale(ADDON_NAME, "frFR", false, true)
if not L then return end

-------------------------------------------------------------------------------
------------------------------------ GEAR -------------------------------------
-------------------------------------------------------------------------------

L["cloth"] = "Tissu"
L["leather"] = "Cuir"
L["mail"] = "Mailles"
L["plate"] = "Plaques"

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
L["amulet"] = "Amulette"
L["cloak"] = "Cape"
L["trinket"] = "Bijou"

-------------------------------------------------------------------------------
---------------------------------- TOOLTIPS -----------------------------------
-------------------------------------------------------------------------------

L["retrieving"] = "Récupérer le lien de l'article..."
L["in_cave"] = "Dans une grotte."
L["in_small_cave"] = "Dans une petite grotte."
L["in_water_cave"] = "Dans une grotte sous-marine."
L["weekly"] = "Hebdomadaire"
L["normal"] = "Normal"
L["hard"] = "Difficile"
L["mount"] = "Monture"
L["pet"] = "Animal de Compagnie"
L["toy"] = "Jouet"
L["completed"] = "Complété"
L["incomplete"] = "Incomplet"
L["known"] = "Connu"
L["missing"] = "Inconnu"
L["unobtainable"] = "Introuvable"
L["unlearnable"] = "Non Apprenable"

-------------------------------------------------------------------------------
--------------------------------- CONTEXT MENU --------------------------------
-------------------------------------------------------------------------------

L["context_menu_add_tomtom"] = "Ajouter à TomTom"
L["context_menu_hide_node"] = "Cacher ce nœud"
L["context_menu_restore_hidden_nodes"] = "Restaurer tous les nœuds cachés"

-------------------------------------------------------------------------------
----------------------------------- OPTIONS -----------------------------------
-------------------------------------------------------------------------------

------------------------------------ ICONS ------------------------------------

L["options_icon_settings"] = "Paramètres des Icônes"
L["options_icons_treasures"] = "Icônes de Trésor"
L["options_icons_rares"] = "Icônes de Rares"
L["options_icons_caves"] = "Icônes de Grotte"
L["options_icons_pet_battles"] = "Icônes de Combat de Mascottes"
L["options_icons_other"] = "Les Autres Icônes"
L["options_scale"] = "Échelle"
L["options_scale_desc"] = "1 = 100%"
L["options_opacity"] = "Opacité"
L["options_opacity_desc"] = "0 = transparent, 1 = opaque"

---------------------------------- VISIBILITY ---------------------------------

L["options_visibility_settings"] = "Visibilité"
L["options_general_settings"] = "Général"
L["options_toggle_looted_rares"] = "Toujours afficher tous les rares."
L["options_toggle_looted_rares_desc"] = "Afficher chaque rare quel que soit du statut pillé"
L["options_toggle_looted_treasures"] = "Les Trésors Déjà Pillés"
L["options_toggle_looted_treasures_desc"] = "Afficher chaque trésor quel que soit du statut pillé"
L["options_toggle_hide_done_rare"] = "Cacher rare si tout le butin est connu"
L["options_toggle_hide_done_rare_desc"] = "Cacher toutes les rares pour qui tout le butin est connu."
L["options_toggle_hide_minimap"] = "Cacher toutes les icônes sur la minicarte"
L["options_toggle_hide_minimap_desc"] = "Cache toutes les icônes de cet addon sur la minicarte et les affiche uniquement sur la carte principale."

L["options_toggle_battle_pets_desc"] = "Afficher les emplacements des Dresseurs de Mascottes de Combat et des PNJ."
L["options_toggle_battle_pets"] = "Mascottes de Combat"
L["options_toggle_caves_desc"] = "Afficher les entrées des grottes pour les autres nœuds."
L["options_toggle_caves"] = "Les Grottes"
L["options_toggle_chests_desc"] = "Afficher les emplacements des coffres (pouvoir être pillé quotidiennement)."
L["options_toggle_chests"] = "Coffres"
L["options_toggle_misc"] = "Divers"
L["options_toggle_npcs"] = "Des PNJ"
L["options_toggle_rares_desc"] = "Afficher les emplacements des PNJ rares."
L["options_toggle_rares"] = "Les Monstres Rares"
L["options_toggle_supplies_desc"] = "Afficher tous les emplacements possibles pour les caisses de fournitures de guerre."
L["options_toggle_supplies"] = "Caisse de Fourniture de Guerre"
L["options_toggle_treasures"] = "Les trésors"

---------------------------------- TOOLTIP ---------------------------------

L["options_tooltip_settings"] = "Infobulle"
L["options_tooltip_settings_desc"] = "Infobulle"
L["options_toggle_show_loot"] = "Montrer le Butin"
L["options_toggle_show_loot_desc"] = "Ajouter l'information de butin à l'infobulle"
L["options_toggle_show_notes"] = "Montrer les Notes"
L["options_toggle_show_notes_desc"] = "Ajouter les notes utiles à l'infobulle le cas échéant"

--------------------------------- DEVELOPMENT ---------------------------------

L["options_dev_settings"] = "Développement"
L["options_dev_settings_desc"] = "Paramètres de développement"
L["options_toggle_show_debug_map"] = "Debug Map IDs"
L["options_toggle_show_debug_map_desc"] = "Show debug information for maps"
L["options_toggle_show_debug_quest"] = "Debug Quest IDs"
L["options_toggle_show_debug_quest_desc"] = "Show debug info for quest changes"
L["options_toggle_force_nodes"] = "Forcer les Nœuds"
L["options_toggle_force_nodes_desc"] = "Forcer l'affichage de tous les nœuds"
