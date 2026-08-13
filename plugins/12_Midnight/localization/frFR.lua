local ADDON_NAME, ns = ...
local L = ns.NewLocale('frFR')
if not L then return end
-- French translation by Lightuky EU-Khaz Modan

-------------------------------------------------------------------------------
------------------------------------ COMMON -----------------------------------
-------------------------------------------------------------------------------

L['options_icons_delve_rewards'] = 'Récompenses des Gouffres'
L['options_icons_delve_rewards_desc'] = 'Afficher les récompenses des {location:Gouffres} dans les infobulles.'

L['options_icons_stormarion_assault'] = 'Assaut de Fulgarion'
L['options_icons_stormarion_assault_desc'] = 'Afficher les récompenses des {location:Assauts de Fulgarion} dans les infobulles.'

L['options_icons_abundance_rewards'] = 'Abondance '
L['options_icons_abundance_rewards_desc'] = 'Afficher les récompenses des {location:Abondance} dans les infobulles.'

L['skyriding_glyph'] = 'Glyphe de vol dynamique'
L['options_icons_skyriding_glyph'] = 'Glyphes de vol dynamique'
L['options_icons_skyriding_glyph_desc'] = 'Afficher les emplacements des glyphes de vol dynamique.'

L['midnight_telescope'] = 'Télescope'
L['options_icons_telescope'] = '{achievement:62057}'
L['options_icons_telescope_desc'] = 'Afficher les emplacements des 10 télescopes pour le haut-fait {achievement:62057}.'

L['options_icons_midnight_lore_hunter'] = '{achievement:62104}'
L['options_icons_midnight_lore_hunter_desc'] = 'Afficher les emplacements des objets d\'histoire pour le haut-fait {achievement:62104}.'

L['options_icons_profession_treasures'] = 'Trésors de métiers'
L['options_icons_profession_treasures_desc'] = 'Afficher les emplacements des trésors qui confèrent de la connaissance de métiers.'

L['options_icons_safari'] = '{achievement:61091}'
L['options_icons_safari_desc'] = 'Afficher les emplacements des mascottes pour le haut-fait {achievement:61091}.'

L['options_icons_renowned_beast'] = 'Bêtes de renom'
L['options_icons_renowned_beast_desc'] = 'Afficher les emplacements des bêtes invoquables quotidiennement liées au Dépeçage'
L['silverscale_note'] = 'Invoqué sous le pont.'

-------------------------------------------------------------------------------
-------------------------------- EVERSONG WOODS -------------------------------
-------------------------------------------------------------------------------

L['options_icons_ever_painting'] = '{achievement:62185}'
L['options_icons_ever_painting_desc'] = 'Afficher les emplacements des peintures pour le haut-fait {achievement:62185}.'
L['options_icons_runestone_rush'] = '{achievement:61961}'
L['options_icons_runestone_rush_desc'] = 'Afficher les emplacements des pierres runiques pour le haut-fait {achievement:61961}.'

L['eversong_woods_stone_vat_of_wine_note'] = 'Requiert 10x {item:256232} et 1x {item:256397} acheté auprès de {npc:251405}.\n\nPiétinez les Grappes de raisin puis ajoutez la Levure.'
L['on_flying_platform'] = 'Sur une plate-forme volante.'
L['gift_of_the_phoenix_note'] = 'Attrapez 5x Cendres de phénix tombant au sol après avoir interagi avec le {object:Réceptacle de Haut-Soleil}.'
L['triple_locked_safebox_note'] = 'Requiert 3x clés de coffre-fort cachées. Prenez la {object:Torche ardente} à côté du coffre pour les faire apparaître.'
L['incomplete_book_of_sonnets'] = 'Livret de sonnets incomplet'

-------------------------------------------------------------------------------
----------------------------------- HARANDAR ----------------------------------
-------------------------------------------------------------------------------

L['glowing_moth'] = 'Phalène luminescent'
L['options_icons_glowing_moth'] = '{achievement:61052}'
L['options_icons_glowing_moth_desc'] = 'Afficher les emplacements des Phalènes luminescentes pour le haut-fait {achievement:61052}.'

L['sporespawned_cache_note'] = 'Interagissez avec le {dot:Red}{object:Maillet fongique} à Fongara pour obtenir le buff {spell:1266347}, puis utilisez-le pour faire sonner le {object:Gong de mycélium}. Le trésor apparaîtra à côté du gong.'
L['fungal_mallet'] = 'Maillet fongique'
L['impenatrably_sealed_gourd_note'] = 'Récupérez le {item:260251} sur le {object:Pichet pendant} à proximité et le {item:260250} sur le {object:Flacon suspendu} proche. \nInteragissez avec le {object:Vase durable} et ajoutez-y les fluides pour obtenir le {item:260266}. \nInspectez le trésor pour obtenir la récompense.'

