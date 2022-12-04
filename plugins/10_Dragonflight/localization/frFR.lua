-- French translation by Lightuky EU-Khaz Modan
local ADDON_NAME, ns = ...
local L = ns.NewLocale('frFR')
if not L then return end

-------------------------------------------------------------------------------
-------------------------------- DRAGON ISLES ---------------------------------
-------------------------------------------------------------------------------

L['gem_cluster_note'] = 'L\'objet requis peut être trouvé au Renom 21 avec l\'Expédition du Dracaret dans les Paquetages d\'éclaireurs de l\'expédition et les Poussières dérangées.'

L['options_icons_bonus_boss'] = 'Élites bonus'
L['options_icons_bonus_boss_desc'] = 'Afficher les emplacements des élites bonus.'

L['options_icons_profession_treasures'] = 'Trésors de métiers'
L['options_icons_profession_treasures_desc'] = 'Afficher les emplacements des trésors qui confèrent de la connaissance de métiers.'

L['dragon_glyph'] = 'Dracoglyphe'
L['options_icons_dragon_glyph'] = 'Dracoglyphes'
L['options_icons_dragon_glyph_desc'] = 'Afficher les emplacements des 48 dracoglyphes.'

L['dragonscale_expedition_flag'] = 'Drapeau de l\'Expédition du Dracaret'
L['flags_placed'] = 'drapeaux placés'
L['options_icons_flag'] = '{achievement:15890}'
L['options_icons_flag_desc'] = 'Afficher les emplacements des 20 drapeaux pour le haut-fait {achievement:15890}.'

L['options_icons_kite'] = '{achievement:16584}'
L['options_icons_kite_desc'] = 'Afficher les emplacements des {npc:198118s} pour le haut-fait {achievement:16584}.'

L['disturbed_dirt'] = 'Poussière dérangée'
L['options_icons_disturbed_dirt'] = 'Poussières dérangées'
L['options_icons_disturbed_dirt_desc'] = 'Afficher les emplacements des Poussières dérangées.'

L['scout_pack'] = 'Paquetage d\'éclaireur de l\'expédition'
L['options_icons_scout_pack'] = 'Paquetages d\'éclaireurs de l\'expédition'
L['options_icons_scout_pack_desc'] = 'Affichez les emplacements des Paquetages d\'éclaireurs de l\'expédition.'

L['dr_best'] = 'Votre meilleur temps :\n - Normal : %.3fs\n - Avancé : %.3fs'
L['dr_best_dash'] = 'Votre meilleur temps :\n - %.3fs'
L['dr_note'] = 'Temps imparti :\n - Normal : %ss / %ss\n - Avancé : %ss / %ss'
L['dr_note_dash'] = 'Temps imparti :\n - %ss / %ss'
L['dr_bronze'] = '\n\nTerminez la course pour obtenir ' .. ns.color.Bronze('Bronze') .. '.'
L['options_icons_dragonrace'] = 'Courses du Vol à dos de dragon'
L['options_icons_dragonrace_desc'] = 'Afficher les emplacements des Courses du Vol à dos de dragon.'

L['hnj_western_azure_span_hunt'] = nil
L['options_icons_hemet_nesingwary_jr'] = '{achievement:16542}'
L['options_icons_hemet_nesingwary_jr_desc'] = nil

-------------------------------------------------------------------------------
------------------------------- THE AZURE SPAN --------------------------------
-------------------------------------------------------------------------------

L['brackenhide_rare_note'] = 'L\'apparition de ce rare sera annoncée dans le chat si vous vous trouvez dans la zone du |cFFFFFD00Creux des Fougerobes|r.'
L['fisherman_tinnak_note'] = 'Récupérez la |cFFFFFD00Canne à pêche cassée|r, le |cFFFFFD00Filet de pêche déchiré|r et le |cFFFFFD00Vieux harpon|r pour faire apparaître le rare.'
L['spellwrought_snowman_note'] = 'Récupérez 10x {npc:193424} et amenez-les au {npc:193242}.'
L['trilvarus_loreweaver_note'] = 'Récupérez un |cFFFFFD00Fragment chantant|r pour obtenir {spell:382076} et utilisez le |cFFFFFD00Focalisateur déchargé|r pour faire apparaître le rare.'

