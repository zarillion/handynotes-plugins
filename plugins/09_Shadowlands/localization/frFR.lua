--French translation by Lightuky EU-Khaz Modan

local ADDON_NAME, ns = ...
local L = ns.NewLocale("frFR")
if not L then return end

-------------------------------------------------------------------------------
---------------------------------- COVENANTS ----------------------------------
-------------------------------------------------------------------------------

L["covenant_required"] = "Nécessite un membre de la congrégation %s."
L["transport_research"] = "Nécessite un réseau de transport niveau %d"
L["anima_channeled"] = "anima canalisé vers %s."

L["options_icons_fae_network_desc"] = "Afficher toutes les destinations du réseau de champignons des Faë nocturnes."
L["options_icons_fae_network"] = "Réseau Mycélium"
L["options_icons_kyr_network_desc"] = "Afficher toutes les destinations du réseau de portes de transport Kyrien."
L["options_icons_kyr_network"] = "Portes de transport Kyriennes"
L["options_icons_nec_network_desc"] = "Afficher toutes les destinations des portes de la mort osseuses des Nécro-seigneurs."
L["options_icons_nec_network"] = "Portes de la mort osseuses"
L["options_icons_ven_network_desc"] = "Afficher toutes les destinations des miroirs de sang des Venthyr."
L["options_icons_ven_network"] = "Miroirs de sang"

-------------------------------------------------------------------------------
--------------------------------- ARDENWEALD ----------------------------------
-------------------------------------------------------------------------------

L["deifir_note"] = "Faites tourner le rare en cercle et utilisez {spell:319566}  et {spell:319575} pour le ralentir et l'étourdir."
L["faeflayer_note"] = "Dans une petite grotte cachée derrière une chute d'eau."
L["humongozz_note"] = "Plantez un {item:175247} dans le Terreau humide pour y faire apparaître un {npc:164122}. Après une minute de {spell:319367}, le rare apparaîtra. Le champignon peut être récupéré sur de nombreux monstres de la zone."
L["lehgo_note"] = "Détruisez les œufs de Gorm frémissants et tuez des {npc:171827} jusqu'à ce qu'il apparaisse. Dans une grotte (entrée au sud-est dans les Terriers poussiéreux)."
L["rainbowhorn_note"] = "\n|cffff5400T|r|cffffaa00A|r|cffffff00S|r|cffaaff00T|r|cff54ff00E|r |cff00ff55T|r|cff00ffa9H|r|cff00ffffE|r |cff0055ffR|r|cff0000ffA|r|cff5400ffI|r|cffaa00ffN|r|cffff00ffB|r|cffff00aaO|r|cffff0054W|r|cffff0000!|r"
L["rootwrithe_note"] = "Tapez sur les {npc:167928} jusqu'à ce que le rare apparaisse."
L["rotbriar_note"] = "Parlez à {npc:171684} à proximité pour faire apparaître le rare après un peu de dialogue."
L["slumbering_note"] = "Courir dans le brouillard vous assommera et vous éjectera. Utilisez une fusée éclairante ou un familier avec une AOE pour le faire sortir du brouillard."
L["skuld_vit_note"] = "Dans une grotte bloquée par une barrière. Une Faë nocturne doit utiliser {spell:310143} pour entrer dans la grotte. Une fois qu'il est engagé, la barrière disparaîtra."
L["valfir_note"] = "Cliquez sur le cocon d'anima instable à mi-parcours du chemin et utilisez {spell:338045} pour retirer son {spell:338038}."
L["wrigglemortis_note"] = "Engagez la {npc:164179} pour faire apparaître le rare."

L["night_mare_note"] = [[
Allez à Tirna Scithe et suivez le chemin de racines sur la falaise nord-ouest jusqu'à une charrette cassée. Là, vous pourrez ramasser une {item:181243} sur le sol.

Apportez cet objet à {npc:165704} au bassin Tombe-Lueur. Elle vous donnera une {item:181242} en échange de 10 {item:173204}. |cFFFF8C00Si elle n'est pas là, vous devez compléter les suites de quêtes |cFFFFFD00Problèmes au Corral des rejetons Gorms|r et |cFFFFFD00Spriggans farceurs|r.

Ensuite, parlez à {npc:160262} au Coeur de la forêt pour échanger l'{item:181242} contre un {item:178675}. Utilisez cet objet pour obtenir le buff {spell:327083}, vous permettant de voir la {npc:168135}.
]] --Correction : Sur la première suite de quêtes à compléter

L["star_lake"] = "Amphithéâtre du Lac étoilé"
L["star_lake_note"] = "Parlez à {npc:171743}, le metteur en scène, pour commencer l'une des rencontres spéciales."

