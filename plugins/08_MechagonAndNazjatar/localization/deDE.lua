local ADDON_NAME, _ = ...
local L = LibStub("AceLocale-3.0"):NewLocale(ADDON_NAME, "deDE", false, true)
if not L then return end
--German translation by Dathwada EU-Eredar
-------------------------------------------------------------------------------
----------------------------------- GENERAL -----------------------------------
-------------------------------------------------------------------------------

L["context_menu_title"] = "HandyNotes: Mechagon & Nazjatar"
L["options_title"] = "Mechagon & Nazjatar"

-------------------------------------------------------------------------------
----------------------------------- MECHAGON ----------------------------------
-------------------------------------------------------------------------------

L["operation_mechagon"] = "Operation: Mechagon"

L["avenger_note"] = "Wenn {npc:155254} in Rostbolzen anzutreffen ist, töte {npc:151159} (läuft überall in der Zone umher), um {npc:151296} erscheinen zu lassen."
L["beastbot_note"] = "Stelle bei {npc:150359} eine {item:168045} her, um {npc:151933} zu aktivieren."
L["cogstar_note"] = "Töte {npc:150667} überall in der Zone, bis {npc:155443} sich teleportiert, um sie zu verstärken."
L["crazed_trogg_note"] = "Verwende einen Sprühbot, mit Farbe gefüllte Blase oder die Bots in Bondos Hof um dich in der Farbe anzumalen die er ruft."
L["deepwater_note"] = "Stelle bei {npc:150359} einen {item:167649} her, um {npc:151569} zu beschwören."
L["doppel_gang"] = "Die Doppelgang"
L["doppel_note"] = 'Verwende zusammen mit zwei anderen Spielern ein {item:169470} von der täglichen Quest "Wutritzels Konstruktionswahn", um die Doppelgang zu aktivieren.' --{quest:56405}
L["drill_rig"] = "Benötigt die {npc:150306}"
L["foul_manifest_note"] = "Verbinde alle drei Spulen mit den Pylonen im Wasser."
L["furor_note"] = 'Klicke während der täglichen Quest "Hilfe von Nordrassil" die kleinen blauen Pilze an, bis {npc:151884} erscheint.'
L["killsaw_note"] = "Erscheint irgendwo im Weichenden Wald, als Reaktion auf das Töten von {npc:151871}. Erscheint nicht an Tagen, an denen sich die Venture Company im Wald befindet und {npc:151871} nicht vorhanden sind."
L["leachbeast_note"] = "Verwende eine {item:168961}, um die Wetteränderungsmaschine zu aktivieren."
L["nullifier_note"] = 'Hack das "{npc:152174}", verwende entweder die {item:168435}s Lochkarte oder ein {item:168023}. Ersteres wird von {npc:151625} fallen gelassen, während letzteres von Gegnern fallen gelassen wird, die die {npc:150306} JD41 und JD99 angreifen.'
L["scrapclaw_note"] = "Vor der Küste im Wasser"
L["sparkqueen_note"] = 'Erscheint nur, wenn die tägliche Quest "Ungeziefer, in rauen Mengen!" verfügbar ist.' --{quest:55765}
L["rusty_note"] = "Stelle bei {npc:150359} einen {item:169114} her, um die alternative Zukunft zu betretten. Erscheint nur, wenn {npc:153993} nicht in Rostbolzen anzutreffen ist."
L["vaultbot_note"] = "Ziehe den {npc:150394} zu der {npc:73198} in Bondos Hof oder stelle bei {npc:150359} eine {item:167062} her, um ihn aufzubrechen."

L["iron_chest"] = "Schließkassette der Eisenfluträuber"
L["mech_chest"] = "Mechanisierte Truhe"
L["msup_chest"] = "Mechanisierte Vorratstruhe"
L["rust_chest"] = "Alte rostige Truhe"
L["iron_chest_note"] = "Zum Öffnen wird ein {item:169872} benötigt. \nDieser wird von Gegnern in der Westgischt fallen gelassen."
L["msup_chest_note"] = "Zum Öffnen wird ein {item:169873} benötigt. \nDieser wird von Gegnern in der Westgischt fallen gelassen."
L["rust_chest_note"] = "Zum Öffnen wird ein {item:169218} benötigt. \nDieser wird von Gegnern in der Westgischt fallen gelassen."

