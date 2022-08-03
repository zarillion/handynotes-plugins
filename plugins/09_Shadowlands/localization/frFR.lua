-- French translation by Lightuky EU-Khaz Modan
local ADDON_NAME, ns = ...
local L = ns.NewLocale('frFR')
if not L then return end

-------------------------------------------------------------------------------
---------------------------------- COVENANTS ----------------------------------
-------------------------------------------------------------------------------

L['covenant_required'] = 'Nécessite un membre de la congrégation %s.'
L['anima_channeled'] = 'anima canalisé vers %s.'

-------------------------------------------------------------------------------
--------------------------------- SHADOWLANDS ---------------------------------
-------------------------------------------------------------------------------

L['squirrels_note'] = 'Vous devez utiliser l\'émote /amour sur les bestioles, pas sur les familiers de combat'
L['options_icons_squirrels'] = '{achievement:14731}'
L['options_icons_squirrels_desc'] = 'Emplacements des bestioles pour {achievement:14731}'

-------------------------------------------------------------------------------
--------------------------------- ARDENWEALD ----------------------------------
-------------------------------------------------------------------------------

L['deifir_note'] = 'Faites tourner le rare en cercle et utilisez {spell:319566}  et {spell:319575} pour le ralentir et l\'étourdir.'
L['faeflayer_note'] = 'Dans une petite grotte cachée derrière une chute d\'eau.'
L['gormbore_note'] = 'Tuez des {npc:165420s} sur le sol grondant pour faire apparaître le rare.'
L['gormtamer_tizo_note'] = 'Tuez des Lutins Poil-de-pin dans le Maquis Voile-de-Brume jusqu\'à ce que {npc:164110} apparaisse.'
L['humongozz_note'] = 'Plantez un {item:175247} dans le Terreau humide pour y faire apparaître un {npc:164122}. Le champignon peut être récupéré sur de nombreux monstres de la zone.'
L['lehgo_note'] = 'Détruisez les œufs de Gorm frémissants et tuez des {npc:171827} jusqu\'à ce qu\'il apparaisse. Dans une grotte (entrée au sud-est dans les Terriers poussiéreux).'
L['macabre_note'] = [[
Apparaît en plusieurs endroits. Pour l'invoquer, placez-vous dans le mystérieux anneau de champignons avec deux autres joueurs et dansez ensemble.

• Le joueur 1 danse avec le joueur 2
• Le joueur 2 danse avec le joueur 3
• Le joueur 3 danse avec le joueur 1
]]
L['mymaen_note'] = 'Tuez les lutins putréronce dans la zone jusqu\'à ce qu\'il lance une émote et apparaisse.'
L['rainbowhorn_note'] = [[
Trouvez et cliquez sur la |cffffff00Grande corne du cerf runique|r pour invoquer le rare. La corne peut apparaître à plusieurs endroits dans Sylvarden.

Il apparaîtra toujours au nord de Tirna Vaal, fixez votre {item:6948} là et attendez l'émote dans le chat de la zone.

|cffff5400G|r|cffffaa00O|r|cffffff00Û|r|cffaaff00T|r|cff54ff00E|r|cff00ff55Z|r |cff00ffa9À|r |cff00ffffL|r|cff0055ff'|r|cff0000ffA|r|cff5400ffR|r|cffaa00ffC|r|cffff00ff-|r|cffff00aaE|r|cffff0054N|r|cffff0000-|r|cffff5400C|r|cffffaa00I|r|cffffff00E|r|cffaaff00L|r |cff54ff00!|r
]]
L['rootwrithe_note'] = 'Tapez sur les {npc:167928} jusqu\'à ce que le rare apparaisse.'
L['rotbriar_note'] = 'Parlez à {npc:171684} à proximité pour faire apparaître le rare après un peu de dialogue.'
L['slumbering_note'] = 'Courir dans le brouillard vous assommera et vous éjectera. Utilisez une fusée éclairante ou un familier avec une AOE pour le faire sortir du brouillard.'
L['skuld_vit_note'] = 'Dans une grotte bloquée par une barrière. Une Faë nocturne doit utiliser {spell:310143} pour entrer dans la grotte. Une fois qu\'il est engagé, la barrière disparaîtra.'
L['valfir_note'] = 'Cliquez sur le cocon d\'anima instable à mi-parcours du chemin et utilisez {spell:338045} pour retirer son {spell:338038}.'
L['wrigglemortis_note'] = 'Engagez la {npc:164179} pour faire apparaître le rare.'

L['night_mare_note'] = [[
Allez à Tirna Scithe et suivez le chemin de racines sur la falaise nord-ouest jusqu'à une charrette cassée. Là, vous pourrez ramasser une {item:181243} sur le sol.

Apportez cet objet à {npc:165704} au bassin Tombe-Lueur. Elle vous donnera une {item:181242} en échange de 10 {item:173204}. |cFFFF8C00Si elle n'est pas là, vous devez compléter les suites de quêtes |cFFFFFD00Règlement de compte chez les gormelins|r et |cFFFFFD00Spriggans farceurs|r.

Ensuite, parlez à {npc:160262} au Coeur de la forêt pour échanger l'{item:181242} contre un {item:178675}. Utilisez cet objet pour obtenir le buff {spell:327083}, vous permettant de voir la {npc:168135}.
]]

L['star_lake'] = 'Amphithéâtre du Lac étoilé'
L['star_lake_note'] = [[
Parlez à {npc:171743}, le metteur en scène, pour commencer l'une des rencontres spéciales. Le combat change chaque jour.

Participez aux sept combats pour débloquer {item:180748} de {npc:163714}.
]]

L['cache_of_the_moon'] = 'Rassemblez les cinq outils manquants de {npc:171360} dans le Jardin de la nuit et combinez-les pour créer {item:180753}. Rendez-lui sa boîte à outils et elle vous lancera {spell:334353}, ce qui vous permettra de voir la cache.'
L['cache_of_the_night'] = 'Rassemblez {item:180656}, {item:180654} et {item:180655}, trouvables dans l\'ensemble de la zone et combinez-les pour créer {item:180652}.'
L['darkreach_supplies'] = 'Sautez sur le {npc:169995} et planez vers le sud-ouest dans la flèche creusée située directement au-dessus du trésor de la Cache de la nuit.'
L['desiccated_moth'] = 'Sautez sur le {npc:169997} au nord-ouest de l\'arbre pour flotter vers une branche. Brûler {item:180784} dans le Brûleur d\'encens pour récupérer le trésor.'
L['dreamsong_heart'] = 'Utilisez le {npc:169997} sous l\'arbre pour vous faire propulser dans l\'arbre.'
L['elusive_faerie_cache'] = 'Prenez la {spell:333923} dans le coin nord-est du Bosquet du Brunant et utilisez-la pour piller le coffre.'
L['enchanted_dreamcatcher'] = 'Suspendue au sommet des racines. Il est plus simple de sauter sur le côté ouest pour l\'atteindre.'
L['faerie_trove'] = 'Situé sous la plate-forme.'
L['harmonic_chest'] = 'Il faut deux personnes. Une personne joue de la harpe et l\'autre joue du tambour pour ouvrir le coffre.'
L['hearty_dragon_plume'] = 'Cliquez sur {spell:333554} en haut des chutes d\'eau voisines et utilisez-la pour flotter vers la branche.'
L['old_ardeite_note'] = 'Tuer des {npc:160747}s et {npc:160748}s au sud-est de Lumefronde pour obtenir {item:174042}. Utilisez cet objet pour voler près du rare et l\'engager.'
L['swollen_anima_seed'] = 'Une grande graine se trouvant à l\'intérieur d\'un tronc d\'arbre.'

L['playful_vulpin_note'] = [[
Trouvez et utilisez l'émote correcte sur le {npc:171206} cinq fois pour obtenir la mascotte.

• commence à creuser curieusement = |cFFFF8C00/curieux|r
• erre sans pouvoir rester assis = |cFFFF8C00/assis|r
• chante tout seul = |cFFFF8C00/chanter|r
• danse avec joie = |cFFFF8C00/dancer|r
• s'assied seul et triste = |cFFFF8C00/caresser|r
]]

L['tame_gladerunner'] = 'Coureur halo-de-brume'
L['tame_gladerunner_note'] = [[
Lisez le "Conte de l'enchevêtrement", puis suivez les lampes bleues à travers le chemin jusqu'à ce que vous atteigniez {npc:171767}. Tuez-le et prenez ensuite le butin du {npc:171699}.

Si vous prenez un mauvais chemin et que {npc:171699} disparaît lorsque vous arrivez à la fin, revenez au début et lisez à nouveau "Conte de l'enchevêtrement" avant d'essayer à nouveau. Si {npc:171767} n'est pas là, vous devrez attendre qu'il réapparaisse.
]]

L['faryl_note'] = 'Que la défense de Sylvarden soit menée par les créatures du ciel.'
L['glitterdust_note'] = 'Les créatures de Sylvarden peuvent paraître dociles, mais elles défendront leur territoire avec la force et le courage des plus grands champions jamais connus. Avez-vous ce qu\'il faut ?'

L['lost_book_note'] = 'Rendez ce livre perdu à {npc:165867} dans le Bosquet du Souvenir.'
L['options_icons_faerie_tales'] = '{achievement:14788}'
L['options_icons_faerie_tales_desc'] = 'Afficher les emplacements des livres perdus pour la réalisation de {achievement:14788}.'

L['options_icons_wild_hunting'] = '{achievement:14779}'
L['options_icons_wild_hunting_desc'] = 'Emplacements des bêtes de Sylvarden pour {achievement:14779}'

L['options_icons_wildseed_spirits'] = 'Esprits de Graines Sauvages'
L['options_icons_wildseed_spirits_desc'] = 'Récompenses des esprits de graines sauvages'

L['divine_martial_spirit'] = 'Esprit martial divin'
L['divine_dutiful_spirit'] = 'Esprit dévoué divin'
L['divine_prideful_spirit'] = 'Esprit orgueilleux divin'
L['divine_untamed_spirit'] = 'Esprit indompté divin'

L['martial_spirit_label'] = '{item:178874}'
L['dutiful_spirit_label'] = '{item:178881}'
L['prideful_spirit_label'] = '{item:178882}'
L['untamed_spirit_label'] = '{item:177698}'

L['0x_wildseed_root_grain'] = '0x {item:176832}'
L['1x_wildseed_root_grain'] = '1x {item:176832}'
L['2x_wildseed_root_grain'] = '2x or 3x {item:176832}'
L['4x_wildseed_root_grain'] = '4x {item:176832}'

L['soulshape_cat_note'] = [[
Ciblez {npc:181694} et tapez /apaise
Peut apparaître au centre du sommet des 6 grands arbres autour de |cFFFFFF00Sylvarden|r :
• |cFFFFFF00Palun Chanterêve|r
• |cFFFFFF00Bassin Tombe-Lueur|r
• |cFFFFFF00Tirna Vaal|r
• |cFFFFFF00Creux Hibernal|r
• |cFFFFFF00Bosquet du Xylocarde|r
• |cFFFFFF00Bord-de-Griffe|r
]]
L['soulshape_corgi_note'] = [[
Ciblez {npc:174608} et tapez /pet
Une option Corgi sera immédiatement disponible en parlant avec {npc:181582}
]]
L['soulshape_well_fed_cat_note'] = [[
1. Récupérer des {item:187811} à |cffffff00Sombrehavre|r
2. Ciblez {npc:182093} et tapez /meow
3. |cFFFF8C00Ma'oh miaule vers vous avec avidité.|r
4. Ciblez {npc:182093} et utilisez les {item:187811}
L'option Âme de Chat (Bien Nourri) deviendra immédiatement disponible en parlant avec {npc:181582}
]]

-------------------------------------------------------------------------------
----------------------------------- BASTION -----------------------------------
-------------------------------------------------------------------------------

