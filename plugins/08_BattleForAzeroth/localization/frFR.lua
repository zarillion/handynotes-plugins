-- French translation by Lightuky EU-Khaz Modan
local ADDON_NAME, ns = ...
local L = ns.NewLocale('frFR')
if not L then return end

-------------------------------------------------------------------------------
----------------------------------- DRUSTVAR ----------------------------------
-------------------------------------------------------------------------------

L['ancient_sarco_note'] = 'Ouvrir le {object:Sarcophage ancien} fera apparaître des vagues de {npc:128181}.'
L['beshol_note'] = 'Ouvrez le {object:Coffre manifestement sûr} pour invoquer le rare.'
L['cottontail_matron_note'] = 'Examinez le {object:Crâne de bête rituel} pour invoquer le rare.'
L['gluttonous_yeti_note'] = 'Cette {npc:127979} est condamnée...'
L['idej_note'] = 'Interrompez son incantation d\'{spell:274005} ou il risque de tuer {npc:139380} !'
L['seething_cache_note'] = 'Ouvrir la {object:Cache bouillonnante} fera apparaître des vagues de {npc:129031}.'
L['the_caterer_note'] = 'Examinez la {object:Pièce montée gâchée} pour l\'activer.'
L['vicemaul_note'] = 'Cliquez sur la {npc:127652} pour remonter le rare.'

L['merchants_chest_note'] = 'Tuez le {npc:137468} proche tenant un trousseau de clés pour obtenir la {item:163710}.'
L['wicker_pup_note'] = [[
Allumez les {npc:143609} inactives pour activer le coffre. Combinez les objets des quatre coffres pour créer un {npc:143189}.

• Ensorcelé : {item:163790}
• Enchanté : {item:163796}
• Envoûté : {item:163791}
• Maléficié : {item:163789}
]]

local runebound = 'Activez les {npc:143688} dans l\'ordre indiqué sur les plaques de métal derrière le coffre :\n\n'
L['runebound_cache_note'] = runebound .. 'Gauche -> Bas -> Haut -> Droite'
L['runebound_chest_note'] = runebound .. 'Gauche -> Droite -> Bas -> Haut'
L['runebound_coffer_note'] = runebound .. 'Droite -> Haut -> Gauche -> Bas'

-- NOTE: These quotes (and for trainers in other zones) were taken from the quotes
-- for this NPC on Wowhead. If no quotes were listed, I started a battle with the NPC
-- and jotted down the opening line. Adds a little flavor to the tooltips.
L['captain_hermes_note'] = 'Yeah ! La force des crustacés !'
L['dilbert_mcclint_note'] = 'Salut à vous. Moi, c’est {npc:140461}, expert en désinsectisation. C’est toujours un plaisir d’affronter des confrères amateurs d’araignées.'
L['fizzie_spark_note'] = 'Vous croyez vraiment que vos familiers ont la moindre chance contre mon équipe imprégnée d’azérite ? Dans vos rêves !'
L['michael_skarn_note'] = 'Souvenez-vous juste qu\'au moment où nous entamons cette bataille, vous l\'avez voulu.'

L['drust_facts_note'] = 'Lisez toutes les stèles pour obtenir le haut-fait.'
L['stele_forest_note'] = 'Dans la {location:Tanière d\'Ulfar}.'
L['options_icons_drust_facts_desc'] = 'Afficher les emplacements des stèles pour le haut-fait {achievement:13064}.'
L['options_icons_drust_facts'] = '{achievement:13064}'

L['embers_crossbow_note'] = 'Récupérez la {item:163749} sur le sol entre deux arbres, puis ramenez-la aux {location:Ruines de Gol Var}.'
L['embers_flask_note'] = 'Récupérez la {item:163746} dans l\'eau entre deux rochers, puis ramenez-la aux {location:Ruines de Gol Var}.'
L['embers_hat_note'] = 'Récupérez le {item:163748} dans le tas d\'ossements, puis ramenez-le aux {location:Ruines de Gol Var}.'
L['embers_knife_note'] = 'Retirez le {item:163747} du tronc de l\'arbre, puis ramenez-le aux {location:Ruines de Gol Var}.'
L['embers_golvar_note'] = 'Ramenez chaque relique aux {location:Ruines de Gol Var} pour obtenir le haut-fait.'
L['golvar_ruins'] = 'Ruines de Gol Var'
L['options_icons_ember_relics_desc'] = 'Afficher les emplacements des reliques pour le haut-fait {achievement:13082}.'
L['options_icons_ember_relics'] = '{achievement:13082}'

L['linda_deepwater_note'] = 'Pour y avoir accès, vous devez compléter la suite de quêtes de {npc:136458} à l\'extérieur de {location:Port-Banal}.'

-------------------------------------------------------------------------------
----------------------------------- MECHAGON ----------------------------------
-------------------------------------------------------------------------------

L['avenger_note'] = 'Quand {npc:155254} est à Mécarouille, tuez le {npc:151159} (qui court partout dans la zone) pour qu\'il apparaisse.'
L['beastbot_note'] = 'Fabriquez un {item:168045} auprès de {npc:150359} pour activer ce rare.'
L['cogstar_note'] = 'Tuez des {npc:150667} n\'importe où dans la zone jusqu\'à ce qu\'il se téléporte pour les renforcer.'
L['crazed_trogg_note'] = 'Utilisez un pulvérobot, une poche remplie de peinture ou bien les robots de la {location:Casse de Bondo} pour vous enduire de la couleur qu\'il crie.'
L['deepwater_note'] = 'Fabriquez un {item:167649} auprès de {npc:150359} pour invoquer ce rare.'
L['doppel_note'] = 'Avec deux autres joueurs, utilisez une {item:169470} provenant de {daily:56405} pour l\'activer.'
L['foul_manifest_note'] = 'Connectez les trois disjoncteurs aux pylônes dans l\'eau.'
L['furor_note'] = 'Pendant {daily:55463}, cliquez sur les petits champignons bleus jusqu\'à ce qu\'il apparaisse.'
L['killsaw_note'] = 'Apparaît n\'importe où dans la Forêt Déclinante, probablement après avoir tué des {npc:151871}. Il n\'apparaît pas les jours où la KapitalRisk est dans la forêt et où les Déboiseurs ne sont pas disponibles.'
L['leachbeast_note'] = 'Partage son apparition avec les {npc:151745} dans le {location:Dépôt Tolawatt}, qui n\'apparaissent que lorsque il pleut dans la zone. Utilisez une {item:168961} pour activer la {object:Machine à changement climatique}.'
L['nullifier_note'] = [[
Piratez le {npc:152174} en utilisant soit :

• Une carte perforée équipée du {item:168435} obtenu sur {npc:151625}.

• Un {item:168023} provenant des créatures qui attaquent les foreuses JD41 et JD99.
]]
L['scrapclaw_note'] = 'Au large de la côte, dans l\'eau.'
L['sparkqueen_note'] = 'Apparaît seulement quand la quête journalière {daily:55765} est active.'
L['rusty_note'] = 'Fabriquez un {item:169114} auprès de {npc:150359} pour entrer dans le futur alternatif. Apparaît uniquement lorsque {npc:153993} n\'est PAS présente à {location:Mécarouille}.'
L['vaultbot_note'] = 'Attirez-le jusqu\'à la bobine de tesla à la {location:Casse de Bondo} ou fabriquez une {item:167062} auprès de {npc:150359} pour le forcer à s\'ouvrir.'

L['iron_chest'] = 'Coffret des Lamineurs'
L['mech_chest'] = 'Coffre mécanisé'
L['msup_chest'] = 'Coffre de fournitures mécanisé'
L['rust_chest'] = 'Vieux coffre rouillé'
L['iron_chest_note'] = 'S\'ouvre avec une {item:169872} récupérée sur les monstres aux {location:Embruns du couchant}.'
L['msup_chest_note'] = 'S\'ouvre avec une {item:169872} récupérée sur les monstres aux {location:Embruns du couchant}.'
L['rust_chest_note'] = 'S\'ouvre avec une {item:169872} récupérée sur les monstres aux {location:Embruns du couchant}.'

