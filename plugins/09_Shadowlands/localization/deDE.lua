local ADDON_NAME, ns = ...
local L = LibStub("AceLocale-3.0"):NewLocale(ADDON_NAME, "deDE", false, true)
if not L then return end
--German translation by Dathwada EU-Eredar
-------------------------------------------------------------------------------
----------------------------------- GENERAL -----------------------------------
-------------------------------------------------------------------------------

L["context_menu_title"] = "HandyNotes Shadowlands"
L["options_title"] = "Shadowlands"
L["covenant_required"] = "Benötigt ein Paktmitglied der %s" --review

-------------------------------------------------------------------------------
--------------------------------- ARDENWEALD ----------------------------------
-------------------------------------------------------------------------------

L["deifir_note"] = "Reite auf {npc:164238} und verwende die Fähigkeiten {spell:319566} und {spell:319575}, um ihn zu verlangsamen und zu betäuben."
L["faeflayer_note"] = "In einer kleinen Höhle, versteckt hinter einem Wasserfall."
L["humongozz_note"] = "Pflanze einen {item:175247} im feuchten Lehm, um einen {npc:164122} erscheinen zu lassen. Nach einer Minute {spell:319367} wird {npc:164112} erscheinen. Der Pilz wird von mehreren Gegnern in diesem Gebiet fallen gelassen." --review Blizzard translation
L["lehgo_note"] = "Zerstöre Quivering Gorm Eggs und töte {npc:171827} bis {npc:167851} erscheint. In einer Höhle (Eingang nach Südosten in den Staubigen Höhlen (58.5 31.9))." --review Blizzard translation
L["rootwrithe_note"] = "Stoße die {npc:167928} bis {npc:167726} erscheint."
L["rotbriar_note"] = "Sprich mit {npc:171684} in der Nähe, um {npc:167724} nach einem Dialog zu beschwören."
L["slumbering_note"] = "In den Nebel zu laufen wird dich betäuben und wieder herausteleportieren. Verwende ein Leuchtfeuer oder Begleiter mit Flächenschaden, um ihn aus dem Nebel zu stoßen."
L["skuld_vit_note"] = "In einer Höhle, blockiert von einer Barriere. Ein Paktmitglied der Nachtfae muss {spell:310143} benutzen, um die Höhle betreten zu können. Sobald er gepullt wird verschwindet die Barriere."
L["valfir_note"] = "Klicke the Sparkling Animaseed midway den weg herunter und verwende {spell:338045}, um seinen Stärkungszauber {spell:338038} zu entfernen." --review Blizzard translation
L["wrigglemortis_note"] = "Ziehe an dem {npc:164179}, um {npc:164147} erscheinen zu lassen."

L["star_lake"] = "Sternseeamphitheater" --review Blizzard translation
L["star_lake_note"] = "Sprich mit {npc:171743}, dem Regisseur, um eine der besonderen Begegnungen zu beginnen." --review Blizzard translation

L["desiccated_moth"] = "Springe auf {npc:169997}, nordwestlich des Baumes, um auf einem Ast zu schwimmen. Verbrenne {item:180784} im Weihrauchbrenner um den Schatz zu sammeln." --review Blizzard translation
L["dreamsong_heart"] = "Verwende {npc:169997}, weit im Nordosten, um in den Baum geschleudert zu werden."
L["elusive_faerie_cache"] = "Hebe die {spell:333923} in der nordwestlichen Ecke auf und verwende diese dazu die Truhe zu plündern."
L["enchanted_dreamcatcher"] = "Hängt oben von den Wurzeln herunter. Am einfachsten hochzuklettern ist es auf der westlichen Seite."
L["faerie_trove"] = "Befindet sich unter der Plattform."
L["harmonic_chest"] = "Benötigt zwei Spieler. Einer spielt die Harfe und der andere die Trommel, um die Truhe freizuschalten."
L["hearty_dragon_plume"] = "Verwende {spell:333554} an der Spitze der nahe gelegenen Wasserfälle, um auf den Ast zu schweben."
L["old_ardeite_note"] = "Töte {npc:160747} und {npc:160748} in Shimmerbough im Südosten, um {item:174042} zu erhalten. Verwende den Gegenstand, um zu dem selten Gegner zu fliegen." --review Blizzard translation
L["swollen_anima_seed"] = "Ein großer Samen der in einem Baumstamm sitzt."