L['aegeon_note'] = 'Tuez des ennemis dans les environs jusqu\'à l\'apparition d\'Aegéon en renfort.'
L['ascended_council_note'] = 'Avec quatre autres joueurs, cliquez sur les cinq Vêpres de la pureté, du courage, de l\'humilité, de la sagesse et de la loyauté en même temps. Ensuite, dirigez-vous vers le Creuset de l\'aspirant pour vaincre le Conseil des Transcendés et révéler la cache.'
L['aspirant_eolis_note'] = 'Prenez un {item:180613} à proximité et lisez-le avec le PNJ ciblé pour l\'activer.'
L['baedos_note'] = 'Transportez les fûts de fruits de purian fermentés des alentours vers {npc:161536} jusqu\'à son activation.'
L['basilofos_note'] = 'Déplacez-vous autour du rocher jusqu\'à ce qu\'un repère violet apparaisse au-dessus de votre tête. Ne bougez pas et attendez que quatre émotes apparaissent, puis il apparaîtra.'
L['beasts_of_bastion'] = 'Bêtes du Bastion'
L['beasts_of_bastion_note'] = 'Parlez à {npc:161441} pour invoquer l\'une des quatre bêtes.'
L['bookkeeper_mnemis_note'] = 'A une chance d\'apparaître à la place des unités {npc:166867} de la zone.'
L['cloudfeather_patriarch_note'] = 'Tuez {npc:158110} dans la région jusqu\'à ce que le rare lance une emote et apparaisse.'
L['collector_astor_note'] = 'Lisez les six chapitres de L’héritage de Mercia éparpillés dans la salle, puis parlez à {npc:157979} pour recevoir {spell:333779}. Trouvez {item:180569} caché dans les environs et rendez-le pour faire apparaître le rare.'
L['corrupted_clawguard_note'] = 'Procurez-vous un {item:180651} dans la pièce ou à l\'avant-poste de Forgefeu en haut de la colline et utilisez-le pour réparer le {npc:171300}.'
L['dark_watcher_note'] = 'Ne peut être vu qu\'en étant mort. Parlez-lui et elle vous lancera {spell:332830} avant d\'attaquer.'
L['demi_hoarder_note'] = 'Commence avec 99 charges de {spell:333874}, réduisant les dégâts subis. Les charges sont lentement retirées par les dégâts. Le rare suivra un chemin et disparaîtra s\'il atteint la fin.'
L['dionae_note'] = 'Lorsqu\'elle est immunisée, cliquez sur les quatre {npc:163747} pour briser son bouclier.'
L['herculon_note'] = [[
Collectez des {item:172451} et utilisez-les pour donner des charges d'{spell:343531} à {npc:158659}. A 10 charges, il s'activera.

Les Granules peuvent être collectées à partir de Bidons d'Anima épuisés situés dans la pièce ou juste à l'extérieur.

|cFFFF8C00Ne peut être vaincu lors de l'expédition {wq:Assaut sur le vestibule}.|r
]]
L['reekmonger_note'] = 'Tuez des ennemis dans le Temple du Courage jusqu\'à ce que {npc:171327} lance une émote dans le chat et atterrisse.'
L['repair_note'] = 'Avec deux autres joueurs, cliquez sur l\'encens antique pour l\'invoquer.'
L['sotiros_orstus_note'] = 'Cliquez sur la Cloche noire pour invoquer les rares.'
L['sundancer_note'] = 'Cliquez sur la statue pour obtenir le buff {spell:332309}, puis utilisez un {item:180445} pour planer jusqu\'au rare et le monter.'
L['swelling_tear_note'] = 'Cliquez sur la {npc:171012} pour invoquer l\'un des trois rares. Les larmes peuvent apparaître à plusieurs endroits de la zone.'
L['unstable_memory_note'] = 'Peut être invoqué quand les {npc:171018}s sont présents. Amenez un {npc:171018} vers les autres pour lui donner 10 charges d\'{spell:333558}, le transformant ainsi en monstre rare.'
L['wingflayer_note'] = 'Pour l\'invoquer, cliquez sur la Corne du Courage sur la table voisine (au sud-est, en haut des escaliers).'

L['broken_flute'] = 'Tuez les {npc:170009} à proximité jusqu\'à ce qu\'ils laissent tomber la {item:180536}, puis utilisez les outils pour la réparer.'
L['cloudwalkers_coffer'] = 'Coffre de marche-nuage'
L['cloudwalkers_coffer_note'] = 'Utilisez les grandes fleurs violettes pour rebondir sur la plate-forme.'
L['experimental_construct_part'] = 'Procurez-vous un {item:180534} proche et utilisez-le pour réparer la pièce. L\'anima a plusieurs lieux d\'apparition.'
L['larion_harness'] = 'Situé à l\'intérieur du Hall des Bêtes.'
L['memorial_offering'] = 'Achetez un {item:180788} auprès de {npc:171526} au Repos de l\'Aspirant. Placez-le sur le plateau de boissons près du coffre pour obtenir la {item:180797}.'
L['scroll_of_aeons'] = 'Procurez-vous 2 {item:173973} dans la zone centrale et placez-les sur les plateaux d\'hommage à proximité pour révéler le trésor.'
L['vesper_of_silver_wind'] = 'Vêpre vent-d’argent'
L['vesper_of_silver_wind_note'] = 'Terminez le haut-fait {achievement:14339} et parlez ensuite à {npc:171732} près de l\'entrée des Flèches de l\'Ascension pour forger un {item:180858}.'

L['gift_of_agthia'] = 'Cliquez sur la torche allumée près du pont brisé au nord-ouest et portez {spell:333320} de torche en torche jusqu\'au coffre. En allumant la dernière torche, vous obtiendrez {spell:333063}.'
L['gift_of_chyrus'] = 'S\'agenouiller devant le coffre pour recevoir {spell:333045}.'
L['gift_of_devos'] = [[
Au sud-ouest du coffre se trouve une torche où l'on peut prendre la {spell:333912}. Chevaucher une monture, entrer en combat ou subir des dégâts fera tomber la flamme. Vous devez retourner au coffre et placer la flamme dans le brasero de la dévotion pour obtenir la {spell:333070}.

Avant de reprendre la flamme, tuez tous les monstres devant le coffre. Tout en transportant la flamme, cliquez sur n'importe quelle {npc:156571} en cours de route pour obtenir {spell:335012}, augmentant la vitesse de déplacement.
]]
L['gift_of_thenios'] = [[
Derrière le coffre se trouve une plateforme de vol nommée "Chemin de la sagesse". Cela mène à une séquence de plateformes possédant différents encens avec lesquels vous pouvez communier :

• Encens de la connaissance
• Encens de la patience
• Encens de la clairvoyance
• Encens du jugement

Communiez avec eux dans l'ordre Patience => Connaissance => Clairvoyance. Sur la plateforme du Jugement, un orbe appelé "Chemin de la sagesse perspicace" apparaîtra.

L'orbe vous emmènera au véritable encens du jugement. Communiez avec lui et la dernière plateforme de vol vous donnera {spell:333068}, permettant d'ouvrir le coffre.
]]
L['gift_of_vesiphone'] = 'Sonnez une des cloches pour faire apparaître une {npc:170849} et tuez-la pour recevoir le debuff {spell:333239}. L\'eau qui tombe en face du coffre supprimera ce debuff et vous donnera {spell:332785}.'

L['count_your_blessings_note'] = 'Placez un {item:178915} dans le bol de tribut pour recevoir la bénédiction.'
L['options_icons_blessings'] = '{achievement:14767}'
L['options_icons_blessings_desc'] = 'Afficher les lieux de tributs pour le succès {achievement:14767}.'

L['vesper_of_courage'] = 'Vêpre du Courage'
L['vesper_of_humility'] = 'Vêpre de l\'Humilité'
L['vesper_of_loyalty'] = 'Vêpre de Loyauté'
L['vesper_of_purity'] = 'Vêpre de la Pureté'
L['vesper_of_wisdom'] = 'Vêpre de la Sagesse'
L['vespers_ascended_note'] = 'Cliquez sur cette vêpre en même temps que les quatre autres vêpres pour invoquer le {npc:170899} au Creuset de l\'aspirant.'
L['options_icons_vespers'] = '{achievement:14734}'
L['options_icons_vespers_desc'] = 'Afficher les emplacements des vêpres pour le succès {achievement:14734}.'

L['anima_shard'] = 'Eclat de cristal d\'Anima perdu'
L['anima_shard_61225'] = 'Sur une plate-forme inférieure sous le pont.'
L['anima_shard_61235'] = 'Sur un rebord au-dessus de la cascade.'
L['anima_shard_61236'] = 'Au sommet d\'une arche à mi-chemin de la structure principale.'
L['anima_shard_61237'] = 'Sur un rebord juste au-dessus de l\'eau.'
L['anima_shard_61238'] = 'Dans l\'eau, sous un petit pont.'
L['anima_shard_61239'] = 'Au sommet d\'une mince colonne de pierre.'
L['anima_shard_61241'] = 'Au-dessus de l\'entrée de la Chambre de première réflexion.'
L['anima_shard_61244'] = 'Sur un rocher au bord de la falaise.'
L['anima_shard_61245'] = 'Sur un rocher au-dessus d\'une petite chute d\'eau.'
L['anima_shard_61247'] = 'Sur le mur au-dessus d\'une petite fontaine à eau.'
L['anima_shard_61249'] = 'Caché derrière une colonne de pierre au niveau supérieur du Pinacle de la pureté.'
L['anima_shard_61250'] = 'Situé derrière un escalier.'
L['anima_shard_61251'] = 'Situé sous une petite cloche.'
L['anima_shard_61253'] = 'Au sommet d\'une arcade en pierre tombée.'
L['anima_shard_61254'] = 'Au-dessus d\'une petite structure en bois.'
L['anima_shard_61257'] = 'Sur un petit rebord directement sous {npc:162523}.'
L['anima_shard_61258'] = 'Sur une petite corniche sous le Repos du Héros.'
L['anima_shard_61260'] = 'Au sol, sous la plate-forme.'
L['anima_shard_61261'] = 'Sur une corniche au-dessus de la grotte de {npc:163460}.'
L['anima_shard_61263'] = 'Au sommet d\'un pilier de pierre.'
L['anima_shard_61264'] = 'Au-dessus d\'une structure inclinée.'
L['anima_shard_61270'] = 'Situé au pied d\'un arbre.'
L['anima_shard_61271'] = 'Dans une bibliothèque sur la plateforme supérieure.'
L['anima_shard_61273'] = 'Sur un rebord situé directement sous la falaise en saillie.'
L['anima_shard_61274'] = 'Caché sous la plate-forme.'
L['anima_shard_61275'] = 'Dans le Hall des Bêtes, derrière quelques tonneaux.'
L['anima_shard_61277'] = 'Au sommet d\'une mince colonne de pierre.'
L['anima_shard_61278'] = 'Sous le pont, sur un rocher.'
L['anima_shard_61279'] = 'Au sommet d\'une mince colonne de pierre.'
L['anima_shard_61280'] = 'Sur le coin de la table.'
L['anima_shard_61281'] = 'Sur une corniche au-dessus du trésor des offrandes commémoratives.'
L['anima_shard_61282'] = 'Sur une corniche bien en dessous du sommet de la falaise. Sautez sur le rocher à côté ou vous serez ramené en haut.'
L['anima_shard_61283'] = 'Dans une grotte sous la chapelle de Miri, derrière quelques barils.'
L['anima_shard_61284'] = 'Sur une corniche sous un surplomb rocheux, le chemin est vers le sud.'
L['anima_shard_61285'] = 'Au bout d\'une petite corniche rocheuse.'
L['anima_shard_61286'] = 'Sur une corniche surplombant le chemin.'
L['anima_shard_61287'] = 'Sur un rebord au-dessus de la petite cascade.'
L['anima_shard_61288'] = 'Au bout d\'un petit rebord.'
L['anima_shard_61289'] = 'Au sommet du belvédère.'
L['anima_shard_61290'] = 'Au bout d\'une étroite corniche rocheuse.'
L['anima_shard_61291'] = 'Au fond de l\'étang, aux pieds d\'une statue.'
L['anima_shard_61292'] = 'Au-dessus de l\'arche de pierre.'
L['anima_shard_61293'] = 'Au sommet d\'une mince colonne de pierre au niveau inférieur.'
L['anima_shard_61294'] = 'Caché derrière une pile de barils.'
L['anima_shard_61295'] = 'Derrière {npc:156889} dans une étagère.'
L['anima_shard_61296'] = 'Derrière la grande cloche tombée.\n\n' .. ns.color.Red('Dans le donjon : Sillage nécrotique.')
L['anima_shard_61297'] = 'Derrière un pilier de pierre.\n\n' .. ns.color.Red('Dans le donjon : Sillage nécrotique.')
L['anima_shard_61298'] = 'Situé derrière une chaise longue.'
L['anima_shard_61299'] = 'Caché derrière une grande torche.'
L['anima_shard_61300'] = 'Sur un rebord surplombant la fontaine centrale.'
L['anima_shard_spires'] = 'Trois éclats de cristal sont situés dans le donjon des Flèches de l\'Ascension.'
L['options_icons_anima_shard'] = 'Éclats de cristal d\'anima perdus'
L['options_icons_anima_shard_desc'] = 'Afficher les emplacements des 50 éclats de cristal d\'anima perdus pour l\'exploit Mission éclatante.'

