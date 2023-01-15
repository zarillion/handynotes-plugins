-- French translation by Lightuky EU-Khaz Modan
local ADDON_NAME, ns = ...
local L = ns.NewLocale('frFR')
if not L then return end

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

L['fiery_lords_note'] = 'Un seul {title:Seigneur des tisons} est actif à la fois, après l\'avoir tué, le suivant apparaîtra immédiatement.'
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
Bombardez le {npc:<Seigneur du Feu>} durant la quête {daily:29290}.

{note:Seuls 3 {title:Seigneurs du Feu} sont actifs à la fois. Pour obtenir ce haut-fait plus rapidement, ne rendez pas la quête et revenez le lendemain.}
]]