L["rec_rig"] = "Rückgewinnungsturm"
L["rec_rig_note"] = "Um den Schwerenmodus zu aktivieren, verwende die {spell:292352}-Waffe, um alle {npc:150825} in {npc:151049} zu verwandeln. \nHaustiere können auf beiden Schwierigkeitsgraden erhalten werden."
L["grease_bot"] = "Schmierbot" --NPC:155911
L["grease_bot_note"] = "Klicke den Bot an, um {spell:303924} zu erhalten. (Erhöht die Bewegungsgeschwindigkeit um 10%. Erhöht das Tempo um 5%.) \nDer Stärkungszauber hält 2 Stunden an."
L["shock_bot"] = "Schockbot" --NPC:155909
L["shock_bot_note"] = "Klicke den Bot an, um {spell:304063} zu erhalten. (Angriffe haben eine Chance, zusätzlich Naturschaden zu verursachen, der auf Gegner in der Nähe überspringt.) \nDer Stärkungszauber hält 2 Stunden an."
L["welding_bot"] = "Schweißerbot" --NPC:155910
L["welding_bot_note"] = "Klicke den Bot an, um {spell:303952} zu erhalten. (Maximale Gesundheit und erhaltene Heilung um 10% erhöht.) \nDer Stärkungszauber hält 2 Stunden an."

L["options_icons_mech_buffs"] = "Schmier-, Schock- und Schweißerbots"
L["options_icons_mech_buffs_desc"] = "Zeigt die Standorte der Schmier-, Schock- und Schweißerbots auf der Karte im Dungeon Operation: Mechagon an."
L["options_icons_mech_chest"] = "Mechanisierte Truhe"
L["options_icons_mech_chest_desc"] = "Zeigt die Standorte der Mechanisierten Truhen an. Es gibt 10 einzigartige Truhen, die einmal am Tag geplündert werden können und jede Truhe hat 4-5 Orte an denen sie erscheinen kann. Standorte sind in Farben gruppiert."
L["options_icons_locked_chest"] = "Verschlossene Truhe"
L["options_icons_locked_chest_desc"] = "Zeigt die Standorte der Verschlossenen Truhen in der Westgischt an."
L["options_icons_recrig"] = "Rückgewinnungsturm"
L["options_icons_recrig_desc"] = "Zeigt den Standort und die Belohnungen des Rückgewinnungsturms an."

-------------------------------------------------------------------------------
----------------------------------- NAZJATAR ----------------------------------
-------------------------------------------------------------------------------

L["naz_intro_note"] = "Schließe die Einführungsquestreihe ab, um in Nazjatar seltene Gegner, Schätze und Weltquests freizuschalten."

