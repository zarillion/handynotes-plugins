-- French translation by Lightuky EU-Khaz Modan
local ADDON_NAME, ns = ...
local L = ns.NewLocale('frFR')
if not L then return end

-------------------------------------------------------------------------------
-------------------------------- ACROSS ZONES ---------------------------------
-------------------------------------------------------------------------------

L['edge_of_reality'] = 'Frontière du réel'
L['edge_of_reality_note'] = ns.color.Yellow('Frontière du réel') ..
                                ' vous transportera dans un scénario, où vous pourrez récupérer {item:121815}.'
L['treasures_discovered'] = 'trésors découverts'
L['strange_spore_treasure'] = 'Spore étrange'
L['multiple_spawn_note'] = 'Peut apparaître à plusieurs endroits.'

L['follower'] = 'Compagnons'
L['complete_quest'] = nil
L['appears_outside_garrison'] = nil

L['squirrels_note'] = nil
L['options_icons_squirrels'] = '{achievement:14728}'
L['options_icons_squirrels_desc'] = nil

-------------------------------------------------------------------------------
------------------------------- FROSTFIRE RIDGE -------------------------------
-------------------------------------------------------------------------------

L['frozen_slave_label'] = '{npc:82680}'
L['prisoner_cage_label'] = 'Cage de prisonnier'
L['slaves_freed'] = 'esclaves libérés'

L['delectable_ogre_delicacies_label'] = '{achievement:9534}'
L['delectable_ogre_delicacies_note'] = [[
{npc:82801}, {npc:82822}, et {npc:82823} peuvent apparaître à n'importe quel endroit
{spell:166684} dure 5 minutes
{spell:166686} dure 2 minutes
{spell:166687} dure 2 minutes
]]

L['options_icons_writing_in_the_snow'] = '{achievement:9531}'
L['options_icons_writing_in_the_snow_desc'] =
    'Afficher les emplacements de la |cffffff00Page de journal en lambeaux|r pour {achievement:9531}'
L['options_icons_breaker_of_chains'] = '{achievement:9533}'
L['options_icons_breaker_of_chains_desc'] =
    'Affichez les emplacements des |cffffff00Esclave gelé|r et |cffffff00Cage de prisonnier|r pour {achievement:9533}'
L['options_icons_delectable_ogre_delicacies'] = '{achievement:9534}'
L['options_icons_delectable_ogre_delicacies_desc'] =
    'Afficher les emplacements des spécialités pour {achievement:9534}'

L['top_of_building'] = nil
L['top_of_tower'] = nil
L['wiggling_egg'] = 'Œuf de rylak frétillant'
L['wiggling_egg_note'] = nil
L['grimfrost_treasure'] = 'Trésor de Triste-Givre'
L['goren_leftovers'] = 'Restes de goren'
L['survivalists_cache'] = 'Cache de survivaliste'
L['orc_couple'] = 'Couple orc'
L['orc_couple_note'] = nil
L['cragleapers_cache'] = 'Cache de bondisseur des combes'
L['carved_obsidian_idol'] = 'Idole en obsidienne gravée'
L['devourers_gutstone'] = 'Pierrentraille du Dévoreur'
L['devourers_gutstone_note'] = nil
L['forgotten_supplies'] = 'Fournitures oubliées'
L['time_warped_tower'] = nil
L['time_warped_tower_note'] = nil
L['frozen_frostwolf_axe'] = 'Hache loup-de-givre gelée'
L['pale_loot_sack'] = 'Sac de butin de blafard'
L['supply_dump'] = 'Réserve de fournitures'
L['sealed_jug'] = 'Cruche scellée'
L['slaves_stash'] = 'Planque d’esclave'
L['spectators_chest'] = 'Coffre de spectateur'
L['ogre_booty_002'] = nil
L['ogre_booty_003'] = nil
L['ogre_booty_006'] = nil
L['ogre_booty_010'] = nil
L['snow_covered_strongbox'] = 'Coffre renforcé couvert de neige'
L['lagoon_pool'] = 'Bassin du lagon'
L['lagoon_pool_note'] = nil
L['lucky_coin'] = 'Pièce porte-bonheur'
L['ogre_cache'] = 'Cache ogre'
L['thunderlord_cache'] = 'Cache sire-tonnerre'
L['senas_stash'] = 'Planque de matériaux de dame Sena'
L['senas_other_stash'] = 'Autre planque de matériaux de dame Sena'
L['smoldering_true_iron_deposit'] = 'Gisement fumant de vérifer'