L['rec_rig_note'] = 'Pour activer le mode difficile, utilisez l\'arme {spell:292352} pour convertir tous les {npc:150825s} en {npc:151049s}. Les mascottes peuvent être obtenues dans les deux difficultés.'

L['grease_bot_note'] = 'Cliquez sur le robot pour gagner 5% de hâte et 10% de vitesse de déplacement pendant 2 heures.'
L['shock_bot_note'] = 'Cliquez sur le robot pour obtenir un proc de dégâts sous forme de chaînes d\'éclairs pendant 2 heures.'
L['welding_bot_note'] = 'Cliquez sur le robot pour augmenter les points de vie et les soins reçus de 10% pendant 2 heures.'

L['options_icons_mech_buffs'] = 'Robots donneurs de Buffs'
L['options_icons_mech_buffs_desc'] = 'Afficher les emplacements des robots graisseurs, d\'électrochocs et de soudages sur la carte à l\'intérieur du donjon.'
L['options_icons_mech_chest'] = 'Coffres mécanisés'
L['options_icons_mech_chest_desc'] = 'Afficher les emplacements des coffres mécanisés. Il y a 10 coffres uniques qui peuvent être pillés une fois par jour et chaque coffre possède 4 à 5 emplacements d\'apparition. Les emplacements sont regroupés par couleur.'
L['options_icons_locked_chest'] = 'Coffres verrouillés'
L['options_icons_locked_chest_desc'] = 'Afficher les emplacements des coffres verrouillés aux {location:Embruns du couchant}.'
L['options_icons_recrig'] = '{npc:150448}'
L['options_icons_recrig_desc'] = 'Afficher l\'emplacement de la {npc:150448} et ses récompenses.'

L['mechagon_snooter_note'] = 'Les {npc:154769} (plutôt rare) et {npc:154767} partagent les mêmes points d\'apparition.'
L['battlepet_secondary_only_note'] = 'Ne peut être trouvé que comme mascotte secondaire en combat.'
L['mechagon_explode_note'] = '{note:Attention, il peut {spell:90096}, ce qui le tuera et vous ne pourrez pas l\'attraper.}'

-------------------------------------------------------------------------------
----------------------------------- NAZJATAR ----------------------------------
-------------------------------------------------------------------------------

L['naz_intro_note'] = 'Terminez la suite de quêtes d\'introduction pour débloquer les rares, les trésors et les expéditions à {location:Nazjatar}.'

L['alga_note'] = 'ATTENTION : dissimulé avec quatre autres monstres !'
L['allseer_note'] = 'Apparaît n\'importe où dans la partie inférieure de Kal\'methir.'
L['anemonar_note'] = 'Tuez la {npc:150467} sur lui pour l\'activer.'
L['avarius_note'] = 'Utilisez une {item:167012} pour collecter et placer les cristaux colorés sur les piédestaux. Vous n\'avez pas besoin d\'être un mineur !'
L['banescale_note'] = 'Il y a une faible chance qu\'il apparaisse immédiatement après avoir tué {npc:152359}.'
L['elderunu_note'] = 'Apparaît n\'importe où dans la partie supérieure de Kal\'methir.'
L['gakula_note'] = 'Faites fuir des {npc:152275} jusqu\'à ce qu\'il apparaisse.'
L['glimmershell_note'] = 'Il y a une faible chance qu\'il apparaisse à la place des {npc:152426}.'
L['kelpwillow_note'] = 'Amenez une {npc:154725} en utilisant un {item:167893} pour l\'activer.'
L['lasher_note'] = 'Plantez une {item:166888} dans le sol et nourrissez-le de mouches.'
L['matriarch_note'] = 'Partage un délai de réapparition avec les deux autres Matriarches des écailles.'
L['needle_note'] = 'Apparaît généralement dans la zone des {location:Portes de la Reine}.'
L['oronu_note'] = 'Invoquez la mascotte {npc:154849} pour l\'activer.'
L['rockweed_note'] = 'Tuez des {npc:152549} et {npc:151166} dans toute la zone jusqu\'à ce qu\'il apparaisse. Un groupe de raid est recommandé car cela peut être un grind assez long.'
L['sandcastle_note'] = 'Utilisez une {item:167077} pour révéler des coffres partout dans la zone jusqu\'à ce qu\'il apparaisse.'
L['tidelord_note'] = 'Tuez les trois {npc:145326} et la {npc:153999} invoquée jusqu\'à ce que le Seigneur-marées soit invoqué.'
L['tidemistress_note'] = 'Cliquez sur les {object:Œufs de Spécimens tranquilles} jusqu\'à ce qu\'elle apparaisse.'
L['urduu_note'] = 'Tuez un {npc:152563} devant lui pour l\'activer.'
L['voice_deeps_notes'] = 'Utilise une {item:168161} pour casser les rochers.'
L['vorkoth_note'] = 'Jettez des {item:167059} dans le banc de poissons vert jusqu\'à ce qu\'il apparaisse.'
L['area_spawn'] = 'Apparaît dans la zone alentour.'
L['cora_spawn'] = 'Apparaît n\'importe où dans la {location:Forêt de Corail}.'
L['cave_spawn'] = 'Apparaît dans une grotte.'
L['east_spawn'] = 'Apparaît n\'importe où dans la moitié est de la zone.'
L['ucav_spawn'] = 'Apparaît dans une grotte sous-marine.'
L['zone_spawn'] = 'Apparaît un peu partout dans la zone.'

L['assassin_looted'] = 'récupéré en tant qu\'assassin.'

L['arcane_chest'] = 'Coffre arcanique'
L['glowing_chest'] = 'Malle arcanique luisante'
L['arcane_chest_01'] = 'Sous des algues.'
L['arcane_chest_02'] = 'Dans le bâtiment à l\'étage.'
L['arcane_chest_03'] = 'Au deuxième niveau.'
L['arcane_chest_04'] = 'Dans l\'eau au-dessus de la chute d\'eau.'
L['arcane_chest_05'] = 'Dans les ruines.'
L['arcane_chest_06'] = '' -- in the open
L['arcane_chest_07'] = 'Au fond d\'une grotte. L\'entrée se trouve au {location:Reflux des Zanj’ir} à l\'est.'
L['arcane_chest_08'] = 'Caché sous des étoiles de mer.'
L['arcane_chest_09'] = 'Dans une grotte derrière le {npc:154914}.'
L['arcane_chest_10'] = 'Sous une exuvie.'
L['arcane_chest_11'] = 'Au sommet de la colline.'
L['arcane_chest_12'] = 'Au sommet de la chute d\'eau.'
L['arcane_chest_13'] = 'En haut de la falaise, derrière un arbre.'
L['arcane_chest_14'] = 'À l\'intérieur du {location:Temple d\'Elun\'alor}.'
L['arcane_chest_15'] = 'Dans la partie droite du bâtiment.'
L['arcane_chest_16'] = 'Dans une grotte sous-marine. L\'entrée est au sud.'
L['arcane_chest_17'] = 'Au sommet de la chute d\'eau.'
L['arcane_chest_18'] = 'Dans une grotte juste en dessous du chemin.'
L['arcane_chest_19'] = 'Au sommet de l\'arche rocheuse. Utilisez un planeur.'
L['arcane_chest_20'] = 'Au sommet de la montagne.'
L['glowing_chest_1'] = 'Au fond d\'une grotte sous-marine. Défendez le pylône.'
L['glowing_chest_2'] = 'Décroisez les fils.'
L['glowing_chest_3'] = 'Au fond d\'une grotte. Défendez le pylône.'
L['glowing_chest_4'] = 'Associez 3 runes rouges.'
L['glowing_chest_5'] = 'Dans une grotte. Défendez le pylône.'
L['glowing_chest_6'] = 'Décroisez les fils.'
L['glowing_chest_7'] = 'Associez 4 runes bleues.'
L['glowing_chest_8'] = 'Sur le toit. Défendez le pylône.'

L['prismatic_crystal_note'] = 'Utilisez-les pour donner des bestioles à manger aux {npc:151782} à Nazjatar.'
L['strange_crystal'] = 'Cristal étrange'
L['strange_crystal_note'] = 'Pour débloquer les apparitions des {item:167893}, vous devez d\'abord récupérer le {item:169778} à cet endroit et rendre ensuite {quest:56560}.'
L['options_icons_prismatics'] = '{item:167893}'
L['options_icons_prismatics_desc'] = 'Afficher les emplacements des {item:167893} pour nourrir les {npc:151782}.'