L["cache_of_the_moon"] = "Rassemblez les cinq outils manquants de {npc:171360} dans le Jardin de la nuit et combinez-les pour créer {item:180753}. Rendez-lui sa boîte à outils et elle vous lancera {spell:334353}, ce qui vous permettra de voir la cache."
L["cache_of_the_night"] = "Rassemblez {item:180656}, {item:180654} et {item:180655}, trouvables dans l'ensemble de la zone et combinez-les pour créer {item:180652}."
L["darkreach_supplies"] = "Sautez sur le {npc:169995} et planez vers le sud-ouest dans la flèche creusée située directement au-dessus du trésor de la Cache de la nuit."
L["desiccated_moth"] = "Sautez sur le {npc:169997} au nord-ouest de l'arbre pour flotter vers une branche. Brûler {item:180784} dans le Brûleur d'encens pour récupérer le trésor."
L["dreamsong_heart"] = "Utilisez le {npc:169997} sous l'arbre pour vous faire propulser dans l'arbre."
L["elusive_faerie_cache"] = "Prenez la {spell:333923} dans le coin nord-est du Bosquet du Brunant et utilisez-la pour piller le coffre."
L["enchanted_dreamcatcher"] = "Suspendue au sommet des racines. Il est plus simple de sauter sur le côté ouest pour l'atteindre."
L["faerie_trove"] = "Situé sous la plate-forme."
L["harmonic_chest"] = "Il faut deux personnes. Une personne joue de la harpe et l'autre joue du tambour pour ouvrir le coffre."
L["hearty_dragon_plume"] = "Cliquez sur {spell:333554} en haut des chutes d'eau voisines et utilisez-la pour flotter vers la branche."
L["old_ardeite_note"] = "Tuer des {npc:160747}s et {npc:160748}s au sud-est de Lumefronde pour obtenir {item:174042}. Utilisez cet objet pour voler près du rare et l'engager."
L["swollen_anima_seed"] = "Une grande graine se trouvant à l'intérieur d'un tronc d'arbre."

L["playful_vulpin_note"] = [[
Trouvez et utilisez l'émote correcte sur le {npc:171206} cinq fois pour obtenir le pet.

• commence à creuser curieusement = |cFFFF8C00/curieux|r
• erre sans pouvoir rester assis = |cFFFF8C00/assis|r
• chante tout seul = |cFFFF8C00/chanter|r
• danse avec joie = |cFFFF8C00/dancer|r
• s'assied seul et triste = |cFFFF8C00/caresser|r
]]

L["tame_gladerunner"] = "Coureur halo-de-brume"
L["tame_gladerunner_note"] = [[
Lisez le "Conte de l'enchevêtrement", puis suivez les lampes bleues à travers le chemin jusqu'à ce que vous atteigniez {npc:171767}. Tuez-le et prenez ensuite le butin du {npc:171699}.

Si vous prenez un mauvais chemin et que {npc:171699} disparaît lorsque vous arrivez à la fin, revenez au début et lisez à nouveau "Conte de l'enchevêtrement" avant d'essayer à nouveau. Si {npc:171767} n'est pas là, vous devrez attendre qu'il réapparaisse.
]]

-------------------------------------------------------------------------------
----------------------------------- BASTION -----------------------------------
-------------------------------------------------------------------------------