-------------------------------------------------------------------------------
----------------------------------- GORGROND ----------------------------------
-------------------------------------------------------------------------------

L['poundfist_note'] =
    'Possède un temps de réapparition très long, entre 50 et 90 heures.'
L['trophy_of_glory_note'] =
    'Vous devez terminer la construction de votre avant-poste de fief à Gorgrond pour que les objets de quête soient récupérables.'
L['roardan_sky_terror_note'] =
    'Vole autour de L’Enchevêtrement et du Guet des Bêtes et fait 3 arrêts en chemin.'

L['explorer_canister_treasure'] = 'Boîte d’explorateur'
L['discarded_pack_treasure'] = 'Paquet abandonné'
L['ockbars_pack_treasure'] = 'Sac d’Ockbar'
L['stashed_emergency_rucksack_treasure'] = 'Sac à dos d’urgence bien rangé'
L['strange_looking_dagger_treasure'] = 'Dague suspecte'
L['remains_of_balik_orecrusher_treasure'] = 'Dépouille de Balik Broie-Minerai'
L['odd_skull_treasure'] = 'Crâne étrange'
L['sashas_secret_stash_treasure'] = 'Planque secrète de Sasha'
L['vindicators_hammer_treasure'] = 'Marteau du redresseur de torts'
L['remains_if_balldir_deeprock_treasure'] = 'Dépouille de Baldir Fonderoc'
L['brokors_sack_treasure'] = 'Sac de Brokor'
L['suntouched_spear_treasure'] = 'Lance de Solegrâce'
L['warm_goren_egg_treasure'] = 'Œuf de goren chaud'
L['weapons_cache_treasure'] = 'Cache d’armes'
L['petrified_rylak_egg_treasure'] = 'Œuf de rylak pétrifié'
L['snipers_crossbow_trerasure'] = 'Arbalète de tireur d’élite'
L['iron_supply_chest_treasure'] = 'Coffre de fournitures de l’Alliance'
L['horned_skull_treasure'] = 'Crâne cornu'
L['evermorn_supply_cache_treasure'] =
    'Planque de fournitures d’Aube-Éternelle'
L['harvestable_precious_crystal_treasure'] = 'Précieux cristal récoltable'
L['femur_of_improbability_treasure'] = 'Fémur d’improbabilité'
L['laughing_skull_cache_treasure'] = 'Cache du Crâne-Ricanant'
L['pile_of_rubble_treasure'] = 'Pile de débris'
L['ninja_pepe_treasure'] = 'Pépé ninja'
L['attack_plans_treasure'] = 'Ordres d’attaque de la Horde de Fer'
L['laughing_skull_note'] = 'En haut de l’arbre.'
L['warm_goren_egg_note'] =
    '{item:118705} est incubé pendant 7 jours pour devenir {item:118716}.'
L['ninja_pepe_note'] = 'Dans la cabane, assis sur une chaise.'

L['protectors_of_the_grove_sublabel'] =
    '|cffffff00{npc:86259}|r, |cffffff00{npc:86258}|r, et |cffffff00{npc:86257}|r forment les |cffffff00Protecteurs du Bosquet|r'

L['prove_your_strength_note'] =
    'La capacité de fief {spell:164012} doit être active. Pour activer |cffffff00L’arène d’entraînement|r, rendez-vous à l\'avant-poste de votre faction.'
L['prove_your_strength_drop_single'] = 'Lâché par %s.'
L['prove_your_strength_drop_double'] = 'Lâché par %s ou %s.'

L['options_icons_attack_plans'] = '{achievement:9656}'
L['options_icons_attack_plans_desc'] =
    'Affiche les emplacements des Ordres d’attaque de la Horde de Fer pour {achievement:9656}.'
L['options_icons_ancient_no_more'] = '{achievement:9678}'
L['options_icons_ancient_no_more_desc'] =
    'Afficher les emplacements des monstres rares pour {achievement:9678}'
L['options_icons_fight_the_power'] = '{achievement:9655}'
L['options_icons_fight_the_power_desc'] =
    'Afficher les emplacements des monstres rares pour {achievement:9655}'
L['options_icons_prove_your_strength'] = '{achievement:9402}'
L['options_icons_prove_your_strength_desc'] =
    'Afficher les emplacements de drop pour {achievement:9402}'