L['slimy_cocoon'] = 'Cocon visqueux'
L['ravenous_slime_note'] = 'Nourrissez la gelée avec une bestiole en utilisant un {item:167893}. Répétez l\'opération pendant cinq jours jusqu\'à ce qu\'apparaisse un œuf contenant une mascotte. La gelée disparaîtra jusqu\'au prochain reset hebdomadaire.'
L['slimy_cocoon_note'] = 'Une mascotte est prête à être récupérée dans le cocon ! Si elle n\'apparaît pas pour vous, c\'est que l\'œuf est en recharge dans votre phase. Changez de phase ou revenez plus tard.'

L['cat_figurine'] = 'Figurine de chat en cristal'
L['cat_figurine_01'] = 'Dans une grotte sous-marine. La figurine est sur le sol, à l\'air libre. L\'entrée est à l\'est.'
L['cat_figurine_02'] = 'Dans une grotte sous la chute d\'eau voisine. La figurine est sous une étoile de mer sur le mur.'
L['cat_figurine_03'] = 'Dans une grotte sous-marine. La figurine est cachée sous des coquillages brisés.'
L['cat_figurine_04'] = 'Dans une grotte sous-marine. La figurine est sur le sol, à l\'air libre.'
L['cat_figurine_05'] = 'Dans une petite grotte. La figurine est cachée derrière une plante sur le sol.'
L['cat_figurine_06'] = 'Dans une grotte sous-marine remplie de Marcheurs des Récifs hostiles. La figurine est sur le mur. L\'entrée est au nord.'
L['cat_figurine_07'] = 'Dans une petite grotte. La figurine est sur le mur dans du corail.'
L['cat_figurine_08'] = 'Dans une petite grotte. Esquive les cercles arcaniques. La figurine est sur un grand rocher au fond.'
L['cat_figurine_09'] = 'Dans une grotte sous-marine. La figurine est sur la voûte rocheuse près du plafond.'
L['cat_figurine_10'] = 'Dans une grotte juste en dessous du chemin. La figurine est entre trois barils.'
L['figurines_found'] = 'Figurines en cristal Trouvées'

L['fabious_desc'] = 'Prenez une photo "selfie" avec {npc:65090} en utilisant soit l\'{item:122637} ou bien le jouet {item:122674}. Le temps de réapparition est long, à des endroits aléatoires et {npc:65090} ne reste que pour une courte durée.'

L['mardivas_lab'] = 'Laboratoire de Mardivas'
L['no_reagent'] = 'Aucun réactif'
L['swater'] = 'Eau inférieure'
L['gwater'] = 'Eau supérieure'
L['sfire'] = 'Feu inférieur'
L['gfire'] = 'Feu supérieur'
L['searth'] = 'Terre inférieure'
L['gearth'] = 'Terre supérieure'
L['Arcane'] = nil
L['Watery'] = nil
L['Burning'] = nil
L['Dusty'] = nil
L['Zomera'] = nil
L['Omus'] = nil
L['Osgen'] = nil
L['Moghiea'] = nil
L['Xue'] = nil
L['Ungormath'] = nil
L['Spawn'] = nil
L['Herald'] = nil
L['Salgos'] = nil
L['tentacle_taco'] = 'Vend le {item:170100} si vous portez la pièce Benthique {item:169489}.'

L['options_icons_slimes_nazj'] = '{npc:151782s}'
L['options_icons_slimes_nazj_desc'] = 'Afficher les emplacements des quatre {npc:151782s} qui génèrent des mascottes une fois nourries.'
L['options_icons_cats_nazj'] = '{achievement:13836}'
L['options_icons_cats_nazj_desc'] = 'Afficher les emplacements des figurines de chats pour le haut-fait {achievement:13836}.'
L['options_icons_misc_nazj'] = 'Divers'
L['options_icons_misc_nazj_desc'] = 'Afficher les emplacements de la grotte de {npc:152593} et du Laboratoire de Mardivas.'
L['options_icons_fabious'] = '{npc:65090}'
L['options_icons_fabious_desc'] = 'Afficher les emplacements possibles de {npc:65090} pour la monture {item:169201}.'

-------------------------------------------------------------------------------
------------------------------------ NAZMIR -----------------------------------
-------------------------------------------------------------------------------

L['captain_mukala_note'] = 'Essayez de piller le {object:Coffre maudit} pour invoquer le capitaine.'
L['enraged_water_note'] = 'Examinez le {npc:134295} pour invoquer l\'élémentaire.'
L['lucille_note'] = 'Parlez à {npc:134297} pour invoquer le rare.'
L['offering_to_bwonsamdi_note'] = 'Courez sur l\'arbre voisin et sautez dans la structure brisée.'
L['shambling_ambusher_note'] = 'Essayez de piller le {npc:124473} pour activer le rare.'
L['zaamar_note'] = 'Dans les {location:Catacombes de la Nécropole}, l\'entrée est au sud.'

L['grady_prett_note'] = 'C’est l’heure de se jeter au cœur du combat ! Allons-y !'
L['korval_dark_note'] = 'Cet endroit me file les jetons, terminons-en au plus vite.'
L['lozu_note'] = 'Combattons avec honneur.'

L['tales_bwonsamdi_note'] = 'Au niveau du pilier détruit.'
L['tales_hireek_note'] = 'Un parchemin sur la table.'
L['tales_kragwa_note'] = 'Au niveau du mur détruit.'
L['tales_torga_note'] = 'Sous l\'eau, près d\'un pilier détruit.'

L['carved_in_stone_41860'] = 'A l\'intérieur d\'un bâtiment détruit près de la montagne.'
L['carved_in_stone_41861'] = 'Au niveau du pilier détruit.'
L['carved_in_stone_41862'] = 'Au niveau du mur détruit, devant l\'énorme pilier.'
L['carved_in_stone_42116'] = 'Près d\'un pilier à côté de {npc:126126}.'
L['options_icons_carved_in_stone'] = '{achievement:13024}'
L['options_icons_carved_in_stone_desc'] = 'Afficher les emplacements des pictogrammes pour le haut-fait {achievement:13024}.'

L['hoppin_sad_53419'] = 'Derrière deux arbres, sous une énorme racine.'
L['hoppin_sad_53420'] = 'Dans les ruines.'
L['hoppin_sad_53424'] = 'Sur une falaise.'
L['hoppin_sad_53425'] = 'Sur l\'arbre près de la chute d\'eau.'
L['hoppin_sad_53426'] = 'Sous quelques racines.'

L['options_icons_hoppin_sad'] = '{achievement:13028}'
L['options_icons_hoppin_sad_desc'] = 'Afficher les emplacements des {npc:143317} pour le haut-fait {achievement:13028}.'

-------------------------------------------------------------------------------
------------------------------- STORMSONG VALLEY ------------------------------
-------------------------------------------------------------------------------

L['in_basement'] = 'Au sous-sol.'
L['jakala_note'] = 'Parlez au {npc:140925}.'
L['nestmother_acada_note'] = 'Inspectez le {object:Nid d’Acada} pour faire apparaître le rare.'
L['sabertron_note'] = 'Tuez le {npc:139334} pour activer un des {npc:139328s}.'
L['whiplash_note'] = 'Apparaît uniquement lorsque l\'expédition {wq:Kravash} est active.'

L['discarded_lunchbox_note'] = 'Dans le bâtiment au dessus de l\'étagère.'
L['hidden_scholars_chest_note'] = 'Sur le toit de l\'immeuble.'
L['honey_vat'] = 'Cuve de miel'
L['smugglers_stash_note'] = 'Dans l\'eau sous la plate-forme.'
L['sunken_strongbox_note'] = 'Dans l\'eau sous le bateau.'
L['venture_co_supply_chest_note'] = 'Grimpez sur l\'échelle du bateau.'
L['weathered_treasure_chest_note'] = 'Dans une grotte cachée. Il y a trois entrées, chacune cachée derrière un groupe d\'arbres.'

