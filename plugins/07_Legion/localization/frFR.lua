-- French translation by Lightuky EU-Khaz Modan
local ADDON_NAME, ns = ...
local L = ns.NewLocale('frFR')
if not L then return end

local Gold = ns.color.Gold

-------------------------------------------------------------------------------
------------------------------- ANTORAN WASTES --------------------------------
-------------------------------------------------------------------------------

L['commander_texlaz_note'] = 'Ne nécessite plus que l\'expédition {quest:48831} soit active. Prenez le portail vert.'
L['doomcaster_suprax_note'] = 'Ne nécessite plus trois joueurs. Marchez simplement sur une rune pour invoquer {npc:127703}.'
L['mother_rosula_note'] = 'Collectez 100 {item:152999} sur les {npc:126073} et combinez-les pour obtenir un {item:153013}. Utilisez l\'objet {item:153013} sur sa mare gangrenée'
L['reziera_the_seer_note'] = 'Pendant que vous êtes buffé par {spell:254174}, collectez 500 {item:153021} pour acheter {item:153226} à {npc:128134}. Utilisez le {item:153226} pour être envoyé, vous (et votre groupe) vers {npc:127706}.'
L['squadron_commander_vishax_note'] = 'Récupérez {item:152890} sur {npc:127598}.\n\nRécupérez {item:152941}, {item:152940}, et {item:152891} sur {npc:127597} et {npc:127596}.\n\nUtilisez {item:152890} pour obtenir {quest:49007}.\n\n{note:Cette quête peut être partagée}'
L['ven_orn_note'] = 'Entrez dans la grotte aux araignées, prenez à droite, et descendez dans une autre petite grotte. Elle est dans cette 2ème chambre au fond.'

L['the_many_faced_devourer_note'] = 'Récupérez {item:152786} sur les {npc:126193} et {npc:126171} dans le {location:Cimetière des Charognards}.\n\nCollectez {item:152991}, {item:152992}, et {item:152993}.\n\nInvoquez {npc:127581} à l\'{npc:127442}.\n\n{note:Si vous ne voyez pas l\'{npc:127442}, vous devrez peut-être vous reconnecter.}'
L['the_many_faced_devourer_checklist'] = Gold('Check-list des objets (dans les sacs ou la banque) :')

L['orix_the_all_seer_note'] = 'Vend des objets de collection en échange d\'{item:153021}.'

L['legion_war_supplies'] = 'Fournitures de guerre de la Légion'
L['legion_war_supplies_note'] = 'Il existe 9 fournitures de guerre de la légion distinctes qui peuvent chacune apparaître à des endroits précis.'

L['options_icons_legion_war_supplies'] = 'Fournitures de guerre de la Légion'
L['options_icons_legion_war_supplies_desc'] = 'Afficher les emplacements possibles pour les fournitures de guerre de la légion (coffres journaliers).'

-------------------------------------------------------------------------------
------------------------------------ ARGUS ------------------------------------
-------------------------------------------------------------------------------

L['drops_fel_spotted_egg'] = 'Lâche {item:153190}'
L['fel_spotted_egg_contains'] = '{item:153190} peut contenir'

L['goblin_glider_treasure_note'] = 'Utilisez {item:109076} pour planer jusqu\'au trésor.'
L['lightforged_warframe_treasure_note'] = 'Activez l\'{item:152098} au {npc:121365} à bord du {npc:126426}.\n\nUtilisez l\'{item:152098} et {spell:250434} pour faire fondre les pierres et trouver le trésor.'
L['lights_judgement_treasure_note'] = 'Activez {item:151830} au {npc:121365} à bord du {npc:126426}.\n\nUtilisez {item:151830} pour faire exploser les rochers et trouver le trésor.'
L['shroud_of_arcane_echoes_treasures_note'] = 'Activez {item:151912} au {npc:121365} à bord du {npc:126426}.\n\nUtiliser {item:151912} déverrouille le trésor.\n\n{note:"Ne s\'ouvrira qu\'à celui maniant le pouvoir faisant echo à celui des Augari."}'

