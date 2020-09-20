local ADDON_NAME, ns = ...
local L = LibStub("AceLocale-3.0"):NewLocale(ADDON_NAME, "deDE", false, true)
if not L then return end
--German translation by Dathwada EU-Eredar
-------------------------------------------------------------------------------
----------------------------------- GENERAL -----------------------------------
-------------------------------------------------------------------------------

L["context_menu_title"] = "HandyNotes: Shadowlands"
L["options_title"] = "Shadowlands"
L["covenant_required"] = "Benötigt ein Paktmitglied der %s"

local ACHAN = "Anima %s kanalisiert."
L["achan_citadel_of_loyalty"] = ACHAN:format('zur Zitadelle der Loyalität') --review wrong Blizzard Translation Loyalität = Treue
L["achan_dominance_keep"] = ACHAN:format('zur Herrschaftsburg')
L["achan_dreamsong_fenn"] = ACHAN:format('nach Traumsang Fenn')
L["achan_house_of_constructs"] = ACHAN:format('zum Haus der Konstrukte')
L["achan_temple_of_courage"] = ACHAN:format('zum Tempel des Mutes')
L["achan_theater_of_pain"] = ACHAN:format('Theater der Schmerzen')
L["achan_tirna_scithe"] = ACHAN:format('nach Tirna Scithe')
L["achan_wanecrypt_hill"] = ACHAN:format('zum Schwundgrufthügel')

-------------------------------------------------------------------------------
--------------------------------- ARDENWEALD ----------------------------------
-------------------------------------------------------------------------------

L["deifir_note"] = "Reite auf {npc:164238} und verwende die Fähigkeiten {spell:319566} und {spell:319575}, um ihn zu verlangsamen und zu betäuben."
L["faeflayer_note"] = "In einer kleinen Höhle, versteckt hinter einem Wasserfall."
L["humongozz_note"] = "Pflanze einen {item:175247} in den feuchten Lehm, um einen {npc:164122} erscheinen zu lassen. Nach einer Minute {spell:319367} wird {npc:164112} erscheinen. Der Pilz wird von mehreren Gegnern in diesem Gebiet fallen gelassen."
L["lehgo_note"] = "Zerstöre Zitternde Gormeier und töte |CFFFFFF00Wütende Eipfleger|r bis {npc:167851} erscheint. In einer Höhle. (Eingang nach Südosten (58.5, 31.9))." --{npc:171827}
L["rootwrithe_note"] = "Pike die |CFFFFFF00Inaktiven Blüten|r an, bis {npc:167726} erscheint." --{npc:167928}
L["rotbriar_note"] = "Sprich mit {npc:171684} in der Nähe, um {npc:167724} nach einem Dialog zu beschwören."
L["slumbering_note"] = "In den Nebel zu laufen wird dich betäuben und wieder herausteleportieren. Verwende ein Leuchtfeuer oder Begleiter mit Flächenschaden, um ihn aus dem Nebel zu stoßen."
L["skuld_vit_note"] = "In einer Höhle, blockiert von einer Barriere. Ein Paktmitglied der Nachtfae muss {spell:310143} benutzen, um die Höhle betreten zu können. Sobald {npc:164415} gepullt wird verschwindet die Barriere."
L["valfir_note"] = "Klicke den Funkelnden Animasamen auf dem halben Weg nach unten an und verwende {spell:338045}, um seinen Stärkungszauber {spell:338038} zu entfernen." --review Blizzard translation
L["wrigglemortis_note"] = "Ziehe die {npc:164179} heraus, um {npc:164147} erscheinen zu lassen."

L["night_mare_note"] = [[
Reise nach Tirna Scithe und folge dem Wurzelpfad an der nordwestlichen Klippe zu einem kaputten Karren. Dort kannst du auf dem Boden ein {item:181243} plündern.

Bring diesen Gegenstand zu {npc:165704} im Schimmerkaskaden Becken.
Sie wird dir ein {item:181242} im Austausch gegen 10 {item:173204} geben. |cFFFF8C00Wenn sie nicht da ist, musst du die Questreihen |cFFFFFD00Ärger am Gormlingpferch|r und |cFFFFFD00Listige Spriggans|r zuerst abschließen.|r

Danach sprich mit {npc:160262} im Herz des Waldes, um {item:181242} gegen einen {item:178675} auszutauschen. Verwende diesen Gegenstand, um den Stärkungszauber {spell:327083} zu erhalten, der es dir erlaubt {npc:168135} zu sehen.
]]

L["star_lake"] = "Sternseeamphitheater"
L["star_lake_note"] = "Sprich mit {npc:171743}, um eine der besonderen Begegnungen zu beginnen."

