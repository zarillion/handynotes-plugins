local ADDON_NAME, ns = ...
local L = ns.NewLocale('deDE')
if not L then return end

-------------------------------------------------------------------------------
----------------------------------- COMMON ------------------------------------
-------------------------------------------------------------------------------

L['options_icons_safari'] = 'Auf Safari in Kalimdor / den Östlichen Königreichen'
L['options_icons_safari_desc'] = 'Zeigt die Positionen der Kampfhaustiere für die Erfolge {achievement:6585} und {achievement:6586} an.'

-------------------------------------------------------------------------------
--------------------------------- MOUNT HYJAL ---------------------------------
-------------------------------------------------------------------------------

L['hyjal_phase0'] = 'Phase 0 - Vor der Invasion'
L['hyjal_phase1'] = 'Phase 1 - Invasion'
L['hyjal_phase2'] = 'Phase 2 - Das Heiligtum von Malorne'
L['hyjal_phase3'] = 'Phase 3 - Die Geschmolzene Front'
L['hyjal_phase4a'] = 'Phase 4a - Druiden der Kralle'
L['hyjal_phase4b'] = 'Phase 4b - Die Schattenwächterinnen'
L['hyjal_phase5'] = 'Phase 5 - Der Geheilte Hyjal '

L['hyjal_phase1_note'] = 'Schließe Quests in {location:Mount Hyjal} ab, bis du die Quest {quest:29389} erhältst. Diese Questline startet die Invasionsphase.'
L['hyjal_phase2_note'] = 'Um die zweite Phase zu starten benötigst du 10 {currency:416} die Quest {quest:29198}.\n\nDu erhältst {currency:416} von täglichen Quests.'
L['hyjal_phase3_note'] = 'Um die dritte Phase zu starten benötigst du 15 {currency:416} die Quest {quest:29201}.\n\nDu erhältst {currency:416} von täglichen Quests.'
L['hyjal_phase4_note'] = [[Die vierte Phase ist in zwei teile unterteilt.
Um die Phase 4a zu starten benötigst du 150 {currency:416} für die Quest {quest:29181}.
Um die Phase 4b zu starten benötigst du 150 {currency:416} für die Quest {quest:29214}.

Du erhältst {currency:416} von täglichen Quests.]]
L['hyjal_phase5_note'] = 'Um die fünfte Phase zu starten musst du beide Quests {quest:29215} und {quest:29182} abgeschlossen haben.' -- review

L['portal_molten_front'] = 'Portal zur Geschmolzenen Front'
L['portal_mount_hyjal'] = nil

L['spider_hill_note'] = [[Erreiche den höchsten Punkt des {location:Geleges der Witwe}.
Um die Spitze zu erreichen, musst du {npc:52981} angreifen, ohne sie zu töten. Sie werden {Zauber:97959} wirken und dich nach oben ziehen.

Empfohlene Methoden für Charaktere auf Maximallevel:
{item:46725}

Dämonenjäger: {spell:185245}
Druide: {spell:2908}
Jäger: {spell:1513}
Magier: {spell:241178}
Paladin: {spell:62124}
Priester: {spell:528}
Schurke: {spell:36554}
Schamane: {spell:52870}
Krieger: {spell:355}
]]

L['fiery_lords_note'] = 'Es erscheint jeweils nur ein {npc:Fürst der Asche}, nach dessen Tötung spawnt sofort der nächste.'
L['have_we_met_note'] = [[Ein Elitetrupp von Kämpfern wird dich bei der täglichen Quest unterstützen sobald du in {location:Sethrias Nest} ankommst.

Benutze das Emote {emote:/winken} um dem benötigten NPC zu winken.]]
L['ludicrous_speed_note'] = [[Erreiche während der Quest {daily:29147} 65 Stapel von {spell:100957}.

{npc:52594n} geben 15 Stapel
{npc:52596n} geben 5 Stapel
{npc:Gebirgssingvögel} geben 1 Stapel]]
L['angry_little_squirrel_note'] = 'Ziehe einen Gegner zum Baum und ein {npc:52195} will auf seinen Kopf springen.'
L['hyjal_bear_cub_note'] = 'Wirf während der Quest {daily:29161} einen {npc:52688} auf einen {npc:52795}.'
L['child_of_tortolla_note'] = 'Kicke während der Quest {daily:29101} eine Schildkröte statt ins Wasser auf einen {npc:52219}.'
L['ready_for_raiding_2_note'] = 'Töte die folgenden {npc:Leutnants der Flamme} auf {location:Ragnaros\' Ebenen}, ohne von ihren Spezialangriffen getroffen zu werden.'
L['flawless_victory_note'] = ' Töte alleine ein {npc:52552}, ohne Schaden durch {spell:97243} oder {spell:96688} zu erleiden. '
L['gang_war_note'] = 'Gewinne ein Duell in {location:Sethrias Nest}, während du dich auf der Quest {daily:29128} befindest.'
L['death_from_above_note'] = [[Bombardiere den {npc:<Feuerfürst>} während du die Quest {daily:29290} erledigst.

{note:Nur 3 {npc:Feuerfürsten} sind zu selben zeit aktiv. Um den Erfolg schneller abzuschließen schließe die Quest nicht ab und komme morgen wieder.}]]
L['flamewaker_sentinel_note'] = 'Verwende {item:137663}, um seine Gesundheit zu senken, damit er dich tragen kann, und töte ihn dann.'
L['flamewaker_shaman_note'] = 'Verwende {item:137663}, um seine Gesundheit zu senken. Warte bis er sich selbst tötet.'

