local ADDON_NAME, ns = ...
local L = ns.NewLocale('deDE')
if not L then return end
-- German translation by Dathwada EU-Eredar
-------------------------------------------------------------------------------
----------------------------------- COMMON ------------------------------------
-------------------------------------------------------------------------------

L['anniversary_note'] = '{note:Nur während des jährlichen Geburtstags von WoW verfügbar!}'

L['summer_only'] = 'Erscheint nur im Sommer. (21. Juni bis 22. September)'
L['options_icons_safari'] = 'Auf Safari in Kalimdor / den Östlichen Königreichen'
L['options_icons_safari_desc'] = 'Zeigt die Positionen der Kampfhaustiere für die Erfolge {achievement:6585} und {achievement:6586} an.'

L['options_icons_crazyforcats'] = '{achievement:8397}'
L['options_icons_crazyforcats_desc'] = 'Zeigt die Positionen der Kampfhaustiere für den Erfolg {achievement:8397} an.'
L['cfc_blacktabby'] = '{item:8491} kann von verschiedensten Gegnern im {location:Vorgebirge des Hügellands} geplündert werden.\n\nEmpfohlen sind {dot:Red}{npc:49116} (nur Horde), {dot:Green}{npc:48017} oder {dot:Blue}{npc:2248}.\n\n(Dropchance unter 0,1%)'

L['in_crypt'] = 'In der Krypta.'
L['shovelphlange_location'] = 'Im Ausgrabungszentrum vor dem Uldaman Eingang.'
L['lower_floor'] = 'In der unteren Etage.'
L['bl_rare_note'] = 'Alle seltenen Gegner in {location:Verwüstete Lande} können entweder {item:8244} oder {item:10593} fallen lassen welche du bei {npc:7363} gegen Items eintauschen kannst.'
L['takk_note'] = 'Springt Buchstäblich von Punkt zu Punkt (gegen den Uhrzeigersinn).'

-------------------------------------------------------------------------------
----------------------------- ZUL'GURUB (10.0.7) ------------------------------
-------------------------------------------------------------------------------

L['zg_unlock_note_01'] = '1. {dot:Blue} Sammle das {item:203735} aus dem geistergefüllten Raum unter {npc:52148} im {location:Altar des Blutgottes}.'
L['zg_unlock_note_02'] = '2. Besiege mindestens zwei Bosse, damit {npc:52148} angegriffen werden kann.\n\n{npc:52059} kann {item:68824} fallen lassen.\n{npc:52151} kann {item:68823} fallen lassen.'
L['zg_unlock_note_03'] = '3. {dot:Red} Beginne den Kampf mit {npc:52148} und reduziere seine Lebenspunkte auf 1. Er schickt dich in die {spell:96689}.\n\nGehe zurück in den Raum, der jetzt mit {npc:52624} gefüllt ist und sammle {item:203736}.'
L['zg_unlock_note_04'] = '4. Kombiniere {item:203735} und {item:203736}, um {item:203737} herzustellen und die Quest {quest:74576} zu beginnen.'
L['zg_unlock_note_05'] = '5. Die Quest {quest:74576} kann bei {npc:143138}, der sich beim {location:Der Umschlagplatz von Yojamba} in {location:Dazar\'alor} befindet, abgegeben werden.'
L['zg_unlock_note_06'] = '6. Sobald die Quest {quest:74576} abgegeben wurde, wird {npc:143138} beim Eingang der Instanz {location:Zul\'Gurub} zur Verfügung stehen und dir seine Waren anbieten.'

L['zg_zandalari_bijous_note_01'] = 'Schmuckstücke haben eine Chance von allen Gegnern in {location:Zul\'Gurub} fallen gelassen zu werden. Bosse lassen garantiert eins fallen.'
L['zg_zandalari_bijous_note_02'] = 'Bosse können auch {item:203774} fallen lassen, welches 4 Schmuckstücke enthält.'
L['zg_zandalari_bijous_note_03'] = 'Schmuckstücke werden verwendet, um Muster und Ensembles zu kaufen und um mit verschiedenen Knochenstapeln zu interagieren.'

L['zg_fishing_note_01'] = 'Einmal am Tag kannst du entweder einen {item:203742} oder einen {item:203743} angeln. Der richtige Platz ist mit {npc:52435} gefüllt und gibt dir den Stärkungszauber {spell:401577}.'
L['zg_fishing_note_02'] = 'Schätze können verschiedene Schmuckstücke, Berufsmaterialien und haben eine Chance nicht erhältliche Gegenstände zu enthalten.'
L['zg_fishing_note_03'] = '{note:Zum Öffnen der {item:203743} wird eine Art von {spell:1804} benötigt.}'

L['zg_brazier_of_madness_note'] = 'Links unten neben dem Altar, bei dem sich auch die {object:Schrifttafel des Wahnsinns} befindet, im {location:Der Hort des Wahnsinns}.'
L['zg_gurubashi_mojo_madness_note'] = 'Alchemisten mit 300 Punkten in {object:Klassische Alchemie} können mit der {object:Schrifttafel des Wahnsinns} in {location:Der Hort des Wahnsinns} interagieren, um das Rezept für {item:19931} zu erlernen.'

L['zg_offering_note'] = 'Benutze {item:19931} neben der {item:203757}, um den Stärkungszauber {spell:401721} zu erhalten, welcher dir erlaubt mit Knochenhaufen in {location:Zul\'Gurub} zu interagieren.\n\nDieser Haufen akzeptiert:'

L['offering_of_fangs_label'] = 'Reißzahnopfergabe'
L['offering_of_fangs_location'] = 'Auf dem Altar in {location:Die Windung}.'
L['offering_of_blood_label'] = 'Blutopfergabe'
L['offering_of_blood_location'] = 'In der Nähe der Arenawand zwischen zwei Pfosten in {location:Mandokirs Reich}.'
L['offering_of_claws_label'] = 'Klauenopfergabe'
L['offering_of_claws_location'] = 'Tief im {location:Tempel von Bethekk} im hinteren Teil des Bossraumes.'
L['offering_of_mojo_label'] = 'Mojoopfergabe'
L['offering_of_mojo_location'] = 'Links neben dem grünen Kessel an der Wand in {location:Die Terrasse des Teufels}.'

L['zg_vendor_note_01'] = 'Tausche verschiedene Schmuckstücke und {item:203914} gegen seine Waren ein.'
L['zg_vendor_note_02'] = '{note:Klassenensembles stehen nur den Klassen zur Verfügung, die zur Zeit des originalen {location:Zul\'Gurub} im Spiel waren. Rüstungsensembles können von jedem getragen werden.}'
L['zg_vendor_note_03'] = '{item:203914} erhält man durch das sammeln verschiedener Münzen von Gegnern in {location:Zul\'Gurub}.'

L['zg_class_ensembles'] = 'Zul\'Gurub Klassenensembles'
L['zg_armor_ensembles'] = 'Zul\'Gurub Rüstungsensembles'

L['options_icons_secrets_of_zulgurub'] = 'Geheimnisse von Zul\'Gurub'
L['options_icons_secrets_of_zulgurub_desc'] = 'Zeigt wichtige Positionen für die {location:Geheimnisse von Zul\'Gurub} an.'