L["cache_of_the_moon"] = "Sammel {npc:171360}|CFFFFFF00s|r fünf verlorene Werkzeuge im Garten der Nacht und kombiniere diese zu {item:180753}. Bring dieses zu ihr zurück und sie wird dir die {spell:334353} gewähren, um die Truhe sehen zu können."
L["darkreach_supplies"] = "Verwende den {npc:169995}, um nach Südwesten in den ausgehöhlten Turm zu gleiten."
L["desiccated_moth"] = "Verwende den {npc:169997}, nordwestlich des Baumes, um in die Baumkrone zu gleiten. Verbrenne {item:180784} im Räuchergefäß um den Schatz zu sammeln." --(31.7, 32,5)
L["dreamsong_heart"] = "Verwende den {npc:169997} an der Seite des Baumes, um auf den Baum geschleudert zu werden."
L["elusive_faerie_cache"] = "Hebe die {spell:333923} in Abendhein (46.5, 70.1) auf und verwende diese dazu die Truhe zu plündern."
L["enchanted_dreamcatcher"] = "Hängt oben von den Wurzeln herunter. \nAm einfachsten hochzuklettern ist es auf der westlichen Seite."
L["faerie_trove"] = "Befindet sich unter der Plattform."
L["harmonic_chest"] = "Benötigt zwei Spieler. Einer spielt die Harfe und der andere die Trommel, um die Truhe freizuschalten."
L["hearty_dragon_plume"] = "Verwende die {spell:333554} an der Spitze der nahe gelegenen Wasserfälle (die Feder liegt bei (48.9, 41.0)), um auf den Ast zu gleiten."
L["old_ardeite_note"] = "Töte |CFFFFFF00Ritualisten von Schimmergeäst|r oder |CFFFFFF00Besesene Verteidiger|r in dem Gebiet Schimmergeäst im Südosten, um eine {item:174042} zu erhalten. Verwende diese dazu, um zu {npc:164391} hoch zu fliegen." --{npc:160747} {npc:160748}
L["swollen_anima_seed"] = "Ein großer Samen der in einem Baumstamm liegt."

L["playful_vulpin_note"] = [[
Finde und verwende fünf mal die richtigen Emotes für {npc:171206}, um das Haustier zu erhalten.

• beginnt neugierig zu graben = |cFFFF8C00/neugierig|r
• hoppelt umher und kann nicht stillsitzen = |cFFFF8C00/sitzen|r
• singt ganz alleine = |cFFFF8C00/singen|r
• tanzt vor Freude = |cFFFF8C00/tanzen|r
• setzt sich einsam und traurig = |cFFFF8C00/streicheln|r
]]

L["tame_gladerunner"] = "Schimmernebelläufer"
L["tame_gladerunner_note"] = [[
Lies die "Legende des Dickichts" am Baum (bei 32.5, 53.0) und folge den blauen Lampen durch den Pfad bis du zu {npc:171767} gelangst. Töte ihn und plündere den {npc:171699}.

Wenn du den falschen Pfad nimmst und {npc:171699} verschwindet, wenn du das Ende erreichst, gehe zurück und lies die "Legende des Dickichts" erneut, um von vorne zu beginnen. Wenn {npc:171767} nicht da ist, warte auf ihn bis er Wiedererscheint.
]]

-------------------------------------------------------------------------------
----------------------------------- BASTION -----------------------------------
-------------------------------------------------------------------------------