L['hymn_note'] = 'Trouvez les hymnes dans chacun des temples et obtenez leurs buffs pour obtenir le haut-fait.'
L['options_icons_hymns'] = '{achievement:14768}'
L['options_icons_hymns_desc'] = 'Afficher les emplacements des hymnes pour la réalisation de {achievement:14768}.'

L['stratios_note'] = 'Même les plus petites batailles doivent être menées avec honneur et prudence. Présentez votre équipe quand vous êtes prêt.'
L['thenia_note'] = 'Quelles magnifiques plaines dégagées ici. Un endroit glorieux pour se battre. Êtes-vous prêt ?'
L['zolla_note'] = 'Nous prenons nos défenses très au sérieux. Qu\'elles soient petites ou grandes, nous sommes pleinement engagés à maintenir et à former les ressources qui permettent au Bastion de rester fort.'

L['soulshape_otter_soul'] = 'Ciblez {npc:181682} et tapez /hug'

-------------------------------------------------------------------------------
----------------------------------- KORTHIA -----------------------------------
-------------------------------------------------------------------------------

L['carriage_crusher_note'] = 'Suivez la {npc:180182} dans l\'Antre et défendez-là jusqu\'à ce que l\'{npc:180246} attaque.'
L['chamber_note'] = 'Utilisez une {item:186718} de l\'{npc:178257} sur le Téléporteur ancien. Utilise le Téléporteur ancien réparé pour accéder à la chambre.'
L['consumption_note'] = [[
Ce monstre rare ne laissera pas de butin avant d'avoir consommé 40 {npc:179758} pour se transformer en sa forme bleue (Rare).

Ce monstre rare laissera tomber des objets de recherche supplémentaires après avoir consommé *de nouveau* 40 {npc:179758} pour se transformer en sa forme verte (Élite Rare).

|cFFFF0000Le monstre rare ne fera pas apparaître des {npc:179758} pour les consommer si engagé en combat.|r
]]
L['darkmaul_note'] = 'Collectez des {item:187153} sur les champignantre envahissants et nourrissez {npc:180063} avec. Vous devez terminer l\'événement 10 fois pour obtenir la monture.'
L['dislodged_nest_note'] = 'Cliquez sur un papillon nocif proche pour obtenir {spell:355181}. Utilisez le bouton d\'action supplémentaire {spell:355131} sur un {npc:178547} pour en prendre le contrôle et le conduire dans l\'arbre où se trouve le nid.'
L['escaped_wilderling_note'] = 'Cliquez sur le {npc:180014} pour lancer l\'événement de domptage.'
L['flayedwing_transporter_note'] = 'Cliquez sur {npc:178633} pour voler vers ou depuis le Caveau des Secrets.'
L['fleshwing_note'] = 'Parlez à {npc:180079} pour commencer l\'événement de collecte.'
L['forgotten_feather_note'] = 'Flottant sur une petite île à laquelle on accède en sautant depuis le Répit du gardien.'
L['konthrogz_note'] = 'Apparaît lors d\'un événement lié à un portail de dévoreur. L\'événement peut apparaître dans de nombreux endroits de Korthia.'
L['sl_limited_rare'] = '|cFFFF8C00Ce monstre rare n\'est pas disponible certains jours.|r'
L['krelva_note'] = 'Se déplace vers une autre plateforme à 80%, puis se déplace vers la terre ferme à 60%. |cFFFF8C00Vous devez attaquer le rare après 60% pour être compté dans le combat !|r'
L['kroke_note'] = 'Tuez des {npc:179029s} dans la zone jusqu\'à ce qu\'il apparaisse. Ne peut pas apparaître les jours où les {npc:179029s} sont absents.'
L['maelie_wanderer'] = '{npc:179912} apparaîtra à un endroit défini pour la journée. Une fois que vous avez utilisé {spell:355862} sur elle 6 jours différents, revenez voir {npc:179930} pour obtenir la monture.'
L['malbog_note'] = 'Parlez au {npc:179729} pour obtenir {spell:355078} et suivez les traces de pas jusqu\'à ce que vous trouviez les restes de chair.'
L['offering_box_note'] = 'Requiert une Petite clé des offrandes qui peut être trouvée sur le haut du mur ouest des ruines voisines.'
L['pop_quiz_note'] = 'L\'événement Pop Quizz apparaîtra aléatoirement sur la carte. Cliquez sur le Mât voilé abandonné et répondez aux questions de {npc:180162}.'
L['razorwing_note'] = 'Apportez 10 {item:187054} obtenus sur les dévoreurs dans la zone.'
L['reliwik_note'] = 'Cliquez sur l\'oeuf de rasaile non corrompu pour le faire descendre.'
L['spectral_bound_chest'] = 'Cliquez sur 3 clés spectrales proches pour déverrouiller le coffre.'
L['spectral_bound_note'] = 'Coffre cerclé spectral'
L['stonecrusher_note'] = 'Parlez à {npc:179974} pour commencer l\'événement.'
L['towering_exterminator_note'] = 'Apparaît à partir d\'un événement de portail antrelige. L\'événement peut apparaître dans de nombreux endroits de Korthia.'
L['worldcracker_note'] = 'Parlez à {npc:180028} pour déclencher l\'événement d\'escorte.'

L['archivist_key_note'] = 'Achetez %s de {npc:178257} pour le déverrouiller.'
L['korthian_shrine_note'] = 'Cliquez sur l\'autel pour obtenir {spell:352367} et voir le chemin caché vers l\'autel.'
L['num_research'] = '%d Recherche'
L['plus_research'] = '+Recherche'
L['options_icons_relic'] = '{achievement:15066}'
L['options_icons_relic_desc'] = 'Afficher les emplacements des 20 reliques pour {achievement:15066}.'

L['rift_portal_note'] = [[
Entrez dans |cFFFFFF00La Faille|r, une phase alternative de Korthia et de l'Antre contenant des monstres rares, reliques et coffres supplémentaires.

Nécessite une {item:186731}, qui peut être achetée à {npc:178257} une fois que vous avez atteint le rang 4 avec {faction:2472}. Les clés ont également une faible chance d'être laissées par les monstres rares et coffres dans la zone.

|cFFFF8C00Les portails de failles ne sont pas tous actifs à un moment donné.|r
]]
L['rift_rare_only_note'] = 'Ce monstre ne peut être vu et tué qu\'en étant entré dans |cFFFFFF00La Faille|r.'
L['rift_rare_exit_note'] = [[
Ce monstre rare sortira de |cFFFFFF00La Faille|r une fois qu'il aura été abordé à l'intérieur de celle-ci.

Les trois monstres rares de la faille apparaissent généralement dans un ordre déterminé à environ 20 minutes d'intervalle :

  1. {npc:179913}
  2. {npc:179608}
  3. {npc:179911}
]]
L['options_icons_rift_portal'] = '{npc:179595s}'
L['options_icons_rift_portal_desc'] = 'Afficher les emplacements des {npc:179595s} utilisés pour entrer dans |cFFFFFF00La Faille|r.'

L['riftbound_cache'] = 'Cache liée à la faille'
L['riftbound_cache_note'] = 'Il y a 4 caches uniques qui peuvent apparaître à des endroits précis dans la faille.'
L['options_icons_riftbound_cache'] = 'Caches liées à la faille'
L['options_icons_riftbound_cache_desc'] = 'Afficher les emplacements des caches à l\'intérieur de |cFFFFFF00La Faille|r.'

L['invasive_mawshroom'] = 'Champignantre envahissant'
L['invasive_mawshroom_note'] = 'Il y a 5 champignantres uniques qui peuvent chacun apparaître à des endroits précis.'
L['mawsworn_cache'] = 'Cache antrelige'
L['mawsworn_cache_note'] = 'Il y a 3 caches uniques qui peuvent chacune apparaître à des endroits précis.'
L['pile_of_bones'] = 'Pile d\'ossements'
L['relic_cache'] = 'Cache à relique'
L['shardhide_stash'] = 'Cachette de cuirasaure'
L['korthia_shared_chest_note'] = 'Peuvent être pillés 5 fois pour des reliques. La progression se réinitialise toutes les 30 minutes, ce qui les rendent en réalité illimités.'
L['unusual_nest'] = 'Tas de matériaux inhabituels.'
L['unusual_nest_note'] = 'Les 5 emplacements de nids peuvent être pillés chaque jour.'

L['options_icons_invasive_mawshroom_desc'] = 'Afficher les emplacements des Champignantres envahissants.'
L['options_icons_invasive_mawshroom'] = 'Champignantres envahissants'
L['options_icons_korthia_dailies_desc'] = 'Afficher les emplacements des Caches à reliques non marquées.'
L['options_icons_korthia_dailies'] = 'Caches à reliques'
L['options_icons_mawsworn_cache_desc'] = 'Afficher les emplacements des Caches antreliges.'
L['options_icons_mawsworn_cache'] = 'Caches antreliges'
L['options_icons_nest_materials_desc'] = 'Afficher les emplacements des Tas de matériaux inhabituels.'
L['options_icons_nest_materials'] = 'Tas de matériaux inhabituels'

-------------------------------------------------------------------------------
--------------------------------- MALDRAXXUS ----------------------------------
-------------------------------------------------------------------------------

L['chelicerae_note'] = 'Détruisez {npc:159885} pour activer le rare.'
L['deepscar_note'] = 'Peut apparaître dans plusieurs entrées du Théâtre de la souffrance.'
L['forgotten_mementos'] = 'Tirez la chaîne de la herse de la chambre forte, dans la chambre à l\'ouest du trésor pour ouvrir la porte.'
L['gieger_note'] = 'Tirez sur le {npc:162815} pour activer le rare.'
L['gristlebeak_note'] = 'Brisez tout les {npc:162761} à proximité pour affronter le rare.'
L['leeda_note'] = 'Tuez les deux {npc:162220} jusqu\'à ce que le rare apparaisse.'
L['nirvaska_note'] = 'N\'apparaît que lorsque l\'expédition {wq:Rappel Mortel} est active.'
L['ravenomous_note'] = 'Écrasez les {npc:159901s} dans la zone, jusqu\'à ce que le rare apparaisse.'
L['sabriel_note'] = 'Peut apparaître comme l\'un des champions du Théâtre de la souffrance.'
L['schmitd_note'] = 'Utilisez la {spell:313451} proche pour briser son bouclier.'
L['tahonta_note'] = 'La monture ne pourra être obtenue que si vous avez {npc:159239} avec vous !'
L['taskmaster_xox_note'] = 'Partage son apparition avec {npc:160204}, {npc:160230} et {npc:160226}.'
L['theater_of_pain_note'] = 'Votre premier boss tué chaque jour a une chance de donner la monture.'
L['zargox_the_reborn_note'] = [[
Utilisez {item:175841} en plus de la {npc:157124}. Pour obtenir l'orbe, vous devez compléter la quête {quest:57245} de {npc:157076} et lui parler à nouveau.

Si la {npc:157124} n'est pas là, réanimez les {npc:157132} dans la zone jusqu'à ce qu'elle apparaisse.
]]
L['mixed_pool_note'] = [[
Rassemblez des ingrédients des monstres environnants et jetez-les dans la bassine. Une fois que 30 ingrédients ont été ajoutés, un des sept rares apparaîtra selon la combinaison utilisée.

• Récupérez {spell:306713} sur les {npc:167923} et {npc:167948} au nord.

• Récupérez {spell:306719} sur les {npc:165015} et {npc:171142} au sud.

• Récupérez {spell:306722} sur les {npc:165027} et {npc:166438} au sud.
]]

L['blackhound_cache'] = 'Cache de Noir-Mâtin'
L['blackhound_cache_note'] = 'Invoquez {npc:157843} à la Fabrique à Abominations, puis escortez-le jusqu\'à l\'Avant-poste de Noir-Mâtin.'
L['bladesworn_supply_cache'] = 'Cache de fournitures des ligelames'
L['cache_of_eyes'] = 'Cache des yeux'
L['cache_of_eyes_note'] = 'Apparaît à plusieurs endroits dans la Forteresse Aveugle.'