-------------------------------------------------------------------------------
------------------------------------ NAGRAND ----------------------------------
-------------------------------------------------------------------------------

L['highmaul_farm_path'] = [[
Parcours de farm
1. Partez de la porte d'entrée et allez à droite dans  |cffffff00Les Entrailles|r.
2. Allez à gauche en traversant la fosse aux gladiateurs. Assurez-vous de tagger l'ogre surplombant en haut à gauche.
3. Continuez à monter les escaliers et passez l'étang où se trouve le {npc:87227}.
4. Tournez à gauche et remontez vers la |cffffff00Voie des Vainqueurs|r.
5. Allez jusqu'à la jonction du chemin. Assurez-vous de tagger l'ogre à droite.
6. Tournez à gauche vers |cffffff00Le Marché|r et éliminez tout dans le sens inverse des aiguilles d'une montre.
7. Allez à gauche vers la |cffffff00Faveur de L'Imperator|r, continuez à suivre le chemin et éliminez tout s'y trouvant.
8. A gauche encore, descendez le chemin, et revenez à nouveau sur la |cffffff00Voie des Vainqueurs|r.
9. Invoquez votre monture et volez vers le haut, survolez et entrez dans |cffffff00Le Colisée|r. N'essayez pas d'utiliser la porte d'entrée, elle est verrouillée.
Volez vers la droite et revenez à la porte principale. Une seule run prend un peu moins de 4 minutes et le temps que vous soyez de retour à la porte d'entrée, tout aura déjà réapparu.
]]

L['steamwheedle_note'] =
    'Farmez des {item:118099} et {item:118100} sur les {npc:87223} et {npc:87222} autour de |cffffff00Cognefort|r. Donnez les objets à {npc:87393} pour gagner de la réputation.'

L['finding_your_waystones_label'] = '{achievement:9497}'
L['finding_your_waystones_note'] =
    'Farmez des {item:117491} sur les {npc:87223} et {npc:87222} autour de |cffffff00Cognefort|r'
L['ogre_waystones'] = 'pierres d\'accès ogre récupérées'

L['signal_horn_note'] =
    'Obtenez les {item:120290} sur le {npc:86658} proche puis utilisez le {npc:87361} pour invoquer {npc:87239} et {npc:87344}.'

L['garroshs_shackles'] = 'A l\'intérieur de la hutte'
L['warsong_relics'] = 'Contre une clôture à l\'extérieur d\'une hutte'
L['stolen_draenei_tome'] =
    'Peut apparaître à plusieurs endroits au sommet des tours'
L['dirt_mound'] =
    'Tuez {npc:86659} pour faire apparaître un {npc:87280} sur le sol à proximité. Cliquez sur le totem pour recevoir {spell:174572}. Vous pouvez maintenant creuser dans les {npc:87530} proches pour trouver des objets.'

L['stable_master_note'] =
    'Parlez à {stablemaster} pour recevoir un sifflet de dressage.\n\n{item:119441}\n{item:119442}\n{item:119443}\n{item:119444}\n{item:119445}\n{item:119446}\n\nUtilisez le sifflet pour invoquer votre monture en dressage de monture et tuer la cible.\n\n{achievement:9539} nécessite une {item:118469} d\'une |cffffff00Écuries de niveau 2|r.\n{achievement:9540} nécessite un {item:118470} d\'une |cffffff00Écuries de niveau 3|r.'

L['making_the_cut_note'] =
    'Tant que {npc:88210} est disponible, tuez 15 {npc:88207} dans les environs de l\'|cffffff00Arène de Sang|r. Une fois que 15 ont été tués {npc:88210} deviendra ciblable.\n\n' ..
        ns.color.Red(
            'Pas mal pour une bande de minables ! Venez affronter Krud quand vous serez prêt à mourir !')

L['options_icons_steamwheedle'] = '{achievement:9472}'
L['options_icons_steamwheedle_desc'] =
    'Afficher l\'emplacement de farm pour {achievement:9472}'
L['options_icons_finding_your_waystones'] = '{achievement:9497}'
L['options_icons_finding_your_waystones_desc'] =
    'Afficher l\'emplacement de farm pour {achievement:9497}'
L['options_icons_song_of_silence'] = '{achievement:9541}'
L['options_icons_song_of_silence_desc'] =
    'Afficher les emplacements des monstres rares pour {achievement:9541}'
