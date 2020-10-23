local ADDON_NAME, ns = ...
local L = LibStub("AceLocale-3.0"):NewLocale(ADDON_NAME, "deDE", false, true)
if not L then return end
--German translation by Dathwada EU-Eredar
-------------------------------------------------------------------------------
----------------------------------- DRUSTVAR ----------------------------------
-------------------------------------------------------------------------------

L["ancient_sarco_note"] = "Öffne den uralten Sarkophag, um Wellen von {npc:128181} zu beschwören."
L["beshol_note"] = "Öffne die offensichtlich sichere Truhe, um den seltenen Gegner erscheinen zu lassen."
L["cottontail_matron_note"] = "Untersuche den abscheulichen Ritualschädel, um den seltenen Gegner erscheinen zu lassen."
L["gluttonous_yeti_note"] = "Diese {npc:127979} ist verflucht ..."
L["seething_cache_note"] = "Öffne die brodelnde Truhe, um Wellen von {npc:129031} zu beschwören."
L["the_caterer_note"] = "Klicke die ruinierte Hochzeitstorte zum aktiviern an."
L["vicemaul_note"] = "Klicke die {npc:127652} an, um den seltenen Gegner an Land zu ziehen."

L["merchants_chest_note"] = "Töte {npc:137468}, um den {item:163710} zu erhalten."
L["wicker_pup_note"] = [[
Zünde die {npc:143609}n an, um die Kiste plündern zu können. Kombiniere alle Gegenstände aus den vier Truhen zu einem {npc:143189}.

• Zaubergeschützte: {item:163790}
• Verzauberte: {item:163796}
• Bezauberte: {item:163791}
• Verhexte: {item:163789}
]]

local runebound = "Aktiviere den {npc:143688} in der Reihenfolge, die auf der Metallplatten hinter der Truhe angegeben ist:\n\n"
L["runebound_cache_note"] = runebound.."links -> unten -> oben -> rechts"
L["runebound_chest_note"] = runebound.."links -> rechts -> unten -> oben"
L["runebound_coffer_note"] = runebound.."rechts -> oben -> links -> unten"

-------------------------------------------------------------------------------
----------------------------------- MECHAGON ----------------------------------
-------------------------------------------------------------------------------

L["avenger_note"] = "Wenn {npc:155254} in Rostbolzen anzutreffen ist, töte {npc:151159} (läuft überall in der Zone umher), um {npc:151296} erscheinen zu lassen."
L["beastbot_note"] = "Stelle bei {npc:150359} eine {item:168045} her, um {npc:151933} zu aktivieren."
L["cogstar_note"] = "Töte {npc:150667} überall in der Zone, bis {npc:155443} sich teleportiert, um sie zu verstärken."
L["crazed_trogg_note"] = "Verwende einen Sprühbot, mit Farbe gefüllte Blase oder die Bots in Bondos Hof um dich in der Farbe anzumalen die er ruft."
L["deepwater_note"] = "Stelle bei {npc:150359} einen {item:167649} her, um {npc:151569} zu beschwören."
L["doppel_gang"] = "Die Doppelgang"
L["doppel_note"] = 'Verwende zusammen mit zwei anderen Spielern ein {item:169470} von der täglichen Quest {quest:56405}, um die Doppelgang zu aktivieren.'
L["drill_rig"] = "Benötigt die {npc:150306}"
L["foul_manifest_note"] = "Verbinde alle drei Spulen mit den Pylonen im Wasser."
L["furor_note"] = 'Klicke während der täglichen Quest "Hilfe von Nordrassil" die kleinen blauen Pilze an, bis {npc:151884} erscheint.'
L["killsaw_note"] = "Erscheint irgendwo im Weichenden Wald, als Reaktion auf das Töten von {npc:151871}. Erscheint nicht an Tagen, an denen sich die Venture Company im Wald befindet und {npc:151871} nicht vorhanden sind."
L["leachbeast_note"] = "Verwende eine {item:168961}, um die Wetteränderungsmaschine zu aktivieren."
L["nullifier_note"] = 'Hack das "{npc:152174}", verwende entweder die {item:168435}s Lochkarte oder ein {item:168023}. Ersteres wird von {npc:151625} fallen gelassen, während letzteres von Gegnern fallen gelassen wird, die die {npc:150306} JD41 und JD99 angreifen.'
L["scrapclaw_note"] = "Vor der Küste im Wasser"
L["sparkqueen_note"] = 'Erscheint nur, wenn die tägliche Quest {quest:55765} verfügbar ist.'
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
L["rockweed_note"] = "Töte {npc:152549} und {npc:151166} überall im Gebiet, bis {npc:150583} erscheint. Eine Schlachtzugsgruppe ist Empfehlenswert, da dies eine lange Angelegenheit sein kann."
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
L["ucav_spawn"] = "Erscheint in einer Unterwasserhöhle."
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