L['glutharns_note'] = 'Dans une grotte derrière la cascade de limon. Tuez {npc:172485} et les deux {npc:172479} pour déverrouiller le coffre.'
L['kyrian_keepsake_note'] = 'Inspectez le {npc:169664} pour ramasser le trésor.'
L['misplaced_supplies'] = 'Au sommet du champignon géant. Courez vers le haut de la colline et sautez sur le petit champignon brun, puis courez vers le haut de la grande colline et sautez sur le champignon géant.'
L['necro_tome_note'] = 'Pour accéder à la tour, vous devez commencer une petite suite de quêtes à partir de {npc:166657}. Dans une bibliothèque au dernier étage.'
L['plaguefallen_chest_note'] = [[
Placez-vous dans la bave verte (nécessite de se soigner !) pour obtenir 10 charges de {spell:330069} et être transformé en {spell:330092}.

Une fois transformé, visitez la grotte située sous la plate-forme de {npc:158406} (entrée du côté est) et cliquez sur le tuyau pour être transporté jusqu'au coffre.
]]
L['ritualists_cache_note'] = 'Ramassez les {item:181558} au sol et utilisez-les pour compléter le Livre des rituels de lien.'
L['runespeakers_trove_note'] = 'Trouvez {npc:170563} à l\'est et tuez-le pour obtenir la {item:181777}.'
L['stolen_jar_note'] = 'Dans une grotte sous le champignon géant.'
L['strange_growth_note'] = 'Tirez sur l\'{npc:165037} pour révéler le trésor.'
L['vat_of_slime_note'] = 'Cliquez sur la bouteille sur la table, puis sur la cuve de limon.'

L['giant_cache_of_epic_treasure'] = 'Cache géante de trésors épiques'
L['spinebug_note'] = [[
Oh, regardez ! Une {spell:343124} ! Approchez-vous, courageux aventurier, ce n'est sûrement pas une ruse. Attends, est-ce la musique de Karazhan ? Qu'est-ce que ce {npc:174663} fait ici... ?

{spell:343163}!
]]

L['oonar_sorrowbane_note'] = [[
Dans le Théâtre de la souffrance, vous trouverez {item:180273} coincé dans le sol et le {item:181164} qui y est attaché. Pour les libérer :

• Achetez 1 {item:182163} à {npc:171808} à Revendreth.
• Achetez 1 {item:180771} à {npc:166640} à Maldraxxus.
• Achetez 1 {item:181163} à {npc:169964} à Maldraxxus.
• Obtenez 2 charges de {spell:306272} de l'expédition {wq:Quelques accidents de parcours} à l'ouest.
• Mangez 4x {spell:327367} à la Deliquescense de Glutharn.
• Utilisez rapidement le {item:181163}, buvez les deux potions et tirez sur l'épée ainsi que le bras.

Pour retirer seulement le bras, seuls quatre 4x {spell:327367} sont nécessaires.
]]

L['pet_cat'] = 'Caressez ce satané chat !'
L['hairball'] = ns.color.Red('N\'apparaît que dans le Sanctuaire Purulent à l\'intérieur du donjon Malepeste !')
L['lime'] = 'Située au sommet de la grande arche osseuse.'
L['moldstopheles'] = 'Courez à l\'arrière de la tige et sautez sur les plates-formes en champignons. Pour la dernière plate-forme, utilisez une monture et sautez à l\'angle où il rencontre la tige.'
L['pus_in_boots'] = 'Situé sous le pont.'

L['options_icons_slime_cat'] = 'Chatons'
L['options_icons_slime_cat_desc'] = 'Afficher les emplacements des chatons pour le haut-fait Neuf vies après la mort.'

L['dundley_note'] = 'Je me battrai pour la victoire et gagnerai le respect que je mérite enfin. Le seul inconvénient est que tout ce que je possède est maintenant collant. Tout.'
L['maximillian_note'] = 'J\'ai attendu des dizaines d\'années pour trouver un adversaire digne de ce nom. Au vainqueur, le butin !'
L['rotgut_note'] = 'Tord-Tripes. Les restes. Pièces supplémentaires. Battez-vous.'

L['ashen_ink_label'] = '{item:183690}'
L['ashen_ink_note'] = 'Drop aléatoire sur {npc:157125}'

L['jagged_bonesaw_label'] = '{item:183692}'
L['jagged_bonesaw_note'] = 'Drop aléatoire sur {npc:159105}'

L['discarded_grimoire_label'] = '{item:183394}'
L['discarded_grimoire_note'] = 'Complétez {quest:62297} donnée par {npc:174020}'

L['sorcerers_blade_label'] = '{item:183397}'
L['sorcerers_blade_note'] = 'Complétez {quest:62317} donnée par le |cFFFFFF00Message de l’ensorceleur|r à l\'intérieur du |cFFFFFF00Caveau des âmes|r. En bas des escaliers et à gauche sur la bibliothèque.'

L['mucosal_pigment_label'] = '{item:183691}'
L['mucosal_pigment_note'] = 'Récupérables sur n\'importe quelle gelée, gouttelette, limon, rare ou géant près de la |cFFFFFF00Maison de la Peste|r ou de la zone près de {npc:162727}'

L['amethystine_dye_label'] = '{item:183401}'
L['amethystine_dye_note'] = 'Complétez {quest:62320} donnée par {npc:174120}'

L['ritualists_mantle_label'] = '{item:183399}'
L['ritualists_mantle_note'] = 'Complétez {quest:62308} donnée par {npc:172813}. Il faut 3 personnes pour invoquer {npc:174127}.'

L['options_icons_crypt_couture'] = '{achievement:14763}'
L['options_icons_crypt_couture_desc'] = 'Emplacements des customisations du déguisement d\'Acolyte nécrotique pour {achievement:14763}'

L['soulshape_saurid_note'] = 'Dans une petite grotte. Ciblez le {npc:182105} et tapez /bow'

-------------------------------------------------------------------------------
--------------------------------- REVENDRETH ----------------------------------
-------------------------------------------------------------------------------

L['amalgamation_of_filth_note'] = 'Quand l\'expédition {wq:Sale boulot : équipe de démolition} est disponible, cliquez sur une Boîte à ordures et utilisez {spell:324115} dans l\'eau.'
L['amalgamation_of_light_note'] = 'Déplacez les trois Miroirs piégés pour libérer le rare.'
L['amalgamation_of_sin_note'] = 'Lors de l\'expédition {wq:Invocation de vices}, ramassez le Catalyseur de puissance pour avoir une chance d\'obtenir {item:180376}, puis utilisez l\'objet pour invoquer le rare.'
L['bog_beast_note'] = 'A une chance d\'apparaître pendant l\'expédition {wq:Bourbe à gogo} après avoir utilisé {item:177880} sur une {npc:166206}.'
L['endlurker_note'] = 'Cliquez sur le Pieu d\'Anima près du cadavre de {npc:165229} et utilisez {spell:321826} au sommet de la Faille chatoyante.'
L['executioner_aatron_note'] = 'Tuez les trois PNJ proches {npc:166715} pour retirer {spell:324872}.'
L['executioner_adrastia_note'] = 'Libérez des {npc:161299s} dans les environs et escortez-les jusqu\'à leur disparition. L\'{npc:161310} finira par apparaître pour écraser l\'insurrection.'
L['famu_note'] = 'Parlez à {npc:166483} pour déclencher l\'événement.'
L['grand_arcanist_dimitri_note'] = 'Tuez les quatre PNJ {npc:167467} pour libérer le rare.'
L['harika_note'] = 'À Combeffroi, à l\'ouest, procurez-vous un {item:176397}, puis donnez le carreau à {npc:165327} et dites-lui de faire tomber le rare.'
L['innervus_note'] = 'Tuez les {npc:160375}s proches pour obtenir une {item:177223} et déverrouiller la crypte.'
L['leeched_soul_note'] = 'A l\'intérieur de la crypte voisine. Marchez près de {npc:165151} pour démarrer l\'événement.'
L['lord_mortegore_note'] = 'Tuez les monstres alentour pour obtenir {item:174378} et utilisez-le pour donner du pouvoir à un {npc:161870}. Le rare apparaîtra une fois que les quatre sceaux seront activés.'
L['madalav_note'] = 'Cliquez sur le marteau de Madalav sur l\'enclume voisine pour l\'invoquer.'
L['manifestation_of_wrath_note'] = 'A une chance d\'apparaître lorsqu\'une {npc:169916} est recueillie au cours de l\'expédition {wq:Déferlement d\'âmes}.'
L['scrivener_lenua_note'] = 'Remettre {npc:160753} à la Bibliothèque interdite.'
L['sinstone_hoarder_note'] = 'Tentez de vous procurer le {npc:162503} et le rare se manifestera.'
L['sire_ladinas_note'] = 'Ramassez un reste de lumière à proximité et utilisez {spell:313065} sur {npc:157733}.'
L['soulstalker_doina_note'] = 'Descendez et traversez le miroir quand elle s\'enfuit.'
L['tomb_burster_note'] = 'Peut être invoqué si {npc:155777} est piégé dans une toile. Tuez les {npc:155769}s et les vagues de {npc:155795}s proches jusqu\'à ce que le rare apparaisse.'
L['worldedge_gorger_note'] = [[
Obtenez un {item:173939} sur les Mange-monde, Dévoreurs et Acarus dans le Malbois et le Marais des Affres. Utilisez-le pour allumer les braseros garde-âme et invoquer le rare.

A une chance de lâcher un {item:180583}, qui commence une suite de quête de 7 jours pour obtenir la monture {spell:333027}.
]]

L['dredglaive_note'] = 'Sous le pont, dans le cadavre de {npc:173671}.'
L['forbidden_chamber_note'] = 'Procurez-vous un Bidon d\'Anima jeté devant la porte fermée à clé et apprenez {spell:340701}. Utilisez-le pour vider cinq des {npc:173838}s à proximité, puis utilisez {spell:340866} devant le {npc:173786}.'
L['gilded_plum_chest_note'] = 'Tuez les {npc:166680} qui errent sur la route.'
L['lost_quill_note'] = 'Ramasser {item:182475} depuis la bouteille sur la table de la bibliothèque interdite.'
L['rapier_fearless_note'] = 'Cliquez sur la rapière au sol, puis vaincre {npc:173603}.'
L['remlates_cache_note'] = 'Sur le mur extérieur de Sombrehavre, derrière la crypte.'
L['smuggled_cache_note'] = ns.color.Red('AVANT DE RAMASSER LE BUTIN: ') .. 'Assurez-vous que vous avez terminé la quête secondaire {quest:60480} ou vous manquerez 40 {currency:1820} provenant du trésor et de la quête.'
L['taskmaster_trove_note'] = 'Lisez les rites d\'entrée et sortie, puis dirigez-vous avec précaution vers le coffre.'
L['the_count_note'] = 'Collectez 99 {currency:1820} dans le Marais des Affres et amenez-les ensuite à {npc:173488}.'

L['forgotten_anglers_rod'] = 'Canne à pêche oubliée'

L['loyal_gorger_note'] = 'Visitez le Marais des Affres et complétez une quête journalière offerte par votre {npc:173498} 7 fois pour l\'obtenir en tant que monture.'

L['sinrunner_note'] = 'Apportez de la nourriture et des fournitures à {npc:173468} pendant six jours pour obtenir ses rênes. Elle ne se présente que quelques minutes à la fois.'
L['sinrunner_note_day1'] = 'Offrez à Blanchette 8 {item:182581} provenant de zones agricoles de la Marche de L\'Ouest.'
L['sinrunner_note_day2'] = 'Obtenez une {item:182585} de {npc:173570} à Sombrehavre et utilisez-la pour nettoyer Blanchette.'
L['sinrunner_note_day3'] = 'Equiper Blanchette avec 4 {item:182595} trouvés sur les routes entourant Sombrehavre.'
L['sinrunner_note_day4'] = 'Ramassez un {item:182620} près de {npc:173570} et remplissez-le avec de l\'eau provenant de Bastion ou de Sylvarden. Ramenez le {item:182599} à Blanchette.'
L['sinrunner_note_day5'] = 'Equipez Blanchette d\'un {item:182597}, vendu par {npc:171808} près du Marché Nocturne en échange de viandes assorties.'
L['sinrunner_note_day6'] = 'Nourrissez blanchette avec 3 {item:179271}, vendus par {npc:167815} à la Gargote.'

L['options_icons_carriages'] = 'Calèches'
L['options_icons_carriages_desc'] = 'Afficher les emplacements et les parcours des calèches.'
L['options_icons_dredbats'] = '{npc:161015s}'
L['options_icons_dredbats_desc'] = 'Afficher les emplacements et les trajets des {npc:161015s}.'
L['options_icons_sinrunners'] = '{npc:174032s}'
L['options_icons_sinrunners_desc'] = 'Afficher les emplacements et les trajets des {npc:174032s}.'

