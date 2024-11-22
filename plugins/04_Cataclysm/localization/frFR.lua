-- French translation by Lightuky EU-Khaz Modan
local ADDON_NAME, ns = ...
local L = ns.NewLocale('frFR')
if not L then return end

-------------------------------------------------------------------------------
----------------------------------- COMMON ------------------------------------
-------------------------------------------------------------------------------

L['options_icons_safari'] = 'Safari en Kalimdor / dans les Royaumes de l\'Est'
L['options_icons_safari_desc'] = 'Afficher les emplacements des familiers de combat pour les hauts-faits {achievement:6585} et {achievement:6586}.'

-------------------------------------------------------------------------------
--------------------------------- MOUNT HYJAL ---------------------------------
-------------------------------------------------------------------------------

L['hyjal_phase0'] = 'Phase 0 - Pré-invasion'
L['hyjal_phase1'] = 'Phase 1 - Invasion'
L['hyjal_phase2'] = 'Phase 2 - Le Sanctuaire de Malorne'
L['hyjal_phase3'] = 'Phase 3 - Le Front du Magma'
L['hyjal_phase4a'] = 'Phase 4a - Zone des Druides de la Serre'
L['hyjal_phase4b'] = 'Phase 4b - Zone des Gardiennes de l’ombre'
L['hyjal_phase5'] = 'Phase 5 - Le Rétablissement'

L['hyjal_phase1_note'] = 'Complétez des quêtes au {location:Mont Hyjal} jusqu\'à ce que vous obteniez {quest:29389}. Cette suite de quêtes commencera la Phase d\'Invasion.'
L['hyjal_phase2_note'] = 'Pour passer à la Phase 2, vous avez besoin de 10 {currency:416} pour {quest:29198}.\n\nVous gagnez des {currency:416} grâce aux quêtes journalières.'
L['hyjal_phase3_note'] = 'Pour passer à la Phase 3, vous avez besoin de 15 {currency:416} pour {quest:29201}.\n\nVous gagnez des {currency:416} grâce aux quêtes journalières.'
L['hyjal_phase4_note'] = [[
La Phase 4 est divisée en deux parties.

Pour passer à la Phase 4a, vous avez besoin de 150 {currency:416} pour {quest:29181}.
Pour passer à la Phase 4b, vous avez besoin de 150 {currency:416} pour {quest:29214}.

Vous gagnez des {currency:416} grâce aux quêtes journalières.
]]
L['hyjal_phase5_note'] = 'Pour passer à la phase 5, vous devez terminer {quest:29215} et {quest:29182}.'

L['portal_molten_front'] = 'Portail vers le Front du Magma'
L['portal_mount_hyjal'] = 'Portail vers le Mont Hyjal'

L['spider_hill_note'] = [[
Atteignez le point le plus haut du {location:Nid de la veuve}.

Pour atteindre le sommet, vous devez aggro les {npc:52981} sans les tuer. Elles lanceront {spell:97959} et vous tireront vers le haut.
Techniques recommandées pour les personnages au niveau maximum :

{item:46725}
Chasseur de démons : {spell:185245}
Druide : {spell:2908}
Chasseur : {spell:1513}
Mage : {spell:241178}
Paladin : {spell:62124}
Prêtre : {spell:528}
Voleur : {spell:36554}
Chaman : {spell:52870}
Guerrier : {spell:355}
]]

L['fiery_lords_note'] = 'Un seul {title:Seigneur} est actif à la fois, après l\'avoir tué, le suivant apparaîtra immédiatement.'
L['have_we_met_note'] = [[
Un groupe de combattants d'élite vous assistera lors de la quête journalière à votre arrivée au {location:Perchoir de Sethria}.

Utilisez l'emote {emote:/wave} pour faire signe au PNJ requis.
]]

L['ludicrous_speed_note'] = [[
Pendant la quête {daily:29147}, obtenez 65 charges de {spell:100957}.

{npc:52594} donne 15 charges
{npc:52596} donne 5 charges
{npc:52595} donne 1 charge
]]

L['angry_little_squirrel_note'] = 'Attirez un ennemi vers l\'arbre et un {npc:52195} lui tombera sur la tête.'
L['hyjal_bear_cub_note'] = 'Pendant la quête {daily:29161}, lancez un {npc:52688} sur un {npc:52795}.'
L['child_of_tortolla_note'] = 'Pendant la quête {daily:29101}, au lieu de lancer une tortue dans l\'eau, lancez-la sur une {npc:52219}.'
L['ready_for_raiding_2_note'] = 'Tuez les {title:Lieutenants de la Flamme} suivants à l\'{location:Emprise de Ragnaros} sans être touché par leurs attaques spéciales.'
L['flawless_victory_note'] = 'Tuez en solo un {npc:52552} sans subir de dégâts de {spell:97243} ou {spell:96688}.'
L['gang_war_note'] = 'Gagnez un duel au {location:Perchoir de Sethria} pendant la quête {daily:29128}.'
L['death_from_above_note'] = [[
Bombardez le {title:<Seigneur du Feu>} durant la quête {daily:29290}.

{note:Seuls 3 {title:Seigneurs du Feu} sont actifs à la fois. Pour obtenir ce haut-fait plus rapidement, ne rendez pas la quête et revenez le lendemain.}
]]
L['flamewaker_sentinel_note'] = 'Utilisez l\'{item:137663} pour réduire sa vie afin qu\'il lance {spell:98369}. Évitez tous les tirs et tuez-le.'
L['flamewaker_shaman_note'] = 'Utilisez l\'{item:137663} pour réduire sa vie. Attendez qu\'il se suicide.'