L["blindlight_cave"] = "Höhleneingang zu Blindlicht." --NPC:152712
L["caverndark_cave"] = "Höhleneingang zu Höhlendunkelschrecken." --NPC:152464
L["chasmhaunt_cave"] = "Höhleneingang zu Schluchtschatten." --NPC:152556
L["shassera_cave"] = "Höhleneingang zu Shassera." --NPC:152552

-------------------------------------------------------------------------------
------------------------------------ NAZMIR -----------------------------------
-------------------------------------------------------------------------------

L["captain_mukala_note"] = "Versuche die verfluchte Truhe zu plündern, um den Käpt'n erscheinen zu lassen."
L["enraged_water_note"] = "Untersuchen die {npc:134295}, um den Elementar erscheinen zu lassen."
L["lucille_note"] = "Sprich mit {npc:134297}, um {npc:134296} erscheinen zu lassen."
L["offering_to_bwonsamdi_note"] = "Laufe am Baum hoch, um in das zerstörte Gebäude zu kommen."
L["shambling_ambusher_note"] = "Versuche den {npc:124473} zu plündern, um den {npc:124475} zu aktivieren."
L["zaamar_note"] = "In den Katakomben der Nekropole."

-------------------------------------------------------------------------------
------------------------------- STORMSONG VALLEY ------------------------------
-------------------------------------------------------------------------------

L["in_basement"] = "Im Keller."
L["jakala_note"] = "Sprich mit {npc:140925}."
L["nestmother_acada_note"] = "Untersuche Acadas Nest, um die Nestmutter erscheinen zu lassen."
L["sabertron_note"] = "Töte den {npc:139334}, um einen der {npc:139328} zu aktivieren."
L["whiplash_note"] = "Erscheint nur, wenn die Weltquest {wq:Whiplash} aktiv ist."

L["discarded_lunchbox_note"] = "In dem Gebäude auf dem Bücherregal."
L["hidden_scholars_chest_note"] = "Auf dem Dach des Gebäudes."
L["honey_vat"] =  "Honigbottich"
L["smugglers_stash_note"] = "Im Wasser unter dem Steg."
L["sunken_strongbox_note"] = "Im Wasser unter dem Schiff."
L["venture_co_supply_chest_note"] = "Kletter die Leiter am Schiff hinauf."
L["weathered_treasure_chest_note"] = "In einer versteckten Höhle. Es gibt drei Eingänge, jeder davon ist hinter einer Baumgruppe versteckt."

L["curious_grain_sack"] = "Seltsamer Getreidesack"
L["small_treasure_chest"] = "Kleine Schatztruhe"
L["small_treasure_51927"] = "Im Gebäude unter der Treppe."
L["small_treasure_51940"] = "Im Gebäude."

local luncheon = (UnitFactionGroup('player') == 'Alliance') and '{npc:138221} in Brennadam' or '{npc:138096} in der Reisszahnfeste'
L["these_hills_sing_note"] = "Öffne {item:160485} hier. Diese kann bei "..luncheon.." gekauft werden oder aus dem Schatz \"Zurückgelassene Vesperdose\" in Brennadam geplündert werden."

L["ancient_tidesage_scroll"] = "Uralte Schriftrolle der Gezeitenweisen"
L["ancient_tidesage_scroll_note"] = "Lies alle 8 uralten Schriftrollen der Gezeitenweisen, um den Erfolg zu erringen."
L["options_icons_tidesage_legends"] = "Legenden der Gezeitenweisen"
L["options_icons_tidesage_legends_desc"] = "Zeigt die Positionen der uralten Schrifftrollen für den Erfolg Legenden der Gezeitenweisen an."