-------------------------------------------------------------------------------
----------------------------------- BASTION -----------------------------------
-------------------------------------------------------------------------------

L["aspirant_eolis_note"] = "Plündere {item:180613} in der Nähe und lese es ihm vor. Es erscheint eine Truhe."
L["basilofos_note"] = "Beweg dich um den Felsen herum, bis ein lila Fixierungsmarker über deinem Kopf erscheint, stehe dann still und warte vier Emotes ab bis er erscheint." --review
L["beasts_of_bastion"] = "Bestien der Bastion" --review Blizzard translation
--L["beasts_of_bastion_note"] = "Sprich mit {npc:161441}, um eine der vier Bestien zu beschwören."
L["bookkeeper_mnemis_note"] = "Hat die Chance anstelle von {npc:166867} in diesem Gebiet zu erscheinen."
L["cloudfeather_patriarch_note"] = "Töte {npc:158110} in diesem Gebiet, bis ein Emote ausgegeben wird und {npc:170932} erscheint."
L["collector_astor_note"] = "Lies alle sechs Kapitel von Mercias Vermächtnis, die im Raum verstreut sind und {npc:157979} wird zu dir Flüstern. Sprich mit ihr, um {spell:333779} zu erhalten der es dir erlaubt den versteckten {item:180569} im Nordwesten zu finden. Wenn das Kapitel zurückgeben wird, erscheint {npc:171014}."
L["corrupted_clawguard_note"] = "Plündere einen {item:180651} im Schmiedefeuer Außenposten (den Berg hoch) und verwende es, um {npc:171300} zu reparieren." --review location name
L["dark_watcher_note"] = "Kann nur während des Todes gesehen werden. Sprich mit ihr und sie wird {spell:332830} auf dich wirken, bevor sie angreift."
L["demi_hoarder_note"] = "Startet mit 99 Stapeln von {spell:333874} (Reduzierung des erlittenen Schadens). Stapel werden langsam durch Schaden entfernt. {npc:171011} folgt einem Pfad und verschwindet wenn er das Ende erreichen."
L["dionae_note"] = "Wenn sie immun wird, klicke auf die vier {npc:163747}, um ihr Schild zu brechen."
L["herculon_note"] = [[
Sammel {item:172451} und verwende diese, um {npc:158659} Stapel von {spell:343531} zu gewähren. Bei 10 Stapeln wird er aktiv.

Partikel können von nahegelegenen erschöpften Anima Kanistern gesammelt werden, die sich in diesem Raum oder direkt außerhalb befinden.
]]
L["nikara_note"] = "Klicke mit zwei anderen Spielern, die uralten Räuchergefäße an, um ihn zu beschwören." --review Blizzard translation
L["unstable_memory_note"] = "Kann beschworen werden, wenn {npc:171018} anwesend sind. Ziehe einen {npc:171018} in andere, um ihm 10 Stapel von {spell:333558} zu gewähren, der es zu einem {npc:171008} heranwachsen lässt."
--L["wingflayer_note"] = "Klicken zum Beschwören das Horn auf dem Tisch in der Nähe an. (Südosten, die Treppe hoch)"

L["broken_flute"] = "Töte nahegelegene {npc:170009}, bis diese {item:180536} fallen lassen, dann verwende die Werkzeuge, um die Flöte zu reparieren."
L["experimental_construct_part"] = "Plündere ein {item:180534} in der Nähe und verwende es, um den Gegenstand zu reparieren. Das {item:180534} erscheint an verschiedenen Stellen."
L["larion_harness"] = "Befindet sich in der Halle der Bestien."
L["memorial_offering"] = "Kaufe ein {item:180788} von {npc:171526} in Aspirantenruhe. Stelle es in das Getränketablett in der Nähe der Truhe, um einen {item:180797} zu erhalten." --review location name
L["scroll_of_aeons"] = "Plündere zwei {item:173973} im mittleren Bereich und lege sie auf die nahe gelegenen Tributplatten, um den Schatz zu enthüllen." --review Blizzard translation