L["aspirant_eolis_note"] = "Prenez un {item:180613} à proximité et lisez-le avec le PNJ ciblé pour l'activer."
L["baedos_note"] = "Transportez les fûts de fruits de purian fermentés des alentours vers {npc:161536} jusqu'à son activation."
L["basilofos_note"] = "Déplacez-vous autour du rocher jusqu'à ce qu'un repère violet apparaisse au-dessus de votre tête. Ne bougez pas et attendez que quatre émotes apparaissent, puis il apparaîtra."
L["beasts_of_bastion"] = "Bêtes du Bastion"
L["beasts_of_bastion_note"] = [[
Parlez à {npc:161441} pour invoquer l'une des quatre bêtes.

|cFFFF0000NOTE|r : Le PNJ est souvent buggé et ne vous parlera pas.
]]
L["bookkeeper_mnemis_note"] = "A une chance d'apparaître à la place des unités {npc:166867} de la zone."
L["cloudfeather_patriarch_note"] = "Tuez {npc:158110} dans la région jusqu'à ce que le rare lance une emote et apparaisse."
L["collector_astor_note"] = "Lisez les six chapitres de L'héritage de Mercia éparpillés dans la salle, après quoi vous recevrez un murmure de {npc:157979}. Parlez-lui pour recevoir {spell:333779}, ce qui vous permettra de trouver le {item:180569} caché au nord-ouest. Rendre le chapitre fera apparaître le rare."
L["corrupted_clawguard_note"] = "Procurez-vous un {item:180651} à l'avant-poste de Forgefeu en haut de la colline et utilisez-le pour réparer le {npc:171300}."
L["dark_watcher_note"] = "Ne peut être vu qu'en étant mort. Parlez-lui et elle vous lancera {spell:332830} avant d'attaquer."
L["demi_hoarder_note"] = "Commence avec 99 charges de {spell:333874}, réduisant les dégâts subis. Les charges sont lentement retirées par les dégâts. Le rare suivra un chemin et disparaîtra s'il atteint la fin."
L["dionae_note"] = "Lorsqu'elle est immunisée, cliquez sur les quatre {npc:163747} pour briser son bouclier."
L["herculon_note"] = [[
Collectez des {item:172451} et utilisez-les pour donner des charges d'{spell:343531} à {npc:158659}. A 10 charges, il s'activera.

Les Granules peuvent être collectées à partir de Bidons d'Anima épuisés situés dans la pièce ou juste à l'extérieur.

|cFFFF8C00Ne peut être vaincu lors de l'expédition {wq:Assaut sur le vestibule}.|r
]]
L["nikara_note"] = "Avec deux autres joueurs, cliquez sur l'encens antique pour l'invoquer."
L["sotiros_orstus_note"] = "Cliquez sur la Cloche noire pour invoquer les rares."
L["sundancer_note"] = "Cliquez sur la statue pour obtenir le buff {spell:332309}, puis utilisez un {item:180445} pour planer jusqu'au rare et le monter."
L["swelling_tear_note"] = "Cliquez sur la {npc:171012} pour invoquer l'un des trois rares. Les larmes peuvent apparaître à plusieurs endroits de la zone."
L["unstable_memory_note"] = "Peut être invoqué quand les {npc:171018}s sont présents. Amenez un {npc:171018} vers les autres pour lui donner 10 charges d'{spell:333558}, le transformant ainsi en monstre rare."
L["wingflayer_note"] = "Pour l'invoquer, cliquez sur la Corne du Courage sur la table voisine (au sud-est, en haut des escaliers)."

L["broken_flute"] = "Tuez les {npc:170009} à proximité jusqu'à ce qu'ils laissent tomber la {item:180536}, puis utilisez les outils pour la réparer."
L["experimental_construct_part"] = "Procurez-vous un {item:180534} proche et utilisez-le pour réparer la pièce. L'anima a plusieurs lieux d'apparition."
L["larion_harness"] = "Situé à l'intérieur du Hall des Bêtes."
L["memorial_offering"] = "Achetez un {item:180788} auprès de {npc:171526} au Repos de l'Aspirant. Placez-le sur le plateau de boissons près du coffre pour obtenir la {item:180797}."
L["scroll_of_aeons"] = "Procurez-vous 2 {item:173973} dans la zone centrale et placez-les sur les plateaux d'hommage à proximité pour révéler le trésor."
L["vesper_of_silver_wind"] = "Terminez le haut-fait {achievement:14339} et parlez ensuite à {npc:171732} près de l'entrée des Flèches de l'Ascension pour forger un {item:180858}."

L["gift_of_agthia"] = "Cliquez sur la torche allumée près du pont brisé au nord-ouest et portez {spell:333320} de torche en torche jusqu'au coffre. En allumant la dernière torche, vous obtiendrez {spell:333063}."
L["gift_of_chyrus"] = "S'agenouiller devant le coffre pour recevoir {spell:333045}."
L["gift_of_devos"] = [[
Au sud-ouest du coffre se trouve une torche où l'on peut prendre la {spell:333912}. Chevaucher une monture, entrer en combat ou subir des dégâts fera tomber la flamme. Vous devez retourner au coffre et placer la flamme dans le brasero de la dévotion pour obtenir la {spell:333070}.

Avant de reprendre la flamme, tuez tous les monstres devant le coffre. Tout en transportant la flamme, cliquez sur n'importe quelle {npc:156571} en cours de route pour obtenir {spell:335012}, augmentant la vitesse de déplacement.
]]
L["gift_of_thenios"] = [[
Derrière le coffre se trouve une plateforme de vol nommée "Chemin de la sagesse". Cela mène à une séquence de plateformes possédant différents encens avec lesquels vous pouvez communier :

• Encens de la connaissance
• Encens de la patience
• Encens de la perspicacité
• Encens du jugement

Communiez avec eux dans l'ordre Patience => Connaissance => Perspicacité. Sur la plateforme du Jugement, un orbe appelé "Chemin de la sagesse perspicace" apparaîtra.

L'orbe vous emmènera au véritable encens du jugement. Communiez avec lui et la dernière plateforme de vol vous donnera {spell:333068}, permettant d'ouvrir le coffre.
]]
L["gift_of_vesiphone"] = "Sonnez une des cloches pour faire apparaître une {npc:170849} et tuez-la pour recevoir le debuff {spell:333239}. L'eau qui tombe en face du coffre supprimera ce debuff et vous donnera {spell:332785}."