L['breezebiter_note'] = 'Vole dans le ciel, pour le faire descendre, volez près de lui.'

L['forgotten_jewel_box_note'] = 'Récupérez la {item:199065} dans un Coffre clanique au Refuge d\'Ondecrête (49.4 67.3) dans les Plaines d\'Ohn\'ahra et utilisez-la.'
L['gnoll_fiend_flail_note'] = '{item:199066} peut être trouvé dans les Paquetages d\'éclaireurs de l\'expédition et les Poussières dérangées.'
L['pepper_hammer_note'] = 'Récupérez la |cFFFFFD00Sève|r et utilisez le |cFFFFFD00Bâton|r pour attirer le {npc:195373}.\n\n|cFFFF0000(BUG : Pour cliquer sur le bâton, un rechargement peut être nécessaire)|r'

L['pt_alch_experimental_decay_sample_note'] = 'A l\'intérieur d\'un grand chaudron vert.'
L['pt_alch_firewater_powder_sample_note'] = 'À l\'extérieur d\'une maison en rondins, près d\'un vase.'
L['pt_ench_enriched_earthen_shard_note'] = 'Sur un tas de pierres.'
L['pt_ench_faintly_enchanted_remains_note'] = 'Cliquez sur l\'|cFFFFFD00Amas de cristaux en manque de mana|r pour faire apparaître et tuer un mob. Ensuite, récupérez le cristal qui apparaît'
L['pt_ench_forgotten_arcane_tome_note'] = 'Posé sur le sol à droite de l\'entrée d\'une tombe.'
L['pt_jewel_crystalline_overgrowth_note'] = 'Près d\'un petit étang.'
L['pt_jewel_harmonic_crystal_harmonizer_note'] = 'Cliquez sur la clé au sol pour recevoir un buff puis cliquez sur les 3 cristaux proches. Une fois cela fait, le coffre sera déverrouillé.'
L['pt_leath_decay_infused_tanning_oil_note'] = 'Dans le tonneau.'
L['pt_leath_treated_hides_note'] = 'Au |cFFFFFD00Camp des Pelages-de-Neige|r.'
L['pt_leath_well_danced_drum_note'] = 'Dans un bâtiment souterrain avec {npc:186446} et {npc:186448}. Réparez le tambour à côté de {npc:194862}. Une fois qu\'il aura dansé dessus, vous pourrez récupérer l\'item.'
L['pt_script_dusty_darkmoon_card_note'] = 'A l\'intérieur d\'un bâtiment sur un niveau supérieur.'
L['pt_script_frosted_parchment_note'] = 'Derrière un {npc:190776}.'
L['pt_smith_spelltouched_tongs_note'] = 'A l\'intérieur d\'une petite grotte fermée.'
L['pt_tailor_decaying_brackenhide_blanket_note'] = 'Accroché à un arbre dans une tente de fortune.'
L['pt_tailor_intriguing_bolt_of_blue_cloth_note'] = 'Suivez les escaliers à gauche.'

L['leyline_note'] = 'Réalignez la ligne tellurique.'
L['options_icons_layline'] = '{achievement:16638}'
L['options_icons_layline_desc'] = 'Afficher les emplacements de toutes les lignes telluriques pour le haut-fait {achievement:16638}.'

L['seeing_blue_note'] = 'Volez du sommet des archives d’Azur jusqu’à l’assemblée de Cobalt sans atterrir.'
L['snowman_note'] = 'Il y a trois {npc:197599s} dans la zone (elles ont pu être déplacées par d\'autres joueurs), faites-les rouler vers les deux enfants {npc:197838} et {npc:197839}.\nVous obtenez le haut-fait lorsque les boules de neige ont la bonne taille.'