-------------------------------------------------------------------------------
------------------------------- TIRAGARDE SOUND -------------------------------
-------------------------------------------------------------------------------

L["honey_slitherer_note"] = "Sprich mit {npc:137176}, um den Gleiter zu beschwören."
L["tempestria_note"] = "Untersuche den verdächtigen Fleischhaufen, um {npc:133356} zu beschwören."
L["twin_hearted_note"] = "Zerstöre das Ritualabbild, um das {npc:131984} zu beschwören."
L["wintersail_note"] = "\nZerstöre die Schugglerversteck Kisten, um den Kapitän zu beschwören."

L["hay_covered_chest_note"] = "Reite auf dem {npc:130350} die Straße entlang zu {npc:131453}, um den Schatz erscheinen zu lassen."
L["pirate_treasure_note"] = [[
Benötigt die dazugehörige Schatzkarte.

Die Karten werden von Piraten in Kul Tiras fallen gelassen. Freihafen (offene Welt) ist ein guter Ort zum farmen.
]]

local damp_note =  "\n\nLies alle fünf Schriftrollen, um zugang zum Schatz zu erhalten."

L["damp_scroll"] = "Eine feuchte Schriftrolle"
L["damp_scroll_note_1"] = "\nDer Eingang ist in der Sturmsangabtei.\nEin Skellet auf dem Boden hält diese vor dem Ominösen Altar in den Händen."..damp_note
L["damp_scroll_note_2"] = "Auf dem Fußboden in einem Keller, hinter einem {npc:136343}."..damp_note
L["damp_scroll_note_3"] = "Auf dem Fußboden die Treppe hoch, neben einem {npc:136343}."..damp_note
L["damp_scroll_note_4"] = "Auf dem Fußboden in einem Keller, neben einem {npc:136343}."..damp_note
L["damp_scroll_note_5"] = "In einer Ecke unter der Plattform."..damp_note
L["ominous_altar"] = "Ominöser Altar"
L["ominous_altar_note"] = "\nSprich mit dem Ominösen Altar, um zum Schatz teleportiert zu werden."
L["secret_of_the_depths_note"] = "Lies alle fünf feuchten Schriftrollen und sprich dann mit dem Ominösen Altar, um zum Schatz teleportiert zu werden."

-------------------------------------------------------------------------------
------------------------------------ ULDUM ------------------------------------
-------------------------------------------------------------------------------

L["uldum_intro_note"] = "Schließe die Einführungsquestreihe ab, um in Uldum seltene Gegner, Schätze und Angriffsquests freizuschalten."

L["aqir_flayer"] = "Teilt sich den spawn mit {npc:163114} und {npc:154365}."
L["aqir_titanus"] = "Teilt sich den spawn mit {npc:154353}."
L["aqir_warcaster"] = "Teilt sich den spawn mit {npc:154352}."
L["atekhramun"] = "Zertrete die {npc:152765} in der Umgebung bis {npc:152757} erscheint."
L["chamber_of_the_moon"] = "Im Untergrund in der Kammer des Monds."
L["chamber_of_the_stars"] = "Im Untergrund in der Kammer der Sterne."
L["chamber_of_the_sun"] = "Im Untergrund in der Kammer der Sonne."
L["dunewalker"] = "Klicke die Essenz der Sonne auf der Plattform an, um ihn freizulassen."
L["friendly_alpaca"] = "Füttere das Alpaka siebenmal mit {item:174858}, um es als Reittier zu erhalten. Erscheint 10 Minuten lang an einem Ort, danach ein längere Zeit nicht."
L["gaze_of_nzoth"] = "Teilt sich den spawn mit {npc:156890}."
L["gersahl_note"] = "Füttere siebenmal ein {npc:162765} damit, um es als Reittier zu erhalten. \n|cffff0000Benötigt KEIN Kräuterkunde.|r"
L["gersahl"] = "Gersahlstrauch"
L["hmiasma"] = "Töte Schleime in der Umgebung bis {npc:160623} aktiv wird."
L["kanebti"] = "Sammle eine {item:168160} von einem Juwelenbesetzter Skarabäus, der sich einen spawn mit normalen Grabskarabäen teilt. Setze die Figur in den Skarabäusschrein ein, um {npc:152431} zu beschwören."
L["neferset_rare"] = "Diese sechs Seltenen Gegner teilen sich die gleichen drei Spawnplätze in Neferset. Nachdem eine Reihe von Beschwörungsritual-Ereignissen abgeschlossen wurden, werden zufällig drei von ihnen erscheinen."
L["platform"] = "Erscheint auf der schwebenden Plattform."
L["right_eye"] = "\nLässt die rechte Hälfte des {item:175140} Spielzeugs fallen."
L["single_chest"] = "Diese Truhe erscheint nur an einem Ort! Wenn sie nicht da ist, warte ein bisschen und sie wird wiedererscheinen."
L["tomb_widow"] = "Wenn die weißen Eiersäcke an den Säulen vorhanden sind, töte die unsichtbaren {npc:157184}, um sie zu beschwören."
L["uatka"] = "Klick zusammen mit zwei anderen Spielern auf jeweils ein  Mysteriöses Gerät. \nBenötigt ein {item:171208} aus einem Reliquiar der Amathet."
L["wastewander"] = "Teilt sich den spawn mit {npc:154369}."