L['curious_grain_sack'] = 'Sac de grain étrange'
L['small_treasure_chest'] = 'Petit coffre au trésor'
L['small_treasure_51927'] = 'Dans le bâtiment sous les escaliers.'
L['small_treasure_51940'] = 'Dans le bâtiment.'

L['eddie_fixit_note'] = 'Préparez-vous à affronter mon équipe imbattable de robots hautement modifiés et personnalisés !'
L['ellie_vern_note'] = 'J’ai trouvé la plus impitoyable des créatures marines pour compléter mon équipe. Vous n’avez pas la moindre chance !'
L['leana_darkwind_note'] = 'Avec toutes les créatures étranges qui rôdent sur cette île, le combat promet d’être des plus surprenants.'

L['honeyback_harvester_note'] = 'Parlez à la {npc:155193} pour commencer l\'événement. Le {object:Dépôt de gelée fraîche} peut être pillé une fois par heure et se réinitialise à heure fixe.'
L['options_icons_honeybacks'] = '{npc:155193}'
L['options_icons_honeybacks_desc'] = 'Afficher les emplacements d\'événements des {npc:155193} pour le farming de la réputation de l\'{faction:2395}.'

L['lets_bee_friends_note'] = 'Terminez {daily:53371} sept fois pour obtenir le haut-fait et la mascotte. Pour débloquer la quête journalière :'
L['lets_bee_friends_step_1'] = 'Complétez la suite de quêtes de l\'{location:Hydromellerie Mildenhall} se terminant par {quest:50553}.'
L['lets_bee_friends_step_2'] = 'Tuez des {npc:133429} et {npc:131663} à l\'{location:Hydromellerie Mildenhall} jusqu\'à ce que vous trouviez une {item:163699}.'
L['lets_bee_friends_step_3'] = 'Amenez l\'{item:163699} à {npc:143128} à {location:Boralus}.'
L['lets_bee_friends_step_4'] = 'Apportez la {item:163702} à {npc:133907} à l\'{location:Hydromellerie Mildenhall}.'
L['lets_bee_friends_step_5'] = 'Complétez {quest:53347} pour {npc:133907}.'

local luncheon = (UnitFactionGroup('player') == 'Alliance') and '{npc:138221} à {location:Brennadam}' or '{npc:138096} au {location:Camp Croc-de-Guerre}'
L['these_hills_sing_note'] = 'Ouvrez {item:160485} ici. Achetez-en un à ' .. luncheon .. ' ou récupérez-en un dans le trésor {object:Boîte à repas abandonnée} à {location:Brennadam}.'

L['ancient_tidesage_scroll'] = 'Parchemin d’eaugure ancien'
L['ancient_tidesage_scroll_note'] = 'Lisez les 8 Parchemins d’eaugures anciens pour obtenir le haut-fait.'
L['options_icons_tidesage_legends'] = '{achievement:13051}'
L['options_icons_tidesage_legends_desc'] = 'Afficher les emplacements des parchemins anciens pour le haut-fait {achievement:13051}.'

L['long_forgotten_rum_note'] = 'Pour entrer dans la grotte, La quête {quest:50697} donnée par {npc:134710} au {location:Reflux mort} doit être complétée. Également vendu par {npc:137040} à {location:Drustvar}.'

-------------------------------------------------------------------------------
------------------------------- TIRAGARDE SOUND -------------------------------
-------------------------------------------------------------------------------

L['honey_slitherer_note'] = 'Parlez à {npc:137176} pour invoquer le rare.'
L['tempestria_note'] = 'Inspectez le {object:Tas de viande suspect} pour invoquer le rare.'
L['twin_hearted_note'] = 'Perturbez l\'{object:Effigie rituelle} pour activer l\'assemblage.'
L['wintersail_note'] = 'Détruisez la {object:Cache de contrebandier} pour invoquer le capitaine.'

L['hay_covered_chest_note'] = 'Chevauchez le {npc:130350} le long de la route jusqu\'à {npc:131453} pour faire apparaître le trésor.'
L['pirate_treasure_note'] = [[
Nécessite la carte au trésor correspondante.

Les cartes sont récupérées sur tous les pirates de {location:Kul Tiras}. {location:Port-Liberté} (en version non-instanciée) est un bon endroit pour farm des pirates.
]]

local damp_note = '\n\nLisez les cinq parchemins pour avoir accès au trésor.'

L['damp_scroll'] = 'Un parchemin humide'
L['damp_scroll_note_1'] = 'L\'entrée est au {location:Monastère Chantorage}.' .. damp_note
L['damp_scroll_note_2'] = 'Sur le sol dans un sous-sol derrière un {npc:136343}.' .. damp_note
L['damp_scroll_note_3'] = 'Sur le sol à l\'étage à côté d\'un {npc:136343}.' .. damp_note
L['damp_scroll_note_4'] = 'Par terre dans un sous-sol, à côté d\'un {npc:136343}.' .. damp_note
L['damp_scroll_note_5'] = 'Dans un coin sous la promenade.' .. damp_note
L['ominous_altar'] = 'Autel menaçant'
L['ominous_altar_note'] = 'Parlez à l\'{object:Autel menaçant} pour être téléporté jusqu\'au trésor.'
L['secret_of_the_depths_note'] = 'Lisez les cinq Parchemins humides, puis parlez à l\'{object:Autel menaçant} pour être téléporté au trésor.'

L['burly_note'] = 'Ces petits gars sont peut-être étranges, mais ils sont plutôt costauds. Vous tenez vraiment à ce que le combat ait lieu ?'
L['delia_hanako_note'] = 'Avant de commencer, je voulais juste vous rappeler de ne pas trop vous en vouloir quand mon équipe balayera la vôtre.'
L['kwint_note'] = 'Une personne contre un requin, ça peut être un combat équilibré. Mais une personne contre trois ? C’est du délire.'

L['shanty_fruit_note'] = 'Récupérez le {object:Chansonnier poussiéreux}, trouvé sur le sol d\'une petite grotte.'
L['shanty_horse_note'] = 'Récupérez le {object:Chansonnier de brigand}, trouvé sur le bar de la taverne.'
L['shanty_inebriation_note'] = 'Récupérez le {object:Chansonnier de Jay}, trouvé sur le sol derrière {npc:141066}.'
L['shanty_lively_note'] = 'Récupérez le {object:Chansonnier de Russel}, trouvé sur la cheminée.'
L['options_icons_shanty_raid'] = '{achievement:13057}'
L['options_icons_shanty_raid_desc'] = 'Afficher les emplacements des chants de marins pour le haut-fait {achievement:13057}.'

L['upright_citizens_node'] = [[
L'un des trois PNJ ci-dessous apparaîtra chaque fois que la quête d'assaut {wq:Brigade de citoyens pas très sobres} sera active.

• {npc:146295}
• {npc:145107}
• {npc:145101}

Recrutez chacun d'entre eux pour obtenir le haut-fait. Vous devrez vérifier la zone plusieurs fois pour que l'assaut, l'expédition et les bons PNJs soient actifs.
]]
L['options_icons_upright_citizens'] = '{achievement:13285}'
L['options_icons_upright_citizens_desc'] = 'Afficher les emplacements des PNJ pour le haut-fait {achievement:13285}.'

-------------------------------------------------------------------------------
------------------------------------ ULDUM ------------------------------------
-------------------------------------------------------------------------------

L['uldum_intro_note'] = 'Terminez la suite de quêtes d\'introduction pour débloquer les rares, les trésors et les quêtes d\'assaut à {location:Uldum}.'