L["cache_of_the_ascended"] = "Cache des transcendés"
L["cache_of_the_ascended_note"] = "Avec quatre autres joueurs, cliquez sur les cinq Vêpres de la pureté, du courage, de l'humilité, de la sagesse et de la loyauté en même temps. Ensuite, dirigez-vous vers le Creuset de l'aspirant pour vaincre le Conseil des Transcendés et révéler la cache."

L["anima_shard"] = "Eclat de cristal d'Anima perdu"
L["anima_shard_61225"] = "Sur une plate-forme inférieure sous le pont."
L["anima_shard_61235"] = "Sur un rebord au-dessus de la cascade."
L["anima_shard_61236"] = "Au sommet d'une arche à mi-chemin de la structure principale."
L["anima_shard_61237"] = "Sur un rebord juste au-dessus de l'eau."
L["anima_shard_61238"] = "Dans l'eau, sous un petit pont."
L["anima_shard_61239"] = "Au sommet d'une mince colonne de pierre."
L["anima_shard_61241"] = "Au-dessus de l'entrée de la Chambre de première réflexion."
L["anima_shard_61244"] = "Sur un rocher au bord de la falaise."
L["anima_shard_61245"] = "Sur un rocher au-dessus d'une petite chute d'eau."
L["anima_shard_61247"] = "Sur le mur au-dessus d'une petite fontaine à eau."
L["anima_shard_61249"] = "Caché derrière une colonne de pierre au niveau supérieur du Pinacle de la pureté."
L["anima_shard_61250"] = "Situé derrière un escalier."
L["anima_shard_61251"] = "Situé sous une petite cloche."
L["anima_shard_61253"] = "Au sommet d'une arcade en pierre tombée."
L["anima_shard_61254"] = "Au-dessus d'une petite structure en bois."
L["anima_shard_61257"] = "Sur un petit rebord directement sous {npc:162523}."
L["anima_shard_61258"] = "Sur une petite corniche sous le Repos du Héros."
L["anima_shard_61260"] = "Au sol, sous la plate-forme."
L["anima_shard_61261"] = "Sur une corniche au-dessus de la grotte de {npc:163460}."
L["anima_shard_61263"] = "Au sommet d'un pilier de pierre."
L["anima_shard_61264"] = "Au-dessus d'une structure inclinée."
L["anima_shard_61270"] = "Situé au pied d'un arbre."
L["anima_shard_61271"] = "Dans une bibliothèque sur la plateforme supérieure."
L["anima_shard_61273"] = "Sur un rebord situé directement sous la falaise en saillie."
L["anima_shard_61274"] = "Caché sous la plate-forme."
L["anima_shard_61275"] = "Dans le Hall des Bêtes, derrière quelques tonneaux."
L["anima_shard_61277"] = "Au sommet d'une mince colonne de pierre."
L["anima_shard_61278"] = "Sous le pont, sur un rocher."
L["anima_shard_61279"] = "Au sommet d'une mince colonne de pierre."
L["anima_shard_61280"] = "Sur le coin de la table."
L["anima_shard_61281"] = "Sur une corniche au-dessus du trésor des offrandes commémoratives."
L["anima_shard_61282"] = "Sur une corniche bien en dessous du sommet de la falaise. Sautez sur le rocher à côté ou vous serez ramené en haut."
L["anima_shard_61283"] = "Dans une grotte sous la chapelle de Miri, derrière quelques barils."
L["anima_shard_61284"] = "Sur une corniche sous un surplomb rocheux, le chemin est vers le sud."
L["anima_shard_61285"] = "Au bout d'une petite corniche rocheuse."
L["anima_shard_61286"] = "Sur une corniche surplombant le chemin."
L["anima_shard_61287"] = "Sur un rebord au-dessus de la petite cascade."
L["anima_shard_61288"] = "Au bout d'un petit rebord."
L["anima_shard_61289"] = "Au sommet du belvédère."
L["anima_shard_61290"] = "Au bout d'une étroite corniche rocheuse."
L["anima_shard_61291"] = "Au fond de l'étang, aux pieds d'une statue."
L["anima_shard_61292"] = "Au-dessus de l'arche de pierre."
L["anima_shard_61293"] = "Au sommet d'une mince colonne de pierre au niveau inférieur."
L["anima_shard_61294"] = "Caché derrière une pile de barils."
L["anima_shard_61295"] = "Derrière {npc:156889} dans une étagère."
L["anima_shard_61296"] = "Derrière la grande cloche tombée."
L["anima_shard_61297"] = "Derrière un pilier de pierre."
L["anima_shard_61298"] = "Situé derrière une chaise longue."
L["anima_shard_61299"] = "Caché derrière une grande torche."
L["anima_shard_61300"] = "Sur un rebord surplombant la fontaine centrale."
L["options_icons_anima_shard"] = "Éclats de cristal d'anima perdus"
L["options_icons_anima_shard_desc"] = "Afficher les emplacements des 50 éclats de cristal d'anima perdus pour l'exploit Mission éclatante."

