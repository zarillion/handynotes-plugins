-- French translation by Lightuky EU-Khaz Modan
local ADDON_NAME, ns = ...
local L = ns.NewLocale('frFR')
if not L then return end

-------------------------------------------------------------------------------
----------------------------------- COMMON ------------------------------------
-------------------------------------------------------------------------------

L['anniversary_note'] = '{note:Disponible uniquement lors de l\'événement anniversaire annuel !}'

L['summer_only'] = 'Apparaît uniquement en été. (Du 21 juin au 22 septembre)'
L['options_icons_safari'] = 'Safari en Kalimdor / dans les Royaumes de l\'Est'
L['options_icons_safari_desc'] = 'Afficher les emplacements des familiers de combat pour les hauts-faits {achievement:6585} et {achievement:6586}.'

L['options_icons_crazyforcats'] = '{achievement:8397}'
L['options_icons_crazyforcats_desc'] = 'Afficher les emplacements des familiers de combat pour le haut-fait {achievement:8397}.'
L['cfc_blacktabby'] = 'Le {item:8491} peut être récupéré sur différents ennemis aux {location:Contreforts de Hautebrande}.\n\nLes ennemis recommandés sont {npc:49116} (Horde uniquement), {npc:48017} ou {npc:2248}.\n\n{note:Taux de loot en dessous de 0,1%.}'

L['in_crypt'] = 'Dans la crypte.'
L['shovelphlange_location'] = 'Dans la grotte où se trouve l\'entrée d\'Uldaman.'
L['lower_floor'] = 'A l\'étage inférieur.'
L['bl_rare_note'] = 'Tous les monstres rares dans les {location:Terres foudroyées} peuvent lacher soit des {item:8244}, soit des {item:10593} que vous pouvez échanger contre des objets auprès de {npc:7363}.'
L['takk_note'] = 'Bondit littéralement d\'un endroit à l\'autre (dans le sens inverse des aiguilles d\'une montre)'

-------------------------------------------------------------------------------
----------------------------- ZUL'GURUB (10.0.7) ------------------------------
-------------------------------------------------------------------------------

L['zg_unlock_note_01'] = '1. {dot:Blue} Récupérez le {item:203735} dans la salle remplie de fantômes sous {npc:52148} à l\'{location:Autel de sang}.'
L['zg_unlock_note_02'] = '2. Battez au moins deux boss pour que {npc:52148} puisse être engagé en combat.\n\nLa {npc:52059} peut donner la {item:68824}\nLe {npc:52151} peut donner le {item:68823}'
L['zg_unlock_note_03'] = '3. {dot:Red} Commencez le combat contre {npc:52148} et réduisez sa vie à 1PV. Il vous enverra dans le {spell:96689}.\n\nRevenez dans la pièce maintenant remplie d\'{npc:52624} et ramassez le {item:203736}.'
L['zg_unlock_note_04'] = '4. Combinez le {item:203735} et le {item:203736} pour créer le {item:203737} et entamer {quest:74576}.'
L['zg_unlock_note_05'] = '5. {quest:74576} est rendue à {npc:143138} trouvé au {location:Marché de Yojamba} à {location:Dazar’alor}.'
L['zg_unlock_note_06'] = '6. Une fois {quest:74576} terminée, {npc:143138} sera présent à l\'entrée de {location:Zul\'Gurub} et commencera à vendre des patrons contre des bijoux.'

L['zg_zandalari_bijous_note_01'] = 'Les Bijoux ont une chance d\'être récupérés sur chaque monstre dans {location:Zul\'Gurub} avec 1 garanti sur chaque boss.'
L['zg_zandalari_bijous_note_02'] = 'Les Boss peuvent également donner des {item:203774} qui contiennent 4 bijoux.'
L['zg_zandalari_bijous_note_03'] = 'Les Bijoux sont utilisés pour acheter des patrons, des ensembles et pour interagir avec diverses tas d\'os.'

L['zg_fishing_note_01'] = 'Une fois par jour, vous pouvez pêcher une {item:203742} ou une {item:203743}. La bonne zone est remplie de {npc:52435} et appliquera {spell:401577}.'
L['zg_fishing_note_02'] = 'Les Caches peuvent contenir divers Bijoux, des matériaux de professions, et une chance d\'obtenir des objets n\'étant plus disponibles.'
L['zg_fishing_note_03'] = '{note:La {item:203743} nécessitera une forme de {spell:1804} pour être ouverte.}'

L['zg_brazier_of_madness_note'] = 'Situé près de l\'autel sous la {object:Tablette de la folie} dans {location:L\'Antre de la folie}.'
L['zg_gurubashi_mojo_madness_note'] = 'Les Alchimistes ayant 300 points en {object:Alchimie classique} peuvent interagir avec la {object:Tablette de la folie} dans {location:L\'Antre de la folie} pour apprendre la recette de la {item:19931}.'

L['zg_offering_note'] = 'Utilisez une {item:19931} à côté du {item:203757} pour recevoir {spell:401721} qui vous permet d\'interagir avec les tas d\'os dans {location:Zul\'Gurub}.\n\nCe tas accepte :'

L['offering_of_fangs_label'] = 'Offrande de crocs'
L['offering_of_fangs_location'] = 'Sur l\'autel de {location:L\'Anneau}.'
L['offering_of_blood_label'] = 'Offrande de sang'
L['offering_of_blood_location'] = 'Près du bord de l\'arène, entre deux poteaux dans le {location:Domaine de Mandokir}.'
L['offering_of_claws_label'] = 'Offrande de griffes'
L['offering_of_claws_location'] = 'Au coeur du {location:Temple de Bethekk}, au fond de la pièce.'
L['offering_of_mojo_label'] = 'Offrande de mojo'
L['offering_of_mojo_location'] = 'A côté du chaudron vert à {location:La Terrase du diable}.'

L['zg_vendor_note_01'] = 'Échangez divers Bijoux et {item:203914} contre des recettes et des objets de transmogrification.'
L['zg_vendor_note_02'] = '{note:Les ensembles de classe ne sont disponibles que pour les classes qui étaient déjà présentes dans le jeu à l\'époque du {location:Zul\'Gurub} originel. Les ensembles d\'armure peuvent être portés par tout le monde.}'
L['zg_vendor_note_03'] = 'Les {item:203914} peuvent être obtenus en collectant différentes pièces sur les monstres dans {location:Zul\'Gurub}.'

L['zg_class_ensembles'] = 'Ensembles de classes de Zul\'Gurub'
L['zg_armor_ensembles'] = 'Ensembles d\'armures de Zul\'Gurub'

L['options_icons_secrets_of_zulgurub'] = 'Secrets anciens de Zul\'Gurub'
L['options_icons_secrets_of_zulgurub_desc'] = 'Afficher les emplacements importants liés aux {location:Secrets anciens de Zul\'Gurub}.'