L['aqir_flayer'] = 'Partage son apparition avec les {npc:163114} et les {npc:154365}.'
L['aqir_titanus'] = 'Partage son apparition avec les {npc:154353}.'
L['aqir_warcaster'] = 'Partage son apparition avec les {npc:154352}.'
L['atekhramun'] = 'Écrasez des {npc:152765} à proximité jusqu\'à ce qu\'il apparaisse.'
L['chamber_of_the_moon'] = 'Sous terre, dans la {location:Chambre de la Lune}.'
L['chamber_of_the_stars'] = 'Sous terre, dans la {location:Chambre des Étoiles}.'
L['chamber_of_the_sun'] = 'A l\'intérieur de la {location:Chambre du Soleil}.'
L['dunewalker'] = 'Cliquez sur l\'{object:Essence du soleil} sur la plateforme au-dessus pour le libérer.'
L['friendly_alpaca'] = 'Nourrissez l\'alpaga avec des {item:174858} sept fois pour l\'obtenir en tant que monture. Apparaît pendant 10 minutes à un endroit, puis réapparaît longtemps après.'
L['gaze_of_nzoth'] = 'Partage son apparition avec les {npc:156890}.'
L['gersahl_note'] = 'Donnez-les à l\'{npc:162765} sept fois pour obtenir une monture. Ne nécessite pas d\'être Herboriste.'
L['hmiasma'] = 'Nourrissez-le avec les limons à proximité jusqu\'à ce qu\'il devienne actif.'
L['kanebti'] = 'Récupérez une {item:168160} sur un {npc:152427}, qui partage son apparition avec des {npc:151859} ordinaires. Insérez la figurine dans l\'{object:Autel du Scarabée} pour invoquer le rare.'
L['neferset_rare'] = 'Ces six rares partagent les trois mêmes lieux d\'apparition à {location:Neferset}. Après avoir accompli un certain nombre d\'évènements de Rituels d’Invocation, trois d\'entre eux apparaîtront au hasard.'
L['platform'] = 'Apparaît au sommet de la plate-forme flottante.'
L['right_eye'] = 'Donne la moitié droite du jouet {item:175140}.'
L['single_chest'] = 'Ce coffre n\'apparaît qu\'à un seul endroit ! S\'il n\'est pas là, attendez un peu et il réapparaîtra.'
L['tomb_widow'] = 'Lorsque les sacs d\'œufs blancs sont présents près des piliers, tuez les araignées invisibles pour l\'invoquer.'
L['uatka'] = 'Avec deux autres joueurs, cliquez sur chaque {object:Mystérieux appareils}. Requiert une {item:171208} provenant d\'un {object:Reliquaire amathet}.'
L['wastewander'] = 'Partage son apparition avec les {npc:154369}.'

L['amathet_cache'] = 'Cache des Amathet'
L['black_empire_cache'] = 'Cache de l\'Empire noir'
L['black_empire_coffer'] = 'Coffre de l\'Empire noir'
L['infested_cache'] = 'Cache infestée'
L['infested_strongbox'] = 'Coffre-fort infesté'
L['amathet_reliquary'] = 'Reliquaire amathet'

L['options_icons_assault_events'] = 'Événements d\'Assaut'
L['options_icons_assault_events_desc'] = 'Afficher les emplacements des possibles événements d\'assaut.'
L['options_icons_coffers'] = 'Coffres verrouillés'
L['options_icons_coffers_desc'] = 'Afficher les emplacements des coffres verrouillés (pillables une fois par assaut).'

L['ambush_settlers'] = 'Battez des vagues de monstres jusqu\'à la fin de l\'événement.'
L['burrowing_terrors'] = 'Sautez sur les {npc:162073s} pour les écraser.'
L['call_of_void'] = 'Purifiez le {object:Pylône rituel}.'
L['combust_cocoon'] = 'Lancez les bombes incendiaires de fortune sur les cocons au plafond.'
L['dormant_destroyer'] = 'Cliquez sur tous les cristaux des conduits du vide.'
L['executor_nzoth'] = 'Tuez l\'{npc:157680}, puis détruisez l\'{object:Ancre d\'exécuteur}.'
L['hardened_hive'] = 'Ramassez le {spell:317550} et brûlez tous les sacs d\'oeufs.'
L['in_flames'] = 'Prenez des seaux d\'eau et éteignez les flammes.'
L['monstrous_summon'] = 'Tuez chaque {npc:160914} pour arrêter l\'invocation.'
L['obsidian_extract'] = 'Détruisez tous les cristaux d\'obsidienne formés par le vide.'
L['purging_flames'] = 'Ramassez les corps et jetez-les dans le feu.'
L['pyre_amalgamated'] = 'Nettoyez le bûcher, puis tuez tous les amalgames jusqu\'à ce que le rare apparaisse.'
L['ritual_ascension'] = 'Tuez les {npc:152233s}.'
L['solar_collector'] = 'Activez les cinq cellules de tous les côtés du collecteur. En cliquant sur une cellule, on active également toutes les cellules qui la touchent.'
L['summoning_ritual'] = 'Tuez les acolytes puis fermez le portail d\'invocation. Après que l\'événement ait été accompli un certain nombre de fois, un ensemble de trois rares apparaîtra aux environs de {location:Neferset}.'
L['titanus_egg'] = 'Détruisez l\'{npc:163257}, puis battez le {npc:163268}.'
L['unearthed_keeper'] = 'Détruisez le {npc:156849}.'
L['virnall_front'] = 'Battez des vagues de monstres jusqu\'à ce que {npc:152163} apparaisse.'
L['voidflame_ritual'] = 'Éteignez toutes les bougies touchées par le vide.'

L['beacon_of_sun_king'] = 'Faites tourner les trois statues vers l\'intérieur.'
L['engine_of_ascen'] = 'Déplacez les quatre statues vers les rayons.'
L['lightblade_training'] = 'Tuez des instructeurs et des postulants jusqu\'à ce que {npc:152197} apparaisse.'
L['raiding_fleet'] = 'Brûlez tous les bateaux en utilisant l\'objet de quête.'
L['slave_camp'] = 'Ouvrez toutes les cages à proximité.'
L['unsealed_tomb'] = 'Protégez {npc:152439} des vagues de monstres.'

-------------------------------------------------------------------------------
------------------------------------ VALE -------------------------------------
-------------------------------------------------------------------------------

L['vale_intro_note'] = 'Terminez la suite de quêtes d\'introduction pour débloquer les rares, les trésors et les quêtes d\'assaut au {location:Val de l’Éternel printemps}.'

L['big_blossom_mine'] = 'A l\'intérieur de la {location:Mine du Grand Printemps}. L\'entrée est au nord-est.'
L['guolai'] = 'A l\'intérieur des {location:Salles de Guo-Lai}.'
L['guolai_left'] = 'A l\'intérieur des {location:Salles de Guo-Lai} (passage à gauche).'
L['guolai_center'] = 'A l\'intérieur des {location:Salles de Guo-Lai} (passage au centre).'
L['guolai_right'] = 'A l\'intérieur des {location:Salles de Guo-Lai} (passage à droite).'
L['left_eye'] = 'Donne la moitié gauche du jouet {item:175140}.'
L['pools_of_power'] = 'À l\'intérieur des {location:Bassins du Pouvoir}. L\'Entrée se situe à {location:La Pagode dorée}.'
L['tisiphon'] = 'Cliquez sur la {object:Canne à pêche porte-bonheur de Danielle}.'

L['ambered_cache'] = 'Cache ambrée'
L['ambered_coffer'] = 'Coffre ambré'
L['mogu_plunder'] = 'Butin mogu'
L['mogu_strongbox'] = 'Coffre mogu'