L['options_icons_buried_treasures'] = '{achievement:9548}'
L['options_icons_buried_treasures_desc'] =
    'Afficher les emplacements de l\'objet pour {achievement:9548}'
L['options_icons_the_stable_master'] =
    '{achievement:9539} et {achievement:9540}'
L['options_icons_the_stable_master_desc'] =
    'Afficher les emplacements des cibles pour {achievement:9539} et {achievement:9540}'
L['options_icons_making_the_cut'] = '{achievement:9617}'
L['options_icons_making_the_cut_desc'] =
    'Afficher les emplacements des |cffffff00Esclavagiste du Cercle-Sanglant|r pour {achievement:9617}'

L['tree_branches'] = nil
L['follower_goldmane_note'] = nil
L['graveltooth_note'] = nil
L['gorepetal_note'] = nil
L['sean-whitesea_note'] = nil
L['viking_pepe'] = 'Pépé viking'
L['fungus_covered_chest'] = 'Coffre couvert de moisissures'
L['steamwheedle_supplies'] = 'Ravitaillement de Gentepression'
L['adventurers_staff'] = 'Bâton de l’aventurier'
L['elemental_shackles'] = 'Chaînes élémentaires'
L['bounty_of_the_elements'] = 'Butin des éléments'
L['bounty_of_the_elements_note'] = nil
L['abandoned_fishing_rod'] = 'Canne à pêche abandonnée'
L['abandoned_fishing_rod_note'] = nil
L['pile_of_dirt'] = 'Un tas de terre'
L['adventurers_sack'] = 'Sac de l’aventurier'
L['mountain_climbers_pack'] = 'Sac à dos d’alpiniste'
L['freshwater_clam'] = 'Palourde d’eau douce'
L['elemental_offering'] = 'Offrande élémentaire'
L['warsong_helm'] = 'Heaume chanteguerre'
L['adventurers_pack'] = 'Sac à dos de l’aventurier'
L['goldtoes_plunder'] = 'Butin d’Orpion'
L['goldtoes_plunder_note'] = nil
L['genedar_debris'] = 'Débris du Génédar'
L['warsong_cache'] = 'Cache chanteguerre'
L['adventurers_pouch'] = 'Bourse de l’aventurier'
L['voidinfused_crystal'] = 'Cristal imprégné du Vide'
L['spirit_coffer'] = 'Coffre spirituel'
L['treasure_of_kullkrosh'] = 'Trésor de Kull’krosh'
L['treasure_of_kullkrosh_note'] = nil
L['goblin_pack'] = 'Sac à dos gobelin'
L['lost_pendant'] = 'Pendentif perdu'
L['bag_of_herbs'] = 'Sac d’herbes'
L['telaar_defender_shield'] = 'Bouclier de défenseur de Telaar'
L['abandoned_cargo'] = 'Chargement abandonné'
L['highmaul_sledge'] = 'Merlin de Cognefort'
L['bonecarved_dagger'] = 'Dague gravée en os'
L['smugglers_cache'] = 'Cache de contrebandier'
L['smugglers_cache_note'] = nil
L['hidden_stash'] = 'Fortune cachée'
L['burning_blade_cache'] = 'Cache de la Lame-Ardente'
L['gamblers_purse'] = 'Bourse du parieur'
L['polished-saberon-skull'] = 'Crâne de sabron poli'
L['saberon-stash'] = 'Planque de sabron'
L['important_exploration_supplies'] = 'Fournitures d’exploration importantes'
L['warsong_lockbox'] = 'Coffret chanteguerre'
L['appropriated_warsong_supplies'] = 'Fournitures chanteguerres soustraites'
L['warsong-spear'] = 'Lance chanteguerre'
L['ogre_beads'] = 'Perles ogres'
L['grizzlemaws_bonepile'] = 'Pile d’os de Grisegueule'
L['warsong_supplies'] = 'Fournitures chanteguerres'
L['warsong_spoils'] = 'Butin des Chanteguerres'
L['adventurers_mace'] = 'Masse de l’aventurier'
L['spirits_gift'] = 'Présent de l’esprit'
L['spirits_gift_note'] = nil
L['pale_elixir'] = 'Élixir de blafard'
L['watertight_bag'] = 'Sac étanche'

-------------------------------------------------------------------------------
------------------------------ SHADOWMOON VALLEY ------------------------------
-------------------------------------------------------------------------------