L['addius_note'] = 'Les êtres faibles d\'esprit ne devraient pas me faire perdre mon temps, mais si vous insistez, je vous montrerai la vraie douleur.'
L['eyegor_note'] = 'Carnœil prêt pour la bataille !'
L['sylla_note'] = 'On ne peut jamais s\'attendre à avoir une bataille distinguée ici dans cette terrible région, mais hélas, nous y sommes. Ne me faites pas perdre mon temps.'

L['avowed_ritualist_note'] = 'Rassemblez les {npc:160149s} à proximité pour les absoudre.'
L['fugitive_soul_note'] = 'Amenez cette {npc:160149} à un {npc:166150} proche pour commencer un rituel d\'absolution.'
L['souls_absolved'] = 'âmes absoutes'
L['options_icons_fugitives'] = '{achievement:14274}'
L['options_icons_fugitives_desc'] = 'Afficher les emplacements des âmes fugitives pour la réalisation de {achievement:14274}.'

L['grand_inquisitor_note'] = 'Donnez 10 {item:180451} à l\'{npc:160248} pour avoir une chance d\'obtenir cette stèle du vice.'
L['high_inquisitor_note'] = 'Donnez 250 {currency:1816} à l\'{npc:160248} pour avoir une chance d\'obtenir cette stèle du vice.'
L['inquisitor_note'] = 'Donnez 100 {currency:1816} à l\'{npc:160248} our avoir une chance d\'obtenir cette stèle du vice.'
L['options_icons_inquisitors'] = 'Inquisiteurs'
L['options_icons_inquisitors_desc'] = 'Afficher les emplacements des inquisiteurs pour le succès {achievement:14276}.'

L['bell_of_shame_note'] = 'Toutes les 30 minutes, un fantôme aléatoire apparaîtra à côté de {npc:176006}.\n\nRéparez la {npc:176056} pour 30 {currency:1820} et faites ensuite sonner la cloche pour recevoir un buff provenant du fantôme actif.\n\nUn des fantômes, {npc:176043}, donne {spell:346708} qui offre un taux de drop accru des {item:172957} dans la zone environnante des |cFFFFFD00Salles de l’Expiation|r.'
L['atonement_crypt_label'] = 'Crypte de l’Expiation'
L['atonement_crypt_note'] = 'Ouvrez une |cFFFFFD00Crypte de l’Expiation|r en utilisant une {item:172957}.'
L['atonement_crypts_opened'] = 'Cryptes de l’Expiation ouvertes'
L['atonement_crypt_key_label'] = '{item:172957}'
L['atonement_crypt_key_note'] = 'Les {item:172957} peuvent être obtenues sur la plupart des monstres dans la zone des |cFFFFFD00Salles de l\'Expiation|r.\n\n{npc:158902}\n{npc:176109}\n{npc:158894}\n{npc:156911}\n{npc:158910}\n{npc:176121}\n{npc:176114}\n{npc:156909}\n{npc:156256}\n{npc:176124}\n{npc:156260}\n{npc:159027}\n{npc:158897}\n{npc:176116}\n{npc:158908}\n{npc:176122}\n\nLe taux de drop le plus élevé est celui des {npc:158892}.'
L['options_icons_crypt_kicker'] = '{achievement:14273}'
L['options_icons_crypt_kicker_desc'] = 'Afficher les lieux de farm pour le haut-fait {achievement:14273}.'

L['broken_mirror'] = 'Miroir brisé'
L['broken_mirror_note'] = 'Un groupe de trois miroirs brisés sera actif chaque jour. Utilisez une {item:181363} pour réparer chaque miroir et ouvrir le |cFFFFFD00Coffre oublié|r à l\'intérieur.'
L['broken_mirror_crypt'] = 'Dans une crypte.'
L['broken_mirror_elite'] = 'Dans une petite pièce remplie de monstres élite.'
L['broken_mirror_group'] = 'Groupe'
L['broken_mirror_house'] = 'A l\'intérieur de la maison.'
L['broken_mirror_61818'] = 'Dans une petite pièce avec {npc:173699}.'
L['broken_mirror_61819'] = 'Dans une petite pièce au rez-de-chaussée.'
L['broken_mirror_61827'] = 'Dans une petite pièce.'
L['options_icons_broken_mirror'] = 'Miroirs brisés'
L['options_icons_broken_mirror_desc'] = 'Afficher les emplacements des miroirs brisés.'

L['soulshape_chicken_note'] = [[
1. Récupérez des {item:187811} à |cffffff00Sombrehavre|r
2. Ciblez {npc:181660} et tapez /chicken
3. |cFFFF8C00L'Ame perdue glousse vers vous avec avidité.|r
4. Ciblez {npc:181660} et utilisez les {item:187811}
]]
L['spectral_feed_label'] = '{item:187811}'
L['spectral_feed_note'] = [[
{item:187811} sont utilisées pour nourrir {npc:181660} à |cffffff00Revendreth|r pour obtenir {item:187813}
{item:187811} sont utilisées pour nourrir {npc:182093} à |cFFFFFF00Sylvarden|r pour obtenir |cFF00FF00[Ame de Chat Bien Nourri]|r
|cFFFF8C00{item:187811} ont un timer de 10 minutes et un respawn de 60 minutes|r
]]

-------------------------------------------------------------------------------
----------------------------------- THE MAW -----------------------------------
-------------------------------------------------------------------------------

L['return_to_the_maw'] = 'Retour à l\'Antre'
L['maw_intro_note'] = [[
Complétez la suite de quêtes d'introduction pour débloquer les rares et les événements dans l'Antre.

Jusqu'à ce que vous rameniez {npc:170651} à Oribos, vous serez séparé de la plupart des autres joueurs.
]]

L['apholeias_note'] = 'Avec 3 autres joueurs, placez-vous sur les coins de la plateforme et lancez {spell:331783} pour invoquer le rare.'
L['dekaris_note'] = 'Au sommet d\'un gros rocher en saillie.'
L['deomen_note'] = 'Pour ouvrir sa cage, entrez dans la pièce au sud et activez les deux verrous situés de chaque côté de la salle.'
L['drifting_sorrow_note'] = 'Tuez des {npc:175246s} près de l\'orbe flottante pour activer le boss.'
L['ekphoras_note'] = 'Avec 3 autres joueurs, placez-vous sur les coins de la plateforme et lancez {spell:330650} pour invoquer le rare.'
L['etherwyrm_note'] = 'Nécessite que l\'assaut des Faë nocturnes soit actif. Tuez un {npc:179030} en étant dans la faille pour obtenir l\'objet {item:186190}. Utilisez la clé sur la cage du Wyrm d\'éther (à l\'extérieur de la faille) dans la caverne du Creux Désolé (où se trouve {npc:175821} lorsque l\'assaut n\'est pas actif).'
L['fallen_charger_note'] = 'Après le cri dans toute la zone, il prendra l\'un des deux chemins jusqu\'à ce qu\'il atteigne Korthia où il disparaîtra.'
L['ikras_note'] = 'Vole autour du Fort de la Perdition. C\'est un bon endroit pour l\'attirer.'
L['lilabom_note'] = [[
Collectez les 5 parties pour reconstruire le familier. Certaines parties peuvent apparaître à plusieurs endroits.

• {item:186183}
• {item:186184}
• {item:186185}
• {item:186186}
• {item:186187}
]]
L['orophea_note'] = 'Ramassez {spell:337143} au sud-est et proposez-le à {npc:172577} pour l\'activer.'
L['sanngror_note'] = 'S\'il n\'est pas attaquable, attendez qu\'il n\'expérimente plus sur des âmes.'
L['sly_note'] = 'Parlez à l\'{npc:179068} pour obtenir le buff {spell:353322} et trouvez {npc:179096} lors de 3 assauts kyrians différents.'
L['talaporas_note'] = 'Avec 3 autres joueurs, placez-vous sur les coins de la plateforme et lancez {spell:331800} pour invoquer le rare.'
L['valis_note'] = 'Cliquez sur les trois {npc:174810} dans le bon ordre pour invoquer le rare. L\'ordre change à chaque fois et le fait de cliquer sur la mauvaise rune vous inflige des dégâts et vous applique le debuff {spell:343636}.'
L['yero_note'] = 'Approchez {npc:172862} puis suivez-le dans une grotte voisine où il devient hostile.'

L['exos_note'] = [[
Tuez les trois autres Hérauts du Deuil, de la Souffrance et du Chagrin pour recueillir leurs gravures.

• {item:182328}
• {item:182326}
• {item:182327}

Combinez les trois gravures pour créer {item:182329}, qui peut être utilisé pour invoquer le rare à l'Autel de la Domination. Utilisez le {npc:173892} pour atteindre le niveau supérieur.
]]

L['animaflow_teleporter_note'] = 'Activer pour se rendre directement à d\'autres endroits dans l\'Antre.'
L['chaotic_riftstone_note'] = 'Activer pour {spell:344157} rapidement à travers l\'Antre.'
L['venari_note'] = [[
Utilisez {currency:1767} pour acheter des améliorations pour l'Antre et Tourment.

|cFFFF8C00Les améliorations de Tourment liées au compte s'afficheront comme incomplètes sur les alts !|r
]]
L['venari_upgrade'] = 'Améliorations de {npc:162804}'
L['torghast'] = 'Tourment'
L['Ambivalent'] = 'Incertitude'
L['Appreciative'] = 'Reconnaissance'
L['Apprehensive'] = 'Crainte'
L['Cordial'] = 'Bienveillance'
L['Tentative'] = 'Hésitation'

L['stygian_cache'] = 'Cache stygienne'
L['stygian_cache_note'] = 'Une seule personne peut récupérer le butin de la cache à chaque apparition !'

L['box_of_torments_note'] = 'Ouvrez les {npc:173837} sous le Tremaculum.'
L['tormentors_notes_note'] = 'Fouillez le corps du {npc:173811}.'
L['words_of_warden_note'] = 'Examinez le |cffffff00Papier Brouillon|r sur un rocher derrière quelques pots.'