L["amathet_cache"] = "Truhe der Amathet"
L["black_empire_cache"] = "Truhe des Schwarzen Imperiums"
L["black_empire_coffer"] = "Kiste des Schwarzen Imperiums"
L["infested_cache"] = "Befallene Truhe"
L["infested_strongbox"] = "Befallene Schließkassette"
L["amathet_reliquary"] = "Reliquiar der Amathet"

L["cursed_relic"] = ns.color.Red("Benötigt {item:174768}")
L["tolvir_relic"] = ns.color.Red("Benötigt {item:174765}")

L["options_icons_assault_events"] = "Angriffevents"
L["options_icons_assault_events_desc"] = "Zeigt mögliche Positionen für Angriffevents."
L["options_icons_coffers"] = "Verschlossene Kisten"
L["options_icons_coffers_desc"] = "Zeigt die Positionen von Verschlossene Kisten (einmal pro Angriff plünderbar)."

L["ambush_settlers"] = "Besiege Wellen von Gegner bis das Event endet."
L["burrowing_terrors"] = "Springe auf Grabende Skarabäen, um sie zu zerquetschen."
L["call_of_void"] = "Läutere den Ritualpylon."
L["combust_cocoon"] = "Werfe die Feuerbomben auf die Kokons an der Decke."
L["dormant_destroyer"] = "Zerstöre jede Leerenleitung."
L["executor_nzoth"] = "Töte den {npc:157680} und zerstöre dann den Exekutoranker."
L["hardened_hive"] = "Hebe den {spell:317550} auf und brenne alle Eiersäcke nieder."
L["in_flames"] = "Nimm Wassereimer und lösche die Flammen."
L["monstrous_summon"] = "Töte jeden {npc:160914}, um die Beschwörung zu stoppen."
L["obsidian_extract"] = "Zerstöre jeden Leerengestaltenobsidian Kristall."
L["purging_flames"] = "Hebe die Körper auf und werfe sie ins Feuer."
L["pyre_amalgamated"] = "Läutere den Scheiterhaufen, töte die Fleischbestien bis die {npc:157593} erscheint."
L["ritual_ascension"] = "Töte die {npc:152233}en."
L["solar_collector"] = "Aktiviere alle fünf Machtkristalle an allen Seiten des Sonnensammlers. Durch klicken auf eine Kristall werden alle Kristalle umgeschaltet die dieser berührt."
L["summoning_ritual"] = "Töte die anwesenden {npc:161134} und läutere das Beschwörungsportal."
L["titanus_egg"] = "Zerstöre das {npc:163257} und besiege dann das {npc:163268}."
L["unearthed_keeper"] = "Zerstöre den {npc:156849}."
L["virnall_front"] = "Besiege Wellen von Gegnern bis {npc:152163} erscheint."
L["voidflame_ritual"] = "Lösche alle Leerenberührten Kerzen."