L['you_have_been_rylakinated_note'] =
    'Nécessite de terminer {quest:34355}.\n\nRécupérez {item:116978} sur les {npc:78999} à proximité pour contrôler {npc:86085}.'

L['options_icons_you_have_been_rylakinated'] = '{achievement:9481}'
L['options_icons_you_have_been_rylakinated_desc'] =
    'Affichez les emplacements des Rylaks pour {achievement:9481}'

L['voidseer_kalurg_note'] = nil
L['giant_moonwillow_cone'] = 'Cône de saule lunaire géant'
L['shadowmoon_treasure'] = 'Trésor d’Ombrelune'
L['dusty_lockbox'] = 'Coffret poussiéreux'
L['rotting_basket'] = 'Panier en décomposition'
L['fantastic_fish'] = 'Poisson fantastique'
L['stolen_treasure'] = 'Trésor volé'
L['bubbling_cauldron'] = 'Chaudron bouillonnant'
L['shadowmoon_exile_treasure'] = 'Trésor d’exilé d’Ombrelune'
L['mushroom_covered_chest'] = 'Coffre couvert de champignons'
L['mikkals_chest'] = 'Coffre de Mikkal'
L['orc_skeleton'] = 'Squelette orc'
L['cargo_of_the_raven_queen'] = 'Cargaison de la reine corbeau'
L['alchemists_satchel'] = 'Sacoche de l’alchimiste'
L['ancestral_greataxe'] = 'Bardiche ancestrale'
L['hanging_satchel'] = 'Sacoche suspendue'
L['false_bottomed_jar'] = 'Jarre à faux fond'
L['astrologers_box'] = 'Boîte d’astrologue'
L['grekas_urn'] = 'Urne de Greka'
L['beloveds_offering'] = 'Offrande du bien-aimé'
L['uzkos_knickknacks'] = 'Gris-gris d’Uzko'
L['veemas_herb_bag'] = 'Sac d’herbes de Veema'
L['ronokks-belongings'] = 'Affaires de Ronokk'
L['demonic_cache'] = 'Cache démoniaque'
L['iron_horde_tribute'] = 'Offrande de la Horde de Fer'
L['peaceful_offering'] = 'Offrande pacifique'
L['iron_horde_cargo_shipment'] = 'Cargaison de la Horde de Fer'
L['waterlogged_chest'] = 'Coffre détrempé'
L['vindicators_cache'] = 'Cache du redresseur de torts'
L['swamplighter_hive'] = 'Ruche de flammeroles'
L['scaly_rylak_egg'] = 'Œuf de rylak écailleux'

-------------------------------------------------------------------------------
------------------------------- SPIRES OF ARAK --------------------------------
-------------------------------------------------------------------------------

L['forbidden_tome_note'] = [[
Requiert que la quête journalière {quest:36682} soit active ou bien d'utiliser {item:122409}.
Interagissez avec le {npc:85992} pour recevoir au hasard l'un des trois buffs.
{spell:171783}
{spell:171787}
{spell:171768}
]]

L['options_icons_would_you_like_a_pamplet'] = '{achievement:9432}'
L['options_icons_would_you_like_a_pamplet_desc'] =
    'Afficher les emplacements des objets pour {achievement:9432}'

L['outcasts_belongings'] = 'Effets personnels de paria'
L['sun_touched_cache'] = 'Cache touchée par le soleil'
L['elixir_note'] = nil
L['relics_of_the_outcasts'] = 'Reliques des parias'
L['misplaced_scrolls'] = 'Parchemins égarés'
L['shattered_hand_cache'] = 'Cache de la Main-Brisée'
L['lost_herb_satchel'] = 'Sacoche d’herbes perdue'
L['shattered_hand_lockbox'] = 'Coffret de la Main-Brisée'
L['orcish_signaling_horn'] = 'Cor d’alarme orc'
L['varashas_egg'] = 'Œuf de Varasha'
L['garrison-supplies'] = 'Ravitaillement du fief'
L['roobys_roo_note'] = nil
L['ephials_dark_grimoire'] = 'Grimoire occulte d’Ephial'
L['an_old_key_note'] = nil
L['abandoned_mining_pick'] = 'Pioche de mineur abandonnée'
L['outcasts_pouch'] = 'Bourse de paria'
L['misplaced_scroll'] = 'Parchemin égaré'
L['offering-to-the-raven-mother'] = 'Offrande à la Mère corbeau'
L['pirate_pepe'] = 'Pépé pirate'
L['campaign_contributions'] = 'Cadeau de campagne électorale'
L['campaign_contributions_note'] = nil
L['coinbenders_payment'] = 'Gages de Chique-Piécette'
L['coinbenders_payment_note'] = nil
L['shredder_parts'] = 'Pièces de déchiqueteur'
L['spray_o_matic_5000_xt'] = 'Auto-vaporisateur 5000 XT'
L['mysterious_mushrooms'] = 'Champignons mystérieux'
L['ogron-plunder'] = 'Butin ogron'
L['smuggled_apexis_artifacts'] = 'Artéfacts apogides de contrebande'
L['sunderthorn_note'] = nil
L['waterlogged_satchel'] = 'Sacoche détrempée'
L['sethekk_ritual_brew'] = 'Breuvage rituel sethekk'
L['nizzixs_chest'] = 'Coffre de Nizzix'
L['nizzixs_chest_note'] = nil

