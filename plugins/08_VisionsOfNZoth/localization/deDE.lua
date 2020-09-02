local ADDON_NAME, _ = ...
local L = LibStub("AceLocale-3.0"):NewLocale(ADDON_NAME, "deDE", false, true)
if not L then return end
--German translation by Dathwada EU-Eredar
-------------------------------------------------------------------------------
----------------------------------- GENERAL -----------------------------------
-------------------------------------------------------------------------------

L["context_menu_title"] = "HandyNotes Visions of N'Zoth"
L["options_title"] = "Visions of N'Zoth"
L["options_icons_assaultevents"] = "Angriffevents Symbole"

-------------------------------------------------------------------------------
------------------------------------ ULDUM ------------------------------------
-------------------------------------------------------------------------------

L["uldum"] = "Uldum"
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
L["left_eye"] = "Lässt die linke Hälfte des {item:175140} Spielzeugs fallen."
L["neferset_rare"] = "Diese sechs Seltenen Gegner teilen sich die gleichen drei Spawnplätze in Neferset. Nachdem eine Reihe von Beschwörungsritual-Ereignissen abgeschlossen wurden, werden zufällig drei von ihnen erscheinen."
L["platform"] = "Erscheint auf der schwebenden Plattform."
L["single_chest"] = "Diese Truhe erscheint nur an einem Ort! Wenn sie nicht da ist, warte ein bisschen und sie wird wiedererscheinen."
L["spirit_cave"] = "Höhleneingang für den Geist des dunklen Ritualisten Zakahn."
L["tomb_widow"] = "Wenn die weißen Eiersäcke an den Säulen vorhanden sind, töte die unsichtbaren {npc:157184}, um sie zu beschwören."
L["uatka"] = "Klick zusammen mit zwei anderen Spielern auf jeweils ein  Mysteriöses Gerät. \nBenötigt ein {item:171208} aus einem Reliquiar der Amathet."
L["wastewander"] = "Teilt sich den spawn mit {npc:154369}."

L["amathet_cache"] = "Truhe der Amathet"
L["black_empire_cache"] = "Truhe des Schwarzen Imperiums"
L["black_empire_coffer"] = "Kiste des Schwarzen Imperiums"
L["infested_cache"] = "Befallene Truhe"
L["infested_strongbox"] = "Befallene Schließkassette"
L["amathet_reliquary"] = "Reliquiar der Amathet"

L["cursed_relic"] = "|cffff0000Benötigt {item:174768}|r"
L["tolvir_relic"] = "|cffff0000Benötigt {item:174765}|r"

L["options_toggle_alpaca_uldum"] = "Freundliches Alpaka"
L["options_toggle_alpaca_uldum_desc"] = "Zeigt Positionen für Gersahlstrauch und Freundliches Alpaka."
L["options_toggle_assault_events"] = "Angriffevents"
L["options_toggle_assault_events_desc"] = "Zeigt mögliche Positionen für Angriffevents."
L["options_toggle_coffers"] = "Verschlossene Kisten"
L["options_toggle_coffers_desc"] = "Zeigt die Positionen von Verschlossene Kisten (einmal pro Angriff plünderbar)."

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

L["vale"] = "Tal der Ewigen Blüten"
L["vale_intro_note"] = "Schließe die Einführungsquestreihe ab, um im Tal der Ewigen Blüten seltene Gegner, Schätze und Angriffsquests freizuschalten."

L["big_blossom_mine"] = "In der Großblütenmine. \nEingang im Nordosten (70.0 58.4)."
L["guolai"] = "In den Guo-Lai Hallen."
L["guolai_left"] = "In den Guo-Lai Hallen (linker Korridor)."
L["guolai_center"] = "In den Guo-Lai Hallen (mittlerer Korridor)."
L["guolai_right"] = "In den Guo-Lai Hallen (rechter Korridor)."
L["pools_of_power"] = "Im Becken der Macht. \nEingang bei der Golden Pagode (57.4 38.0)."
L["right_eye"] = "Lässt die rechte Hälfte des Allsehende Augen Spielzeugs fallen."
L["tisiphon"] = "Klicke auf Danielles Glücksangelrute."

L["ambered_cache"] = "Bernbesetzte Truhe"
L["ambered_coffer"] = "Bernbesetzte Kiste"
L["mantid_relic"] = "|cffff0000Benötigt {item:174766}|r"
L["mogu_plunder"] = "Mogubeute"
L["mogu_strongbox"] = "Schließkassette der Mogu"
L["mogu_relic"] = "|cffff0000Benötigt {item:174767}|r"

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
L["clear_sight"] = "Benötigt Klare Sicht Rang %d."
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

L["options_toggle_visions_buffs"] = "Stärkungszauber"
L["options_toggle_visions_buffs_desc"] = "Zeigt die Positionen von Events die einen 1 Stunde Stärkungszauber gewähren."
L["options_toggle_visions_chest_desc"] = "Zeigt mögliche Truhen Positionen in Verstörenden Visionen an."
L["options_toggle_visions_crystals"] = "Seltsame Kristalle"
L["options_toggle_visions_crystals_desc"] = "Zeigt mögliche Positionen für die Seltsamen Kristalle in Verstörenden Visionen an."
L["options_toggle_visions_mail"] = "Briefkästen"
L["options_toggle_visions_mail_desc"] = "Zeigt die Positionen von Briefkästen für das Postmampfer Reittier."
L["options_toggle_visions_misc_desc"] = "Zeigt die Position von Seltenen Gegner, Spielzeugen, Fläschchen und Astralen in Verstörenden Visionen."

-------------------------------------------------------------------------------
----------------------------------- VOLDUN ------------------------------------
-------------------------------------------------------------------------------

L["voldun"] = "Vol'dun"
L["elusive_alpaca"] = "Füttere das Alpaka einmal mit {item:161128}, um es als Reittier zu erhalten. Erscheint 10 Minuten lang an einem Ort, danach ein längere Zeit nicht."
L["options_toggle_alpaca_voldun_desc"] = "Zeigt die Positionen für Schlüpfriger Flinkhuf an."
L["options_toggle_alpaca_voldun"] = "Schlüpfriger Flinkhuf"