L['options_icons_more_than_just_thier_roots'] = '{achievement:62188}'
L['options_icons_more_than_just_thier_roots_desc'] = 'Afficher les emplacements des PNJs pour le haut-fait {achievement:62188}.'
L['more_than_just_thier_roots_note'] = 'Parlez aux PNJs aux endroits suivants :'
L['chonon_note'] = 'En haut, sur les branches de l\'arbre.'
L['funnid_note'] = 'Tout en haut, sur les branches de l\'Arbre-Monde.'
L['kawayn_note'] = 'Au sommet du grand tronc d\'arbre.'

L['altar_of_innocence'] = 'Autel de l\'innocence'
L['altar_of_vigor'] = 'Autel de la vigueur'
L['altar_of_wisdom'] = 'Autel de la sagesse'
L['altar_of_innocence_note'] = 'Rendez la {item:256882} à l\'{npc:254030} après avoir interagi avec l\'{object:Autel de l\'innocence}.\n\nAccomplissez les tâches associées aux autres autels pour faire apparaître le {object:Don du cycle} à {location:La Tanière}.'
L['altar_of_vigor_note'] = 'Rendez le {item:257024} à l\'{npc:254104} après avoir interagi avec l\'{object:Autel de la vigueur}.\n\nAccomplissez les tâches associées aux autres autels pour faire apparaître le {object:Don du cycle} à {location:La Tanière}.'
L['altar_of_wisdom_note'] = 'Rendez l\'{item:257054} à l\'{npc:254116} après avoir interagi avec l\'{object:Autel de la sagesse}.\n\nAccomplissez les tâches associées aux autres autels pour faire apparaître le {object:Don du cycle} à {location:La Tanière}.'

-------------------------------------------------------------------------------
---------------------------------- VOIDSTORM ----------------------------------
-------------------------------------------------------------------------------

L['void_shielded_tomb_note'] = 'Buvez la {object:Potion de dissociation} posée sur la table à proximité, puis courez vers le bâtiment d\'en face, récupérez la {item:251519} et utilisez-la pour déverrouiller le coffre. \n\n' .. ns.color.Red('Niveau 90 requis')
L['bloody_sack_note'] = 'Ramassez de la {object:Viande dégoulinante} sur les tas d\'os à proximité pour nourrir l\'{object:Oubliette oubliée}.'
L['malignant_chest_note'] = 'Activez les {object:Nœuds malveillants} dans la grotte pour déverrouiller le coffre.'
L['malignant_node'] = 'Nœud malveillant'
L['exaliburn_note'] = 'Buvez la {object:Potion de force incontestable} située à proximité, puis retirez Excalibrûle.'
L['voidhoarders_corpse'] = 'Cadavre d’amasseur du Vide'
L['blackcore_note'] = 'Tuez {npc:248462} ou des {npc:248483} dans la zone indiquée jusqu\'à obtenir 3x {item:248680}, puis interagissez avec les {object:Lentilles de singularité} pour invoquer le rare.'

-------------------------------------------------------------------------------
----------------------------------- ZUL'AMAN ----------------------------------
-------------------------------------------------------------------------------

L['options_icons_frog_princess'] = '{achievement:62201}'
L['options_icons_frog_princess_desc'] = 'Afficher les emplacements des grenouilles pour le haut-fait {achievement:62201}.'

L['options_icons_song_seeker'] = '{achievement:61455}'
L['options_icons_song_seeker_desc'] = 'Afficher les emplacements des Cherche-Chant pour le haut-fait {achievement:61455}.'

L['options_icons_spiritpaw_marathon'] = '{achievement:62202}'
L['options_icons_spiritpaw_marathon_desc'] = 'Afficher les emplacements liés au haut-fait {achievement:62202}.'
L['spiritpaw_marathon_note'] = 'Parlez avec {npc:258938}, puis récupérez les {npc:250100} à proximité et emmenez-les au point {dot:Pink} situé au {location:Temple de Jan’alai} dans un délai de 30 minutes. \n\n' .. ns.color.Red('Ne chevauchez pas une monture, sous peine de perdre le buff.')

L['options_icons_gnome_alone'] = '{achievement:62200}'
L['options_icons_gnome_alone_desc'] = 'Afficher les emplacements des objets liés au haut-fait {achievement:62200}.'

L['abandoned_ritual_skull'] = 'Crâne rituel abandonné'