L["beacon_of_sun_king"] = "Drehe alle drei Statuen nach innen."
L["engine_of_ascen"] = "Bewege alle vier Statuen in die Strahlen."
L["lightblade_training"] = "Töte {npc:156637} und {npc:152196} bis {npc:152197} erscheint."
L["raiding_fleet"] = "Verbrenne alle Boote mit dem Questgegenstand."
L["slave_camp"] = "Öffne alle Käfige in der Nähe."
L["unsealed_tomb"] = "Beschütze {npc:152439} vor Wellen von Gegnern."

-------------------------------------------------------------------------------
------------------------------------ VALE -------------------------------------
-------------------------------------------------------------------------------

L["vale_intro_note"] = "Schließe die Einführungsquestreihe ab, um im Tal der Ewigen Blüten seltene Gegner, Schätze und Angriffsquests freizuschalten."

L["big_blossom_mine"] = "In der Großblütenmine. \nEingang im Nordosten (70.0 58.4)."
L["guolai"] = "In den Guo-Lai Hallen."
L["guolai_left"] = "In den Guo-Lai Hallen (linker Korridor)."
L["guolai_center"] = "In den Guo-Lai Hallen (mittlerer Korridor)."
L["guolai_right"] = "In den Guo-Lai Hallen (rechter Korridor)."
L["pools_of_power"] = "Im Becken der Macht. \nEingang bei der Golden Pagode (57.4 38.0)."
L["tisiphon"] = "Klicke auf Danielles Glücksangelrute."

L["ambered_cache"] = "Bernbesetzte Truhe"
L["ambered_coffer"] = "Bernbesetzte Kiste"
L["mantid_relic"] = ns.color.Red("Benötigt {item:174766}")
L["mogu_plunder"] = "Mogubeute"
L["mogu_strongbox"] = "Schließkassette der Mogu"
L["mogu_relic"] = ns.color.Red("Benötigt {item:174767}")

L["abyssal_ritual"] = "Töte die {npc:153179} und dann die {npc:153171}."
L["bound_guardian"] = "Töte drei {npc:154200}, um {npc:154187} zu befreien."
L["colored_flames"] = "Sammel die farbigen Flammen ein und bring sie zu den passenden Runen."
L["construction_ritual"] = "Schiebe die Tigerstatue in den Strahl."
L["consuming_maw"] = "Reinige Verderbter Auswuchs und Tentakel bis du herausgeschleudert wirst."
L["corruption_tear"] = "Nehme das {spell:305470} auf und läutere einen Verderbnisriss ohne das die Augen dich treffen."
L["electric_empower"] = "Töte die {npc:153095} und dann {npc:156549}."
L["empowered_demo"] = "Öffne alle Geisterreliquiare."
L["empowered_wagon"] = "Hebe {npc:156300} auf und platziere sie unter dem Verstärkten Kriegswagen."
L["feeding_grounds"] = "Zerstöre die Berngefäße und die Stasiskammern."
L["font_corruption"] = "Drehe die Mogustatuen bis beide Strahlen die Rückseite erreichen und klicke dann auf die Konsole."
L["goldbough_guardian"] = "Beschütze {npc:156623} vor Wellen an Gegnern."
L["infested_statue"] = "Ziehe alle Zuckenden Augen von der Statue."
L["kunchong_incubator"] = "Zerstöre alle Feldgeneratoren."
L["left_eye"] = "Lässt die linke Hälfte des {item:175140} Spielzeugs fallen."
L["mantid_hatch"] = "Hebe den {spell:305301} auf und zerstöre die Larveninkubatoren."
L["mending_monstro"] = "Zerstöre alle Heilbernkristalle."
L["mystery_sacro"] = "Zerstöre alle Verdächtigen Grabsteine und töte dann die {npc:157298}."
L["noodle_cart"] = "Beschütze {npc:157615} während er seinen Wagen repariert."
L["protect_stout"] = "Beschütze die Höhle vor Wellen von Gegnern."
L["pulse_mound"] = "Töte Gegner in der Umgebung und dann {npc:157529}."
L["ravager_hive"] = "Zerstöre alle Verheererbauten am Baum."
L["ritual_wakening"] = "Töte die {npc:157942}."
L["serpent_binding"] = "Töte die {npc:157345} und dann {npc:157341}."
L["stormchosen_arena"] = "Töte alle Gegner in diesem Bereich und dann {npc:157101}."
L["swarm_caller"] = "Zerstöre den {npc:158033}."
L["vault_of_souls"] = "Öffne das Verlies der Seelen, töte die Statuen und dann den {npc:156271}."
L["void_conduit"] = "Klicke auf die Leerenleitung und zerquetsche die Wachsamen Augen."
L["war_banner"] = "Verbrenne die Kriegsbanner und töten Wellen von Gegnern bis {npc:157985} erscheint."
L["weighted_artifact"] = "Hebe das Seltsam schweres Gefäß auf und navigiere durch das Labyrinth zurück zum Podest. Von einer Statue betäubt zu werden, lässt die Vase fallen."