L["aspirant_eolis_note"] = "Plündere {item:180613} in der Nähe und lese es ihm vor. Es erscheint eine Truhe."
L["basilofos_note"] = "Beweg dich auf den Felsen umher, bis eine lila Markierung über deinem Kopf erscheint, stehe dann still und warte vier Emotes ab bis {npc:170659} erscheint."
L["beasts_of_bastion"] = "Bestien der Bastion" --review Blizzard translation
L["beasts_of_bastion_note"] = [[
Sprich mit {npc:161441}, um eine der vier Bestien zu beschwören.

|cFFFF0000HINWEIS|r: Der NPC ist oft verbuggt und will nicht mit dir reden.
]]
L["bookkeeper_mnemis_note"] = "Hat die Chance anstelle von {npc:166867} in diesem Gebiet zu erscheinen."
L["cloudfeather_patriarch_note"] = "Töte {npc:158110}|CFFFFFF00n|r in diesem Gebiet, bis ein Emote ausgegeben wird und der {npc:170932} erscheint."
L["collector_astor_note"] = "Lies alle sechs Kapitel von Mercias Vermächtnis, die im Raum verstreut sind und das {npc:157979} wird zu dir flüstern. Sprich mit ihr, um {spell:333779} zu erhalten, der es dir erlaubt {item:180569} im Nordwesten zu finden. Wenn das Kapitel zurückgeben wird, erscheint {npc:171014}."
L["corrupted_clawguard_note"] = "Plündere {item:180651} im Schmiedefeueraußenposten (54.9, 41.0) und verwende es, um die {npc:171300} zu reparieren."
L["dark_watcher_note"] = "Kann nur während des Todes gesehen werden. Sprich mit ihr und sie wird {spell:332830} auf dich wirken, bevor sie angreift."
L["demi_hoarder_note"] = "Startet mit 99 Stapeln von {spell:333874} (Reduzierung des erlittenen Schadens). Stapel werden langsam durch Schaden entfernt. {npc:171011} folgt einem Pfad und verschwindet wenn sie das Ende erreicht."
L["dionae_note"] = "\nWenn sie immun wird, klicke auf die vier {npc:163747}|CFFFFFF00e|r, um ihr Schild zu brechen."
L["herculon_note"] = [[
Sammel {item:172451} und verwende dieses, um {npc:158659} Stapel von {spell:343531} zu gewähren. Bei 10 Stapeln wird er aktiv.

Partikel können aus entleerten Animakanistern in der Nähe gesammelt werden, die sich in diesem Raum oder direkt außerhalb befinden.
]]
L["nikara_note"] = "Klicke mit zwei anderen Spielern das Uralte Räucherwerk an, um ein Ritual zu beginnen, {npc:160882} zu beschwören."
L["sundancer_note"] = "Klicke das Uralte Denkmal an, um den {spell:332309} zu erhalten und verwende einen {item:180445}, um zu ihm zu gleiten und aufzusitzen."
L["unstable_memory_note"] = "Kann beschworen werden, wenn {npc:171018} anwesend ist. Ziehe dieses in andere, um ihm 10 Stapel von {spell:333558} zu gewähren, der es zu {npc:171008} heranwachsen lässt."
L["wingflayer_note"] = "Klicke zum Beschwören das Horn des Mutes auf dem Tisch in der Nähe an. (41.6, 54.5)"

L["broken_flute"] = "Töte |CFFFFFF00Beunruhigte Ätherwyrme|r in diesem Gebiet, bis diese {item:180536} fallen lassen, dann verwende die Werkzeuge, um die Flöte zu reparieren." --{npc:170009}
L["experimental_construct_part"] = "Plündere ein {item:180534} in der Nähe und verwende es, um den Gegenstand zu reparieren. Das {item:180534} erscheint an verschiedenen Stellen."
L["larion_harness"] = "Befindet sich in der Halle der Bestien."
L["memorial_offering"] = "Kaufe 1x {item:180788} von {npc:171526} in der Aspirantenrast (48.0, 73.9). Stelle es auf das Getränketablett in der Nähe der Truhe, um den {item:180797} zum öffnen der Truhe zu erhalten."
L["scroll_of_aeons"] = "Plündere 2x {item:173973} im mittleren Bereich und platziere diese auf den Tributplatten in der Nähe, um den Schatz zu enthüllen."
L["vesper_of_silver_wind"] = "Schließe den Erfolg {achievement:14339} ab und sprich dann mit {npc:171732} nahe dem Eingang zu den Spitzen des Aufstieges, um einen {item:180858} zu schmieden."

L["gift_of_agthia"] = "Klicke auf die brennende Fackel in der Nähe der kaputten Brücke im Nordwesten (bei 39.1, 54.5) und trage {spell:333320} von Fackel zu Fackel bis du die Truhe erreichst. Wenn du die letzte Fackel anzündest wird dir der {spell:333063} gewährt, um die Truhe öffnen zu können."
L["gift_of_chyrus"] = "Knie vor er Truhe, um den {spell:333045} zu erhalten. \nVerwende die Transportplattform (bei 69.4, 40.3), um nach oben zu gelangen."
L["gift_of_devos"] = [[
Südwestlich der Truhe ist eine Fackel von der du die {spell:333912} erhältst. Aufsitzen, Kampfbeitritt oder der erhalt von Schaden lassen die Flamme fallen. Du musst dir deinen Weg zurück zur Truhe bahnen und die Flamme in die Kohlenpfanne der Hingabe platzieren, um {spell:333070} zu erhalten.

Bevor du die Flamme aufsammelst, töte alle Gegner vor der Truhe. Während du läufst klicke mehrere {npc:156571}|CFFFFFF00n|r entlang des Weges an, um {spell:335012} zu erhalten, der deine Bewegungsgeschwindigkeit erhöht.
]]
L["gift_of_thenios"] = [[
Hinter der Truhe ist eine Transportplattform mit dem Namen "Pfad der Weisheit", diese führt zu einer Folge von Plattformen mit unterschiedlichen Räuchergefäßen mit denen gesprochen werden kann:

• Räucherwerk des Wissens
• Räucherwerk der Geduld
• Räucherwerk der Einsicht
• Räucherwerk des Richturteils

Sprich mit ihnen in der Reihenfolge |cFFFF0000Geduld => Wissen => Einsicht|r. Auf der Richturteil Plattform wird eine Kugel mit dem Namen "Weg der einsichtigen Weisheit" erscheinen.

Die Kugel wird dich zu dem wahren Räucherwerk des Richturteils bringen. Sprich dort mit ihm und die letzte Transportplattform wird dir den {spell:333068} gewähren, um die Truhe öffnen zu können.
]]
L["gift_of_vesiphone"] = "Läute an den Glocken, um eine {npc:170849} erscheinen zu lassen, töte diese um den Schwächungszauber {spell:333239} zu erhalten. Der Wasserfall gegenüber der Truhe wird diesen Schwächungszauber reinigen und dir den {spell:332785} gewähren, um die Truhe öffnen zu können."