-------------------------------------------------------------------------------
----------------------------------- AZSUNA ------------------------------------
-------------------------------------------------------------------------------

L['arcavellus_note'] = 'Tuez des {npc:90242s} et {npc:90243s} jusqu\'à ce que le rare apparaisse.'
L['beacher_note'] = 'Non disponible lorsque l\'expédition {wq:Débarquement des Helarjar : Gris-Fonds} est active.'
L['brogozog_note'] = 'Parlez avec {npc:91097}.'
L['chief_bitterbrine_note'] = 'Dans le bateau, sur le pont inférieur.'
L['devious_sunrunner_note'] = 'Utilisez le {object:Portail tellurique} dans une petite grotte. N\'oubliez pas de fouiller le coffre.'
L['doomlord_kazrok_note'] = 'Parlez avec {npc:91580}.'
L['felwing_note'] = 'Parlez avec {npc:105913} et tuez des {npc:105919s} jusqu\'à ce que le rare apparaisse.'
L['golza_note'] = 'Faites sonner le {object:Cor des sirènes}, puis tuez des {npc:90774s} et {npc:90778s} jusqu\'à ce que le rare apparaisse.'
L['infernal_lord_note'] = 'Cliquez sur la {object:Cache d’infernaux} et tuez des {npc:90797s} jusqu\'à ce que le rare apparaisse.'
L['inquisitor_tivos_note'] = 'Utilisez le {object:Portail de la Légion}. Il est à un étage inférieur.'
L['shaliman_note'] = 'Il se promène autour de la mare.'

L['disputed_treasure'] = 'Coffre au trésor'
L['in_academy'] = 'A l\'intérieur de l\'{location:Académie de Nar\'thalas}.'
L['in_oceanus_cove'] = 'A l\'intérieur de la {location:Grotte d’Océanus}'
L['seemingly_unguarded_treasure'] = 'Trésor apparemment pas gardé'
L['seemingly_unguarded_treasure_note'] = 'Essayez de prendre le trésor, puis tuez quelques vagues d\'{npc:94167s}.'
L['treasure_37958'] = 'A un niveau inférieur du bâtiment.'
L['treasure_37980'] = 'Utilisez le {object:Portail tellurique} sur le pont cassé.'
L['treasure_40711'] = 'Utilisez le {object:Portail tellurique} à l\'intérieur de la tour.'
L['treasure_42282'] = 'Sur le balcon, dans un coin.'
L['treasure_42283'] = 'Au deuxième étage.'
L['treasure_42287'] = 'Sous l\'eau.'
L['treasure_42339'] = 'Ne réveillez pas les ours.'

L['nightwatcher_merayl_note'] = 'Formations !'

L['book_1'] = 'Livre 1 (Dimanche)'
L['book_2'] = 'Livre 2 (Lundi)'
L['book_3'] = 'Livre 3 (Mardi)'
L['book_4'] = 'Livre 4 (Mercredi)'
L['book_5'] = 'Livre 5 (Jeudi)'
L['book_6'] = 'Livre 6 (Vendredi)'
L['book_7'] = 'Livre 7 (Samedi)'

L['higher_dimensional_learning_location'] = 'Situé au sommet de la tour.'
L['higher_dimensional_learning_note'] = 'Achetez le {item:129276} à {npc:107376} au {location:Palais Croulant}. Utilisez le {item:129276} chaque jour pour être téléporté à un emplacement de livre différent.\n\nLivre 1 : Dimanche\nLivre 2 : Lundi\nLivre 3 : Mardi\nLivre 4 : Mercredis\nLivre 5 : Jeudi\nLivre 6 : Vendredi\nLivre 7 : Samedi'
L['higher_dimensional_learning_disclaimer'] = '{note:Être téléporté à l\'emplacement d\'un livre ne garantit pas que le livre apparaîtra. Vous devrez peut-être attendre ou revenir plus tard.}'