L["aspirants_rest"] = "Repos de l'Aspirant"
L["eternal_gateway"] = "Porte éternelle" --Correction : Doute sur la porte concernée
L["exaltations_rise"] = "Cime de l'exaltation"
L["heros_rest"] = "Repos du Héros"
L["sagehaven"] = "Havre de la sagesse"
L["seat_of_eternal_hymns"] = "Siège des hymnes éternels"
L["temple_of_humility"] = "Temple de l'humilité"
L["temple_of_purity"] = "Temple de la pureté"
L["xandrias_vigil"] = "La veillée de Xandria"

-------------------------------------------------------------------------------
--------------------------------- MALDRAXXUS ----------------------------------
-------------------------------------------------------------------------------

L["chelicerae_note"] = "Détruisez {npc:159885} pour activer le rare."
L["deepscar_note"] = "Peut apparaître dans plusieurs entrées du Théâtre de la souffrance."
L["forgotten_mementos"] = "Tirez la chaîne de la herse de la chambre forte, dans la chambre à l'ouest du trésor pour ouvrir la porte."
L["gieger_note"] = "Tirez sur le {npc:162815} pour activer le rare."
L["gristlebeak_note"] = "Brisez tout les {npc:162761} à proximité pour affronter le rare."
L["leeda_note"] = "Tuez les deux {npc:162220} jusqu'à ce que le rare apparaisse."
L["malkorak_note"] = "Au sommet de la tour (beaucoup d'escaliers)."
L["sabriel_note"] = "Peut apparaître comme l'un des champions du Théâtre de la souffrance."
L["schmitd_note"] = "Utilisez la {spell:313451} proche pour briser son bouclier."
L["taskmaster_xox_note"] = "Partage son apparition avec {npc:160204}, {npc:160230} et {npc:160226}."
L["zargox_the_reborn_note"] = "Utilisez {item:175841} en plus de la {npc:157124}. Pour obtenir l'orbe, vous devez compléter la quête {quest:57245} de {npc:157076} et lui parler à nouveau."
L["mixed_pool_note"] = [[
Rassemblez des ingrédients des monstres environnants et jetez-les dans la bassine. Une fois que 30 ingrédients ont été ajoutés, un des sept rares apparaîtra selon la combinaison utilisée.

• Récupérez {spell:306713} sur les {npc:167923} et {npc:167948} au nord.

• Récupérez {spell:306719} sur les {npc:165015} et {npc:171142} au sud.

• Récupérez {spell:306722} sur les {npc:165027} et {npc:166438} au sud.
]]
L["Violet"] = nil
L["Oily"] = nil

L["blackhound_cache"] = "Cache de Noir-Mâtin"
L["bladesworn_supply_cache"] = "Cache de fournitures des ligelames"
L["cache_of_eyes"] = "Cache des yeux"
L["cache_of_eyes_note"] = "Apparaît à plusieurs endroits dans la Forteresse Aveugle."