-------------------------------------------------------------------------------
------------------------------------ TALADOR ----------------------------------
-------------------------------------------------------------------------------

L['wandering_vindicator_note'] =
    'Après l’avoir vaincu, vous devez récupérer son épée dans la pierre.'
L['legion_vanguard_note'] =
    'l’{npc:88494} est invoquée depuis le portail. Tuez les {npc:83023} autour du portail et ceux qui en sortent pour l’invoquer.'
L['taladorantula_note'] =
    'Ecrasez les sacs d’œufs et tuez les {npc:75258} autour pour invoquer {npc:77634}. Cela prend environ 3 à 5 minutes d’écrasement d’œufs.'
L['shirzir_note'] = 'Dans une tombe souterraine.'
L['kharazos_galzomar_sikthiss_note'] =
    '{npc:78710}, {npc:78713} et {npc:78715} partagent le même butin, point d’apparition et itinéraire.'
L['orumo_the_observer_note'] = [[
{npc:87668} nécessite 5 personnes se tenant sur des runes devant lui pour pouvoir le tuer.

Sinon, les démonistes peuvent utiliser {spell:48020} et les moines {spell:119996} pour se téléporter sur les runes, ce qui réduit le nombre de personnes requises à 3.

Une autre option consiste à utiliser 5 de vos propres personnages, à les déplacer un par un vers les runes et à les déconnecter à cet endroit.

La dernière option est d’utiliser un seul personnage. Allez à une rune, allumez-la, téléportez-vous ailleurs et répétez l’opération pour chaque rune. Le meilleur moyen est de fixer votre {item:6948} quelque part à proximité.

Vous pouvez combiner n’importe laquelle des méthodes ci-dessus pour invoquer {npc:87668}.
]]

L['options_icons_cut_off_the_head'] = '{achievement:9633}'
L['options_icons_cut_off_the_head_desc'] =
    'Afficher les emplacements des monstres rares pour {achievement:9633}'

L['light_of_the_sea'] = 'Lumière de la Mer'
L['soulbinders_reliquary'] = 'Reliquaire de la lieuse d’âme'
L['bonechewer_remnants'] = 'Restos de Mascahuesos'
L['bonechewer_spear'] = 'Lance de mâche-les-os'
L['bonechewer_spear_note'] = nil
L['treasure_of_angorosh'] = 'Trésor d’Ango’rosh'
L['aarkos_family_treasure'] = 'Trésor de la famille d’Aarko'
L['aarkos_family_treasure_note'] = nil
L['farmers_bounty'] = 'Butin du fermier'
L['relic_of_telmor'] = 'Relique de Telmor'
L['webbed_sac'] = 'Sac entoilé'
L['curious_deathweb_egg'] = 'Œuf de sépultoile bizarre'
L['rusted_lockbox'] = 'Coffret rouillé'
L['rusted_lockbox_note'] = nil
L['iron_box'] = 'Boîte en fer'
L['draenei_weapons'] = 'Armes draeneï'
L['knight_pepe'] = 'Pépé chevalier'
L['barrel_of_fish'] = 'Tonneau de poissons'
L['charred_sword'] = 'Épée carbonisée'
L['relic_of_aruuna'] = 'Relique d’Aruuna'
L['aruuna_mining_cart'] = 'Chariot de mine d’Aruuna'
L['keluus_belongings'] = 'Affaires de Keluu'
L['luminous_shell'] = 'Coquille lumineuse'
L['foremans_lunchbox'] = 'Boîte à repas du contremaître'
L['rooks_tacklebox'] = 'Boîte de pêche de Freux'
L['jug_of_aged_ironwine'] = 'Cruche de vin de Fer vieilli'
L['gift_of_the_ancients'] = 'Présent des anciens'
L['gift_of_the_ancients_note'] = nil
L['teroclaw_nest'] = 'Nid de terogriffe'
L['pure_crystal_dust'] = 'Poussière de cristal pure'