-- Locations given relative to a map area name
L['nexus_area_calcis_branch'] = 'En haut sur une branche de cristal dans Calcis (utilisez la prise de grappin)'
L['nexus_area_calcis_crystals'] = 'Derrière certains cristaux bleus dans Calcis'
L['nexus_area_cradle_bridge'] = 'Sous le pont dans le Berceau des Ruines'
L['nexus_area_domination_bridge'] = 'Sur un pont au sud de l\'Autel de la Domination'
L['nexus_area_domination_edge'] = 'Sur le bord au sommet de l\'Autel de la Domination'
L['nexus_area_domination_room'] = 'Dans une petite pièce au sommet de l\'Autel de la Domination'
L['nexus_area_domination_stairs'] = 'Au sommet de l\'autel de la domination, à côté du {npc:173904}'
L['nexus_area_gorgoa_bank'] = 'Sur la rive de Gorgoa (la rivière des âmes)'
L['nexus_area_gorgoa_middle'] = 'En plein milieu de la rivière yo !'
L['nexus_area_gorgoa_mouth'] = 'A l\'embouchure de Gorgoa (la rivière des âmes)'
L['nexus_area_perdition_wall'] = 'Le long du mur extérieur du Fort de la Perdition'
L['nexus_area_torment_rock'] = 'Sur un rocher dans les Plans de la Tourmente'
L['nexus_area_zone_edge'] = 'Le long du bord de la zone'
L['nexus_area_zovaal_edge'] = 'Le long du bord du Chaudron de Zovaal'
L['nexus_area_zovaal_wall'] = 'Le long du mur en dessous du Chaudron de Zovaal'
-- Locations given relative to a named cave/cavern
L['nexus_cave_anguish_lower'] = 'Dans la Fosse de l’Angoisse (niveau inférieur)'
L['nexus_cave_anguish_outside'] = 'Hors de la Fosse de l’Angoisse'
L['nexus_cave_anguish_upper'] = 'Dans la Fosse de l’Angoisse (niveau supérieur)'
L['nexus_cave_desmotaeron'] = 'Dans une petite grotte à l\'extérieur du Desmotæron'
L['nexus_cave_echoing_outside'] = 'En dehors des Cavernes de l’Écho'
L['nexus_cave_forlorn'] = 'A l\'intérieur de la grotte de la Halte Mélancolique.'
L['nexus_cave_howl_outside'] = 'Sur le sol à l\'extérieur de la caverne de la Complainte de la mort'
L['nexus_cave_howl'] = 'A l\'intérieur de la caverne de la Complainte de la mort'
L['nexus_cave_roar'] = 'A l\'intérieur de la caverne du Rugissement de la mort'
L['nexus_cave_ledge'] = 'Dans une petite grotte sous une corniche'
L['nexus_cave_prodigum'] = 'Dans une petite grotte dans le Prodigium'
L['nexus_cave_soulstained'] = 'Dans une petite grotte dans les Champs Maculés d’âmes'
L['nexus_cave_torturer'] = 'Dans le Taudis du Tortionnaire'
-- Locations given relative to a named NPC
L['nexus_npc_akros'] = 'En haut des escaliers à côté de {npc:170787}'
L['nexus_npc_dekaris'] = 'Au sommet du pic où se trouve {npc:157964}'
L['nexus_npc_dolos'] = 'Sur le sol derrière {npc:170711}'
L['nexus_npc_ekphoras'] = 'A côté de la plate-forme d\'{npc:169827}'
L['nexus_npc_incinerator'] = 'Sur une petite corniche en dessous de l\'{npc:156203}'
L['nexus_npc_orophea'] = 'Sur le sol à côté d\'{npc:172577}'
L['nexus_npc_orrholyn'] = 'Trouvé sous la plate-forme de {npc:162845}'
L['nexus_npc_portal'] = 'Sur un petit rocher derrière le {npc:167531}'
L['nexus_npc_talaporas'] = 'Près de l\'escalier vers la plate-forme de {npc:170302}'
L['nexus_npc_thanassos'] = 'Au fond de la plate-forme de {npc:170731}'
L['nexus_npc_willbreaker'] = 'Dans le coin derrière un {npc:168233}'
-- Locations given relative to the main path/road nearby
L['nexus_road_below'] = 'Sur le sol en dessous de la route principale'
L['nexus_road_cave'] = 'Dans une petite grotte en dessous de la route'
L['nexus_road_mawrats'] = 'Dans un groupe de Rats de l’Antre au bord de la route'
L['nexus_road_next'] = 'A côté du chemin principal'
L['nexus_room_ramparts'] = 'Dans une petite pièce sous les remparts'
-- Random locations described as best as possible
L['nexus_misc_crystal_ledge'] = 'Sur une corniche rocheuse près de quelques cristaux bleus'
L['nexus_misc_floating_cage'] = 'Sur une cage flottante (utilisez les prises de grappin)'
L['nexus_misc_below_ramparts'] = 'Le long du bas des remparts'
L['nexus_misc_grapple_ramparts'] = 'Au sommet des remparts (utilisez la prise de grappin)'
L['nexus_misc_grapple_rock'] = 'Près d\'une prise de grappin sur un rocher'
L['nexus_misc_ledge_below'] = 'Sur le sol, sous une corniche'
L['nexus_misc_three_chains'] = 'Sur le sol près de trois chaînes'

L['stolen_anima_vessel'] = 'Réceptacle d’anima volé'
L['hidden_anima_cache'] = 'Cache d\'Anima cachée'
L['options_icons_anima_vessel'] = 'Réceptacles d’anima volés'
L['options_icons_anima_vessel_desc'] = 'Afficher les emplacements des réceptacles d’anima pendant les assauts et à l\'intérieur de |cFFFFFF00La Faille|r.'

L['rift_hidden_cache'] = 'Cache secrète de la faille'
L['options_icons_rift_hidden_cache'] = 'Caches secrètes de la faille'
L['options_icons_rift_hidden_cache_desc'] = 'Afficher les emplacements des caches à l\'intérieur de |cFFFFFF00La Faille|r.'

L['options_icons_bonus_boss'] = 'Élites bonus'
L['options_icons_bonus_boss_desc'] = 'Afficher les emplacements des élites bonus.'
L['options_icons_riftstone'] = '{npc:174962s}'
L['options_icons_riftstone_desc'] = 'Affichez les emplacements des téléporteurs de Failles Chaotiques'
L['options_icons_grapples'] = '{npc:176308s}'
L['options_icons_grapples_desc'] = 'Afficher les emplacements des grappins pour l\'amélioration {item:184653}.'
L['options_icons_stygia_nexus'] = 'Nexus de stygies'
L['options_icons_stygia_nexus_desc'] = 'Afficher les emplacements des Nexus de stygies nécessaires pour la monture {item:184168}.'
L['options_icons_stygian_caches'] = 'Caches stygiennes'
L['options_icons_stygian_caches_desc'] = 'Afficher les emplacements des caches contenant de la Stygie supplémentaire.'

L['cov_assault_only'] = 'Disponible uniquement pendant l\'assaut des %s.'

L['helgarde_supply'] = 'Cache de fournitures de Helgarde'
L['helgarde_supply_note'] = 'Apparaîssent dans toute la zone du Desmotæron. Votre {npc:180598} peut vous aider à les localiser.'
L['options_icons_helgarde_cache'] = 'Caches de fournitures de Helgarde'
L['options_icons_helgarde_cache_desc'] = 'Afficher les emplacements possibles des Caches de fournitures de Helgarde dans la zone du Desmotæron.'

L['mawsworn_cache_ramparts_note'] = 'Cette cache se trouve au sommet des remparts. Utilisez les prises de grappin ou un {npc:177093} pour les atteindre.'
L['mawsworn_cache_tower_note'] = 'Cette cache se trouve au sommet de la tour et nécessite un {npc:177093} pour l\'atteindre. Utilisez la capacité {spell:349853} pour y grimper.'
L['mawsworn_cache_quest_note'] = 'La {item:186573} ne sera obtenable qu\'après avoir terminé la quête {quest:63545} !'

L['nilg_silver_ring_note'] = 'Récupérez 4 {item:186727} dans le Desmotæron et utilisez-les pour ouvrir le coffre de la domination.'
L['nilg_silver_ring_note1'] = 'Tuez {npc:177444} et ouvrez la {item:186970}.'
L['nilg_silver_ring_note2'] = 'Récupérez le Trousseau de clés de la Persécutrice, situé sur le mur dans une pièce souterraine à côté de {npc:178311}.'
L['nilg_silver_ring_note3'] = 'Ouvrez des Caches de fournitures de Helgarde dans la zone du Desmotæron. Votre {npc:180598} peut vous aider à les localiser.'
L['nilg_silver_ring_note4'] = 'Farmez des {npc:177134s} dans la zone du Desmotæron (faible taux d\'obtention).'
L['nilg_stone_ring_note'] = 'Collectez quatre {item:186600} pendant l\'assaut des Nécro-seigneurs et combinez-les à n\'importe quelle {npc:171492} dans le Chaudron de Zovaal.'
L['nilg_stone_ring_note1'] = 'Trouvé dans certaines Caches antreliges (icône jaune) au sommet des remparts du Fort de la Perdition.'
L['nilg_stone_ring_note2'] = 'Accomplissez la quête {quest:63545}, puis fouillez les Caches antreliges jusqu\'à ce que vous trouviez l\'objet de quête {item:186573}. Cette quête est partageable !'
L['nilg_stone_ring_note3'] = 'Récupéré sur l\'{npc:179601} dans la zone centrale du Fort de la Perdition.'
L['nilg_stone_ring_note4'] = 'Trouvé sur le sol au Fort de la Perdition près du {npc:170634}. Votre {npc:180598} peut vous aider à le localiser.'
L['nilg_gold_band_note'] = 'Au sommet de la montagne, sur une pointe.'
L['nilganihmaht_note'] = 'Vous devez collecter les 5 anneaux et les apporter à la {npc:179572} dans la faille.'
L['calcis'] = 'Calcis'
L['desmotaeron'] = 'Desmotæron'

L['zovault_note'] = 'Traînez le {npc:179883} vers {npc:179904} une fois par jour pour des pierres de faille garanties.'
L['options_icons_zovault'] = '{npc:179883}'
L['options_icons_zovault_desc'] = 'Afficher les emplacements possibles pour le {npc:179883}.'

L['tormentors'] = 'Tourmenteurs de Tourment'
L['tormentors_note'] = [[
Un événement de tourmenteur apparaît toutes les 2 heures à heure pile. Les boss apparaîtront toujours dans l'ordre indiqué ci-dessous.

La {item:185972} peut être obtenue une fois par semaine et contient 50 {currency:1906}.
]]

L['options_icons_mawsworn_blackguard'] = '{achievement:14742}'
L['options_icons_mawsworn_blackguard_desc'] = 'Emplacements des {npc:183173} pour le haut-fait {achievement:14742}'

L['mawsworn_blackguard'] = 'Garde sombre antrelige'
L['mawsworn_blackguard_note'] = 'Cibler facilement un {npc:183173} camouflé :'

L['options_icons_covenant_assaults'] = 'Covenant Assaults'
L['options_icons_covenant_assaults_desc'] = 'Rewards for covenant assaults'

L['assault_sublabel_US'] = 'Les Assauts changent le Mardi à 8 heures PDT et le Vendredi à 20 heures PDT'
L['assault_sublabel_EU'] = 'Les Assauts changent le Mercredi à 8 heures CET et le Samedi à 20 heures CET'
L['assault_sublabel_CN'] = nil

L['necrolord_assault'] = '{quest:63543}'
L['necrolord_assault_note'] = 'Le {item:185992} peut être récupéré une fois par assaut'
L['necrolord_assault_quantity_note'] = 'Caches antreliges ouvertes'
L['venthyr_assault'] = '{quest:63822}'
L['venthyr_assault_note'] = 'Le {item:185990} peut être récupéré une fois par assaut'
L['venthyr_assault_quantity_note'] = 'Objets utilisés'
L['night_fae_assault'] = '{quest:63823}'
L['night_fae_assault_note'] = 'Le {item:185991} peut être récupéré une fois par assaut'
L['night_fae_assault_quantity_note'] = 'Cache secrète de la faille ouverte'
L['kyrian_assault'] = '{quest:63824}'
L['kyrian_assault_note'] = 'Le {item:185993} peut être récupéré une fois par assaut'
L['kyrian_assault_quantity_note1'] = 'Fino trouvé'
L['kyrian_assault_quantity_note2'] = 'Danse près des forges'

-------------------------------------------------------------------------------
---------------------- TORGHAST, THE TOWER OF THE DAMNED ----------------------
-------------------------------------------------------------------------------

L['torghast_the_tower_of_the_damned'] = 'Tourment, La tour des Damnés'
L['torghast_reward_sublabel'] = '|cFFFF8C00Récompenses partagées entre la plupart des ailes|r'
L['torghast_boss_note'] = 'Obtenables sur plusieurs boss dans |cffffff00Tourment, La tour des Damnés|r '
L['torghast_vendor_note'] = 'Vendu par les marchands {npc:152594} et {npc:170257} pour 300 {currency:1728} ou 1000 {currency:1728}'
L['torghast_reward_note'] = 'Obtenu dans |cffffff00Tourment, La tour des Damnés|r '
L['torghast_soulshape_note'] = 'Échelon 12+'
L['colossal_umbrahide_mawrat_note'] = 'Échelon 13+'

L['skoldus_hall'] = 'Salle de Skoldus'
L['fracture_chambers'] = 'Chambres aux Fractures'
L['the_soulforges'] = 'Forges des Âmes'
L['coldheart_interstitia'] = 'Interstice Cœur-Algide'
L['mortregar'] = 'Mort\'regar'
L['the_upper_reaches'] = 'Étages supérieurs'
L['adamant_vaults'] = 'Les caveaux Impitoyables'
L['twisting_corridors'] = 'Couloirs Distordus'
L['the_jailers_gauntlet'] = 'L’épreuve du Geôlier'

L['torghast_layer1'] = 'Terminez L\'Échelon 1'
L['torghast_layer2'] = 'Terminez L\'Échelon 2'
L['torghast_layer3'] = 'Terminez L\'Échelon 3'
L['torghast_layer4'] = 'Terminez L\'Échelon 4'
L['torghast_layer6'] = 'Terminez L\'Échelon 6'
L['torghast_layer8'] = 'Terminez L\'Échelon 8'

L['phantasma_note'] = 'Fantasmes'
L['bloating_fodder_note'] = 'Détonation de Fourrage ballonnant'
L['flawless_master_note'] = 'Complétez |cffffff00[{achievement:15322}]|r'
L['tower_ranger_note'] = 'Complétez |cffffff00[{achievement:15324}]|r'

L['the_jailers_gauntlet_note'] = '|cFFFF8C00Les boss ne comptent pas pour |r |cffffff00{achievement:14498}|r'

L['the_box_of_many_things'] = 'La boîte aux mille tours'
L['the_box_of_many_things_note'] = 'Débloquez des pouvoirs supplémentaires avec du {currency:1904}'
L['many_many_things_section'] = 'Complétez |cffffff00[{achievement:15079}]|r'