L['abyssal_ritual'] = 'Tuez les {npc:153179s}, puis tuez la {npc:153171}.'
L['bound_guardian'] = 'Tuez les trois {npc:154329} pour libérer la {npc:154328}.'
L['colored_flames'] = 'Récupérez les flammes colorées sur leurs torches et amenez-les aux runes correspondantes.'
L['construction_ritual'] = 'Poussez la statue du tigre vers le rayon.'
L['consuming_maw'] = 'Purifiez les excroissances et les tentacules jusqu\'à ce que vous soyez expulsé.'
L['corruption_tear'] = 'Attrapez la {spell:305470} et fermez la déchirure sans laisser les yeux tourbillonnants vous toucher.'
L['electric_empower'] = 'Tuez les {npc:153095}, suivis par {npc:156549}.'
L['empowered_demo'] = 'Fermez tous les reliquaires d\'esprits.'
L['empowered_wagon'] = 'Ramassez les {npc:156300} et placez-les sous le chariot.'
L['feeding_grounds'] = 'Détruisez les réceptacles d’ambre et les chambres de suspension.'
L['font_corruption'] = 'Faites tourner les statues mogu jusqu\'à ce que les deux faisceaux atteignent le fond, puis cliquez sur la console.'
L['goldbough_guardian'] = 'Protégez le {npc:156623} des vagues de monstres.'
L['infested_statue'] = 'Retirez tous les yeux frémissants de la statue.'
L['kunchong_incubator'] = 'Détruisez tous les générateurs de champs.'
L['mantid_hatch'] = 'Ramassez le {spell:305301} et détruisez les incubateurs de larves.'
L['mending_monstro'] = 'Détruisez tous les cristaux d\'{npc:157552}.'
L['mystery_sacro'] = 'Détruisez toutes les {object:Pierres tombales suspectes}, puis tuez l\'{npc:157298}.'
L['noodle_cart'] = 'Défendez {npc:157615} pendant qu\'il répare son chariot.'
L['protect_stout'] = 'Protégez la grotte des vagues de monstres.'
L['pulse_mound'] = 'Tuez les monstres proches, puis l\'{npc:157529}.'
L['ravager_hive'] = 'Détruisez toutes les ruches sur l\'arbre.'
L['ritual_wakening'] = 'Tuez les {npc:157942s}.'
L['serpent_binding'] = 'Tuez les {npc:157345s}, puis {npc:157341}.'
L['stormchosen_arena'] = 'Éliminez tous les monstres dans l\'arène, puis tuez le Général du Clan.'
L['swarm_caller'] = 'Détruisez le pylône {npc:157719}.'
L['vault_of_souls'] = 'Ouvrez le caveau et détruisez toutes les statues.'
L['void_conduit'] = 'Cliquez sur le {object:Conduit du Vide} et écrasez les yeux à l\'affût.'
L['war_banner'] = 'Brûlez les bannières et tuez des vagues de monstres jusqu\'à ce que le commandant apparaisse.'
L['weighted_artifact'] = 'Ramassez le {object:Vase Étonnamment Lourd} et naviguez dans le labyrinthe jusqu\'au piédestal. Être assommé par une statue fait tomber le vase.'

-------------------------------------------------------------------------------
----------------------------------- VISIONS -----------------------------------
-------------------------------------------------------------------------------

L['colored_potion'] = 'Potion colorée'
L['colored_potion_note'] = [[
La potion à côté du cadavre de %s indique toujours la couleur de la potion à effet négatif pour cette vision.

La couleur de la potion donnant +100 de santé mentale peut être déterminée par la couleur de cette potion. (|cFFFF0000mauvaise|r => |cFF00FF00bonne|r):

Noir => Vert
Bleu => Violet
Vert => Rouge
Violet => Noir
Rouge => Bleu
]]

L['bear_spirit_note'] = 'Tuez l\'{npc:160404} et toutes les vagues de monstres pour gagner un buff de hâte de 10%.'
L['buffs_change'] = 'Les buffs disponibles changent à chaque vision. Si le bâtiment est fermé ou si le PNJ/objet a disparu, ce buff n\'est pas disponible pour cette vision.'
L['clear_sight'] = 'Requiert le rang %d de {spell:307519}.'
L['craggle'] = 'Lâchez un jouet sur le sol (comme le {item:44606}) pour le distraire. Éloignez ses robots et tuez-les en premier.'
L['empowered_note'] = 'Traversez le labyrinthe de mines et placez-vous sur la {npc:161324} à l\'étage pour un buff de 10% de dégâts.'
L['enriched_note'] = 'Tuez la {npc:161293} pour un buff de 10% de crit.'
L['ethereal_essence_note'] = 'Tuez le {npc:161198} pour un buff de 10% de crit.'
L['ethereal_note'] = 'Ramassez les cristaux orange cachés dans la vision et ramenez-les à {npc:162358} pour des souvenirs supplémentaires. Il y a dix cristaux au total, deux dans chaque zone.\n\n|cFF00FF00N\'oubliez pas de fouiller le coffre!|r'
L['heroes_bulwark_note'] = 'Tuez {npc:158588} à l\'intérieur de l\'auberge pour un buff de points de vie de 10%.'
L['inside_building'] = 'A l\'intérieur d\'un bâtiment.'
L['mailbox'] = 'Boîte aux lettres'
L['mail_muncher'] = 'Quand ouverte, le {npc:160708} a une chance d\'apparaître.'
L['odd_crystal'] = 'Cristal étrange'
L['requited_bulwark_note'] = 'Tuez {npc:157700} pour gagner un buff de polyvalence de 7%.'
L['shave_kit_note'] = 'A l\'intérieur du salon de coiffure. Fouillez la caisse sur la table.'
L['smiths_strength_note'] = 'Tuez {npc:158565} dans la hutte du forgeron pour un buff de 10% de dégâts.'
L['spirit_of_wind_note'] = 'Tuez {npc:161140} pour un buff de 10% à la vitesse de mouvement et à la hâte.'
L['void_skull_note'] = 'Cliquez sur le crâne sur le sol pour récupérer le jouet.'

L['c_alley_corner'] = 'Dans un coin de la ruelle.'
L['c_bar_upper'] = 'Dans le bar au niveau supérieur.'
L['c_behind_bank_counter'] = 'Dans la banque, derrière le comptoir, à l\'arrière.'
L['c_behind_boss'] = 'Dans le bâtiment des réfugiés, derrière le boss.'
L['c_behind_boxes'] = 'Dans le coin, derrière des boîtes.'
L['c_behind_cart'] = 'Derrière un chariot détruit.'
L['c_behind_house_counter'] = 'Dans la maison, derrière le comptoir.'
L['c_behind_mailbox'] = 'Derrière la boîte aux lettres.'
L['c_behind_pillar'] = 'Caché derrière un pilier, derrière le bâtiment de l\'ambassade.'
L['c_behind_rexxar'] = 'Caché à droite derrière le bâtiment de {npc:155098}.'
L['c_behind_stables'] = 'Derrière les écuries, près du {npc:158157}.'
L['c_by_pillar_boxes'] = 'Près du mur, entre un pilier et des boîtes.'
L['c_center_building'] = 'Au rez-de-chaussée du bâtiment central.'
L['c_forge_corner'] = 'Dans le coin, près d\'une forge.'
L['c_hidden_boxes'] = 'Caché derrière des boîtes derrière le bâtiment de {npc:152089}.'
L['c_inside_auction'] = 'Dans l\'hôtel des ventes sur la droite.'
L['c_inside_big_tent'] = 'A gauche, à l\'intérieur de la grande tente.'
L['c_inside_cacti'] = 'Dans le tas de cactus au coin de la rue.'
L['c_inside_hut'] = 'A l\'intérieur de la première cabane à droite.'
L['c_inside_leatherwork'] = 'À l\'intérieur du bâtiment de travail du cuir.'
L['c_inside_orphanage'] = 'A l\'intérieur de l\'orphelinat.'
L['c_inside_transmog'] = 'A l\'intérieur de la hutte de transmogrification.'
L['c_left_cathedral'] = 'Caché à gauche de l\'entrée de la cathédrale.'
L['c_left_inquisitor'] = 'Derrière le miniboss inquisiteur à gauche des escaliers.'
L['c_on_small_hill'] = 'Au sommet d\'une petite colline.'
L['c_top_building'] = 'Au dernier étage du bâtiment.'
L['c_underneath_bridge'] = 'Sous le pont.'
L['c_walkway_corner'] = 'Sur la passerelle supérieure, dans un coin.'
L['c_walkway_platform'] = 'Sur une plateforme au-dessus de la passerelle supérieure.'

L['options_icons_visions_buffs'] = 'Buffs'
L['options_icons_visions_buffs_desc'] = 'Afficher les emplacements des événements qui octroient des buffs de dégâts pour 1 heure.'
L['options_icons_visions_chest'] = 'Coffres'
L['options_icons_visions_chest_desc'] = 'Afficher les emplacements possibles des coffres dans les visions horrifiques.'
L['options_icons_visions_crystals'] = 'Cristaux étranges'
L['options_icons_visions_crystals_desc'] = 'Afficher les emplacements possibles des cristaux étranges dans les visions horrifiques.'
L['options_icons_visions_mail'] = 'Boîtes aux lettres'
L['options_icons_visions_mail_desc'] = 'Afficher les emplacements des boîtes aux lettres pour la monture {item:174653}.'
L['options_icons_visions_misc'] = 'Divers'
L['options_icons_visions_misc_desc'] = 'Afficher les emplacements des rares, jouets, potions et éthériens à l\'intérieur des visions horrifiques.'

