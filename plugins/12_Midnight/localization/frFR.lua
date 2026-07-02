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
-------------------------------- EVERSONG WOODS --------------------------------
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
----------------------------------- HARANDAR -----------------------------------
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
---------------------------------- ZUL'AMAN ----------------------------------
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
----------------------------------- NAIGTAL ------------------------------------
-------------------------------------------------------------------------------

L['sleepy_mandrake_note'] = 'Trouvez 5 Amanites différentes et donnez-les à la {npc:267910} dans la Grotte du Dormeur. Chaque Amanite se trouve à un endroit différent dans la zone.'
L['ancient_crypt_reliquary'] = nil
L['squirming_mollusk'] = nil
L['spiked_shell'] = nil

-------------------------------------------------------------------------------
------------------------------------- VAL --------------------------------------
-------------------------------------------------------------------------------

L['enchanted_hilt'] = 'Garde enchantée'
L['enchanted_hilt_note'] = 'Mode héroïque uniquement.\n\nCliquez sur la {object:Garde enchantée} pour obtenir {spell:1300397}, puis battez soit deux fois le Boss hors instance {npc:261072} ou deux monstres rares du haut-fait {achievement:62881} dans la zone. Retournez auprès de la Garde pour recevoir le trésor.'

-------------------------------------------------------------------------------
---------------------------------- ARCANTINA ----------------------------------
-------------------------------------------------------------------------------

L['share_a_drink_note'] = 'Achetez des {item:251039} auprès de {npc:250495} à l\'Arcantina et partagez-les avec chaque race.'

-------------------------------------------------------------------------------
----------------------------------- DELVES ------------------------------------
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

L['options_icons_coiled_isle_safari'] = '{achievement:62492}'
L['options_icons_coiled_isle_safari_desc'] = 'Afficher les emplacements des mascottes pour le haut-fait {achievement:62492}.'

L['options_icons_student_of_hissstory'] = '{achievement:63662}'
L['options_icons_student_of_hissstory_desc'] = 'Afficher les emplacements des objets d\'histoire pour le haut-fait {achievement:63662}.'

L['options_icons_soft_underbelly'] = '{achievement:62601}'
L['options_icons_soft_underbelly_desc'] = 'Afficher les emplacements pour le haut-fait {achievement:62601}.'

L['options_icons_the_honored_dead'] = '{achievement:63610}'
L['options_icons_the_honored_dead_desc'] = 'Afficher les emplacements pour le haut-fait {achievement:63610}.'