L["alga_note"] = "VORSICHT: Tarnt sich mit 4 weiteren Gegnern!"
L["allseer_note"] = "Erscheint irgendwo im unteren Teil von  Kal'methir."
L["anemonar_note"] = "Ziehe den Riesenhimmelsrochen zu ihm hin und töte diesen über ihm, um ihn zu aktivieren."
L["avarius_note"] = "Verwende eine {item:167012} um die farbigen Kristalle abzubauen und auf die Podeste zu setzen. \nDu musst Bergbau nicht erlernt haben!"
L["banescale_note"] = "Geringe Chance, nach dem Töten der Rudelmutter zu erscheinen."
L["elderunu_note"] = "Erscheint irgendwo im oberen Teil von Kal'methir."
L["gakula_note"] = "Verscheuche {npc:152275}, bis {npc:152323} erscheint."
L["glimmershell_note"] = "Geringe Chance, anstelle von {npc:152426} zu erscheinen."
L["kelpwillow_note"] = "Bring eine {npc:154725} zu {npc:152567}, verwende dafür ein {item:167893}, um ihn zu aktivieren."
L["lasher_note"] = "Pflanze {item:166888} in die Erde und füttere es mit Fliegen"
L["matriarch_note"] = "Teilt sich einen Respawntimer mit den anderen beiden Schuppenmatriarchinnen"
L["needle_note"] = "Erscheint normalerweise in dem Gebiet Tor der Königin."
L["oronu_note"] = "Beschwöre dein Haustier {npc:154849}, um {npc:152397} zu aktivieren."
L["rockweed_note"] = "Töte {npc:152549} und {npc:151166} überall im Gebiet, bis {npc:150583} erschient. Eine Schlachtzugsgruppe ist Empfehlenswert, da dies eine lange Angelegenheit sein kann."
L["sandcastle_note"] = "Verwende einen {item:167077} um Kisten überall in diesem Gebiet sichtbar zu machen und öffne diese bis {npc:151870} erscheint."
L["tidelord_note"] = "Töte die drei {npc:145326}. Es kann ein {npc:153999} erscheinen oder der Gezeitenlord."
L["tidemistress_note"] = "Klicke die Ungestörten Exemplare an, bis sie erscheint."
L["urduu_note"] = "Töte einen {npc:152563} vor ihm, um {npc:152568} zu aktivieren."
L["voice_deeps_notes"] = "Verwende {item:168161} dazu die Steine zu brechen."
L["vorkoth_note"] = "Wirf {item:167059} in das Gewässer und töte {npc:150463}, bis {npc:150468} erscheint."
L["area_spawn"] = "Erscheint im umliegenden Gebiet."
L["cora_spawn"] = "Erscheint irgendwo im Korallenwald."
L["cave_spawn"] = "Erscheint in einer Höhle."
L["east_spawn"] = "Erscheint irgendwo in der östlichen häflte des Gebiets."
L["ucav_spawn"] = "Erschient in einer Unterwasserhöhle."
L["zone_spawn"] = "Erscheint überall in diesem Gebiet."

L["supply_chest"] = "Kiste mit Kriegsvorräten"
L["assassin_looted"] = " geplündert während Ihr ein Attentäter seid."

L["arcane_chest"] = "Arkane Truhe"
L["glowing_chest"] = "Glühender arkaner Kofferraum"
L["arcane_chest_01"] = "Unter etwas Seetang."
L["arcane_chest_02"] = "Im Gebäude im Obergeschoss."
L["arcane_chest_03"] = "Auf der zweiten Ebene."
L["arcane_chest_04"] = "Im Wasser über dem Wasserfall."
L["arcane_chest_05"] = "In den Ruinen."
L["arcane_chest_06"] = "" -- in the open
L["arcane_chest_07"] = "Im hinteren Teil einer Höhle. Eingang in Zanj'ir Wash im Osten."
L["arcane_chest_08"] = "Versteckt unter Seesternen."
L["arcane_chest_09"] = "In einer Höhle hinter Perlenschalenkrabbler."
L["arcane_chest_10"] = "Unter einer gehäuteten Schale."
L["arcane_chest_11"] = "Auf dem Hügel."
L["arcane_chest_12"] = "Oben auf dem Wasserfall."
L["arcane_chest_13"] = "Oben auf der Klippe, hinter einem Baum."
L["arcane_chest_14"] = "Im Elun'alor Temple."
L["arcane_chest_15"] = "Auf der rechten Seite des Gebäudes."
L["arcane_chest_16"] = "In einer Unterwasserhöhle. Eingang nach Süden."
L["arcane_chest_17"] = "Oben auf dem Wasserfall."
L["arcane_chest_18"] = "In einer Höhle direkt unter dem Weg."
L["arcane_chest_19"] = "Oben auf dem Felsentorbogen. Verwende einen Gleiter."
L["arcane_chest_20"] = "Auf dem Berg."
L["glowing_chest_1"] = "Im hinteren Teil einer Unterwasserhöhle. Verteidige den Pylon."
L["glowing_chest_2"] = "Entwirre die Linien."
L["glowing_chest_3"] = "Im hinteren Teil einer Höhle. Verteidige den Pylon."
L["glowing_chest_4"] = "Kombiniere 3 rote Runen."
L["glowing_chest_5"] = "In einer Höhle. Verteidige den Pylon."
L["glowing_chest_6"] = "Entwirre die Linien."
L["glowing_chest_7"] = "Kombiniere 4 blaue Runen."
L["glowing_chest_8"] = "Auf dem Dach. Verteidige den Pylon."