-------------------------------------------------------------------------------
--------------------------------- TANAAN JUNGLE -------------------------------
-------------------------------------------------------------------------------

L['deathtalon_note'] = ns.color.Red(
    'Seigneur de l’ombre Iskar crie: Au-delà du voile, on ne trouve que la mort !')
L['doomroller_note'] = ns.color.Red(
    'Maître de siège Mar’tak crie: Hah-ha ! Piétinez leurs cadavres !')
L['terrorfist_note'] = ns.color.Red(
    'Frogan crie: Un énorme gronnlin se dirige vers le Refuge des Rangari ! Nous allons avoir besoin d\'aide !')
L['vengeance_note'] = ns.color.Red(
    'Velhari la Despote crie: On écrase bien les insectes !')
L['iron_armada_note'] =
    'Ce jouet est aussi achetable à l\'HV et est requis pour {achievement:10353}.'
L['commander_kraggoth_note'] = 'Au sommet de la tour nord-est.'
L['grannok_note'] = 'Au sommet de la tour sud-est.'
L['szirek_the_twisted_note'] =
    'Capturez le Point fort à l\'Est pour invoquer ce rare.'
L['the_iron_houndmaster_note'] =
    'Capturez le Point fort à l\'Ouest pour invoquer ce rare.'
L['belgork_thromma_note'] = 'Cette grotte a deux entrées.'
L['driss_vile_note'] = 'Au sommet de la tour.'
L['overlord_magruth_note'] =
    'Tuez des orcs autour du camp pour le faire apparaître.'
L['mistress_thavra_note'] = 'Dans une grotte à l\'étage supérieur.'
L['cindral_the_wildfire'] = nil
L['dorg_the_bloody_note'] = 'Tuez des {npc:89706} et d\'autres ennemis au lieu d\'apparition.'
L['grand_warlock_netherkurse_note'] = 'Tuer des ennemis autour du point d\'apparition.'
L['ceraxas_note'] = 'Fait apparaître un {npc:90426} donnant la quête {quest:38428} pour ce familier après l\'avoir tué.'
L['commander_orgmok_note'] = 'Se déplace sur une {npc:89676}.'
L['rendrak_note'] =
    'Collectez 10 {item:124045} sur des {npc:89788} dans la tourbière. Combinez-les pour invoquer le rare.'
L['akrrilo_note'] =
    'Achetez un {item:124093} à {npc:92805} et utilisez-le à l\'arène de Croc’rila.'
L['rendarr_note'] =
    'Achetez un {item:124094} à {npc:92805} et utilisez-le à l\'arène de Croc’rila.'
L['eyepiercer_note'] =
    'Achetez un {item:124095} à {npc:92805} et utilisez-le à l\'arène de Croc’rila.'
L['the_night_haunter_note'] = [[
Accumulez 10 charges du debuff {spell:183612}.

Vous pouvez obtenir le debuff en interagissant avec des {npc:92651} ou en trouvant {npc:92645} (100% de chances).
]]
L['xemirkol_note'] = [[
Acheter un {item:128502} ou un {item:128503} au {npc:95424} et utilisez-le au point d'apparition pour être téléporté à {npc:96235}.

Les cristaux vous téléportent vers des rares aléatoires à proximité, donc votre meilleure option est de tuer {npc:92887} et d'utiliser le {item:128502}.

{npc:96235} a un long temps de respawn (environ un jour) et la meilleure façon de le trouver est après le redémarrage du royaume ou en utilisant le server hopping.
]]

L['discarded_helm_treasure'] = 'Heaume abandonné'
L['weathered_axe_treasure'] = 'Hache abîmée'
L['axe_of_the_weeping_wolf_treasure'] = 'Hache du loup hurlant'
L['sacrificial_blade_treasure'] = 'Lame sacrificielle'
L['crystallized_essence_of_the_elements_treasure'] =
    'Essence des éléments cristallisée'