-------------------------------------------------------------------------------
------------------------------- FORBIDDEN REACH -------------------------------
-------------------------------------------------------------------------------

L['bag_of_enchanted_wind'] = 'Sac de vents enchantés'
L['bag_of_enchanted_wind_note'] = 'Situé en haut de la tour.'
L['hessethiash_treasure'] = 'Coffre au trésor mal caché d\'Hessethiash'
L['lost_draconic_hourglass'] = 'Sablier draconique perdu'
L['suspicious_bottle_treasure'] = 'Bouteille suspecte'
L['mysterious_wand'] = 'Baguette mystérieuse'
L['mysterious_wand_note'] = 'Ramassez la |cFFFFFD00Clé en cristal|r et placez-la dans le |cFFFFFD00Focalisateur en cristal|r.'

-------------------------------------------------------------------------------
------------------------------ OHN'AHRAN PLAINS -------------------------------
-------------------------------------------------------------------------------

L['shade_of_grief_note'] = 'Cliquez sur la {npc:193166} pour faire apparaître le rare.'

L['gold_swong_coin_note'] = 'Dans la grotte avec {npc:191608} à sa droite.'
L['nokhud_warspear_note'] = '{item:194540} peut être trouvé dans les Paquetages d\'éclaireurs de l\'expédition et les Poussières dérangées.'
L['slightly_chewed_duck_egg_note'] = 'Trouvez et caressez {npc:192997} pour obtenir une {item:195453} puis utilisez-la. l\'{item:199171} incube pendant 3 jours pour devenir {item:199172}.'
L['yennus_boat'] = 'Bateau jouet rohart'
L['yennus_boat_note'] = 'Récupérez le |cFFFFFD00Bateau jouet rohart|r pour obtenir {item:200876}, ce qui lance la quête {quest:72063} qui peut être rendue à {npc:195252}.'

L['pt_alch_canteen_of_suspicious_water_note'] = 'Au fond d\'une grotte, près d\'un {npc:194887} mort.'
L['pt_ench_stormbound_horn_note'] = 'A la |cFFFFFD00Cime Chant-du-Vent|r.'
L['pt_jewel_fragmented_key_note'] = 'Sous les racines d\'un arbre dans un bâtiment en ruine.'
L['pt_jewel_lofty_malygite_note'] = 'Flottant en l\'air dans une grotte.'
L['pt_leath_wind_blessed_hide_note'] = 'A l\'intérieur du camp de Centaures des |cFFFFFD00Hautes-terres Shikaars|r.'
L['pt_script_sign_language_reference_sheet_note'] = 'Accroché à l\'entrée de la tente.'
L['pt_smith_ancient_spear_shards_note'] = 'Dans une grotte à l\'ouest des |cFFFFFD00Confins de Rusza’thar|r.'
L['pt_smith_falconer_gauntlet_drawings_note'] = 'Sur une île en mer, à l\'intérieur d\'une hutte.'
L['pt_tailor_noteworthy_scrap_of_carpet_note'] = 'Posé dans une petite hutte.' .. ns.color.Orange('3 élites dans la hutte.')
L['pt_tailor_silky_surprise_note'] = 'Trouvez et ramassez une |cFFFFFD00Feuille d’herbe à chat|r.'