L["glutharns_note"] = "Dans une grotte derrière la cascade de limon. Tuez {npc:172485} et les deux {npc:172479} pour déverrouiller le coffre."
L["kyrian_keepsake_note"] = "Inspectez le {npc:169664} pour ramasser le trésor."
L["misplaced_supplies"] = "Au sommet du champignon géant. Courez vers le haut de la colline et sautez sur le petit champignon brun, puis courez vers le haut de la grande colline et sautez sur le champignon géant."
L["necro_tome_note"] = "Pour accéder à la tour, vous devez commencer une petite suite de quêtes à partir de {npc:166657}. Dans une bibliothèque au dernier étage."
L["plaguefallen_chest_note"] = [[
Placez-vous dans la bave verte (nécessite de se soigner !) pour obtenir 10 charges de {spell:330069} et être transformé en {spell:330092}.

Une fois transformé, visitez la grotte située sous la plate-forme de {npc:158406} (entrée du côté est) et cliquez sur le tuyau pour être transporté jusqu'au coffre.
]]
L["ritualists_cache_note"] = "Ramassez des {item:181558} sur un tas d'os (plusieurs lieux d'apparition). Utilisez-les pour compléter le Livre des Rituels de Liaison sur le pupitre derrière {npc:174386} et recevoir le buff {spell:337041}." --Correction : Nom du livre possiblement erroné
L["runespeakers_trove_note"] = "Trouvez {npc:170563} à l'est et tuez-le pour obtenir la {item:181777}."
L["stolen_jar_note"] = "Dans une grotte sous le champignon géant."
L["strange_growth_note"] = "Tirez sur le {npc:165037} pour révéler le trésor."
L["vat_of_slime_note"] = "Cliquez sur la bouteille sur la table, puis sur la cuve de limon."

L["giant_cache_of_epic_treasure"] = "Cache géante de trésors épiques"
L["spinebug_note"] = [[
Oh, regardez ! Une {spell:343124} ! Approchez-vous, courageux aventurier, ce n'est sûrement pas une ruse. Attends, est-ce la musique de Karazhan ? Qu'est-ce que ce {npc:174663} fait ici... ?

{spell:343163}!
]]

L["oonar_sorrowbane_note"] = [[
Dans le Théâtre de la souffrance, vous trouverez Fléau-de-chagrin coincé dans le sol et le Bras d'Oonar qui y est attaché. |cFFFF8C00Avant de tenter de tirer l'un ou l'autre, réglez votre {item:6948} sur {npc:161702} près du point de vol.|r

Pour extraire {item:181164} en toute sécurité :

• Voyagez vers la Deliquescense de Glutharn à l'est.
• Mangez 4x {spell:327367} (debuff de 2min).
• Utilisez rapidement votre pierre de foyer et tirez sur le bras.

Pour extraire {item:180273} en toute sécurité :

• Achetez 1 {item:182163} auprès de {npc:171808} à Revendreth.
• Achetez 1 {item:180771} à {npc:166640} à Maldraxxus.
• Obtenez 2 charges de {spell:306272} de l'expédition {wq:Quelques obstacles sur le chemin} à l'ouest.
• Mangez 4x {spell:327367} dans la Deliquescense de Glutharn.
• Utilisez rapidement votre pierre de foyer, buvez les deux potions et tirez sur l'épée.
]] --Correction : Doute sur le nom de l'expédition

L["pet_cat"] = "Caressez ce satané chat !"
L["hairball"] = ns.color.Red("N'apparaît que dans le Sanctuaire Purulent à l'intérieur du donjon Malepeste !") --Correction : Doute sur le nom du Sanctum
L["lime"] = "Située au sommet de la grande arche osseuse."
L["moldstopheles"] = "Courez à l'arrière de la tige et sautez sur les plates-formes en champignons. Pour la dernière plate-forme, utilisez une monture et sautez à l'angle où il rencontre la tige."
L["pus_in_boots"] = "Situé sous le pont."

L["options_icons_slime_cat"] = "Chatons"
L["options_icons_slime_cat_desc"] = "Afficher les emplacements des chatons pour le haut-fait Neuf vies après la mort."

L["exoramas"] = "Exoramas, Maison des Rituels"
L["nurakkir"] = "Nurakkir, Maison des yeux"
L["overlook_primus"] = "Overlook, Siège du Primat"
L["zerekriss"] = "Zerekriss, Maldraxxus"
L["zerekriss_note"] = "Une fois activé, la nécropole fera le tour de la zone. Saisissez le {npc:165822} pour planer jusqu'à la surface."

-------------------------------------------------------------------------------
--------------------------------- REVENDRETH ----------------------------------
-------------------------------------------------------------------------------