L["cache_of_the_ascended"] = "Truhe der Aufgestiegenen" --review Blizzard translations
L["cache_of_the_ascended_note"] = "Klicke mit vier anderen Spielern die Vesperglocke der Reinheit, des Mutes, der Demut, der Weisheit und der Loyalität zur selben Zeit an. Begebt euch anschließend zum Prüfstein des Aspiranten, um den Rat der Aufgestiegenen zu besiegen und die Truhe zu enthüllen."

L["anima_shard"] = "Verlorener Animakristallsplitter"
L["anima_shard_61225"] = "Auf einer tiefer gelegenen Plattform unterhalb der Brücke."
L["anima_shard_61235"] = "An einer Kante oberhalb des Wasserfalles."
L["anima_shard_61236"] = "Auf einem Torbogen, auf halber höhe der Hauptstruktur."
L["anima_shard_61237"] = "Auf einem Felsvorsprung direkt über dem Wasser."
L["anima_shard_61238"] = "Im Wasser unterhalb der kleinen Brücke."
L["anima_shard_61239"] = "Auf einer dünnen Steinsäule."
L["anima_shard_61241"] = "Über dem Eingang zur Kammer der Ersten Reflexion."
L["anima_shard_61244"] = "Auf einem Felsen an der Seite der Klippe."
L["anima_shard_61245"] = "Auf einem Felsen oberhalb eines kleinen Wasserfalles."
L["anima_shard_61247"] = "In einem kleinen Wandbrunnen an der Mauer."
L["anima_shard_61249"] = "Hinter einer Steinsäule auf der oberen Etage der Spitze der Reinheit versteckt. Verwende die Transportplattform (bei 63.5, 72.4) um nach oben zu gelangen."
L["anima_shard_61250"] = "Hinter einer Treppe."
L["anima_shard_61251"] = "In einem Räuchergefäß."
L["anima_shard_61253"] = "Auf einem umgestürzten Steintorbogen."
L["anima_shard_61254"] = "Auf einer kleinen Holzkonstruktion."
L["anima_shard_61257"] = "An einer kleinen Kante direkt unterhalb von {npc:162523}."
L["anima_shard_61258"] = "An einer kleinen Kante an der unterseite von Heldenrast."
L["anima_shard_61260"] = "Am Boden unter einer Plattform."
L["anima_shard_61261"] = "An einer Kante über {npc:163460}|CFFFFFF00s|r Höhle."
L["anima_shard_61263"] = "Auf einer Steinsäule."
L["anima_shard_61264"] = "Auf einer geneigten Struktur."
L["anima_shard_61270"] = "Am Fuße eines Baumes."
L["anima_shard_61271"] = "In einem Bücherregal auf der oberen Plattform."
L["anima_shard_61273"] = "An einer Kante direkt unter der hervorragenden Klippe."
L["anima_shard_61274"] = "Unter der Plattform versteckt."
L["anima_shard_61275"] = "Befindet sich in der Halle der Bestien hinter einigen Fässern."
L["anima_shard_61277"] = "Auf einer dünnen Steinsäule."
L["anima_shard_61278"] = "Unter einer Brücke auf einem Felsen."
L["anima_shard_61279"] = "Auf einer dünnen Steinsäule."
L["anima_shard_61280"] = "An einer Ecke des Tisches."
L["anima_shard_61281"] = "An einer Kante über dem Schatz der Gedenkopfergabe."
L["anima_shard_61282"] = "An einer Kante unterhalb der Klippe. Springe auf den Felsen daneben oder du wirst wieder hochteleportiert."
L["anima_shard_61283"] = "In {npc:171132}' Workshop, hinter einigen Fässern."
L["anima_shard_61284"] = "Auf einer Kante unter einem steinigen Überhang. Gehe an der Steinkante entlang."
L["anima_shard_61285"] = "An einer Kante eines kleinen Felsvorsprungs."
L["anima_shard_61286"] = "An einer Kante mit Blick auf den Weg."
L["anima_shard_61287"] = "An einer Kante oberhalb des kleinen Wasserfalles."
L["anima_shard_61288"] = "An der Spitze eines kleinen Felsvorsprunges."
L["anima_shard_61289"] = "Oben auf dem Pavillon."
L["anima_shard_61290"] = "Am Ende eines schmalen Felsvorsprungs."
L["anima_shard_61291"] = "Am Grund des Teiches an den Füßen einer Statue."
L["anima_shard_61292"] = "Oben auf dem steinernen Torbogen."
L["anima_shard_61293"] = "Auf einer dünnen Steinsäule auf der unteren Ebene."
L["anima_shard_61294"] = "Hinter einem Stapel Fässer versteckt."
L["anima_shard_61295"] = "Hinter {npc:156889} in einem Bücherregal."
L["anima_shard_61296"] = "Hinter der großen herunter gefallenen Glocke."
L["anima_shard_61297"] = "Hinter einer Steinsäule."
L["anima_shard_61298"] = "Hinter einem Liegestuhl."
L["anima_shard_61299"] = "Hinter einer großen Fackel versteckt."
L["anima_shard_61300"] = "An der Kante des mittleren Brunnens."
L["options_icons_anima_shard"] = "Verlorene Animakristallsplitter"
L["options_icons_anima_shard_desc"] = "Zeigt die Positionen aller 50 verlorener Animakristallsplitter für den Erfolg \"Splitterpartie (ID:14339)\" an." --{achievement:14339}