L['options_icons_spider_hill_desc'] = 'Afficher l\'emplacement pour le haut-fait {achievement:5872}.'
L['options_icons_fiery_lords_desc'] = 'Afficher les emplacements des élémentaires pour le haut-fait {achievement:5861}.'
L['options_icons_have_we_met_desc'] = 'Afficher l\'emplacement de la quête pour le haut-fait {achievement:5865}.'
L['options_icons_unbeatable_pterodactyl_desc'] = 'Afficher l\'emplacement de la quête pour le haut-fait {achievement:5860}.'
L['options_icons_ludicrous_speed_desc'] = 'Afficher l\'emplacement pour le haut-fait {achievement:5862}.'
L['options_icons_critter_revenge_desc'] = 'Afficher les emplacements des bestioles pour le haut-fait {achievement:5868}.'
L['options_icons_r4r_2_desc'] = 'Afficher l\'emplacement pour le haut-fait {achievement:5873}.'
L['options_icons_flawless_victory_desc'] = 'Afficher l\'emplacement pour le haut-fait {achievement:5867}.'
L['options_icons_gang_war_desc'] = 'Afficher l\'emplacement pour le haut-fait {achievement:5864}.'
L['options_icons_death_from_above_desc'] = 'Afficher les emplacements pour le haut-fait {achievement:5874}.'
L['options_icons_infernal_ambassadors_desc'] = 'Afficher les emplacements pour le haut-fait {achievement:5869}.'
L['options_icons_fireside_chat_desc'] = 'Afficher les emplacements des PNJs pour le haut-fait {achievement:5870}.'
L['options_icons_molten_flow_master_desc'] = 'Afficher les emplacements pour le haut-fait {achievement:5871}.'

-------------------------------------------------------------------------------
---------------------------------- DEEPHOLM -----------------------------------
-------------------------------------------------------------------------------

L['portal_to_therazane'] = 'Portail vers le Trône de Therazane'
L['portal_to_earth_temple'] = 'Portail vers le temple de la Terre'

L['fungal_frenzy_note'] = [[
Subissez simultanément les effets d'un {spell:83803}, {spell:83805}, {spell:83747} et {spell:83804}.

{dot:Bronze} {spell:83747}
Champignon brun rougeâtre avec un bord blanc.
Vous fait rapetisser.

{dot:Red} {spell:83803}
Grand champignon rouge, près de l'eau.
Vous entoure d'une brume rouge, augmente les dégâts infligés.

{dot:Blue} {spell:83805}
Champignon bleu avec une bordure blanche.
Vous fait courir plus vite.

{dot:LightBlue} {spell:83804}
Champignon violet à points roses.
Ramassez ce champignon en dernier, il ne fera que vous projeter en l'air, vous ne recevrez aucun buff.

{note:Les champignons ne peuvent être trouvés que si vous effectuez la quête {daily:27050}.
Tous les champignons sont affichés en tant que {object:Champignon cramoisi naissant}.}
]]
L['rock_lover_note'] = 'Restez loin du {npc:44258}.'

L['options_icons_broodmother_desc'] = 'Afficher l\'emplacement de la quête pour le haut-fait {achievement:5447}.'
L['options_icons_fungal_frenzy_desc'] = 'Afficher les emplacements des champignons pour le haut-fait {achievement:5450}.'
L['options_icons_fungalophobia_desc'] = 'Afficher l\'emplacement de la quête pour le haut-fait {achievement:5445}.'
L['options_icons_glop_family_desc'] = 'Afficher l\'emplacement de la quête pour le haut-fait {achievement:5446}.'
L['options_icons_rock_lover_desc'] = 'Afficher l\'emplacement et le trajet vers {npc:49956} pour le haut-fait {achievement:5449}.'

-------------------------------------------------------------------------------
----------------------------------- VASHJIR -----------------------------------
-------------------------------------------------------------------------------

L['options_icons_whale_shark_desc'] = 'Afficher les emplacements du {npc:40728} pour le haut-fait {achievement:4975}.'

-------------------------------------------------------------------------------
----------------------------- TWILIGHT HIGHLANDS ------------------------------
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
------------------------------------ ULDUM ------------------------------------
-------------------------------------------------------------------------------