-------------------------------------------------------------------------------
----------------------------------- VOLDUN ------------------------------------
-------------------------------------------------------------------------------

L['bloodwing_bonepicker_note'] = 'Ramassez l\'{npc:136390} au sommet pour invoquer le vautour.'
L['nezara_note'] = 'Coupez les cordes attachées aux quatre {npc:128952s} pour libérer le rare.'
L['vathikur_note'] = 'Tuez les {npc:126894} pour invoquer le rare.'
L['zunashi_note'] = 'L\'entrée est au nord, dans la bouche d\'un grand crâne.'

L['ashvane_spoils_note'] = 'Descendez la colline avec le {npc:132662} pour faire apparaître le trésor en bas.'
L['excavators_greed_note'] = 'A l\'intérieur d\'un tunnel effondré.'
L['grayals_offering_note'] = 'Après avoir terminé {quest:50702}, entrez dans {location:Atul\'Aman} et cliquez sur l\'{object:Ancien autel} pour faire apparaître le trésor.'
L['kimbul_offerings_note'] = 'Sur la colline au-dessus du {location:Temple de Kimbul}.'
L['sandsunken_note'] = 'Cliquez sur le {object:Flotteur abandonné} pour sortir le trésor du sable.'

L['keeyo_note'] = 'C’est parti pour la grande aventure !'
L['kusa_note'] = 'J’enchaîne les victoires en ce moment, vous n’avez aucune chance contre moi et mon équipe !'
L['sizzik_note'] = 'C’est toujours un plaisir de combattre un nouvel adversaire.'

L['tales_akunda_note'] = 'Dans l\'étang.'
L['tales_kimbul_note'] = 'A côté de l\'arbre desséché.'
L['tales_sethraliss_note'] = 'Sur le sol, à côté de la table.'

L['plank_1'] = 'Là où le sable se termine en haut de la colline.'
L['plank_2'] = 'A côté d\'un bâtiment cassé.'
L['plank_3'] = 'Sur le côté de la pyramide. Le chemin commence au niveau de l\'autre planche proche.'
L['plank_4'] = 'Au sommet d\'une dune de sable, le long du côté de la pyramide.'
L['plank_5'] = 'Suivez la queue du serpent pour trouver la planche.'
L['planks_ridden'] = 'planches bancales chevauchées'
L['options_icons_dune_rider'] = '{achievement:13018}'
L['options_icons_dune_rider_desc'] = 'Afficher les emplacements des planches bancales pour le haut-fait {achievement:13018}.'

L['options_icons_scavenger_of_the_sands'] = '{achievement:13016}'
L['options_icons_scavenger_of_the_sands_desc'] = 'Afficher les emplacements des objets inutiles pour le haut-fait {achievement:13016}.'

L['elusive_alpaca'] = 'Donnez le {item:161128} au {npc:162681} pour l\'obtenir en tant que monture. Il apparaît pendant 10 minutes à un endroit, s\'ensuit un long temps de réapparition.'

-------------------------------------------------------------------------------
---------------------------------- WARFRONTS ----------------------------------
-------------------------------------------------------------------------------

L['boulderfist_outpost'] = 'À l\'intérieur de l\'{location:Avant-poste Rochepoing} (une grande caverne). L\'entrée est au nord-est.'
L['burning_goliath_note'] = 'Une fois vaincu, un {npc:141663} apparaîtra près de l\'{npc:141668}.'
L['cresting_goliath_note'] = 'Une fois vaincu, un {npc:141663} apparaîtra près de l\'{npc:141668}.'
L['rumbling_goliath_note'] = 'Une fois vaincu, un {npc:141663} apparaîtra près de l\'{npc:141668}.'
L['thundering_goliath_note'] = 'Une fois vaincu, un {npc:141663} apparaîtra près de l\'{npc:141668}.'
L['echo_of_myzrael_note'] = 'Une fois les quatre goliaths élémentaires vaincus, l\'{npc:141668} apparaîtra.'
L['frightened_kodo_note'] = 'Disparaît au bout de quelques minutes. Garanti d\'apparaître après un redémarrage du serveur.'

-------------------------------------------------------------------------------
----------------------------------- ZULDAZAR ----------------------------------
-------------------------------------------------------------------------------

L['murderbeak_note'] = 'Jettez l\'appât dans la mer, puis tuez les {npc:134780} jusqu\'à ce que {npc:134782} apparaisse.'
L['vukuba_note'] = 'Examinez l\'{npc:134049}, puis tuez des vagues de {npc:134047s} jusqu\'à ce que {npc:134048} apparaisse.'

L['cache_of_secrets_note'] = 'Détenu par un {npc:137234} dans une grotte derrière une chute d\'eau.'
L['da_white_shark_note'] = 'Restez près de {npc:133208} jusqu\'à ce qu\'elle devienne hostile.'
L['dazars_forgotten_chest_note'] = 'Le chemin commence près d\'{npc:134738}.'
L['gift_of_the_brokenhearted_note'] = 'Placez l\'encens pour faire apparaître le coffre.'
L['offerings_of_the_chosen_note'] = 'Au deuxième niveau de {location:Zanchul}.'
L['riches_of_tornowa_note'] = 'Sur le côté d\'une falaise.'
L['spoils_of_pandaria_note'] = 'Sur le pont le plus bas du navire.'
L['tiny_voodoo_mask_note'] = 'Posé sur la hutte au-dessus d\'{npc:141617}.'
L['warlords_cache_note'] = 'En haut, à la barre du navire.'

L['karaga_note'] = 'Je n\'ai pas combattu depuis longtemps, j\'espère que je suis toujours un bon défi pour vous.'
L['talia_spark_note'] = 'Les créatures de cette région sont féroces. J’espère que vous êtes d’attaque.'
L['zujai_note'] = 'Vous venez m’affronter sur mon propre territoire ? Je vous souhaite bonne chance.'

L['kuafon_note'] = [[
Récupérez un {item:157782} sur n'importe quel Pterreurdactyle de {location:Zandalar} pour commencer la suite de quêtes. Certaines quêtes prendront plusieurs jours pour être complétées.

Les meilleurs monstres à farmer sont les {npc:126618} à {location:Zanchul} ou bien les {npc:122113} à l\'{location:Aire des Fend-les-Cieux} au sud de {location:Tal’gurub}.
]]
L['torcali_note'] = 'Accomplissez les quêtes au {location:Kraal des Bêtes de guerre} jusqu\'à ce que {quest:47261} devienne disponible. Certaines quêtes prendront plusieurs jours pour être complétées.'

L['totem_of_paku_note'] = 'Parlez à la {npc:137510} au nord du {location:Grand Sceau} pour choisir Pa\'ku comme votre loa à {location:Zuldazar}.'
L['options_icons_paku_totems'] = 'Totems de Pa\'ku'
L['options_icons_paku_totems_desc'] = 'Afficher les emplacements des {npc:131154} et leurs trajectoires à {location:Dazar\'alor}.'

L['tales_gonk_note'] = 'Posé sur la couverture.'
L['tales_gral_note'] = 'Au pied de l\'arbre.'
L['tales_jani_note'] = 'Près du pilier détruit.'
L['tales_paku_note'] = 'Au sommet du bâtiment, sur un rocher près de l\'eau.'
L['tales_rezan_note'] = 'Au-dessus de la grotte du {npc:136428}.'
L['tales_shadra_note'] = 'À côté de l\'entrée, derrière une torche.'
L['tales_torcali_note'] = 'Entre deux barils et les escaliers.'
L['tales_zandalar_note'] = 'Derrière {npc:132989}.'