-------------------------------------------------------------------------------
--------------------------------- MALDRAXXUS ----------------------------------
-------------------------------------------------------------------------------

L["chelicerae_note"] = "Zerstöre {npc:159885}, um {npc:159886} angreifen zu können."
L["deepscar_note"] = "Kann in verschiedenen Eingängen vom Theater der Schmerzen erscheinen."
L["forgotten_mementos"] = "Ziehe an der Vault Portcullis Chain in der Kammer westlich des Schatzes, um das Gatter zu öffnen." --review Blizzard translations
L["gieger_note"] = "Ziehe an {npc:162815}, um {npc:162741} zu aktivieren."
L["gristlebeak_note"] = "Zerbrich jedes {npc:162761} in der Nähe, daraufhin wird {npc:162588} zu euch herunter geflogen kommen."
L["leeda_note"] = "Töte die zwei {npc:162220} bis {npc:162180} erscheint."
L["malkorak_note"] = "An der Spitze des Turms \n(eine menge Treppenstufen)."
L["schmitd_note"] = "Benutze nahegelegene {spell:313451}, um sein Schild zu brechen."
L["taskmaster_xox_note"] = "Teilt sich einen spawn mit {npc:160204}, {npc:160230} und {npc:160226}."
L["zargox_the_reborn_note"] = "Verwende die {item:175841} auf der {npc:157124}. Die {item:175841} erhälst du, wenn du die Quest |cFFFFFD00[Das Ätherleben]|r von {npc:157076} abschließen und nochmal mit ihm sprichst."
L["mixed_pool_note"] = [[
Sammel Materialien von umliegenden Gegnern und wirf diese in den Teich. Sobald 30 Materialien hinzugefügt wurden, erscheint je nach verwendeter Kombination einer von sieben seltenen Gegnern.

• Sammel {spell:306713} von {npc:167923} und {npc:167948} aus dem Norden.

• Sammel {spell:306719} von {npc:165015} und {npc:171142} aus dem Süden.

• Sammel {spell:306722} von {npc:165027} und {npc:166438} aus dem Süden.
]]
L["Violet"] = "Violetter Fehler"
L["Oily"] = "Öliger Invertebrat"

L["blackhound_cache"] = "Schwarzhundtruhe"
L["bladesworn_supply_cache"] = "Vorräte des Klingenschwurs"

L["glutharns_note"] = "In einer Höhle hinter dem Schleimwasserfall. Töte {npc:172485} und beide {npc:172479}|CFFFFFF00en|r, um die Truhe freizuschalten."
L["kyrian_keepsake_note"] = "Untersuche die {npc:169664}, um den Schatz zu plündern."
L["misplaced_supplies"] = "Oben auf dem Riesenpilz"
L["necro_tome_note"] = "Um Zugang zu dem Turm zu erhalten, musst du bei {npc:166657} erst eine kleine Questreihe beginnen. In einem Bücherregal in der obersten Etage."
L["plaguefallen_chest_note"] = [[
Stelle dich in grünen Schleim |cffff0000(benötigt Heilung!)|r, sammel 10 Stapel von {spell:330069} an, um in ein {spell:330092} verwandelt zu werden.

Wenn du verwandelt bist, besuche die Höhle unterhalb von {npc:158406}|CFFFFFF00es|r Plattform (Eingang auf der östlichen Seite) und klicke auf das Rohr, um zur Truhe zu gelangen.
]]
L["ritualists_cache_note"] = "Plündere die {item:181558} von einem Knochenhaufen \n(69.9, 31.0 oder 69.1, 32.5) und benutze dann das Buch der Bindungsrituale (71.7, 35.4), dass dir das {spell:337041} gewährt, um die Truhe öffnen zu können."
L["runespeakers_trove_note"] = "Töte {npc:170563} (37.9, 70.1), um den Schlüssel zu erhalten und den Schatz zu plündern."
L["stolen_jar_note"] = "In einer Höhle unter dem Riesenpilz."
L["strange_growth_note"] = "Ziehe {npc:165037} heraus, um den Schatz zu enthüllen."
L["vat_of_slime_note"] = "Klicken auf dem Tisch die Flasche an und danach auf den Schleimbehälter."