L['options_icons_put_a_pin_in_it'] = '{achievement:62199}'
L['options_icons_put_a_pin_in_it_desc'] = 'Affichez les emplacements liés au haut-fait {achievement:62199}.'
L['kalika_note'] = 'Parlez à {npc:258884}, puis interagissez avec le {object:Bouton oublié} situé derrière la {object:Statue de jade} à proximité.'
L['songseeker_ikaja_note'] = 'Au sommet du temple.'

-------------------------------------------------------------------------------
----------------------------------- NAIGTAL -----------------------------------
-------------------------------------------------------------------------------

L['sleepy_mandrake_note'] = 'Trouvez 5 Amanites différentes et donnez-les à la {npc:267910} dans la Grotte du Dormeur. Chaque Amanite se trouve à un endroit différent dans la zone.'
L['partially_digested_redcap_note'] = 'Peut être lâché par les {npc:264340}, {npc:264315}, et par les monstres rares {npc:263954}, {npc:264576}, {npc:263947}, {npc:263955}.'
L['ancient_crypt_reliquary'] = 'Reliquaire de crypte antique'
L['squirming_mollusk'] = 'Mollusque remuant'
L['spiked_shell'] = 'Carapace d\'épines'

-------------------------------------------------------------------------------
------------------------------------- VAL -------------------------------------
-------------------------------------------------------------------------------

L['enchanted_hilt'] = 'Garde enchantée'
L['enchanted_hilt_note'] = 'Mode héroïque uniquement.\n\nCliquez sur la {object:Garde enchantée} pour obtenir {spell:1300397}, puis battez soit deux fois le Boss hors instance {npc:261072} ou deux monstres rares du haut-fait {achievement:62881} dans la zone. Retournez auprès de la Garde pour recevoir le trésor.'

-------------------------------------------------------------------------------
---------------------------------- ARCANTINA ----------------------------------
-------------------------------------------------------------------------------

L['share_a_drink_note'] = 'Achetez des {item:251039} auprès de {npc:250495} à l\'Arcantina et partagez-les avec chaque race.'

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
--------------------------------- RITUAL SITES --------------------------------
-------------------------------------------------------------------------------
L['options_icons_ritual_site'] = 'Sites rituels'
L['options_icons_ritual_site_desc'] = 'Afficher les récompenses des {location:Sites rituels} dans les infobulles.'

L['ritual_site_broken_throne'] = 'Site rituel : Trône brisé'
L['ritual_site_daggerspine_point'] = 'Site rituel : Pointe des Daguéchines'

L['broken_throne_entry_note'] = 'Le Trône brisé, également connu sous le nom d’Atal’Kaldan, est une ruine Amani prise d’assaut par la Lame du Crépuscule. Cliquez sur l\'{npc:260103} pour y entrer.\n\nAlterne chaque semaine avec le {location:Site rituel : Pointe des Daguéchines}.'
L['daggerspine_point_entry_note'] = 'La Pointe des Daguéchines est une île revendiquée par les Nagas Daguéchine, elle était anciennement appelée l\'Île de Shalandis. Cliquez sur l\'{npc:260103} pour y entrer.\n\nAlterne chaque semaine avec le {location:Site rituel : Trône Brisé}.'

L['chewed_meat'] = 'Viande mâchonnée'
L['chewed_meat_note'] = 'Invoquez {spell:1286634} à l\'emplacement de la {object:Viande mâchonnée}. Vainquez l\'{npc:263381}. Une fois qu\'il sera devenu amical, donnez-lui 5x {item:242639} à manger.'

L['ritual_circle'] = 'Cercle rituel'
L['ritual_circle_note'] = 'Placez la {item:271999} et commencez le rituel pour invoquer l\'{npc:263527}.'

L['updraft'] = 'Courant ascendant'
L['void_tainted_nest'] = 'Nid corrompu par le Vide'
L['void_tainted_nest_note'] = 'Vous devez monter sur l\'{spell:1286606} pour voir le Courant ascendant. Approchez-vous du courant pour vous envoler vers le nid.'

L['chubs_note'] = 'Nourissez l\'{npc:263355} avec 1x {item:242639}.'

L['rustling_fern'] = 'Fougère frémissante'
L['rustling_bush'] = 'Buisson frémissant'
L['rustling_fern_note'] = 'Trouvées au Niveau 3 ou supérieur. Cliquez sur des {object:Fougères frémissantes} jusqu\'à ce que le jeune lynx apparaisse (8 à 13 clics environ). Seulement 1 à 2 fougères trouvables par session.\nNécessite que la mascotte n\'ait pas déjà été apprise.'
L['rustling_bush_note'] = 'Trouvés au Niveau 3 ou supérieur. Cliquez sur des {object:Buissons frémissants} jusqu\'à ce que le jeune lynx apparaisse (8 à 13 clics environ). Seulement 1 à 2 buissons trouvables par session.\nNécessite que la mascotte n\'ait pas déjà été apprise.'