-------------------------------------------------------------------------------
----------------------------------- VISIONS -----------------------------------
-------------------------------------------------------------------------------

L["colored_potion"] = "Farbige Fläschchen"
L["colored_potion_note"] = [[
Das Fläschchen neben der Leiche von %s zeigt immer die Farbe des Negativeffekt Fläschchens für diesen Lauf an.

Die Farbe des +100 Geistigegesundheit Fläschchens kann mit hilfe der Farbe dieses Fläschchens herausgefunden werden (|cFFFF0000schlecht|r => |cFF00FF00gut|r):

Schwarz => Grün
Grün => Rot
Rot => Blau
Blau => Violett
Violett => Schwarz
]]

L["bear_spirit"] = "Bärengeist"
L["bear_spirit_note"] = "Töte {npc:160404} und alle Wellen von Gegnern, um einen 10% Tempo Stärkungszauber zu erhalten."
L["buffs_change"] = "Verfügbare Stärkungszauber ändern sich jeden Durchlauf. Wenn das Gebäude geschlossen ist, der NPC oder das Objekt fehlt ist dieser in diesem Durchlauf nicht verfügbar."
L["clear_sight"] = ns.color.Red("Benötigt Klare Sicht Rang %d.")
L["craggle"] = "Platziere ein Spielzeug auf dem Boden (z.b. das {item:44606), um ihn abzulenken. Ziehe seine Bots zurseite und töte diese zuerst."
L["empowered"] = "Ermächtigt"
L["empowered_note"] = "Gehe durch das Minenfeld die Treppe nach oben und stelle dich auf die Experimentelle Stärkungsmine für einen 10% Schaden Stärkungszauber."
L["enriched"] = "Angereichert"
L["enriched_note"] = "Töte die {npc:161293}, um einen 10% kritische Trefferwertung Stärkungszauber zu erhalten."
L["ethereal_essence"] = "Astrale Essenz"
L["ethereal_essence_note"] = "Töte {npc:54473}, um einen 10% kritische Trefferwertung Stärkungszauber zu erhalten."
L["ethereal_note"] = "Sammel Seltsame Kristalle die in der Vision versteckt sind und bringe sie zu diesem NPC, um extra {currency:1719} zu erhalten. \nEs gibt zehn Kristalle, zwei in jeder Zone.\n\n|cFF00FF00Vergiss nicht die Truhe zu plündern!|r"
L["heroes_bulwark"] = "Bollwerk der Helden"
L["heroes_bulwark_note"] = "Töte {npc:158588} im Gasthaus, um einen 10% Gesundheit Stärkungszauber zu erhalten."
L["horrific_visions"] = "Verstörende Visionen"
L["inside_building"] = "In einem Gebäude."
L["mailbox"] = "Briefkasten"
L["mail_muncher"] = "Beim öffnen besteht eine Chance das {npc:160708} erscheint."
L["morgan_pestle"] = "Morgan Pestle"
L["odd_crystal"] = "Seltsamer Kristall"
L["requited_bulwark"] = "Belohnendes Bollwerk"
L["requited_bulwark_note"] = "Töte {npc:157700}, um einen 7% Vielseitigkeit Stärkungszauber zu erhalten."
L["shave_kit"] = "Haubenlockes Glattrasurset"
L["shave_kit_note"] = "Im Barbierladen. Plündere die Kiste auf dem Tisch."
L["smiths_strength"] = "Stärke des Schmieds"
L["smiths_strength_note"] = "Töte {npc:158565} in der Schmiedehütte, um einen 10% Schaden Stärkungszauber zu erhalten."
L["spirit_of_wind"] = "Geist des Windes"
L["spirit_of_wind_note"] = "Töte {npc:161140}, um einen 10% Tempo und Bewegungsgeschwindigkeit Stärkungszauber zu erhalten."
L["void_skull"] = "Leerenberührter Schädel"
L["void_skull_note"] = "Klicke den Schädel auf dem Boden an, um das Spielzeug zu plündern."
L["yelmak"] = "Yelmak"