L['lizi_note'] = 'Terminez la suite de quêtes Une sortie d’initié en commençant par {quest:65901}. Accomplissez les quêtes chaque jour pour soigner Lizi et recevoir votre monture.\n\nEn plus des objets requis, toutes les quêtes demandent 150x {currency:2003} pour un total de 750x {currency:2003}.'
L['lizi_note_day1'] = 'Collectez 20x {item:192615} sur des monstres insectes dans les |cFFFFFD00Îles aux Dragons|r'
L['lizi_note_day2'] = 'Collectez 20x {item:192658} sur des monstres végétaux dans les |cFFFFFD00Îles aux Dragons|r'
L['lizi_note_day3'] = 'Collectez 10x {item:194966} pêchés dans n\'importe quelles eaux des |cFFFFFD00Îles aux Dragons|r. Ils sont trouvés le plus souvent à l\'intérieur des terres des |cFFFFFD00Plaines d\'Ohn\'ahra|r'
L['lizi_note_day4'] = 'Collectez 20x {item:192636} sur des mammouths dans les |cFFFFFD00Plaines d\'Ohn\'ahra|r'
L['lizi_note_day5'] = 'Achetez 1x {item:200598} à {npc:190015} dans une tente au sud de |cFFFFFD00Sources des Ohn\'irs|r'

L['ohnahra_note_start'] = 'Terminez la suite de quêtes Une sortie d’initié commençant par {quest:65901} puis {npc:190022} apparaîtra aux |cFFFFFD00Sources des Ohn\'irs|r derrière une hutte de Sage-du-vent.\n\nRassemblez les matériaux suivants :'
L['ohnahra_note_item1'] = 'Récupérez 3x {item:201929} sur {npc:186151}, le boss final du donjon |cFFFFFD00L\'offensive nokhud|r. Ce n\'est pas un drop garanti à 100%.'
L['ohnahra_note_item2'] = 'Achetez 1x {item:201323} à l\'{npc:196707} pour 50x {currency:2003} et 1x {item:194562}.\nLe {item:194562} peut être récupéré sur des monstres perdus dans le temps à |cFFFFFD00Thaldraszus|r.'
L['ohnahra_note_item3'] = 'Achetez 1x {item:191507} à l\'Hôtel des Ventes. (Les alchimistes peuvent acheter la {item:191588} à l\'{npc:196707} à partir du Renom 22)'
L['ohnahra_note_end'] = 'Une fois que vous avez tous les matériaux, revenez voir {npc:190022} et acceptez {quest:72512}. Allez voir {npc:194796} pour rendre la quête et recevoir votre monture.'

L['bakar_note'] = 'Caressez le chien !'
L['bakar_ellam_note'] = 'Si suffisamment de joueurs caressent cette chienne, elle vous mènera à son trésor.'
L['bakar_hugo_note'] = 'Voyage avec le campement Aylaag.'
L['options_icons_bakar'] = '{achievement:16424}'
L['options_icons_bakar_desc'] = 'Afficher l\'emplacement de tous les chiens (bakars) pour le haut-fait {achievement:16424}.'

L['ancestor_note'] = 'Obtenez le buff {spell:369277} (1 heure) dans une tente à l\'|cFFFFFD00Avant-poste de Pas-de-bois|r grâce à une |cFFFFFD00Essence de l’éveil|r pour voir l\'ancêtre et lui offrir l\'objet requis.'
L['options_icons_ancestor'] = '{achievement:16423}'
L['options_icons_ancestor_desc'] = 'Afficher les emplacements des ancêtres pour {achievement:16423}.'

L['dreamguard_note'] = 'Ciblez le Garde-rêve et ' .. ns.color.Orange('/dormir')
L['options_icons_dreamguard'] = '{achievement:16574}'
L['options_icons_dreamguard_desc'] = 'Afficher les emplacements des Gardes-rêves pour {achievement:16574}'

-------------------------------------------------------------------------------
--------------------------------- THALDRASZUS ---------------------------------
-------------------------------------------------------------------------------

L['blightpaw_note'] = 'Parlez à l\'{npc:193222} à proximité et acceptez de l\'aider.'
L['woofang_note'] = 'Caressez {npc:193156} pour faire apparaître le rare.'

L['acorn_harvester_note'] = 'Ramassez un |cFFFFFD00Gland|r sur le sol à proximité pour obtenir {spell:388485} et interagissez ensuite avec {npc:196172}.'
L['cracked_hourglass_note'] = '{item:199068} peut être trouvé dans les Paquetages d\'éclaireurs de l\'expédition et les Poussières dérangées.'
L['sandy_wooden_duck_note'] = 'Récupérez {item:199069} et utilisez-la.'