L["amalgamation_of_filth_note"] = "Quand l'expédition {wq:Sale boulot : équipe de démolition} est disponible, cliquez sur une Boîte à ordures et utilisez {spell:324115} dans l'eau."
L["amalgamation_of_light_note"] = "Déplacez les trois Miroirs piégés pour libérer le rare."
L["amalgamation_of_sin_note"] = "Utilisez le Catalyseur de puissance pour obtenir {item:180376} lors de l'expédition {wq:Invoquez vos péchés}, puis utilisez l'objet pour invoquer le rare." --Correction : Doute sur le nom de l'expédition
L["bog_beast_note"] = "A une chance d'apparaître pendant l'expédition {wq:Foire aux idées} après avoir utilisé {item:177880} sur une {npc:166206}." --Correction : Doute sur le nom de l'expédition
L["endlurker_note"] = "Cliquez sur le Pieu d'Anima près du cadavre de {npc:165229} et utilisez {spell:321826} au sommet de la Faille chatoyante."
L["executioner_aatron_note"] = "Tuez les trois PNJ proches {npc:166715} pour retirer {spell:324872}."
L["famu_note"] = "Parlez à {npc:166483} pour déclencher l'événement."
L["grand_arcanist_dimitri_note"] = "Tuez les quatre PNJ {npc:167467} pour libérer le rare."
L["harika_note"] = [[
|cFFFF0000IMPORTANT:|r Les objets doivent être donnés dans le bon ordre, sinon l'événement va bugger !

À Combeffroi, à l'ouest, procurez-vous le {item:176397} et les deux ensembles de {item:176396}. Donnez les outils aux deux {npc:165328} près de la baliste, puis donner le carreau à {npc:165327} et dites-lui de faire tomber le rare.
]]
L["innervus_note"] = "Tuez les {npc:160375}s proches pour obtenir une {item:177223} et déverrouiller la crypte."
L["leeched_soul_note"] = "A l'intérieur de la crypte voisine. Marchez près de {npc:165151} pour démarrer l'événement."
L["lord_mortegore_note"] = "Tuez les monstres alentour pour obtenir {item:174378} et utilisez-le pour donner du pouvoir à un {npc:161870}. Le rare apparaîtra une fois que les quatre sceaux seront activés."
L["madalav_note"] = "Cliquez sur le marteau de Madalav sur l'enclume voisine pour l'invoquer."
L["manifestation_of_wrath_note"] = "A une chance d'apparaître lorsqu'une {npc:169916} est recueillie au cours de l'expédition {wq:Déferlement d'âmes}."
L["scrivener_lenua_note"] = "Remettre {npc:160753} à la Bibliothèque interdite."
L["sinstone_hoarder_note"] = "Tentez de vous procurer le {npc:162503} et le rare se manifestera."
L["sire_ladinas_note"] = "Ramassez un reste de lumière à proximité et utilisez {spell:313065} sur {npc:157733}."
L["soulstalker_doina_note"] = "Descendez et traversez le miroir quand elle s'enfuit."
L["tomb_burster_note"] = "Peut être invoqué si {npc:155777} est piégé dans une toile. Tuez les {npc:155769}s et les vagues de {npc:155795}s proches jusqu'à ce que le rare apparaisse."
L["worldedge_gorger_note"] = [[
Obtenez un {item:173939} sur les Mange-monde, Dévoreurs et Acarus dans le Malbois et le Marais des Affres. Utilisez-le pour allumer les braseros garde-âme et invoquer le rare.

A une chance de lâcher un {item:180583}, qui commence une ligne de quête de 7 jours pour obtenir la monture {spell:333027}.
]]

L["dredglaive_note"] = "Sous le pont, dans le cadavre de {npc:173671}."
L["forbidden_chamber_note"] = "Procurez-vous un Bidon d'Anima jeté devant la porte fermée à clé et apprenez {spell:340701}. Utilisez-le pour vider cinq des {npc:173838}s à proximité, puis utilisez {spell:340866} devant le {npc:173786}."
L["gilded_plum_chest_note"] = "Tuez les {npc:166680} qui errent sur la route."
L["lost_quill_note"] = "Ramasser {item:182475} depuis la bouteille sur la table de la bibliothèque interdite."
L["rapier_fearless_note"] = "Cliquer la rapière au sol, puis vaincre {npc:173603}."
L["remlates_cache_note"] = "Sur le mur extérieur de Sombrehavre, derrière la crypte."
L["taskmaster_trove_note"] = "Lisez les rites d'entrée et sortie, puis dirigez-vous avec précaution vers le coffre."
L["the_count_note"] = "Farmez 99 {currency:1820} dans le Marais des Affres et amenez-les ensuite à {npc:173488}."

L["bleakwood_chest"] = "Coffre en bois sombre" --Correction : Doute sur le nom du coffre
L["forgotten_anglers_rod"] = "Canne à pêche oubliée"

L["loyal_gorger_note"] = "Visitez le Marais des Affres et complétez une quête journalière offerte par votre {npc:173498} 7 fois pour l'obtenir en tant que monture."

