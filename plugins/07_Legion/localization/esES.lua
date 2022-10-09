-- Spanish Translation by (EU) Krovikan-Minahonda
local ADDON_NAME, ns = ...
local L = ns.NewLocale('esES')
if not L then return end

local Gold = ns.color.Gold
local Orange = ns.color.Orange
local Red = ns.color.Red

-------------------------------------------------------------------------------
------------------------------- ANTORAN WASTES --------------------------------
-------------------------------------------------------------------------------

L['commander_texlaz_note'] = 'Ya no requiere que la misión del mundo {quest:48831} esté activa. Coge el portal verde.'
L['doomcaster_suprax_note'] = 'Ya no hace falta cubrir las tres runas con tres jugadores. Sólo hace falta pisar una runa para invocar a {npc:127703}.'
L['mother_rosula_note'] = 'Recoge 100 {item:152999} de los {npc:126073} y combínalas para crear un {item:153013}. Usa el {item:153013} en su piscina vil.'
L['reziera_the_seer_note'] = 'Mientrás tengas el buff del {spell:254174} recoge 500 {item:153021} para comprar un {item:153226} a {npc:128134}. Usa el {item:153226} para enviarte (y a tu grupo) a {npc:127706}.'
L['squadron_commander_vishax_note'] = 'Recoge un {item:152890} de un {npc:127598}.\n\nRecoge una {item:152941}, un {item:152940}, y una {item:152891} de {npc:127597} y {npc:127596}.\n\nUsa el {item:152890} para obtener la misión {quest:49007}.\n\n' .. Orange('Esta misión se puede compartir.')
L['ven_orn_note'] = 'Entra en la cueva de arañas, gira a la derecha, y baja dentro de otra cueva pequeña. Ella está en la 2ª cámara en la parte trasera.'

L['the_many_faced_devourer_note'] = 'Recoge un {item:152786} de {npc:126193} y {npc:126171} en el |cFFFFFD00Cementerio del Carroñero|r.\n\nRecoge un {item:152991}, un {item:152992}, y un {item:152993}.\n\nInvoca a {npc:127581} en {npc:127442}.\n\n' .. Orange('Si no puedes ver {npc:127442} puede que necesites hacer relog.')
L['the_many_faced_devourer_checklist'] = Gold('Lista de chequeo de Objetos (en bolsas o en el banco):')

L['orix_the_all_seer_note'] = 'Vende coleccionables a cambio de {item:153021}.'

L['legion_war_supplies'] = nil
L['legion_war_supplies_note'] = nil

L['options_icons_legion_war_supplies'] = nil
L['options_icons_legion_war_supplies_desc'] = nil

-------------------------------------------------------------------------------
------------------------------------ ARGUS ------------------------------------
-------------------------------------------------------------------------------

L['drops_fel_spotted_egg'] = 'Suelta un {item:153190}'
L['fel_spotted_egg_contains'] = '{item:153190} puede contener'

L['goblin_glider_treasure_note'] = 'Usa un {item:109076} para planear hasta el tesoro.'
L['lightforged_warframe_treasure_note'] = 'Activa un {item:152098} en el {npc:121365} a bordo del {npc:126426}.\n\nUsa el {item:152098} y el {spell:250434} para hacer trizas las rocas y encontrar el tesoro.'
L['lights_judgement_treasure_note'] = 'Activa la {item:151830} en el {npc:121365} a bordo del {npc:126426}.\n\nUsa la {item:151830} para explotar las rocas y encontrar el tesoro.'
L['shroud_of_arcane_echoes_treasures_note'] = 'Activa el {item:151912} en el {npc:121365} a bordo del {npc:126426}.\n\nUsa el {item:151912} para desbloquear el tesoro.\n\n' .. Red('"Sólo se abrirá a uno que ejerza el poder que se hace eco del Augari."')

-------------------------------------------------------------------------------
----------------------------------- AZSUNA ------------------------------------
-------------------------------------------------------------------------------

L['arcavellus_note'] = 'Mata las {npc:90242} y las {npc:90243} hasta que aparezca {npc:90244}.'
L['beacher_note'] = 'Cuando la misión del mundo {wq:Desembarco Helarjar: Marisma Gris} esté activa, no estará {npc:91187}.'
L['brogozog_note'] = 'Habla con {npc:91097}.'
L['chief_bitterbrine_note'] = 'En el barco, en la cubierta inferior.'
L['devious_sunrunner_note'] = 'Usa el Portal Ley en una cueva pequeña y no te de olvides despojar el cofre.'
L['doomlord_kazrok_note'] = 'Habla con {npc:91580}.'
L['felwing_note'] = 'Habla con {npc:105913} y mata {npc:105919} hasta que aparezca {npc:105938}.'
L['golza_note'] = 'Sopla el Cuerno de la Sirena y mata {npc:90774} y {npc:90778} hasta que aparezca {npc:89816}.'
L['infernal_lord_note'] = 'Haz click en el Alijo de Infernales y mata {npc:90797} hasta que aparezca el {npc:90803}.'
L['inquisitor_tivos_note'] = 'Usa el Portal de la Legión. Está en el piso inferior.'
L['shaliman_note'] = 'Camina alrededor de la piscina.'