L["gift_of_agthia"] = "Klicke auf die brennende Fackel in der Nähe der kaputten Brücke im Nordwesten (39.1 54.5) und trage {spell:333320} von Fackel zu Fackel bis du die Truhe erreichst. Wenn du die letzte Fackel anzündest wird dir {spell:333063} gewährt."
L["gift_of_chyrus"] = "Knie vor er Truhe, um {spell:333045} zu erhalten."
L["gift_of_devos"] = [[
Südwestlich der Truhe ist eine Fackel von der du die {spell:333912} erhältst. Aufsitzen, Kampfbeitritt oder der erhalt von Schaden lassen die Flamme fallen. Du musst dir deinen Weg zurück zur Truhe bahnen und die Flamme in the Brazier of Devotion platzieren, um {spell:333070} zu erhalten.

Bevor du die Flamme aufsammelst, töte alle Gegner vor der Truhe. Während du läufst klicke jeden {npc:156571} entlang des Weges an, um {spell:335012} zu erhalten, der deine Bewegungsgeschwindigkeit erhöht.
]]--review Blizzard translation
L["gift_of_thenios"] = [[
Hinter der Truhe ist eine Flugfeld mit dem Namen "Pfad der Weisheit", diese führt zu einer Folge an Plattformen mit unterschiedlichen Räuchergefäßen mit denen kommuniziert werden kann:

• Incense of Knowledge
• Incense of Patience
• Incense of Insight
• Incense of Judgement

Kommuniziere mit ihnen in der Reihenfolge Patience => Knowledge => Insight. Auf der Judgement Plattform wird eine Kugel mit dem Namen "Path of Insightful Wisdom" erscheinen.

Die Kugel wird dich zu der wahren Incense of Judgment bringen. Kommuniziere dort mit ihr und das letzte Flugfeld wird dir {spell:333068} gewähren, um die Truhe öffnen zu können.
]] --review Blizzard translations
L["gift_of_vesiphone"] = "Läute an den Glocken, um {npc:170849} erscheinen zu lassen, töte es um den Schwächungszauber {spell:333239} zu erhalten. Der Wasserfall gegenüber der Truhe wird diesen Schwächungszauber reinigen und dir {spell:332785} gewähren, um die Truhe öffnen zu können."

L["anima_shard"] = "Verlorener Animakristallsplitter"
L["anima_shard_61225"] = "Auf einer unteren Plattform unterhalb der Brücke."
L["anima_shard_61235"] = "Auf einem Felsvorsprung überhalb des Wasserfalles."
L["anima_shard_61237"] = "Auf einem Felsvorsprung direkt über dem Wasser."
L["anima_shard_61238"] = "Im Wasser unterhalb der kleinen Brücke."
L["anima_shard_61239"] = "Auf einer dünnen Steinsäule."
L["anima_shard_61241"] = "Über dem Eingang zur Kammer der ersten Reflexion." --review Blizzard translation
L["anima_shard_61244"] = "Auf einem Felsen an der Seite der Klippe."
L["anima_shard_61245"] = "Auf einem Felsen oberhalb eines kleinen Wasserfalles."
L["anima_shard_61247"] = "An der Mauer über einem kleinen Wandbrunnen." --review water fixture
L["anima_shard_61249"] = "Versteckt hinter einer Steinsäule auf der oberen Etage von Purity's Pinnacle." --review Blizzard translation
L["options_toggle_anima_shards"] = "Verlorene Animakristallsplitter"
L["options_toggle_anima_shards_desc"] = "Zeigt die Standorte aller 50 verlorener Animakristallsplitter für den Erfolg \"Splitterpartie (ID:14339)\" an." --achievement 14339

-------------------------------------------------------------------------------
--------------------------------- MALDRAXXUS ----------------------------------
-------------------------------------------------------------------------------