L['soggy_nest'] = 'Nid détrempé'
L['soggy_nest_note'] = 'Requiert le {item:272128} pour attirer le {npc:263917}.\nLe {item:272128} peut également être obtenu en tuant des nagas dans la zone.'

L['washed_up_kelp'] = 'Varech échoué'
L['washed_up_kelp_note'] = 'Fouillez les {object:Varechs échoués} pour avoir une chance d\'attirer le {npc:263617}. Trouvables à plusieurs endroits dans la zone.'

L['floating_egg_note'] = 'Un {npc:263805} qui descend la rivière à la dérive. Attrapez-le pendant son trajet.'
------------------------------------ DELVES -----------------------------------
-------------------------------------------------------------------------------

L['sturdy_chest'] = 'Coffre solide'
L['sturdy_chest_suffix'] = 'Coffre solide trouvé'

L['gulf_of_memory_chest_note'] = 'Grimpez le long des racines de l\'arbre pour atteindre le trésor.'

-------------------------------------------------------------------------------
--------------------------------- COILED ISLES --------------------------------
-------------------------------------------------------------------------------

L['lost_spirit_note'] = 'Rapportez le {item:269935} à l\'{npc:261867}.'
L['sunken_divers_chest_note'] = 'Tuez des {npc:263081} à proximité et récupérez 3x {item:271424}, puis combinez-les pour créer la {item:271423} afin de déverrouiller le trésor.'
L['vulzahn_smuggled_treasure_note'] = '1. Obtenez une {item:271791} auprès de l\'{dot:Blue}{npc:253837}.\n\n2. Donnez la {item:271791} au {dot:Red}{npc:262204} pour recevoir un {item:271788}.\n\n3. Apportez le {item:271788} à {dot:Green}{npc:263265} pour recevoir la {item:271792} et déverrouiller le trésor.'
L['grave_of_someone_forgotten_note'] = '1. Parlez a {dot:Red}{npc:263242}.\n\n2. Parlez a {dot:Green}{npc:263243}.\n\n3. Parlez a {dot:Blue}{npc:263241}.\n\n4. Retournez a la tombe pour la piller.'
L['profane_ritual_spoils_note'] = 'Placez-vous face à la statue et cliquez sur les {npc:263187} dans l\'ordre suivant : en haut à droite, en haut à gauche, en bas à droite, puis en bas à gauche pour déverrouiller le trésor.'
L['abandoned_amani_privateers_cache_note'] = '1. Pêchez dans le {dot:Blue}{object:Banc de morues macabre} pour obtenir un {item:265525}, puis donnez-le à manger au {npc:258076} underwater.\n\n2. Suivez le dauphin pour récupérer la {item:265610} dans la {dot:Red}{object:Caisse détrempée} et la {item:265603} dans l\'{dot:Green}{object:Urne brisée}.\n\n3. Faites un clic droit sur l\'une des moitiés pour les assembler en la {item:265602} et déverrouillez le trésor.\n\n{note:Restez sous l\'eau tout le temps. Si vous remontez à la surface, le dauphin s\'enfuira.}'
L['grisly_cod_pool'] = 'Banc de morues macabre'
L['waterlogged_crate'] = 'Caisse détrempée'
L['broken_urn'] = 'Urne brisée'
L['brine_crusted_chest_note'] = '1. Ouvrez des {dot:Blue}{object:Palourdes pétillantes} jusqu\'à obtenir une {item:271815}.\n\n2. Allez voir {dot:Red}{npc:263347} et placez la perle sur la flèche au sol.\n\n3. Ramassez la {item:271881} laissée au sol et ouvrez le trésor.\n\n{note:Si vous ne parvenez pas à ouvrir une palourde, vous avez probablement déjà une perle dans vos sacs.}'
L['bubbling_clam'] = 'Palourde pétillante'

L['options_icons_coiled_isle_safari'] = '{achievement:62492}'
L['options_icons_coiled_isle_safari_desc'] = 'Afficher les emplacements des mascottes pour le haut-fait {achievement:62492}.'

L['options_icons_student_of_hissstory'] = '{achievement:63662}'
L['options_icons_student_of_hissstory_desc'] = 'Afficher les emplacements des objets d\'histoire pour le haut-fait {achievement:63662}.'

L['options_icons_soft_underbelly'] = '{achievement:62601}'
L['options_icons_soft_underbelly_desc'] = 'Afficher les emplacements pour le haut-fait {achievement:62601}.'

L['options_icons_the_honored_dead'] = '{achievement:63610}'
L['options_icons_the_honored_dead_desc'] = 'Afficher les emplacements pour le haut-fait {achievement:63610}.'