L["sinrunner_note"] = "Apportez de la nourriture et des fournitures à {npc:173468} pendant six jours pour obtenir ses rênes. Elle ne se présente que quelques minutes à la fois."
L["sinrunner_note_day1"] = "Offrez à Blanchette 8 {item:182581} provenant de zones agricoles de la Marche de L'Ouest."
L["sinrunner_note_day2"] = "Obtenez une {item:182585} de {npc:173570} à Sombrehavre et utilisez-la pour nettoyer Blanchette."
L["sinrunner_note_day3"] = "Equiper Blanchette avec 4 {item:182595} trouvés sur les routes entourant Sombrehavre."
L["sinrunner_note_day4"] = "Ramassez un {item:182620} près de {npc:173570} et remplissez-le avec de l'eau provenant de Bastion ou de Sylvarden. Ramenez le {item:182599} à Blanchette."
L["sinrunner_note_day5"] = "Equipez Blanchette d'un {item:182597}, vendu par {npc:171808} près du Marché Nocturne en échange de viandes assorties."
L["sinrunner_note_day6"] = "Nourrissez blanchette avec 3 {item:179271}, vendus par {npc:167815} à la Gargote."

L["options_icons_carriages"] = "Calèches"
L["options_icons_carriages_desc"] = "Afficher les emplacements et les parcours des calèches."

L["dominance_keep"] = "Donjon de la Domination"
L["eternal_terrace"] = "La terasse Éternelle"
L["feeders_thicket"] = "Fourré des Dévoreurs"
L["halls_of_atonement"] = "Salles de l'Expiation"
L["pridefall_hamlet"] = "Tombe-Fierté"
L["the_banewood"] = "Le Malbois"

-------------------------------------------------------------------------------
----------------------------------- THE MAW -----------------------------------
-------------------------------------------------------------------------------

L["return_to_the_maw"] = nil
L["maw_intro_note"] = [[
Complétez la suite de quêtes d'introduction pour débloquer les rares et les événements dans l'Antre.

Jusqu'à ce que vous rameniez {npc:170651} à Oribos, vous serez séparé de la plupart des autres joueurs.
]]

L["apholeias_note"] = "Avec 3 autres joueurs, placez-vous sur les coins de la plateforme et lancez {spell:331783} pour invoquer le rare."
L["ekphoras_note"] = "Avec 3 autres joueurs, placez-vous sur les coins de la plateforme et lancez {spell:330650} pour invoquer le rare."
L["orophea_note"] = "Ramassez {spell:337143} au sud-est et proposez-le à {npc:172577} pour l'activer."
L["sanngror_note"] = "S'il n'est pas attaquable, attendez qu'il n'expérimente plus sur des âmes."
L["talaporas_note"] = "Avec 3 autres joueurs, placez-vous sur les coins de la plateforme et lancez {spell:331800} pour invoquer le rare."
L["valis_note"] = "Cliquez sur les trois {npc:174810} dans le bon ordre pour invoquer le rare. L'ordre change à chaque fois et le fait de cliquer sur la mauvaise rune vous inflige des dégâts et vous applique le debuff {spell:343636}."
L["yero_note"] = "Approchez {npc:172862} puis suivez-le dans une grotte voisine où il devient hostile."

L["exos_note"] = [[
Tuez les trois autres Hérauts du Deuil, de la Douleur et de la Peine pour recueillir leurs gravures.

• {item:182328}
• {item:182326}
• {item:182327}

Combinez les trois gravures pour créer {item:182329}, qui peut être utilisé pour invoquer le rare à l'Autel de la Domination. Utilisez le {npc:173892} pour atteindre le niveau supérieur.
]] --Correction : Doute sur les noms des Hérauts

L["soul_well_note"] = "Attrapez la Stygia qui jaillit du Puit d'âmes." --Correction : Doute sur le nom du puit
L["obliterated_soul_shards_note"] = "Collectez des éclats d'âme oblitérés sur les ponts."

L["chaotic_riftstone_note"] = "Activer pour {spell:344157} rapidement à travers l'Antre."
L["venari_upgrade"] = nil

L["options_icons_bonus_boss"] = "Élites bonus"
L["options_icons_bonus_boss_desc"] = "Afficher les emplacements des élites bonus."
L["options_icons_bonus_event"] = "Événements bonus"
L["options_icons_bonus_event_desc"] = "Afficher les emplacements des événements bonus."
L["options_icons_riftstone"] = "Failles Chaotiques" --Correction : Doute sur le nom précis des failles
L["options_icons_riftstone_desc"] = "Affichez les emplacements des téléporteurs de Failles Chaotiques"