L["chelicerae_note"] = "Zerstöre das {npc:159885}, um {npc:159886} angreifen zu können."
L["deepscar_note"] = "Kann in verschiedenen Eingängen vom Theater des Schmerzes erscheinen." --review Blizzard translation
L["gieger_note"] = "Pull the {npc:162815} to activate the rare."
L["gristlebeak_note"] = "Zerbrich alle {npc:162761} in der Nähe, um {npc:162588} angreifen zu können."
L["malkorak_note"] = "An der Spitze des Turms (eine menge Treppenstufen)."
L["schmitd_note"] = "Benutze nahegelegene {spell:313451}, um sein Schild zu brechen."

L["mixed_pool_note"] = [[
Sammel Materialien von umliegenden Gegnern und wirf diese in den Teich. Sobald 30 Materialien hinzugefügt wurden erscheint je nach verwendeter Kombination einer von sieben seltenen Gegnern.

• Sammel {spell:306713} von {npc:167923} und {npc:167948} aus dem Norden.

• Sammel {spell:306719} von {npc:165015} und {npc:171142} aus dem Süden.

• Sammel {spell:306722} von {npc:165027} und {npc:166438} aus dem Süden.
]]

L["blackhound_cache"] = "Blackhound Cache" --review Blizzard translation
L["bladesworn_supply_cache"] = "Bladesworn Supply Cache" --review Blizzard translation
L["glutharns_note"] = "In einer Höhle hinter dem Schleimwasserfall. Töte {npc:172485} und beide {npc:172479}, um die Truhe freizuschalten."
L["kyrian_keepsake_note"] = "Untersuche {npc:169664}, um den Schatz zu plündern."
L["plaguefallen_chest_note"] = [[
Stehe im grünen Schleim (benötigt Heilung!), um 10 Stapel von {spell:330069} zu erhalten, um in ein {spell:330092} verwandelt zu werden.

Wenn du verwandelt bist, besuche die Höhle unterhalb von {npc:158406}s Plattform (Eingang auf der östlichen Seite ()) und klicke auf das Rohr, um zur Truhe zu gelangen.
]]--add coordinates
L["stolen_jar_note"] = "In einer Höhle unter dem Riesenpilz."
L["strange_growth_note"] = "Ziehe an dem {npc:165037}, um den Schatz zu enthüllen."
L["vat_of_slime_note"] = "Klicken auf dem Tisch die Flasche an und danach auf den Schleimbehälter."

L["pet_cat"] = "Streichel die verdammte Katze!"
L["hairball"] = ns.color.Red("Erscheint nur im Schwärenden Sanktum in dem Dungeon Seuchensturz!")
L["lime"] = "Sitzt auf dem großen Knochenbogen."
L["moldstopheles"] = "Laufe um den Stiel herum und springe auf die Pilzplattformen. Verwende für die letzte Plattform ein Reittier und springe in die Ecke an der die Plattform am Stiel befestigt ist."
L["pus_in_boots"] = "Befindet sich unter der Brücke."

L["options_toggle_kittens"] = "Kätzchen" --review Blizzard translation
L["options_toggle_kittens_desc"] = "Zeige die Standorte der Kätzchen für den Erfolg \"Nine Afterlives (ID:14634)\" an." --review Blizzard traslation

-------------------------------------------------------------------------------
--------------------------------- REVENDRETH ----------------------------------
-------------------------------------------------------------------------------