L['disputed_treasure'] = 'Tesoro Disputado'
L['in_academy'] = 'Dentro de la Academia de Nar\'thalas.'
L['in_oceanus_cove'] = 'Dentro de Cala de Oceanus.'
L['seemingly_unguarded_treasure'] = 'Tesoro Aparentemente sin Vigilancia'
L['seemingly_unguarded_treasure_note'] = 'Intenta despojar el tesoro y entonces matar algunas oleadas de {npc:94167}.'
L['treasure_37958'] = 'En un nivel inferior del edificio.'
L['treasure_37980'] = 'Usa el Portal Ley en el puente roto.'
L['treasure_40711'] = 'Usa el Portal Ley dentro de la torre.'
L['treasure_42282'] = 'Detrás de un pilar en una esquina.'
L['treasure_42283'] = 'En el segundo piso.'
L['treasure_42287'] = 'Bajo el agua.'
L['treasure_42339'] = 'No despiertes a los osos.'

L['nightwatcher_merayl_note'] = '¡Formaciones!'

L['book_1'] = 'Libro 1 (Domingo)'
L['book_2'] = 'Libro 2 (Lunes)'
L['book_3'] = 'Libro 3 (Martes)'
L['book_4'] = 'Libro 4 (Miércoles)'
L['book_5'] = 'Libro 5 (Jueves)'
L['book_6'] = 'Libro 6 (Viernes)'
L['book_7'] = 'Libro 7 (Sábado)'

L['higher_dimensional_learning_location'] = 'Está encima de la torre.'
L['higher_dimensional_learning_note'] = 'Compra una {item:129276} de {npc:107376} en el |cFFFFFD00Palacio Derrumbado|r. Usa la {item:129276} cada día para teleportarse a una ubicación distinta de un libro.\n\nLibro 1: Domingo\nLibro 2: Lunes\nLibro 3: Martes\nLibro 4: Miércoles\nLibro 5: Jueves\nLibro 6: Viernes\nLibro 7: Sábado'
L['higher_dimensional_learning_disclaimer'] = 'Teleportarse a la ubicación de un libro no garantiza que el libro aparezca. Quizás tengas que esperar o volver más tarde.'

L['options_icons_higher_dimensional_learning'] = '{achievement:11175}'
L['options_icons_higher_dimensional_learning_desc'] = 'Muestra dónde están los libros para el logro {achievement:11175}.'

-------------------------------------------------------------------------------
-------------------------------- BROKEN SHORE ---------------------------------
-------------------------------------------------------------------------------

L['bringing_home_the_beacon_note'] = 'Mientras estés bajo el {npc:127264}, tendrás el buff {spell:240640}.\n\nMata demonios para despojar varias |cFFFFFD00Balizas del Sentinax|r.'

L['options_icons_bringing_home_the_beacon'] = '{achievement:11802}'
L['options_icons_bringing_home_the_beacon_desc'] = 'Muestra dónde aparece el {npc:127264} para el logro {achievement:11802}.'

-------------------------------------------------------------------------------
---------------------------------- DALARAN ------------------------------------
-------------------------------------------------------------------------------

-- Midnight tz per region: US=>PST, KR=>KST, EU=>CET, TW=>CST, CN=>CST
local tz = ({'PST', 'KST', 'CET', 'CST', 'CST'})[GetCurrentRegion()]

L['sheddles_chest'] = 'Cofre de Sheddle'
L['shoe_shine_kit_note'] = 'Cada noche del Sábado al Domingo a medianoche (' .. tz .. ') {npc:97003} soltará su cofre en el suelo unas horas y se irá.'
L['wand_simulated_life_note'] = 'En la mesa que hay escaleras arriba.'

L['sir_galveston_note'] = '¿Listo Sir Murkeston? ¡A luchar con gallardía!'
L['amalia_note'] = 'Mucho ladrar y poco morder.'
L['tiffany_nelson_note'] = '¡Adelante!'
L['bohdi_sunwayver_note'] = '¡Ha salido el sol! ¡Mascotas fuera!'

-------------------------------------------------------------------------------
----------------------------------- EREDATH -----------------------------------
-------------------------------------------------------------------------------

L['kaara_the_pale_note'] = '{npc:126860} ya no suelta el {item:153190}'
L['turek_the_lucid_note'] = 'En el |cFFFFFD00Derrumbe de Oronaar|r'