L['options_icons_higher_dimensional_learning'] = '{achievement:11175}'
L['options_icons_higher_dimensional_learning_desc'] = 'Afficher les emplacements des livres pour le haut-fait {achievement:11175}.'

-------------------------------------------------------------------------------
-------------------------------- BROKEN SHORE ---------------------------------
-------------------------------------------------------------------------------

L['bringing_home_the_beacon_note'] = 'Tant que vous serez sous le {npc:127264}, vous serez buffé par {spell:240640}.\n\nTuez des démons pour récupérer différentes {object:Balises du Sentinax}.'

L['options_icons_bringing_home_the_beacon'] = '{achievement:11802}'
L['options_icons_bringing_home_the_beacon_desc'] = 'Afficher les emplacements du {npc:127264} pour le haut-fait {achievement:11802}'

-------------------------------------------------------------------------------
---------------------------------- DALARAN ------------------------------------
-------------------------------------------------------------------------------

-- Midnight tz per region: US=>PST, KR=>KST, EU=>CET, TW=>CST, CN=>CST
local tz = ({'PST', 'KST', 'CET', 'CST', 'CST'})[GetCurrentRegion()]

L['sheddles_chest'] = 'Coffre de Sheddle'
L['shoe_shine_kit_note'] = 'Tous les samedis soirs à minuit (' .. tz .. ') {npc:97003} laissera son coffre sur le sol pendant quelques heures et partira.'
L['wand_simulated_life_note'] = 'En haut sur la table.'

L['sir_galveston_note'] = 'Etes-vous prêt Messire de Bourbetonne ? Combattez galamment !'
L['amalia_note'] = 'Vous faites plus de bruit que de mal.'
L['tiffany_nelson_note'] = 'Allez-y !'
L['bohdi_sunwayver_note'] = 'Le soleil est de sortie, les familiers aussi !'

-------------------------------------------------------------------------------
----------------------------------- EREDATH -----------------------------------
-------------------------------------------------------------------------------

L['kaara_the_pale_note'] = '{npc:126860} ne lâche plus {item:153190}'
L['turek_the_lucid_note'] = 'Dans l’{location:Effondrement d’Oronaar}'

L['ancient_eredar_cache'] = 'Ancienne cache érédar'
L['ancient_eredar_cache_note'] = 'Il y a 6 anciennes caches érédar distinctes qui peuvent chacune apparaître à des endroits précis.'
L['void_seeped_cache'] = 'Cache infiltrée par le Vide'
L['void_seeped_cache_note'] = 'Il y a 2 {object:Caches infiltrées par le Vide} distinctes qui peuvent chacune apparaître à des endroits précis.'

L['options_icons_ancient_eredar_cache'] = 'Ancienne cache érédar'
L['options_icons_ancient_eredar_cache_desc'] = 'Afficher les emplacements possibles pour les Anciennes caches érédar (coffres journaliers).'
L['options_icons_void_seeped_cache'] = 'Cache infiltrée par le Vide'
L['options_icons_void_seeped_cache_desc'] = 'Afficher les emplacements possibles pour les Caches infiltrées par le Vide (coffres journaliers).'

-------------------------------------------------------------------------------
-------------------------------- HIGHMOUNTAIN ---------------------------------
-------------------------------------------------------------------------------

L['odrogg_note'] = 'Vous pensez que vous pouvez battre mes escargots ?'
L['grixis_tinypop_note'] = 'Ce sera facile !'
L['bredda_tenderhide_note'] = 'Que le plus courageux soit victorieux !'

-------------------------------------------------------------------------------
-------------------------------- KROKUUN --------------------------------------
-------------------------------------------------------------------------------

L['eredar_war_supplies'] = 'Fournitures de guerre érédars'
L['eredar_war_supplies_note'] = 'Il y a 7 Fournitures de guerre érédars distinctes qui peuvent chacune apparaître à des endroits précis.'