L["giant_cache_of_epic_treasure"] = "Epischer Riesenschatz"
L["spinebug_note"] = [[
Oh schau! Ein {spell:343124}! Nähere dich ihm, tapferer Abenteurer, das ist sicher keine List. Warte, ist das die Musik aus Karazhan? Was macht dieser {npc:174663} hier ...?

{spell:343163}!
]]

L["oonar_sorrowbane_note"] = [[
Im Theater der Schmerzen, findest du im Boden steckend Kummerfluch und Oonars Arm daran befestigt.
|cFFFF8C00Bevor du versuchst eines der beiden ab oder heraus zu ziehen, setzte deinen {item:6948} bei {npc:161702} nahe des Flugpunktes.|r

Um {item:181164} ab zu ziehen:

• Reise zu Glutherns Verfall (51.4, 48.5) im Osten.
• Esse 4x {spell:327367} (2min debuff).
• Benutze schnell deinen {item:6948} und zieh am Arm.

Um {item:180273} heraus zu ziehen:

• Kaufe 1x {item:182163} von {npc:171808} in der Nähe
   des Nachtmarktes in Revendreth (51.0, 78.8).
• Kaufe 1x {item:180771} von
   {npc:166640} in Maldraxxus (50.9, 53.2).
• Erhalte 2 Stapel {spell:306272} von der Weltquest
   |cFFFFFD00[Ein oder zwei Steine im Weg]|r im Westen (37.0, 46.9).
• Esse 4x {spell:327367} in Glutherns Verfall.
• Benutze schnell deinen {item:6948}, trink beim
   Schwert die beiden Tränke und ziehe an diesem.
]]

L["pet_cat"] = "Streichel die verdammte Katze!"
L["hairball"] = ns.color.Red("Erscheint nur in dem Dungeon \"Seuchensturz\" im Gebiet \"Das Schwärende Sanktum\"!")
L["lime"] = "Sitzt auf dem großen Knochenbogen."
L["moldstopheles"] = "Laufe um den Stiel herum und springe auf die Pilzplattformen. Verwende für die letzte Plattform ein Reittier und springe in die Ecke an der die Plattform am Stiel befestigt ist."
L["pus_in_boots"] = "Befindet sich unter der Brücke."

L["options_icons_slime_cat"] = "Kätzchen"
L["options_icons_slime_cat_desc"] = "Zeigt die Positionen der Kätzchen für den Erfolg \"Neun jenseitige Leben (ID:14634)\" an."

-------------------------------------------------------------------------------
--------------------------------- REVENDRETH ----------------------------------
-------------------------------------------------------------------------------