L["slimy_cocoon"] = "Schleimiger Kokon"
L["ravenous_slime_note"] = "Füttere den Schleim mit einem Kleintier benutze dafür einen prismatischen Kristall. Wiederhole diesen Vorgang fünf Tage lang, bis ein Ei mit einem Haustier darin erscheint. Der Schleim bleibt bis zur nächsten wöchentlichen Zurücksetzung verschwunden."
L["slimy_cocoon_note"] = "Ein Haustier kann vom Kokon abgeholt werden! Wenn es nicht angezeigt wird, befindet sich das Ei in einer anderen Phase in der Abklingzeit. Ändere die Phasen oder versuche es später erneut."

L["cat_figurine"] = "Kristallkatzenfigur"
L["cat_figurine_01"] = "In einer Unterwasserhöhle. Figur ist auf dem Boden im Freien. Eingang nach Osten."
L["cat_figurine_02"] = "In einer Höhle unter dem nahe gelegenen Wasserfall. Figur ist unter einem Seestern an der Wand."
L["cat_figurine_03"] = "In einer Unterwasserhöhle. Die Figur ist unter einigen zerbrochenen Muscheln versteckt."
L["cat_figurine_04"] = "In einer Unterwasserhöhle. Figur ist auf dem Boden im Freien."
L["cat_figurine_05"] = "In einer kleinen Höhle. Die Figur ist hinter der Pflanze auf dem Boden versteckt."
L["cat_figurine_06"] = "In einer Unterwasserhöhle voller feindlicher Riffwandler. Die Figur ist oben an der Wand. Eingang nach Norden."
L["cat_figurine_07"] = "In einer kleinen Höhle. Die Figur ist in einer Koralle an der Wand."
L["cat_figurine_08"] = "In einer kleinen Höhle. Weiche den arkanen Kreisen aus. Die Figur befindet sich auf einem hohen Felsen im Hintergrund."
L["cat_figurine_09"] = "In einer Unterwasserhöhle. Die Figur befindet sich auf dem Torbogen an der Decke."
L["cat_figurine_10"] = "In einer Höhle direkt unter dem Weg. Die Figur ist zwischen drei Fässern."

L["mardivas_lab"] = "Mardivas' Labor"
L["no_reagent"] = "Keine Reagenzien"
L["swater"] = "Kleines Wasser"
L["gwater"] = "Großes Wasser"
L["sfire"] = "Kleines Feuer"
L["gfire"] = "Großes Feuer"
L["searth"] = "Kleine Erde"
L["gearth"] = "Große Erde"
L["murloco"] = "Murloco" --NPC:152593
L["tentacle_taco"] = "Verkauft {item:170100}, wenn du das {item:169489} trägst."

L["options_icons_treasures_nazj"] = "Schätze"
L["options_icons_treasures_nazj_desc"] = "Zeigt die Position von Truhen für den Arkhamstern Erfolg an."
L["options_icons_slimes_nazj"] = "Gefräßige Schleime"
L["options_icons_slimes_nazj_desc"] = "Zeigt die Position von den vier Gefräßigen Schleimen die Haustiere bei Fütterung ergeben an."
L["options_icons_cats_nazj"] = "Katzenfiguren"
L["options_icons_cats_nazj_desc"] = "Zeigt die Position von Kristallkatzenstatuetten für den Gläserne Samtpfötchen Erfolg an."
L["options_icons_misc_nazj"] = "Sonstiges"
L["options_icons_misc_nazj_desc"] = "Zeigt die Position von Murlocos Höhle und Mardivas' Labor an."

-------------------------------------------------------------------------------
------------------------------------ CAVES ------------------------------------
-------------------------------------------------------------------------------

L["blindlight_cave"] = "Höhleneingang zu Blindlicht." --NPC:152712
L["caverndark_cave"] = "Höhleneingang zu Höhlendunkelschrecken." --NPC:152464
L["chasmhaunt_cave"] = "Höhleneingang zu Schluchtschatten." --NPC:152556
L["shassera_cave"] = "Höhleneingang zu Shassera." --NPC:152552