L['pt_alch_contraband_concoction_note'] = 'Caché dans les buissons. ' .. ns.color.Orange('Difficile à voir.')
L['pt_alch_furry_gloop_note'] = 'Jetez un {npc:194855} proche dans chaque chaudron puis tuez le monstre qui apparaît.'
L['pt_ench_fractured_titanic_sphere_note'] = 'Au sud du |cFFFFFD00Bastion de Tyr|r.'
L['pt_jewel_alexstraszite_cluster_note'] = 'Au |cFFFFFD00Bastion de Tyr|r.'
L['pt_jewel_painters_pretty_jewel_note'] = 'A l\'intérieur d\'une lanterne.'
L['pt_leath_decayed_scales_note'] = 'Dans un panier.'
L['pt_script_counterfeit_darkmoon_deck_note'] = 'Parlez à {npc:194856} et proposez-lui de l\'aider à remettre en place sa |cFFFFFD00Suite de Sombrelune|r éparpillée à ses pieds. Cliquez sur les cartes dans le bon ordre (de l\'As au 8) et parlez-lui ensuite pour récupérer le deck.'
L['pt_script_forgetful_apprentices_tome_note'] = 'Sur une table près d\'un grand télescope.'
L['pt_script_how_to_train_your_whelpling_note'] = 'Un petit livre marron posé dans le bac à sable.'
L['pt_smith_draconic_flux_note'] = 'A l\'intérieur d\'un bâtiment.'
L['pt_tailor_ancient_dragonweave_bolt_note'] = 'Cliquez sur le |cFFFFFD00Rouet tisse-dragon ancien|r pour effectuer un mini-jeu où vous devez relier les bobines de fil à la gemme centrale.'
L['pt_tailor_miniature_bronze_dragonflight_banner_note'] = 'Une petite bannière dans un tas de sable.'

-------------------------------------------------------------------------------
------------------------------ THE WAKING SHORE -------------------------------
-------------------------------------------------------------------------------

L['brundin_the_dragonbane_note'] = 'La Troupe Qalashi voyage sur leur {npc:192737} jusqu\'à cette tour.'
L['obsidian_citadel_rare_note'] = 'Vous et d\'autres joueurs devez rapporter un total de %dx {item:191264} %s. Pour fabriquer une clé, vous devez combiner 30x {item:191251} et 3x {item:193201}. Vous pouvez obtenir ces objets sur les monstres de la Citadelle d\'obsidienne.' -- pls review
L['shasith_note'] = 'À l\'intérieur du |cFFFFFD00Trône d\'obsidienne|r.'
L['worldcarver_atir_note'] = 'Récupérez 3x {item:191211} sur les {npc:187366} à proximité et placez-les sur les {npc:197395} pour faire apparaître le rare.'

L['bubble_drifter_note'] = '{item:199061} peut être trouvé dans les Paquetages d\'éclaireurs de l\'expédition et les Poussières dérangées.'
L['dead_mans_chestplate_note'] = 'A l\'intérieur de la tour, au niveau intermédiaire.'
L['golden_dragon_goblet_note'] = 'Récupérez un {item:202081} sur les {npc:190056} sur la |cFFFFFD00Côte Sauvage|r et terminez la petite suite de quêtes.'
L['misty_treasure_chest_note'] = 'Montez sur la {npc:185485} qui dépasse de la cascade pour entrer dans la grotte.'
L['onyx_gem_cluster_note'] = 'Au Renom 21 avec l\'Expédition du Dracaret, vous pouvez compléter la quête {quest:70833} pour obtenir {item:200738} comme récompense (une fois par compte) ou alors acheter la carte à {npc:189065} pour 3 {item:192863} et 500 {currency:2003} et l\'utiliser.'