local shared_dinos = 'La quête journalière {daily:50860} de la suite de quêtes de {npc:50860} doit être active (une des quatre quêtes journalières possibles) pour qu\'ils apparaissent. Tout le monde peut les voir ces jours-là.'
L['azuresail_note'] = 'Partage un court délai de réapparition avec {npc:135512} et {npc:135508}.\n\n' .. shared_dinos
L['thunderfoot_note'] = 'Partage un court délai de réapparition avec {npc:135510} et {npc:135508}.\n\n' .. shared_dinos
L['options_icons_life_finds_a_way'] = '{achievement:13048}'
L['options_icons_life_finds_a_way_desc'] = 'Afficher les emplacements des dinosaures redoutables pour le haut-fait {achievement:13048}.'

-------------------------------------------------------------------------------
--------------------------------- ACROSS ZONES --------------------------------
-------------------------------------------------------------------------------

L['goramor_note'] = 'Achetez une {item:163563} à {npc:126833} et donnez-la en pâture à {npc:143644}. {npc:126833} se trouve dans une petite grotte près de la {location:Terrasse des Chagrins}.'
L['makafon_note'] = 'Achetez un {item:163564} à {npc:124034} au {location:Poste de Troc-Écailles} et donnez-le en pâture à {npc:130922}.'
L['stompy_note'] = 'Achetez une {item:163567} à {npc:133833} au nord de l\'{location:Oasis Pépiflore} et donnez-la en pâture au {npc:143332}.'
L['options_icons_brutosaurs'] = '{achievement:13029}'
L['options_icons_brutosaurs_desc'] = 'Afficher les emplacements des brutosaures pour le haut-fait {achievement:13029}.'

local hekd_note = '\n\nPour avoir accès à {npc:126334}, vous devez terminer %s.'
if UnitFactionGroup('player') == 'Horde' then
    hekd_note = hekd_note:format('{quest:47441} donnée par {npc:127665} à {location:Dazar\'alor}, suivie de {quest:47442} donnée par {npc:126334}')
else
    hekd_note = hekd_note:format('{quest:51142} donnée par {npc:136562} à {location:Vol\'dun}, suivie de {quest:51145} donnée par {npc:136559}')
end
local hekd_quest = 'Terminez la quête %s de {npc:126334}.' .. ns.color.Orange(hekd_note)
local hekd_item = 'Récupérez l\'objet %s sur le monstre %s près du tas de déchets et rapportez cet objet à {npc:126334}.' .. ns.color.Orange(hekd_note)

L['charged_junk_note'] = format(hekd_item, '{item:158910}', '{npc:135727}')
L['feathered_junk_note'] = format(hekd_item, '{item:157794}', '{npc:132410}')
L['golden_junk_note'] = format(hekd_item, '{item:156963}', '{npc:122504}')
L['great_hat_junk_note'] = format(hekd_quest, '{quest:50381}')
L['hunter_junk_note'] = format(hekd_quest, '{quest:50332}')
L['loa_road_junk_note'] = format(hekd_quest, '{quest:50444}')
L['nazwathan_junk_note'] = format(hekd_item, '{item:157802}', '{npc:131155}')
L['redrock_junk_note'] = format(hekd_item, '{item:158916}', '{npc:134718}')
L['ringhorn_junk_note'] = format(hekd_item, '{item:158915}', '{npc:130316}')
L['saurid_junk_note'] = format(hekd_quest, '{quest:50901}')
L['snapjaw_junk_note'] = format(hekd_item, '{item:157801}', '{npc:126723}')
L['vilescale_junk_note'] = format(hekd_item, '{item:157797}', '{npc:125393}')
L['options_icons_get_hekd'] = '{achievement:12482}'
L['options_icons_get_hekd_desc'] = 'Afficher les emplacements des tâches données par {npc:126334} pour le haut-fait {achievement:12482}.'

L['options_icons_mushroom_harvest'] = '{achievement:13027}'
L['options_icons_mushroom_harvest_desc'] = 'Afficher les emplacements des affreux fongiciens pour le haut-fait {achievement:13027}.'

L['options_icons_tales_of_de_loa'] = '{achievement:13036}'
L['options_icons_tales_of_de_loa_desc'] = 'Afficher les emplacements des tablettes pour le haut-fait {achievement:13036}.'

L['jani_note'] = 'Cliquez sur le {object:Tas de déchets mystérieux} pour faire apparaître {npc:126334}.'
L['rezan_note'] = '{note:A l\'intérieur du donjon {location:Atal\'Dazar}.}'
L['bow_to_your_masters_note'] = 'Inclinez-vous devant le loa de {location:Zandalar} ({emote:incliner}).'
L['options_icons_bow_to_your_masters'] = '{achievement:13020}'
L['options_icons_bow_to_your_masters_desc'] = 'Afficher les emplacements des loas pour le haut-fait {achievement:13020}.'

L['alisha_note'] = 'Ce vendeur nécessite de progresser dans les quêtes de {location:Drustvar}.'
L['elijah_note'] = 'Ce vendeur nécessite de progresser dans les quêtes de {location:Drustvar}. Il commencera à vendre des saucisses après {quest:47945}.'
L['raal_note'] = '{note:Dans le donjon {location:Manoir Malvoie}.}'
L['sausage_sampler_note'] = 'Mangez une saucisse de chaque type pour obtenir le haut-fait.'
L['options_icons_sausage_sampler'] = '{achievement:13087}'
L['options_icons_sausage_sampler_desc'] = 'Afficher les emplacements des vendeurs pour le haut-fait {achievement:13087}.'

-- Pour la Horde, inclut une note sur les boissons qui doivent être achetées à l'AH.
local horde_sheets = (UnitFactionGroup('player') == 'Horde') and [[ Les boissons suivantes ne sont pas disponibles pour la Horde et doivent être achetées à l'{location:Hôtel des ventes} :

• {item:163639}
• {item:163638}
• {item:158927}
• {item:162026}
• {item:162560}
• {item:163098}
]] or ''
L['three_sheets_note'] = 'Procurez-vous un exemplaire de chaque boisson pour obtenir le haut-fait.' .. horde_sheets
L['options_icons_three_sheets'] = '{achievement:13061}'
L['options_icons_three_sheets_desc'] = 'Afficher les emplacements des vendeurs pour le haut-fait {achievement:13061}.'

L['options_icons_daily_chests_desc'] = 'Afficher les emplacements des coffres (pillables quotidiennement).'
L['options_icons_daily_chests'] = 'Coffres'

L['supply_chest'] = 'Coffre de fournitures de guerre'
L['supply_chest_note'] = 'Une {npc:135181} ou un {npc:138694} passera au-dessus de la zone toutes les 45 minutes et larguera une {npc:135238} à l\'un des trois points de chute potentiels.'
L['supply_single_drop'] = '{note:Cette trajectoire de vol dépose toujours le coffre de fournitures à cet endroit.}'
L['options_icons_supplies_desc'] = 'Afficher les emplacements de largage des {npc:135238}.'
L['options_icons_supplies'] = '{npc:135238}'

L['secret_supply_chest'] = 'Coffre de fournitures secret'
L['secret_supply_chest_note'] = 'Lorsqu\'un assaut de faction est actif, un {object:Coffre de fournitures secret} peut apparaître à l\'un de ces emplacements pendant une courte période.'
L['options_icons_secret_supplies'] = 'Coffres de fournitures secrets'
L['options_icons_secret_supplies_desc'] = 'Afficher les emplacements des {object:Coffres de fournitures secrets} pour le haut-fait {achievement:13317}.'

L['squirrels_note'] = 'Vous devez utiliser l\'émote {emote:/amour} sur les bestioles et non sur les mascottes.'
L['options_icons_squirrels'] = '{achievement:14730}'
L['options_icons_squirrels_desc'] = 'Afficher les emplacements des bestioles pour le haut-fait {achievement:14730}.'

L['options_icons_battle_safari'] = '{achievement:12930}'
L['options_icons_battle_safari_desc'] = 'Afficher les emplacements des mascottes de combat pour le haut-fait {achievement:12930}.'
L['options_icons_mecha_safari'] = '{achievement:13693}'
L['options_icons_mecha_safari_desc'] = 'Afficher les emplacements des mascottes de combat pour le haut-fait {achievement:13693}.'
L['options_icons_nazja_safari'] = '{achievement:13694}'
L['options_icons_nazja_safari_desc'] = 'Afficher les emplacements des mascottes de combat pour le haut-fait {achievement:13694}.'