L["c_alley_corner"] = "In einer Ecke in der Gasse."
L["c_bar_upper"] = "In der Bar auf der oberen Etage."
L["c_behind_bank_counter"] = "In der Bank hinter der Theke."
L["c_behind_boss"] = "Im Flüchtlingsgebäude hinter dem Boss."
L["c_behind_boxes"] = "In der Ecke hinter einigen Kisten."
L["c_behind_cart"] = "Hinter einem zerstörten Wagen."
L["c_behind_house_counter"] = "Im Haus hinter der Theke."
L["c_behind_mailbox"] = "Hinter dem Briefkasten."
L["c_behind_pillar"] = "Hinter einer Säule hinter dem Botschaftsgebäude."
L["c_behind_rexxar"] = "Auf der rechten Seite hinter Rexxars Gebäude."
L["c_behind_stables"] = "Hinter den Ställen bei Shaw."
L["c_by_pillar_boxes"] = "Bei der Mauer zwischen einer Säule und einigen Kisten."
L["c_center_building"] = "Auf der untersten Ebene des mittleren Gebäudes."
L["c_forge_corner"] = "In der Ecke bei einer Schmiede."
L["c_hidden_boxes"] = "Versteckt hinter einigen Kisten hinter Thralls Gebäude."
L["c_inside_auction"] = "Im Auktionshaus rechts."
L["c_inside_big_tent"] = "Links im großen Zelt."
L["c_inside_cacti"] = "Im Kaktusfeld um die Ecke."
L["c_inside_hut"] = "In der ersten Hütte rechts."
L["c_inside_leatherwork"] = "Im Lederverarbeitungsgebäude."
L["c_inside_orphanage"] = "Im Waisenhaus."
L["c_inside_transmog"] = "In der Transmog-Hütte."
L["c_left_cathedral"] = "Links vom Eingang der Kathedrale."
L["c_left_inquisitor"] = "Hinter dem Inquisitor Miniboss links von der Treppe."
L["c_on_small_hill"] = "Auf einem kleinen Hügel."
L["c_top_building"] = "In der obersten Etage des Gebäudes."
L["c_underneath_bridge"] = "Unter der Brücke."
L["c_walkway_corner"] = "Auf dem oberen Gehweg in einer Ecke."
L["c_walkway_platform"] = "Auf einer Plattform über dem oberen Gehweg."

L["options_icons_visions_buffs"] = "Stärkungszauber"
L["options_icons_visions_buffs_desc"] = "Zeigt die Positionen von Events die einen 1 Stunde Stärkungszauber gewähren."
L["options_icons_visions_chest"] = "Truhen"
L["options_icons_visions_chest_desc"] = "Zeigt mögliche Truhen Positionen in Verstörenden Visionen an."
L["options_icons_visions_crystals"] = "Seltsame Kristalle"
L["options_icons_visions_crystals_desc"] = "Zeigt mögliche Positionen für die Seltsamen Kristalle in Verstörenden Visionen an."
L["options_icons_visions_mail"] = "Briefkästen"
L["options_icons_visions_mail_desc"] = "Zeigt die Positionen von Briefkästen für das Postmampfer Reittier."
L["options_icons_visions_misc"] = "Sonstiges"
L["options_icons_visions_misc_desc"] = "Zeigt die Position von Seltenen Gegner, Spielzeugen, Fläschchen und Astralen in Verstörenden Visionen."

-------------------------------------------------------------------------------
----------------------------------- VOLDUN ------------------------------------
-------------------------------------------------------------------------------

L["bloodwing_bonepicker_note"] = "Sammel {npc:136390} am Gipfel, um {npc:136393} erscheinen zu lassen."
L["nezara_note"] = "Durchtrenne die vier Seile an den Pfählen, um {npc:128951} zu befreien."
L["vathikur_note"] = "Töte {npc:126894}en, bis {npc:130401} erscheint."
L["zunashi_note"] = "Der Eingang befindet sich im Norden, in dem Maul des großen Schädels."