L['options_icons_eredar_war_supplies'] = 'Fournitures de guerre érédars'
L['options_icons_eredar_war_supplies_desc'] = 'Afficher les emplacements possibles pour les Fournitures de guerre érédars (coffres journaliers).'

-------------------------------------------------------------------------------
--------------------------------- STORMHEIM -----------------------------------
-------------------------------------------------------------------------------

L['trapper_jarrun_note'] = 'Rassemblez vos défenses, mortel.'
L['robert_craig_note'] = 'Attrapez-les !'

-------------------------------------------------------------------------------
---------------------------------- SURAMAR ------------------------------------
-------------------------------------------------------------------------------

L['varenne_note'] = 'Je dois retourner à ma cuisine !'
L['master_tamer_flummox_note'] = 'Flummox pas besoin familliers ! Flummox les mange MAINTENANT !'
L['aulier_note'] = 'Commençons votre leçon d\'humilité.'

-------------------------------------------------------------------------------
--------------------------------- VAL'SHARA -----------------------------------
-------------------------------------------------------------------------------

L['anthydas_note'] = 'Récupérez le coffre au trésor au deuxième étage du bâtiment à côté de l\'évier.'
L['elandris_note'] = 'Non disponible lorsque l\'expédition d\'Invasion de la Légion {wq:Le val de l’effroi} est active.'
L['gathenak_note'] = 'Parlez avec {npc:112472}.'
L['gorebeak_note'] = 'Parlez avec {npc:92111}.'
L['jinikki_note'] = 'Parlez avec {npc:93677} et tuez des {npc:93684s} jusqu\'à ce que le rare apparaisse.'
L['kiranys_note'] = 'Cliquez sur le {object:Piège arcanique vibrant}.'
L['mad_henryk_note'] = 'Marchez sur le {npc:109602}.'
L['skulvrax_note'] = 'Réanimez {npc:92334} et suivez-la.'
L['theryssia_note'] = 'Lisez la plaque d\'identité de {npc:94194} sur la tombe.'
L['unguarded_thistleleaf_treasure'] = 'Trésor de chardofeuille sans surveillance'

L['in_darkpens'] = 'A l\'intérieur des {location:Enclos Lugubres}.'
L['treasure_38366'] = 'Sous les racines de l\'arbre.'
L['treasure_38386'] = 'Sur le balcon du deuxième étage.'
L['treasure_38387'] = 'Dans une petite grotte sous l\'auberge. L\'entrée est derrière le bâtiment.'
L['treasure_38391'] = 'Caché derrière un arbre.'
L['treasure_38943'] = 'Montez les escaliers de droite.'
L['treasure_39069'] = 'Sur le balcon du deuxième étage.'
L['treasure_39074'] = 'Sous l\'arbre.'
L['treasure_39080'] = 'Au sous-sol. Vous devez commencer une suite de quêtes commençant par {quest:38643} de {npc:92688} suivie de {quest:38644} de {npc:92683}.'
L['treasure_39083'] = 'Caché dans un arbre.'
L['treasure_39088'] = 'Caché dans le lac entre quelques racines.'
L['treasure_39093'] = 'Sur la rivière sous les racines.'

L['grumpy_note'] = 'A l\'étage dans le bâtiment en feu.'

L['xorvasc_note'] = 'Je suis votre pire cauchemar.'
L['durian_strongfruit_note'] = 'S\'il le faut...'

-------------------------------------------------------------------------------
--------------------------------- ACROSS ZONES --------------------------------
-------------------------------------------------------------------------------

L['in_house'] = 'A l\'intérieur de la maison.'
L['in_small_cottage'] = 'Dans un petit chalet.'

L['glimmering_treasure_chest'] = 'Coffre au trésor scintillant'
L['small_treasure_chest'] = 'Petit coffre au trésor'
L['treasure_chest'] = 'Coffre au trésor'
L['treasures_discovered'] = 'trésors découverts'

L['general_pet_tamer_note'] = '{note:Apparaît uniquement lorsque l\'expédition correspondante est active.}'