L['ancient_eredar_cache'] = nil
L['ancient_eredar_cache_note'] = nil
L['void_seeped_cache'] = nil
L['void_seeped_cache_note'] = nil

L['options_icons_ancient_eredar_cache'] = nil
L['options_icons_ancient_eredar_cache_desc'] = nil
L['options_icons_void_seeped_cache'] = nil
L['options_icons_void_seeped_cache_desc'] = nil

-------------------------------------------------------------------------------
-------------------------------- HIGHMOUNTAIN ---------------------------------
-------------------------------------------------------------------------------

L['odrogg_note'] = '¿Crees que puedes superar a mis caracoles?'
L['grixis_tinypop_note'] = '¡Esto va a ser fácil!'
L['bredda_tenderhide_note'] = '¡Que los más valientes resulten victoriosos!'

-------------------------------------------------------------------------------
-------------------------------- KROKUUN --------------------------------------
-------------------------------------------------------------------------------

L['eredar_war_supplies'] = nil
L['eredar_war_supplies_note'] = nil

L['options_icons_eredar_war_supplies'] = nil
L['options_icons_eredar_war_supplies_desc'] = nil

-------------------------------------------------------------------------------
--------------------------------- STORMHEIM -----------------------------------
-------------------------------------------------------------------------------

L['trapper_jarrun_note'] = 'Reúne tus defensas, mortal.'
L['robert_craig_note'] = '¡Azúzalas!'

-------------------------------------------------------------------------------
---------------------------------- SURAMAR ------------------------------------
-------------------------------------------------------------------------------

L['varenne_note'] = '¡Tengo que seguir cocinando!'
L['master_tamer_flummox_note'] = '¡Flummox no necesita mascotas! ¡Flummox se las come AHORA!'
L['aulier_note'] = 'Aprende esta lección con humlidad.'

-------------------------------------------------------------------------------
--------------------------------- VAL'SHARA -----------------------------------
-------------------------------------------------------------------------------

L['anthydas_note'] = 'Despoja el cofre del tesoro del segundo piso del edificio, junto al fregadero.'
L['elandris_note'] = 'Cuando, durante una invasión de la legión, la misión del mundo {wq:El valle tenebroso} está activa, no estará {npc:109225}.'
L['gathenak_note'] = 'Habla con {npc:112472}.'
L['gorebeak_note'] = 'Habla con {npc:92111}.'
L['jinikki_note'] = 'Habla con el {npc:93677} y mata {npc:93684} hasta que aparezca {npc:93686}.'
L['kiranys_note'] = 'Haz click en la Trampa Arcana vibrante.'
L['mad_henryk_note'] = 'Pisa la {npc:109602}.'
L['skulvrax_note'] = 'Resucita a {npc:92334} y síguela.'
L['theryssia_note'] = 'Lee la placa de la lápida de {npc:94194}.'
L['unguarded_thistleleaf_treasure'] = 'Tesoro Hojacardo sin Vigilancia'

L['in_darkpens'] = 'Dentro de Celdas Oscuras.'
L['treasure_38366'] = 'Bajo las raices del árbol.'
L['treasure_38386'] = 'En el balcón del segundo piso.'
L['treasure_38387'] = 'En una cueva pequeña debajo de la posada. La entrada está detrás del edificio.'
L['treasure_38391'] = 'Oculto detrás de un árbol.'
L['treasure_38943'] = 'Sube por las escaleras de la derecha.'
L['treasure_39069'] = 'En el balcón del segundo piso.'
L['treasure_39074'] = 'Debajo del árbol.'
L['treasure_39080'] = 'En el sótano. Necesitas empezar una cadena de misiones. Comienza con {quest:38643} dada por {npc:92688} y seguida por {quest:38644} que la da {npc:92683}.'
L['treasure_39083'] = 'Oculto en un árbol.'
L['treasure_39088'] = 'Oculto en el lago entre algunas raices.'
L['treasure_39093'] = 'En el rio bajo las raices.'

L['grumpy_note'] = 'Sube las escaleras del edificio en llamas.'

L['xorvasc_note'] = 'Soy tu peor pesadilla.'
L['durian_strongfruit_note'] = 'Si es necesario.'

-------------------------------------------------------------------------------
--------------------------------- ACROSS ZONES --------------------------------
-------------------------------------------------------------------------------

L['in_house'] = 'Dentro de la casa.'
L['in_small_cottage'] = 'En una casita pequeña.'

L['glimmering_treasure_chest'] = 'Cofre del Tesoro Reluciente'
L['small_treasure_chest'] = 'Arqueta Pequeña'
L['treasure_chest'] = 'Arqueta'
L['treasures_discovered'] = 'tesoros descubiertos'

L['general_pet_tamer_note'] = ns.color.Orange('Sólo aparece cuando la misión del mundo para él está disponible.')