L["endlurker_note"] = "Klicke Anima Stake neben {npc:165229}s Leiche an und verwende {spell:321826} an einem Schimmerndem Riss." --review Blizzard traslation
L["amalgamation_of_light_note"] = "Bewege alle drei Spiegelfallen, um {npc:164388} freizulassen." --review Blizzard traslation
L["bog_beast_note"] = "Hat die Chance während der Weltquest \"Muck It Up\" zu erscheinen nach der Verwendung von {item:177880} auf einen {npc:166206}." --review Blizzard traslation
L["executioner_aatron_note"] = "Töte die drei {npc:166715} in der Nähe, um {spell:324872} zu entfernen."
L["famu_note"] = "Sprich mit {npc:166483}, um das Event auszulösen."
L["leeched_soul_note"] = "In der nahe gelegenen Krypta. Gehe in die Nähe von {npc:165151}, um das Event zu starten."
L["grand_arcanist_dimitri_note"] = "Töte die vier {npc:167467}, um {npc:167464} freizulassen."
L["innervus_note"] = "Töte {npc:160375} in der Gegend, um einen {item:177223} zu erhalten und die Krypta aufzuschließen."
L["lord_mortegore_note"] = "Töte Gegner in der Nähe, um eine {item:174378} zu erhalten und verwende diese, um einen {npc:161870} zu ermächtigen. {npc:161891} wird erschienen, wenn alle vier Siegel ermächtigt wurden."
L["manifestation_of_wrath_note"] = "Hat eine Chance zu erscheinen, wenn eine {npc:169916} wiedererlangt wurde während der Weltquest \"Swarming Souls\"." --review Blizzard traslation
L["scrivener_lenua_note"] = "Bringe {npc:160753} zurück zur Verbotenen Bibliothek." --review Blizzard traslation
L["sinstone_hoarder_note"] = "Erscheint auf der Minimap als Schatztruhe. Versuch die {npc:162503} zu plündern und {npc:162481} wird sich offenbaren."
L["soulstalker_doina_note"] = "Verfolge sie nach unten und durch den Spiegel wenn sie wegläuft."
L["tomb_burster_note"] = "Kann beschworen werden, wenn {npc:155777} in einem Netz gefangen ist. Töte nahegelegene {npc:155769} und Wellen von {npc:155795} bis {npc:155779} erscheint."
L["worldedge_gorger_note"] = "Erlange ein {item:173939} von World Reavers, Devourers und Mites in the Banewood and the Endmire. Verwende es, to light the Worldedge Braziers und {npc:160821} zu beschwören." --review Blizzard traslation

L["darkreach_supplies"] = "Springe auf einen {npc:169995} und gleiten nach Südwesten in den ausgehöhlten Turm."
L["dredglaive_note"] = "Unter der Brücke in der {npc:173671} Leiche."
L["lost_quill_note"] = "Plündere {item:182475} von der Flasche auf dem Tisch in der Verbotenen Bibliothek."
L["secret_chamber_note"] = "Plündere einen abgelegten Anima-Kanister vor der verschlossenen Tür auf der Bank, um {spell:340701} zu erlernen. Verwende es, um fünf der in der Nähe befindlichen {npc:173838} aufzuzehren, dann verwende {spell:340866} vor dem {npc:173786}."
L["taskmaster_trove_note"] = "Lies die Eintritts- und Austrittsriten und gehe vorsichtig zur Truhe." --review Blizzard traslation
L["the_count_note"] = "Sammle 99 {currency:1820} im Endmire und dann bringen sie zu {npc:173488}." --review Blizzard traslation

L["abandoned_curios"] = "Verlassene Kuriositäten" --review Blizzard traslation
L["bleakwood_chest"] = "Bleakwood Chest" --review Blizzard traslation
L["chest_of_envious_dreams"] = "Truhe neidischer Träume" --review Blizzard traslation
L["filchers_prize"] = "Filchers Preis" --review Blizzard traslation
L["fleeing_soul_bundle"] = "Flüchtendes Seelenbündel" --review Blizzard traslation
L["gilded_plum_chest"] = "Vergoldete Pflaumenkiste" --review Blizzard traslation
L["gilded_plum_chest_note"] = "Töte {npc:166680} der die Straße hoch und runter läuft."
L["remlates_cache"] = "Remlates versteckte Truhe" --review Blizzard traslation
L["remlates_cache_note"] = "An der Außenwand von Darkhaven hinter der Krypta."
L["smuggled_cache"] = "Smuggled Cache" --review Blizzard traslation
L["wayfairer_spoils"] = "Verlassene Beute des Wanderers" --review Blizzard traslation

L["options_toggle_carriages"] = "Kutschen"
L["options_toggle_carriages_desc"] = "Zeige die Standorte und Wege von fahrbaren Kutschen an."