L['options_icons_spider_hill_desc'] = 'Zeigt die Position für den Erfolg {achievement:5872} .'
L['options_icons_fiery_lords_desc'] = 'Zeigt die Position der Elementare für den Erfolg {achievement:5861}.'
L['options_icons_have_we_met_desc'] = 'Zeigt die Questposition für den Erfolg {achievement:5865}.'
L['options_icons_unbeatable_pterodactyl_desc'] = 'Zeigt die Questposition für den Erfolg {achievement:5860}.'
L['options_icons_ludicrous_speed_desc'] = 'Zeigt die Position für den Erfolg {achievement:5862}.'
L['options_icons_critter_revenge_desc'] = 'Zeigt die Positionen der Tiere für den Erfolg {achievement:5868}.'
L['options_icons_r4r_2_desc'] = 'Zeigt die Position für den Erfolg {achievement:5873}.'
L['options_icons_flawless_victory_desc'] = 'Zeigt die Position für den Erfolg {achievement:5873}.'
L['options_icons_gang_war_desc'] = 'Zeigt die Position für den Erfolg {achievement:5864}.'
L['options_icons_death_from_above_desc'] = 'Zeigt die Positionen für den Erfolg {achievement:5874}.'
L['options_icons_infernal_ambassadors_desc'] = 'Zeigt die Positionen für den Erfolg {achievement:5869}.'
L['options_icons_fireside_chat_desc'] = 'Zeigt die Positionen der NPCs für den Erfolg {achievement:5870}.'
L['options_icons_molten_flow_master_desc'] = 'Zeigt die Positionen für den Erfolg {achievement:5871}.'

-------------------------------------------------------------------------------
---------------------------------- DEEPHOLM -----------------------------------
-------------------------------------------------------------------------------

L['portal_to_therazane'] = 'Portal zu Therazanes Thron'
L['portal_to_earth_temple'] = 'Portal zum Tempel der Erde'

L['fungal_frenzy_note'] = [[
Leidet gleichzeitig unter den Effekten von {spell:83803}, {spell:83805}, {spell:83747} und {spell:83804}.

{dot:Bronze} {spell:83747}
Braun-roter Pilz mit weißem Rand.
Lässt dich schrumpfen.

{dot:Red} {spell:83803}
Großer roter Pilz, in der nähe von Wasser.
Umgibt dich mit einem roten Nebel, erhöht deinen Schaden.

{dot:Blue} {spell:83805}
Blauer Pilz mit weißem Rand.
Du kannst schneller laufen.

{dot:LightBlue} {spell:83804}
Violetter Pilz mit Pinken Punkten.
Sammle diesen Pilz zu letzt ein, er wirft dich nur in die Luft und du erhältst keinen Buff.

{note:Die Pilze können nur gefunden werden wenn du dich auf der Quest {daily:27050} befindest.
Alle Pilze werden als {object:Sprießender Rubinpilz} angezeigt.}
]]
L['rock_lover_note'] = 'Bleib weg von {npc:44258}.'

L['options_icons_broodmother_desc'] = 'Zeigt die Questposition für den Ergolg {achievement:5447}.'
L['options_icons_fungal_frenzy_desc'] = 'Zeigt die Position der Pilze für den Erfolg {achievement:5450}.'
L['options_icons_fungalophobia_desc'] = 'Zeigt die Questposition für den Ergolg {achievement:5445}.'
L['options_icons_glop_family_desc'] = 'Zeigt die Questposition für den Ergolg {achievement:5446}.'
L['options_icons_rock_lover_desc'] = 'Zeigt die Position und den Weg zu {npc:49956} für den Erfolg {achievement:5449}.'

-------------------------------------------------------------------------------
----------------------------------- VASHJIR -----------------------------------
-------------------------------------------------------------------------------

L['options_icons_whale_shark_desc'] = 'Zeigt die Position des {npc:40728s} für den Erfolg {achievement:4975}.'

-------------------------------------------------------------------------------
----------------------------- TWILIGHT HIGHLANDS ------------------------------
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
------------------------------------ ULDUM ------------------------------------
-------------------------------------------------------------------------------