L['snake_charmers_flute_treasure'] = 'Flûte du charmeur de serpents'
L['lodged_hunting_spear_treasure'] = 'Lance de chasse plantée'
L['looted_mystical_staff_treasure'] = 'Bâton mystique pillé'
L['the_blade_of_kranak_treasure'] = 'Lame de Kra’nak'
L['forgotten_champions_blade_treasure'] = 'Lame du champion oublié'
L['rune_etched_femur_treasure'] = 'Fémur gravé de runes'
L['book_of_zyzzix_treasure'] = 'Livre de Zyzzix'
L['the_commanders_shield_treasure'] = 'Bouclier du commandant'
L['scouts_belongings_treasure'] = 'Effets personnels de l\'éclaireur'
L['polished_crystal_treasure'] = 'Cristal poli'
L['strange_sapphire_treasure'] = 'Saphir étrange'
L['censer_of_torment_treasure'] = 'Encensoir de tourment'
L['overgrown_relic_treasure'] = 'Relique recouverte par la végétation'
L['jewel_of_hellfire_treasure'] = 'Joyau des Flammes infernales'
L['skull_of_the_mad_chief_treasure'] = 'Crâne du chef fou'
L['jeweled_arakkoa_effigy_treasure'] = 'Effigie arakkoa ornée de joyaux'
L['tome_of_secrets_treasure'] = 'Grimoire des secrets'
L['the_perfect_blossom_treasure'] = 'Bourgeon parfait'
L['brazier_of_awakening_treasure'] = 'Brasero de l\'Éveil'
L['dazzling_rod_treasure'] = 'Bâtonnet éblouissant'
L['crystallized_fel_spike_treasure'] = 'Pointe gangrenée cristallisée'
L['fel_drenched_satchel_treasure'] =
    'Sacoche imprégnée d’énergie gangrenée'
L['the_eye_of_grannok_treasure'] = 'Œil de Grannok'
L['borrowed_enchanted_spyglass_treasure'] =
    'Longue-vue enchantée « empruntée »'
L['bleeding_hollow_mushroom_stash_treasure'] =
    'Planque de champignons de l’Orbite-Sanglante'
L['mysterious_corrupted_obelist_treasure'] = 'Mystérieux obélisque corrompu'
L['spoils_of_war_treasure'] = 'Butin de guerre'
L['stolen_captains_chest_treasure'] = 'Coffre volé du capitaine'
L['bleeding_hollow_warchest_treasure'] =
    'Coffre de guerre de l’Orbite-Sanglante'
L['looted_bleeding_hollow_treasure_treasure'] =
    'Trésor de l’Orbite-Sanglante pillé'
L['partially_mined_apexis_crystal_treasure'] =
    'Cristal apogide partiellement miné'
L['pale_removal_equipment_treasure'] =
    'Équipement d\'extermination des blafards'
L['stashed_iron_sea_booty_treasure'] = 'Butin planqué de la mer de Fer'
L['ironbeards_treasure_treasure'] = 'Trésor de Barbe-de-Fer'
L['forgotten_sack_treasure'] = 'Sac oublié'
L['blackfang_island_cache_treasure'] = 'Cache de l’île des Crocs-Noirs'
L['fel_tainted_apexis_formation_treasure'] = 'Formation apogide gangrenée'
L['jewel_of_the_fallen_star_treasure'] = 'Joyau de l’étoile tombée'
L['forgotten_shard_of_the_cipher_treasure'] = 'Fragment de formule oublié'
L['strange_fruit_treasure'] = 'Fruit étrange'
L['stashed_bleeding_hollow_loot_treasure'] =
    'Butin planqué de l’Orbite-Sanglante'
L['forgotten_iron_horde_supplies_treasure'] =
    'Fournitures de la Horde de Fer oubliées'
L['bejeweled_egg_treasure'] = 'Œuf orné de joyaux'
L['dead_mans_chest_treasure'] = 'Le coffre du mort'
L['the_commanders_shield_note'] = 'A l\'intérieur du bâtiment.'
L['the_eye_of_grannok_note'] =
    'Au deuxième étage de la tour, près des escaliers.'
L['tower_chest_note'] = 'Au sommet d\'une tour.'
L['spoils_of_war_note'] = 'A l\'intérieur de la hutte.'
L['strange_fruit_note'] =
    'Le {item:127396} se transforme en 14 jours en {item:127394}.'