L["amalgamation_of_filth_note"] = "Wenn die Weltquest |cFFFFFD00[Drecksarbeit: Abrisstrupp]|r verfügbar ist, klicke auf die Abfallkiste und verwende {spell:324115} nahe des Wassers."
L["amalgamation_of_light_note"] = "Bewege alle drei Spiegelfallen, um {npc:164388} freizulassen."
L["amalgamation_of_sin_note"] = "Erhalte einen {item:180376} von der Weltquest |cFFFFFD00[Ruft Eure Sünden Herbei]|r und verwende es, um den {npc:170434} zu beschwören."
L["bog_beast_note"] = "Hat eine Chance zu erscheinen, wenn während der Weltquest |cFFFFFD00[Muck It Up]|r auf einen {npc:166206} {item:177880} angewendet wird." --review Blizzard translation /dump C_QuestLog.GetTitleForQuestID(59808)
L["endlurker_note"] = "Klicke den Animapflock neben {npc:165229}|CFFFFFF00s|r Leiche (65.4, 60.0) an und verwende den {spell:321826} an einem Schimmerndem Riss."
L["executioner_aatron_note"] = "Töte die drei {npc:166715} in der Nähe, um die {spell:324872} zu entfernen."
L["famu_note"] = "Sprich mit {npc:166483}, um das Event auszulösen."
L["grand_arcanist_dimitri_note"] = "Töte die vier |CFFFFFF00Verhüllten Ritualisten|r, um {npc:167464} freizulassen." --{npc:167467}
L["harika_note"] = [[
|cFFFF0000WICHTIG:|r Die Gegenstände müssen in der richtigen Reihenfolge abgegeben werden oder das Event wird buggen.

Plündere den {item:176397} in Schauerkuppe und beide Sets von {item:176396}. Gib die Werkzeuge den beiden |CFFFFFF00Dreckgeborenen Handwerkern|r nahe der Balliste, dann gib {npc:165327} den Bolzen und sage ihm er soll {npc:165290} vom Himmel holen.
]] --{npc:165328}
L["innervus_note"] = "Töte |CFFFFFF00Wilde Ritualisten|r in der Gegend, um einen {item:177223} zu erhalten, um die Krypta aufzuschließen." --{npc:160375}
L["leeched_soul_note"] = "In der nahe gelegenen Krypta. Gehe in die Nähe von {npc:165151}, um das Event zu starten."
L["lord_mortegore_note"] = "Töte Gegner in der Nähe, um eine {item:174378} zu erhalten und verwende diese, um ein {npc:161870} zu ermächtigen. {npc:161891} wird erscheinen, wenn alle vier Siegel ermächtigt wurden."
L["madalav_note"] = "Klick Madalavs Hammer auf dem Amboss in der Nähe an, um ihn zu beschwören."
L["manifestation_of_wrath_note"] = "Hat eine Chance zu erscheinen, wenn während der Weltquest |cFFFFFD00[Seelenschwärme]|r eine {npc:169916} wiedererlangt wird."
L["scrivener_lenua_note"] = "Bringe {npc:160753} zurück zur Verbotenen Bibliothek."
L["sinstone_hoarder_note"] = "Erscheint auf der Minimap als Schatztruhe. Versuch den {npc:162503} zu plündern und {npc:162481} wird sich offenbaren."
L["sire_ladinas_note"] = "Hebe Restlicht in der Nähe auf und verwende {spell:313065} auf einen {npc:157733}."
L["soulstalker_doina_note"] = "Verfolge sie nach unten und durch den Spiegel wenn sie wegläuft."
L["tomb_burster_note"] = "Kann beschworen werden, wenn {npc:155777} in einem Netz gefangen ist. Töte nahegelegene {npc:155769}|CFFFFFF00er|r und Wellen von {npc:155795}|CFFFFFF00n|r bis {npc:155779} erscheint."
L["worldedge_gorger_note"] = [[
Erlange ein {item:173939} von Entartungen wie den Fressern und Milben in den Gebieten Fluchwald oder dem Endmorast. Verwende es, um die Weltenrandkohlenpfannen zu entflammen und den {npc:160821} zu beschwören.

Hat eine Chance die {item:180583} fallen zu lassen, welche eine 7-tägige Questreihe startet, um das Reittier {spell:333027} zu erhalten.
]]

L["dredglaive_note"] = "Unter der Brücke in der {npc:173671} Leiche."
L["lost_quill_note"] = "Plündere {item:182475} von der Flasche auf dem Tisch in der Verbotenen Bibliothek."
L["forbidden_chamber_note"] = "Plündere den Weggeworfenen Animakanister vor der verschlossenen Tür auf der Bank, um {spell:340701} zu erlernen. Verwende es, um fünf in der Nähe befindlichen |CFFFFFF00Stillen Beobachtern|r ihr Anima zu entziehen, dann verwende {spell:340866} vor dem {npc:173786}." --{npc:173838}
L["taskmaster_trove_note"] = "Lies die Eintritts- und Austrittsriten und gehe behutsam zur Truhe."
L["the_count_note"] = "Sammle 99x {currency:1820} in dem Gebiet Endmorast und dann bringen sie zu {npc:173488}."

L["abandoned_curios"] = "Verlassene Schätze"
L["bleakwood_chest"] = "Bleakwood Chest" --review Blizzard traslation, can't find this chest at 30.34 24.72
L["chest_of_envious_dreams"] = "Truhe der neidischen Träume"
L["filchers_prize"] = "Diebestrophäe"
L["fleeing_soul_bundle"] = "Bündel der flüchtigen Seele"
L["forgotten_anglers_rod"] = "Vergessene Angelrute"
L["gilded_plum_chest"] = "Kiste mit vergoldeter Pflaume"
L["gilded_plum_chest_note"] = "Töte die {npc:166680}, die die Straße hoch und runter läuft."
L["remlates_cache"] = "Remlates versteckter Schatz"
L["remlates_cache_note"] = "Hinter der Außenmauer der Krypta in Dunkelhafen."
L["smuggled_cache"] = "Geschmuggelte Truhe"
L["wayfairer_spoils"] = "Zurückgelassene Beute eines Wanderers" --use Schattentor