L["ashvane_spoils_note"] = "Fahre mit der {npc:132662} den Berg herunter, um die Schätze erscheinen zu lassen."
L["excavators_greed_note"] = "In einem eingestürzten Tunnel."
L["grayals_offering_note"] = "Nach dem Abschluss der Quest {quest:50702}, betritt Atul'Aman und klicke den uralten Altar an, um den Schatz erscheinen zu lassen."
L["kimbul_offerings_note"] = "Auf dem Berg, über dem Tempel von Kimbul."
L["sandsunken_note"] = "Klicke den zurückgelassenen Schwimmer an, um den Schatz aus dem Sand zu ziehen."

L["elusive_alpaca"] = "Füttere das Alpaka einmal mit {item:161128}, um es als Reittier zu erhalten. Erscheint 10 Minuten lang an einem Ort, danach ein längere Zeit nicht."

-------------------------------------------------------------------------------
---------------------------------- WARFRONTS ----------------------------------
-------------------------------------------------------------------------------

L["boulderfist_outpost"] = "Im Außenposten der Felsfäuste (eine große Höhle). Der Eingang befindet sich im nordosten."
L["burning_goliath_note"] = "Wenn besiegt, wird ein {npc:141663} in der Nähe von {npc:141668} erscheinen."
L["cresting_goliath_note"] = "Wenn besiegt, wird ein {npc:141658} in der Nähe von {npc:141668} erscheinen."
L["rumbling_goliath_note"] = "Wenn besiegt, wird ein {npc:141659} in der Nähe von {npc:141668} erscheinen."
L["thundering_goliath_note"] = "Wenn besiegt, wird ein {npc:141648} in der Nähe von {npc:141668} erscheinen."
L["echo_of_myzrael_note"] = "Sobald alle vier elementaren Goliaths besiegt sind, wird {npc:141668} erscheinen."
L["frightened_kodo_note"] = "Verschwindet nach ein paar Minuten wieder. Erscheint nach einem Serverneustart garantiert."

-------------------------------------------------------------------------------
----------------------------------- ZULDAZAR ----------------------------------
-------------------------------------------------------------------------------

L["murderbeak_note"] = "Wirf den Köder in den See, töte dann {npc:134780} bis {npc:134782} erscheint."
L["vukuba_note"] = "Untersuche das {npc:134049}, töte dann Wellen von {npc:134047}en bis {npc:134048} erscheint."

L["cache_of_secrets_note"] = "Ein {npc:137234} hält den Schatz in einer Höhle hinter dem Wasserfall in seinen Händen."
L["da_white_shark_note"] = "Stelle dich neben {npc:133208} bis sie feindlich wird."
L["dazars_forgotten_chest_note"] = "Der Weg beginnt neben {npc:134738}."
L["gift_of_the_brokenhearted_note"] = "Interagiere mit dem Räucherwerk, um die Kiste erscheinen zu lassen."
L["offerings_of_the_chosen_note"] = "Auf der zweiten Ebene von Zanchul."
L["riches_of_tornowa_note"] = "An der Seite einer Klippe."
L["spoils_of_pandaria_note"] = "Auf der untersten Etage des Schiffs."
L["tiny_voodoo_mask_note"] = "Auf dem Hüttendach über {npc:141617}."
L["warlords_cache_note"] = "Auf dem Kopf der Galionsfigur des Schiffs."

L["kuafon_note"] = [[
Plündere ein {item:157782} von Pterrordaxen in Zandalar um die Questreihe zu beginnen. Einige Quests dauern mehrere Tage.

Zum farmen bieten sich {npc:126618} in Zanchul oder {npc:122113} im Luftreißernest an.
]]
L["torcali_note"] = "Schließe Quests im Kriegsbestienkral ab, bis {quest:47261} verfügbar ist. Einige Quests dauern mehrere Tage."

L["totem_of_paku_note"] = "Sprich mit {npc:137510} (bei 50.7, 35.4), um Pa'ku als deinen Loa aus zu wählen."
L["options_icons_paku_totems"] = "Totems von Pa'ku"
L["options_icons_paku_totems_desc"] = "Zeigt die Totems von Pa'ku in Dazar'alor an."