L['the_runecarver'] = '{npc:164937}'
L['clearing_the_fog_suffix'] = 'Souvenirs déverrouillés'

-------------------------------------------------------------------------------
-------------------------------- ZERETH MORTIS --------------------------------
-------------------------------------------------------------------------------

local HIDDEN_ALCOVE = [[
Pour accéder à l'|cFFFFFD00Alcôve %s|r :
1. Terminez le chapitre 6 de la campagne de Zereth Mortis.
2. Trouvez l'|cFFFFFD00Agencement de l'alcôve %s|r %s.
3. Aux |cFFFFFD00Pics Résonnants|r, tuez les monstres affectés par {spell:362651} ou placez-vous dans les zones blanches pour obtenir 60 {npc:183569}.
4. Utilisez le {npc:184329} à l'intérieur du Repos de la fertilité pour accéder à la Chambre Intérieure. (Nécessite 30 {npc:183569})
5. Utilisez le {npc:184485} pour accéder à l'Alcôve %s. (Nécessite 30 {npc:183569})
]]

L['camber_alcove_note'] = string.format(HIDDEN_ALCOVE, 'Concave', 'Concave', 'derrière le bâtiment du |cFFFFFD00Locus Ultimus|r', 'Concave')
L['dormant_alcove_note'] = string.format(HIDDEN_ALCOVE, 'Dormante', 'Dormante', 'aux |cFFFFFD00Pics Résonnants|r', 'Dormante')
L['fulgor_alcove_note'] = string.format(HIDDEN_ALCOVE, 'Aveuglante', 'Aveuglante', 'aux |cFFFFFD00Pics Résonnants|r', 'Aveuglante')
L['rondure_alcove_note'] = string.format(HIDDEN_ALCOVE, 'Incurvée', 'Incurvée', 'sur la plateforme du |cFFFFFD00Locus Tertius|r', 'Incurvée')
L['repertory_alcove_note'] = string.format(HIDDEN_ALCOVE, 'du Répertoire', 'du Répertoire', 'à l\'intérieur de la grotte de la |cFFFFFD00Cache Terrestre|r', 'du Répertoire')

L['corrupted_architect_note'] = 'Engagez en combat {npc:183958} et {npc:183961} pour activer le monstre rare.'
L['dune_dominance_note'] = 'Les trois monstres élites rares pour le haut-fait {achievement:15392} apparaissent à cet endroit.'
L['feasting_note'] = 'Va parfois faire le tour de la zone avant de revenir à cet emplacement.'
L['furidian_note'] = 'Activez trois |cFFFFFD00Serrures renforcées|r dans la zone, puis déverrouillez le |cFFFFFD00Coffre étrangement remonté|r.'
L['garudeon_note'] = 'Ramassez des {npc:183562s} dans les environs et utilisez {spell:362655} pour nourrir les {npc:183554s}. Une fois les trois nourris, {npc:180924} s\'activera.'
L['gluttonous_overgrowth_note'] = 'Brisez toutes les {npc:184048s} proches pour activer le monstre rare.'
L['helmix_note'] = [[
Tuez des {npc:179005s} dans la zone jusqu'à ce qu'il émette un signal et apparaisse.
|cFFFF8C00Le sol tremble... Quelque chose se déplace sous la surface !|r
]]
L['hirukon_note'] = [[
Pour attirer {npc:180978} à la surface, il est nécessaire de créer un {item:187923}.

1. Pêchez une {item:187662} dans les eaux voisines.

2. Pêchez un {item:187915} dans l'|cFFFFFD00Amas de Poissons-blobs âcres|r à l'intérieur du Réservoir de Glissecroc au Marécage de Zangar.

3. Pêchez un {item:187922} dans le |cFFFFFD00Banc de Nectalies|r près du point de vol de la Tombe de Kelya à Nazjatar.

4. Récupérez une {item:187916} (très bien cachée) sur un balcon au deuxième niveau de la Terrasse de Nar'shola aux Étendues Chatoyantes (34,7, 75,0).

5. Trouvez la {npc:182194} près de l'étang au sud du Siège du Primat à Maldraxxus. Demandez-lui de fabriquer l'{item:187923} final.

6. Utilisez l'{item:187923}, qui vous permettra de voir le point de pêche d'|cFFFFFD00Amas d'Aurélides|r près de {npc:180978} pendant 15min. Pêchez dedans pour faire remonter {npc:180978} à la surface.
]] -- Needs Review on fishing spots names
L['orixal_note'] = 'Partage son apparition avec l\'{npc:185487} patrouillant dans la zone.'
L['protector_first_ones_note'] = 'Nécessite deux personnes. Apportez les runes correspondantes à chaque console (trouvées dans les environs) pour ouvrir la barrière.'
L['the_engulfer_note'] = 'Défendez {npc:183505} jusqu\'à ce que {npc:183516} surgisse de la faille.'
L['zatojin_note'] = 'Attirez les {npc:183721} proches et laissez-les appliquer 20 charges de {spell:362976} jusqu\'à ce que vous soyez {spell:362983}. Vous devez vous tenir au-dessus des cadavres de {npc:183774} lorsque vous êtes paralysé pour que {npc:183764} vous remarque.'

L['architects_reserve_note'] = 'Complétez la suite de quêtes {quest:64829} de l\'{npc:180630} à la Grâce du Pèlerin pour déverrouiller le trésor.'
L['bushel_of_produce_note'] = 'Tuez un {npc:182368} au nord alors qu\'il est affecté par {spell:360945} pour obtenir le buff vous-même. Tuez d\'autres {npc:182368} (ils n\'ont pas besoin d\'avoir le buff) jusqu\'à ce que vous ayez accumulé 5 charges, puis brisez la porte menant au trésor.'
L['crushed_crate_note'] = 'Ramassez l\'{item:189767} reposant sur le pilier effondré au-dessus du trésor. Donnez-le à {npc:185151} en échange du {item:189768} qui peut briser les pierres tombées.'
L['domination_cache_note'] = 'La {item:189704} a une faible chance de tomber sur les {npc:181403s} et {npc:182426s} de la zone.'
L['drowned_broker_supplies_note'] = 'Dites à {npc:181059} de prendre le contrôle de l\'{npc:185282} à proximité.'
L['forgotten_protovault_note'] = 'Uniquement disponible pendant l\'expédition {wq:Frog\'it}.'
L['grateful_boon_note'] = 'Difficile à atteindre sans voler, utilisez {spell:300728} ou {spell:111771} pour gravir la montagne. Apaisez les 12 créatures de la zone et {npc:185293} fera apparaître le trésor.'
L['library_vault_note'] = 'Cliquez sur les tablettes dans la Grotte Lexicale jusqu\'à ce que vous trouviez le buff {spell:362062} approprié pour ouvrir le caveau.'
L['mistaken_ovoid_note'] = 'Dans la Grotte des Chutes dimensionnelles, vous devez collecter 5x {item:190239} et les amener à {npc:185280}.'
L['ripened_protopear_note'] = 'Commencez la suite de quêtes {quest:64641} pour accéder à la Fonderie de l’Éclosion. Collectez 5 {spell:367180} (nuages verts) à l\'intérieur et apportez-les un par un à la {npc:185416} pour la polliniser. Une fois qu\'elle aura grandi 5 fois, elle tombera.'
L['sphere_treasure_note'] = 'Sautez prudemment sur les sphères jusqu\'à ce que vous atteigniez le trésor.'
L['submerged_chest_note'] = 'Absorbez le |cFFFFFD00Dangereux orbe de puissance|r au sud, puis interagissez avec la |cFFFFFD00Pompe oubliée|r près du trésor.' -- Needs Review
L['symphonic_vault_note'] = 'Examinez l\'{npc:183998} pour entendre une séquence de quatre sons. Chaque {npc:183950} dans la pièce joue un seul son. Interagissez avec elles dans le bon ordre pour déverrouiller le trésor.'
L['syntactic_vault_note'] = 'Pour déverrouiller le trésor, vous devez accumuler 6 charges de {spell:367499} en interagissant avec les |cFFFFFD00Syllabes Runiques|r dans la zone du Sépulcre des Fondateurs.'
L['template_archive_note'] = 'Poussez l\'{npc:183339} dans la salle jusqu\'à l\'{npc:183337} bloquant le chemin vers le trésor.'
L['undulating_foliage_note'] = [[
Pressez les quatre {npc:185390s} pour activer le téléporteur dans la salle centrale des Champs Catalyseurs.

• Dehors, derrière le |cFFFFFD00Verrou des champs Catalyseurs|r
• Dans la salle sud-ouest des champs
• Dans la pièce sud avec {npc:181652}
• Dans la salle sud-est des champs
]]

L['provis_cache'] = 'Cache verrouillée de Provis'
L['provis_cache_note'] = [[
Accomplissez au moins une fois la quête journalière {quest:64717} de {npc:177958}.
Utilisez le {item:187516} aux forges de la zone pour récupérer 15 {item:187728} et combinez-les en un {item:187787}. Cet orbe a une chance de contenir la clé.
]]
L['prying_eye_discovery'] = 'Découverte d\'œil indiscret'
L['prying_eye_discovery_note'] = 'Plus facile à atteindre une fois que le vol est déverrouillé.'
L['pulp_covered_relic'] = 'Relique couverte de pulpe'
L['requisites_originator_note'] = [[
Une machine qui vous donnera différentes récompenses une fois par semaine :

• {spell:366667} = Matériaux d'Enchantement + or
• {spell:366668} = Anima
• {spell:366669} = Cryptogrammes
• {spell:366670} = Granules de genèse + {item:189179} (possible)
• {spell:366671} = Cryptogrammes/Granules/Anima
• {spell:366672} = Équipement Cryptique
]]
L['rondure_cache'] = 'Cache incurvée'
L['rondure_cache_note'] = 'Une forge pouvant être cliquée au sommet d\'un parcours de sauts dans l\'|cFFFFFD00Alcôve Incurvée|r.'
L['sandworn_chest'] = 'Coffre erodé'
L['sandworn_chest_note'] = 'Récupérez 5x {item:190198} sur les monstres de la zone pour construire la {item:190197}.'
L['sand_piles'] = 'Tas de sable'
L['sand_piles_note'] = [[
Tous les tas de sable se trouvent dans la chambre cachée de l'Alcôve Dormante. Chaque tas requiert un {item:189863}, qui peut être trouvé dans d'autres trésors de la zone :

• Cache de domination
• Caveau déchu
• Artéfact chipé
• Parchemin volé
• Coffre submergé
• Caveau symphonique
• Feuillage ondulant
]]
L['torn_ethereal_drape'] = 'Drapé éthérien déchiré'
L['torn_ethereal_drape_note'] = 'Se trouve à l\'intérieur de l\'|cFFFFFD00Alcôve Aveuglante|r. Activez les |cFFFFFD00Console d’Automa|r, puis montez sur les {npc:183565s} pour atteindre le plafond.'

L['cache_avian_nest'] = 'Nid d\'oiseau'
L['cache_cypher_bound'] = 'Coffre lié par un cryptogramme'
L['cache_discarded_automa'] = 'Débris d\'Automa abandonné'
L['cache_forgotten_vault'] = 'Salle du trésor oubliée'
L['cache_mawsworn_supply'] = 'Coffre de fournitures antreliges'
L['cache_tarachnid_eggs'] = 'Oeufs de Tarachnidé'
L['cache_shrouded_cypher'] = 'Cache cryptique dissimulée'
L['cache_shrouded_cypher_note'] = [[
Ces caches ne peuvent être vues que si l'on possède le buff {spell:361917} et l'on porte un Équipement Cryptique approprié :

|cFF00FF00Améliore la perception de Pocopoc, ce qui lui permet de détecter des caches supplémentaires.|r
]]

L['cache_cantaric'] = 'Cache cantabilienne'
L['cache_fugueal'] = 'Cache fuguéal'
L['cache_glissandian'] = 'Cache glissandienne'
L['cache_mezzonic'] = 'Cache mezzonique'
L['cache_toccatian'] = 'Cache toccatienne'