L["loyal_gorger_note"] = "Besuch den Endmorast und schließe 7-mal eine tägliche Quest ab, die dir von deinem {npc:173498} angeboten wird, um ihn als Reittier zu erhalten."

L["sinrunner_note"] = "Bring Essen und Vorräte für sechs Tage zu {npc:173468}, um ihre Zügel zu erhalten. Sie erscheint jeweils nur für einige Minuten."
L["sinrunner_note_day1"] = "Verfüttere an Graumähne 8x {item:182581}, kann im umliegenden Gebiet der Farmen in Westfall gefunden werden."
L["sinrunner_note_day2"] = "Erhalte eine {item:182585} von {npc:173570} in Dunkelhafen und benutze es, um Graumähne zu säubern."
L["sinrunner_note_day3"] = "Rüste Graumähne mit 4x {item:182595} aus, kann auf den umliegenden Straßen von Dunkelhafen gefunden werden."
L["sinrunner_note_day4"] = "Hebe {item:182620} nahe {npc:173570} auf und fülle ihn mit Wasser aus Bastion oder dem Ardenwald. Bringe den {item:182599} zu Graumähne."
L["sinrunner_note_day5"] = "Rüste Graumähne mit {item:182597} aus, verkauft von {npc:171808} nahe dem Nachtmarkt (51.0, 78.8) im Austausch für verschiedene Fleischsorten."
L["sinrunner_note_day6"] = "Verfüttere an Graumähne 3x {item:179271}, verkauft von {npc:167815} im Gebiet Loch in der Wand (40.8, 46.8)."

L["options_icons_carriages"] = "Kutschen"
L["options_icons_carriages_desc"] = "Zeigt die Positionen und Wege von fahrbaren Kutschen an."

-------------------------------------------------------------------------------
----------------------------------- THE MAW -----------------------------------
-------------------------------------------------------------------------------

L["maw_intro_note"] = [[
Schließe die Einführungsquestreihe ab, um im Schlund seltene Gegner und Events freizuschalten.

Bis du {npc:170651} zurück nach Oribos bringst, wirst du in einem anderen Phasing sein als die meisten anderen Spieler.
]]

L["apholeias_note"] = "Stelle dich mit drei anderen Spielern in die Ecken der Plattform und wirkt {spell:331783}, um {npc:170301} zu beschwören."
L["ekphoras_note"] = "Stelle dich mit drei anderen Spielern in die Ecken der Plattform und wirkt {spell:330650}, um {npc:169827} zu beschwören."
L["orophea_note"] = "Hebe das {spell:337143} im Südosten auf und biete es {npc:172577} an, zum aktivieren." --review
L["sanngror_note"] = "\nWenn er gerade nicht angreifbar ist, dann warte bis er nicht mehr mit Seelen experimentiert."
L["talaporas_note"] = "Stelle dich mit drei anderen Spielern in die Ecken der Plattform und wirkt {spell:331800}, um {npc:170302} zu beschwören."
L["valis_note"] = "Klicke die drei {npc:174810} in der richtigen Reihenfolge an, um {npc:173086} zu beschwören. Die Reihenfolge ändert sich jedes Mal und wenn die falsche Rune angeklickt wird, erleidest du Schaden und wirst mit dem Schwachungszauber {spell:343636} belegt."
L["yero_note"] = "Nähere dich {npc:172862} und folge ihm in die Höhle in der Nähe, wo er feindlich wird."

L["exos_note"] = [[
Töte die anderen drei Herolde der Trauer, der Pein und des Verlusts um ihre drei Gravuren zu erhalten.

• {item:182328}
• {item:182326}
• {item:182327}

Kombiniere alle drei Gravuren, um den {item:182329} herzustellen, welcher am Altar der Herrschaft verwendet werden kann, um den seltenen Gegner zu beschwören. Verwende das {npc:173892}, um in die obere Etage zu gelangen.
]]

L["soul_well_note"] = "Fange den Stygia ausbruch aus dem Seelenbrunnen." --review Blizzard translation
L["obliterated_soul_shards_note"] = "Sammel Ausgelöschte Seelensplitter auf den Brücken." --review Blizzard translation

L["chaotic_riftstone_note"] = "Aktiviere ihn, um mit einem {spell:344157} schnell durch den Schlund zu reisen."

L["options_icons_bonus_boss"] = "Bonus Elitegegner"
L["options_icons_bonus_boss_desc"] = "Zeigt die Positionen von Bonus Elitegegnern."
L["options_icons_bonus_event"] = "Bonus Events"
L["options_icons_bonus_event_desc"] = "Zeigt die Positionen von Bonus Events."
L["options_icons_riftstone"] = "Chaotische Risssteine"
L["options_icons_riftstone_desc"] = "Zeigt die Positionen von Chaotischen Risssteinen an."