L['fullsails_supply_chest'] = 'Clé de coffre de fournitures des Gréements'
L['hidden_hornswog_hoard'] = 'Horde de bufflaciens cachée'
L['hidden_hornswog_hoard_note'] = 'Collectez {item:200064}, {item:200065} et {item:200066}, combinez-les à |cFFFFFD00"l\'Énigmes sagaces : un guide de poche"|r près du trésor puis nourrissez la grenouille.'

L['pt_alch_frostforged_potion_note'] = 'Au milieu du cratère gelé.'
L['pt_alch_well_insulated_mug_note'] = 'Dans le |cFFFFFD00Donjon du Fléau-des-Dragons|r entre un groupe de monstres élites.'
L['pt_ench_enchanted_debris_note'] = 'Utilisez et suivez le {npc:194872} pour récupérer les débris à la fin.'
L['pt_ench_flashfrozen_scroll_note'] = 'À l\'intérieur du réseau de grottes de l\'|cFFFFFD00Enclave de Givréclair|r.'
L['pt_ench_lava_infused_seed_note'] = 'Dans une fleur au |cFFFFFD00Donjon Craquécaille|r.'
L['pt_engi_boomthyr_rocket_note'] = 'Rassemblez les objets listés dans les |cFFFFFD00Notes sur la roquette boumthyr|r :\n\n{item:198815}\n{item:198817}\n{item:198816}\n{item:198814}\n\nUne fois rassemblés, ramenez-les à la fusée pour recevoir le trésor.'
L['pt_engi_intact_coil_capacitor_note'] = 'Interagissez avec les trois |cFFFFFD00Fils exposés|r pour réparer et récupérer la |cFFFFFD00Bobine de Tesla en surcharge|r.'
L['pt_jewel_closely_guarded_shiny_note'] = 'Une gemme bleue sous un arbre à côté d\'un nid.'
L['pt_jewel_igneous_gem_note'] = 'Cliquez rapidement sur les 3 cristaux sur les petites îles au sein du magma.'
L['pt_leath_poachers_pack_note'] = 'À côté d\'un Vulpérin mort, près du lit de la rivière.'
L['pt_leath_spare_djaradin_tools_note'] = 'A côté du dragon rouge mort.'
L['pt_script_pulsing_earth_rune_note'] = 'Derrière une table à l\'intérieur du bâtiment en ruine.'
L['pt_smith_ancient_monument_note'] = 'Battez les 4 {npc:188648} entourant une épée sur un piédestal.'
L['pt_smith_curious_ingots_note'] = 'Un petit lingot sur le sol dans le |cFFFFFD00Donjon Craquécaille|r.'
L['pt_smith_glimmer_of_blacksmithing_wisdom_note'] = 'Fabriquez un {item:189541} près de la |cFFFFFD00Forge terne|r et l\'item dans le |cFFFFFD00Bac à eau|r deviendra récupérable.'
L['pt_smith_molten_ingot_note'] = 'Envoyez 3 lingots dans la lave pour faire apparaître un monstre. Récupérez le coffre après que le monstre soit vaincu.'
L['pt_smith_qalashi_weapon_diagram_note'] = 'Au sommet d\'une enclume.'
L['pt_tailor_itinerant_singed_fabric_note'] = 'Un morceau de tissu accroché à un arbre juste à l\'extérieur de la grotte où le boss final apparaît.' .. ns.color.Orange('Nécessite de la précision avec le Vol à dos de Dragon ou bien un portail de démoniste.')
L['pt_tailor_mysterious_banner_note'] = 'Flottant sur le toit des bâtiments.'

L['quack_week_1'] = 'Semaine 1'
L['quack_week_2'] = 'Semaine 2'
L['quack_week_3'] = 'Semaine 3'
L['quack_week_4'] = 'Semaine 4'
L['quack_week_5'] = 'Semaine 5'
L['lets_get_quacking'] = 'Vous ne pouvez sauver qu\'un seul {npc:187863} par semaine.'