L['schematic_treasure_note'] = '|cFFFF8C00Ce trésor ne contiendra pas le schéma de protoforme si vous n\'avez pas encore débloqué le synthétiseur. Si vous avez déjà récupéré le trésor, vous trouverez le schéma sur le sol à proximité.|r'
L['schematic_treasure_mount_note'] = '|cFFFF8C00Ce schéma se trouve dans un trésor à usage unique situé à proximité. Si le trésor est ouvert avant le déverrouillage du synthétiseur de montures, le schéma peut être trouvé ici.|r'
L['schematic_treasure_pet_note'] = '|cFFFF8C00Ce schéma se trouve dans un trésor à usage unique situé à proximité. Si le trésor est ouvert avant le déverrouillage du synthétiseur de familiers, le schéma peut être trouvé ici.|r'
L['schematic_bronze_helicid_note'] = 'Peut être trouvé dans le {item:190610} de la quête hebdomadaire {quest:65324}.'
L['schematic_ambystan_darter_note'] = 'Dissimulé sous l\'eau, près du {npc:185312}.'
L['schematic_bronzewing_vespoid_note'] = 'A l\'intérieur du Repos de la fertilité.'
L['schematic_buzz_note'] = 'Peut être trouvé dans une {npc:185265}.'
L['schematic_curious_crystalsniffer_note'] = 'Disponible pendant une courte période après la mort de {npc:184915} dans le raid |cFFFFFD00Le sépulcre des Fondateurs|r.'
L['schematic_darkened_vombata_note'] = 'Dans une cage flottante.'
L['schematic_deathrunner_note'] = 'Obtenu au cours de la suite de quêtes déverrouillant la {spell:366367}.'
L['schematic_desertwing_hunter_note'] = 'Situé au sommet du pilier.'
L['schematic_fierce_scarabid_note'] = 'Dissimulé sous la plateforme sur laquelle se trouve le {npc:181870}.'
L['schematic_forged_spiteflyer_note'] = 'Dépassant d\'un amas de ruches vespoïdes.'
L['schematic_genesis_crawler_note'] = 'Trouvé au sommet de l\'entrée de l\'Alcôve de la Genèse.'
L['schematic_goldplate_bufonid_note'] = 'Faible chance de tomber sur les {npc:178803s}.'
L['schematic_heartbond_lupine_note'] = 'Faible chance de tomber sur un {npc:179939}.'
L['schematic_ineffable_skitterer_note'] = 'Suicidez-vous ! Non, sérieusement... vous ne pouvez voir l\'{npc:185092} au |cFFFFFD00Creux de l’Exil|r que lorsque vous êtes un fantôme.'
L['schematic_leaping_leporid_note'] = 'Trouvé au sommet d\'un arbre flottant.'
L['schematic_mawdapted_raptora_note'] = 'Faible chance d\'être trouvé sur les {npc:181412s} dans les |cFFFFFD00Sables Infinis|r.'
L['schematic_microlicid_note'] = 'Sur la branche la plus basse de l\'arbre flottant, sous le feuillage.'
L['schematic_omnipotential_core_note'] = 'Se trouve dans l\'|cFFFFFD00Alcôve Incurvée|r. Le schéma est caché derrière le bord supérieur de la voûte du côté sud-ouest de la pièce.'
L['schematic_prototickles_note'] = 'Attaché à une chaîne flottante à l\'intérieur des vignes au-dessus du monstre rare {npc:180978}.'
L['schematic_prototype_fleetpod_note'] = 'Se trouve dans l\'|cFFFFFD00Alcôve Concave|r. Interagissez avec le {npc:184900} pour déclencher un mini-jeu. Guidez l\'escargot à travers 5 anneaux sans toucher les {npc:185455s} pour obtenir le schéma.'
L['schematic_raptora_swooper_note'] = 'Trouvé à l\'intérieur de la Chambre de Façonnage.'
L['schematic_resonant_echo_note'] = 'Peut être trouvé dans un |cFFFFFD00Écho du premier chant cristallisé|r.'
L['schematic_russet_bufonid_note'] = 'Peut être trouvé dans la cache de parangon {item:187780}.'
L['schematic_scarlet_helicid_note'] = 'Trouvé au sommet de la structure de l\'arche.'
L['schematic_serenade_note'] = 'Situé dans une chaîne sous une plateforme flottante dans la zone |cFFFFFD00Foyer immortel|r du raid.'
L['schematic_shelly_note'] = 'Situé à l\'arrière d\'une étagère dans la Grotte Lexicale. Nécessite une capacité de téléportation pour escalader l\'étagère.'
L['schematic_stabilized_geomental_note'] = 'A une chance d\'être lâché par {npc:182169} dans le raid |cFFFFFD00Le sépulcre des Fondateurs|r.'
L['schematic_tarachnid_creeper_note'] = 'A l\'intérieur d\'une petite structure dans les |cFFFFFD00Sables Infinis|r. Nécessite d\'avoir progressé dans la campagne jusqu\'au chapitre 5 pour dégager les rochers.'
L['schematic_terror_jelly_note'] = 'Au sommet du pylône carré à côté de la rampe.'
L['schematic_tunneling_vombata_note'] = 'A côté de quelques décombres dans un tunnel bloqué à l\'intérieur du complexe Esper locrien.'
L['schematic_vespoid_flutterer_note'] = 'Dépasse d\'un tas de sable au niveau Locus primus des Pics Résonnants.'
L['schematic_violent_poultrid_note'] = 'A une chance d\'être obtenu à partir de la quête journalière {daily:65256}.'

L['concordance_excitable'] = 'Harmonique fébrile'
L['concordance_mercurial'] = 'Harmonique changeant'
L['concordance_tranquil'] = 'Harmonique serein'
L['concordance_note'] = 'Lisez chaque harmonique pour déverrouiller les données de la |cFFFFFD00Console d\'histoire|r au |cFFFFFD00Creux de l\'Exil|r.'

L['echoed_jiro_note'] = 'Dépensez l\'énergie de {npc:181059} pour obtenir des buffs temporaires. Nécessite la recherche |cFFFFFD00Créatien|r à la {npc:181397}.'

L['bygone_elemental_note'] = 'Un {npc:181221} peut apparaître à la place de n\'importe quel {npc:179007} dans la zone.'
L['dominated_irregular_note'] = 'Un {npc:184819} peut apparaître à la place de n\'importe quel {npc:183184} dans la zone.'
L['gaiagantic_note'] = 'Apparaît uniquement lorsque {npc:177958} propose la quête journalière {daily:64785}.'
L['misaligned_enforcer_note'] = 'Apparaît ici. Patrouille la zone et disparaît à la fin de son itinéraire.'
L['overcharged_vespoid_note'] = 'Peut apparaître dans n\'importe quel essaim de la zone.'
L['runethief_xylora_note'] = 'Apparaît camouflé à la Grâce du Pèlerin.'

local proto_area = 'Peut être trouvé dans les forges autour de la zone |cFFFFFD00%s|r.'
L['proto_material_zone_chance'] = 'Peut être trouvé dans certaines forges de la zone.'
L['anima_charged_yolk_note'] = 'Récupérez des {item:187728} provenant de n\'importe quelle forge et combinez-les en un {item:187787}, qui a une chance de contenir un {item:187890}.'
L['energized_firmament_note'] = string.format(proto_area, 'Pics Résonnants')
L['honeycombed_lattice_note'] = string.format(proto_area, 'Précipice Bourdonnant')
L['incorporeal_sand_note'] = 'Peut être trouvé dans les forges des zones désertiques de la zone.'
L['pollinated_extraction_note'] = string.format(proto_area, 'Verdure Indomptée')
L['serene_pigment_note'] = 'Dans une forge au-dessus de l\'entrée du |cFFFFFD00	Creux de l’Exil|r. Peut nécessiter plusieurs essais.'
L['volatile_precursor_note'] = 'Trouvé dans la petite forge au sommet. Peut nécessiter plusieurs essais.'
L['wayward_essence_note'] = 'Difficile à atteindre sans voler; utilisez {spell:300728} ou {spell:111771}. Dans une forge flottante derrière le |cFFFFFD00Creux de l’Exil|r. Placez-vous dans le renfoncement pour siphonner la forge.'

L['patient_bufonid_note'] = 'Progressez dans l\'histoire de Zereth Mortis jusqu\'à ce que {npc:180950} propose {quest:65727}. Complétez les quêtes chaque jour pour attirer le {npc:185798} hors de l\'étang.'
L['patient_bufonid_note_day1'] = 'Récupérez 15x {item:190852} sur des Vespoïdes dans la zone.'
L['patient_bufonid_note_day2'] = 'Achetez 30x {item:172053} à l\'Hôtel des Ventes.'
L['patient_bufonid_note_day3'] = 'Achetez 200x {item:173202} à l\'Hôtel des Ventes.'
L['patient_bufonid_note_day4'] = 'Achetez 10x {item:173037} à l\'Hôtel des Ventes.'
L['patient_bufonid_note_day5'] = 'Récupérez 5x {item:187704} sur des monstres dans la zone.'
L['patient_bufonid_note_day6'] = 'Achetez 5x {item:190880} à {npc:185748} près de la Grâce du Pèlerin.'
L['patient_bufonid_note_day7'] = 'Acheter 1x {item:187171} auprès du {npc:180114} dans le donjon Tazavesh.'

L['lost_comb'] = 'Rayon de miel égaré'
L['soulshape_penguin_note'] = 'Situé au sommet de la forge flottante.'

L['coreless_automa'] = 'Automas sauvages'
L['coreless_automa_note'] = 'Équiper un objet avec {spell:364480} donnera à |cFFFFFD00Pocopoc|r la capacité de prendre le contrôle de créatures sans consommer d\'énergie et permettra d\'obtenir ce haut-fait plus rapidement.'
L['coreless_automa_warning'] = '|cFFFF8C00Attendez que l\'automa commence réellement à vous suivre avant de dire à Pocopoc de partir pour éviter de provoquer un bug qui vous obligerait à vous reconnecter.|r'

L['olea_manu'] = 'Vend des objets et des recettes en échange de {currency:1979}.'

L['venaris_fate_sublabel'] = 'Situé dans le |cFFFFFF00Catalyseur de Création|r'
L['venaris_fate_note'] = [[
1. Parlez avec la {npc:162804} incorporelle au |cFFFFFF00Refuge de Ve'nari|r dans |cFFFFFF00L'Antre|r.
2. Si elle n'est pas incorporelle, une avancée supplémentaire de l'histoire du 9.2 est requise.
3. Interagissez avec le cadavre de {npc:162804} au |cFFFFFF00Catalyseur de Création|r à |cFFFFFF00Zereth Mortis|r.
4. 5 jours plus tard, vous recevrez par courrier une lettre de {npc:162804} accompagnée de l'{item:192485}.
]]

L['options_icons_code_creature'] = '{achievement:15211}'
L['options_icons_code_creature_desc'] = 'Afficher les emplacements des créatures pour le haut-fait {achievement:15211}.'
L['options_icons_concordances'] = 'Histoires Harmoniques'
L['options_icons_concordances_desc'] = 'Afficher les emplacements des consoles d\'harmoniques d\'histoire.'
L['options_icons_echoed_jiros'] = 'Jiro sonore'
L['options_icons_echoed_jiros_desc'] = 'Afficher les emplacements des buffs d\'offrandes des |cFFFFFD00Jiros sonores|r.'
L['options_icons_exile_tales'] = '{achievement:15509}'
L['options_icons_exile_tales_desc'] = 'Afficher les emplacements des tomes pour le haut-fait {achievement:15509}.'
L['options_icons_proto_materials'] = '{achievement:15229}'
L['options_icons_proto_materials_desc'] = 'Afficher les emplacements des matériaux de protoforme rares pour le haut-fait {achievement:15229}.'
L['options_icons_protoform_schematics'] = 'Schémas de protoforme'
L['options_icons_protoform_schematics_desc'] = 'Afficher les emplacements des schémas de montures et familiers.'
L['options_icons_puzzle_caches'] = 'Caches de la création (Puzzle)'
L['options_icons_puzzle_caches_desc'] = 'Afficher les emplacements possibles des caches de puzzles'
L['options_icons_zereth_caches'] = 'Caches cryptiques' -- Needs Review
L['options_icons_zereth_caches_desc'] = 'Afficher les emplacements possibles des Caches cryptiques' -- Needs Review
L['options_icons_shrouded_cyphers'] = 'Caches cryptiques dissimulées'
L['options_icons_shrouded_cyphers_desc'] = 'Afficher les emplacements possibles des Caches cryptiques dissimulées.'
L['options_icons_mawsworn_supply_cache'] = 'Coffres de fournitures antreliges'
L['options_icons_mawsworn_supply_cache_desc'] = 'Afficher les emplacements possibles des Coffres de fournitures antreliges.'
L['options_icons_coreless_automa'] = '{achievement:15542}'
L['options_icons_coreless_automa_desc'] = 'Emplacements des Automas sans noyaux pour le haut-fait {achievement:15542}.'
