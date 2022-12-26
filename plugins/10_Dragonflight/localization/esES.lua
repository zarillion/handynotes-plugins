-- Spanish Translation by (EU) Krovikan-Minahonda
local ADDON_NAME, ns = ...
local L = ns.NewLocale('esES')
if not L then return end

-------------------------------------------------------------------------------
-------------------------------- DRAGON ISLES ---------------------------------
-------------------------------------------------------------------------------

L['elite_loot_385'] = ns.color.Orange('¡Este raro puede soltar botín de un nivel superior!')
L['gem_cluster_note'] = 'El objeto requerido se puede obtener a Renombre 21 con la Expedición Dragontina en las Mochilas de Explorador de Expedición y en las Tierras Perturbadas.'

L['options_icons_bonus_boss'] = 'Élites de Bonificación'
L['options_icons_bonus_boss_desc'] = 'Muestra dónde están los élites de bonificación.'

L['options_icons_profession_treasures'] = 'Tesoros de Profesión'
L['options_icons_profession_treasures_desc'] = 'Muestra dónde están los tesoros que garantizan conocimiento de profesión.'

L['dragon_glyph'] = 'Glifos Dracónicos'
L['options_icons_dragon_glyph'] = 'Glifos Dracónicos'
L['options_icons_dragon_glyph_desc'] = 'Muestra dónde están los 48 Glifos Dracónicos.'

L['dragonscale_expedition_flag'] = 'Expedición Dragontina'
L['flags_placed'] = 'banderas puestas'
L['options_icons_flag'] = '{achievement:15890}'
L['options_icons_flag_desc'] = 'Muestra dónde están las 20 banderas para el logro {achievement:15890}.'

L['broken_banding_note'] = 'En el tobillo del pie derecho de la estatua del dragón.'
L['chunk_of_sculpture_note'] = 'En el suelo, desde la estatua del dragón a la izquierda.'
L['dislodged_dragoneye_note'] = 'En una roca debajo del pecho de la estatua del dragón.'
L['finely_carved_wing_note'] = 'Debajo de la rodilla derecha de la estatua del dragón.'
L['fragment_requirement_note'] = ns.color.Red('Antes de poder recoger piezas sueltas, necesitas hablar con {npc:193915} en la |cFFFFFD00Embajada Reposo Alado|r en la estatua del dragón. Pregúntale qué está haciendo aquí.')
L['golden_claw_note'] = 'En la garra trasera derecha de la estatua del dragón.'
L['precious_stone_fragment_note'] = 'Debajo del pie derecho de la estatua del dragón.'
L['stone_dragontooth_note'] = 'En el suelo junto al pedestal de la estatua del dragón.'
L['tail_fragment_note'] = 'En la cola de la estatua del dragón.'
L['wrapped_gold_band_note'] = 'Debajo de la garra trasera izquierda de la estatua del dragón.'
L['options_icons_fragment'] = '{achievement:16323}'
L['options_icons_fragment_desc'] = 'Muestra dónde están las piezas sueltas para el logro {achievement:16323}.'

L['options_icons_kite'] = '{achievement:16584}'
L['options_icons_kite_desc'] = 'Muestra dónde están las {npc:198118} para el logro {achievement:16584}.'

L['disturbed_dirt'] = 'Tierra Perturbada'
L['options_icons_disturbed_dirt'] = 'Tierra Perturbada'
L['options_icons_disturbed_dirt_desc'] = 'Muestrá dónde están las Tierras Perturbadas.'

L['scout_pack'] = 'Mochilas de Explorador de Expedición'
L['options_icons_scout_pack'] = 'Mochilas de explorador de expedición'
L['options_icons_scout_pack_desc'] = 'Muestra dónde están las Mochilas de Explorador de Expedición.'

L['magicbound_chest'] = 'Cofre reforzado con magia'
L['options_icons_magicbound_chest'] = 'Cofre reforzado con magia'
L['options_icons_magicbound_chest_desc'] = 'Muestra dónde están los Cofres reforzados con magia.'

L['dr_best'] = 'Tu mejor tiempo:\n - Normal: %.3fs\n - Avanzado: %.3fs'
L['dr_best_dash'] = 'Tu mejor tiempo:\n - %.3fs'
L['dr_note'] = 'Objetivo de tiempo:\n - Normal: %ss / %ss\n - Avanzado: %ss / %ss'
L['dr_note_dash'] = 'Objetivo de tiempo:\n - %ss / %ss'
L['dr_bronze'] = '\n\nAcaba la carrera para conseguir el ' .. ns.color.Bronze('Bronce') .. '..'
L['options_icons_dragonrace'] = 'Carreras de Dragones'
L['options_icons_dragonrace_desc'] = 'Muestra dónde están las Carreras de Dragones.'

L['squirrels_note'] = 'Has de usar la emoción /amor en alimañas que no sean mascotas de combate.'
L['options_icons_squirrels'] = '{achievement:16729}'
L['options_icons_squirrels_desc'] = 'Muestra dónde están las alimañas para el logro {achievement:16729}.'

L['hnj_sublabel'] = 'Requiere Gran Cacería Shikaar local'
L['hnj_western_azure_span_hunt'] = 'Encima del árbol muerto.'
L['hnj_northern_thaldraszus_hunt'] = ns.color.Orange('Nota: Cuando comience el evento de cacería, tendrás que unirte rápidamente. Si llegas tarde, los monstruos salvajes lo habrán matado.')
L['options_icons_hemet_nesingwary_jr'] = '{achievement:16542}'
L['options_icons_hemet_nesingwary_jr_desc'] = 'Muestra dónde está {npc:194590} para el logro {achievement:16542}.'

L['pretty_neat_note'] = 'Haz una foto con la cámara S.E.L.F.I.E..'
L['pretty_neat_note_blazewing'] = 'Se puede encontrar durante el combate contra la {npc:189901} en la mazmorra ' .. ns.color.Yellow('Neltharus') .. '.'
L['options_icons_pretty_neat'] = '{achievement:16446}'
L['options_icons_pretty_neat_desc'] = 'Muestra dónde están los NPC para el logro {achievement:16446}.'

L['large_lunker_sighting'] = 'Avistamiento de Morrocotudo Grande'
L['large_lunker_sighting_note'] = 'Usa 5x {item:194701} para invocar tanto a un {npc:192919} como a un raro.'

L['options_icons_legendary_album'] = '{achievement:16570}'
L['options_icons_legendary_album_desc'] = 'Muestra dónde están los personajes legendarios para el logro {achievement:16570}.'

-------------------------------------------------------------------------------
------------------------------- THE AZURE SPAN --------------------------------
-------------------------------------------------------------------------------

L['blightfur_note'] = 'Habla con {npc:193633} para hacer aparecer al raro.'
L['brackenhide_rare_note'] = 'Estos raros aparecen en un rotación fija en el siguiente orden: {npc:197344} > {npc:197353} > {npc:197354} > {npc:197356} con una diferencia de 10 minutos.'
L['fisherman_tinnak_note'] = 'Recoge la |cFFFFFD00Caña de Pescar Rota|r, la |cFFFFFD00Red de Pescar Rota|r y el |cFFFFFD00Arpón Viejo|r para hacer aparecer al raro.'
L['frostpaw_note'] = 'Después de coger el |cFFFFFD00Martillo de Madera|r, tienes 20 segundos para golpear el |cFFFFFD00Machacagnolls|r en el |cFFFFFD00Tocón|r, y hacer aparecer al raro.'
L['sharpfang_note'] = 'Ayuda a {npc:192747} a derrotar a los {npc:192748} para hacer aparecer al raro.'
L['spellwrought_snowman_note'] = 'Consigue 10x {npc:193424} y llévaselas a {npc:193242}.'
L['trilvarus_loreweaver_note'] = 'Recoge un |cFFFFFD00Fragmento Cantarín|r para conseguir {spell:382076} y usar el |cFFFFFD00Enfoque Descargado|r para hacer aparecer al raro.'

L['breezebiter_note'] = 'Vuela por el cielo. Para atraerlo, vuela cerca suyo.'

L['forgotten_jewel_box_note'] = 'La {item:199065} se puede encontrar en las Mochilas de Explorador de Expedición y en las Tierras Perturbadas.'
L['gnoll_fiend_flail_note'] = 'Las {item:199066} se pueden encontrar en las Mochilas de Explorador de Expedición y en las Tierras Perturbadas.'
L['pepper_hammer_note'] = 'Recoge |cFFFFFD00Savia de Árbol|r y entonces usa el |cFFFFFD00Palo|r para engañar a {npc:195373}.\n\n|cFFFF0000(BUG: Para hacer click en el palo puede ser necesario recargar)|r.'
L['snow_covered_scroll'] = 'Pergamino Cubierto de Nieve'

L['pm_engi_frizz_buzzcrank'] = 'Se encuentra junto a un santuario.'
L['pm_jewel_pluutar'] = 'Dentro del edificio.'
L['pm_script_lydiara_whisperfeather'] = 'Está sentada en un banco.'
L['pt_alch_experimental_decay_sample_note'] = 'Dentro de un gran caldero verde.'
L['pt_alch_firewater_powder_sample_note'] = 'Fuera de la casa de troncos, junto a un jarrón.'
L['pt_ench_enriched_earthen_shard_note'] = 'Encima de una pila de rocas.'
L['pt_ench_faintly_enchanted_remains_note'] = 'Haz click en la |cFFFFFD00Recogida de Cristal del Sediento de Maná|r para hacer aparecer y matar a un enemigo. Después ya puedes despojar el cristal que aparece.'
L['pt_ench_forgotten_arcane_tome_note'] = 'Reposa en el suelo a la derecha de la entrada a una tumba.'
L['pt_jewel_crystalline_overgrowth_note'] = 'Junto a un charco pequeño.'
L['pt_jewel_harmonic_crystal_harmonizer_note'] = 'Haz click en el cofre para recibir un buff. Ahora haz click en los 3 cristales.'
L['pt_leath_decay_infused_tanning_oil_note'] = 'En el barril.'
L['pt_leath_treated_hides_note'] = 'En el |cFFFFFD00Campamento Nievepiel|r.'
L['pt_leath_well_danced_drum_note'] = 'En un edificio subterráneo con al {npc:186446} y la {npc:186448}. Arregla el tambor que hay junto a {npc:194862}. Una vez baile en él podrás despojar el objeto.'
L['pt_script_dusty_darkmoon_card_note'] = 'Dentro de un edificio, en el piso superior.'
L['pt_script_frosted_parchment_note'] = 'Detrás de {npc:190776}.'
L['pt_smith_spelltouched_tongs_note'] = 'Dentro de una cueva pequeña bloqueada.'
L['pt_tailor_decaying_brackenhide_blanket_note'] = 'Colgado de un árbol dentro de una tienda de campaña improvisada.'
L['pt_tailor_intriguing_bolt_of_blue_cloth_note'] = 'Sigue la escalera de la izquierda.'

L['leyline_note'] = 'Realinea la línea Ley.'
L['options_icons_leyline'] = '{achievement:16638}'
L['options_icons_leyline_desc'] = 'Muestra dónde están las líneas Ley para el logro {achievement:16638}.'

L['river_rapids_wrangler_note'] = 'Habla con {npc:186157} y selecciona "Me gustaría volver a hacer tu Carrera en los Rápidos del Río". Tienes 60 segundos para recoger 40 acumulaciones de {spell:373490}.'
L['seeing_blue_note'] = 'Vuela desde lo alto del Archivo Azur a la Galería Cobalto sin aterrizar.'
L['snowman_note'] = 'Hay tres {npc:197599} reposando en la zona (podrían haber sido movidas por otros jugadores). Hazlas rodar a los dos críos, {npc:197838} y {npc:197839}.\nConseguirás el logro cuando las bolas de nieve tengan los tamaños correctos.'

L['snowclaw_cub_note_start'] = 'Tienes que completar la cadena de misiones {quest:67094} que ofrece {npc:192522} en |cFFFFFD00Valdrakken|r para conseguir el título |cFFFFFD00Dríade Honoraria|r.\n\nReune los siguientes objetos:'
L['snowclaw_cub_note_item1'] = 'Despoja 3x {item:197744} de varios {npc:182559} alrededor de las |cFFFFFD00Orillas del Despertar|r.'
L['snowclaw_cub_note_item2'] = 'Compra 1x {item:198356} del {npc:193310} en las |cFFFFFD00Orillas del Despertar|r.'
L['snowclaw_cub_note_end'] = ns.color.Orange('Todos los objetos se pueden comprar en la casa de subastas. Es de especial ayuda si no tienes fácil acceso al {item:199215} el cual es requerido para comprar los objetos al {npc:193310}.') .. '\n\nUna vez tengas equipado el título |cFFFFFD00Dríade Honoraria|r ofrece los 4 objetos al {npc:196768} para recibir su mascota.' .. ns.color.Red('\n\nBUG: El título puede desaparecer. Pendiente de un fix.')

L['tome_of_polymoph_duck'] = 'Usa {spell:1953} para entrar en la cueva e interactuar con el libro |cFFFFFD00Tormentas de Maná para Principiantes|r para completar la misión.'

L['temperamental_skyclaw_note'] = [[
Recoge (o compra en la casa de subastas):

20x {item:201420}
20x {item:201421}
20x {item:201422}

Pregunta sobre el Astudraco Ensillado y ofrece a {npc:190892} los "platos" recogidos.
]]

L['elder_poa_note'] = 'Entrega {item:200071} para conseguir reputación con |cFFFFFD00Colmillarr de Iskaara|r.'

-------------------------------------------------------------------------------
------------------------------- FORBIDDEN REACH -------------------------------
-------------------------------------------------------------------------------

L['bag_of_enchanted_wind'] = 'Bolsa de Vientos Encantados'
L['bag_of_enchanted_wind_note'] = 'Está en lo alto de la torre.'
L['hessethiash_treasure'] = 'Tesoro Mal Escondido de Hessethiash'
L['lost_draconic_hourglass'] = 'Reloj de Arena Dracónico Perdido'
L['suspicious_bottle_treasure'] = 'Botella Sospechosa'
L['mysterious_wand'] = 'Varita Misteriosa'
L['mysterious_wand_note'] = 'Coge la |cFFFFFD00Llave de Cristal|r y ponla dentro del |cFFFFFD00Foco de Cristal|r.'

-------------------------------------------------------------------------------
------------------------------ OHN'AHRAN PLAINS -------------------------------
-------------------------------------------------------------------------------

L['eaglemaster_niraak_note'] = 'Mata a los {npc:186295} cercanos y a los {npc:186299} para hacer aparecer al raro.'
L['hunter_of_the_deep_note'] = 'Haz click en el armero y dispara a los peces hasta que aparezca el raro and shoot fish until the rare spawns.'
L['scaleseeker_mezeri_note'] = 'Ofrece {item:194681} a {npc:193224} y síguela hasta que te enseñe al raro.'
L['shade_of_grief_note'] = 'Haz click en {npc:193166} para hacer aparecer al raro.'
L['windscale_the_stormborn_note'] = 'Mata a los {npc:192367} que están canalizando en los {npc:192357}.'
L['zarizz_note'] = 'Haz click y ' .. ns.color.Orange('haz /hiss') .. ' a las cuatro {npc:193169} para invocar al raro.'

L['gold_swong_coin_note'] = 'Dentro de la cueva con {npc:191608} a su lado derecho.'
L['nokhud_warspear_note'] = 'Las {item:194540} se pueden encontrar en las Mochilas de Explorador de Expedición y en las Tierras Perturbadas.'
L['slightly_chewed_duck_egg_note'] = 'Encuentra y acaricia a {npc:192997} para conseguir el {item:195453} y entonces usarlo. Tras incubar el {item:199171} durante 3 días eclosionará en {item:199172}.'
L['yennus_boat'] = 'Barco de Juguete Tuskarr'
L['yennus_boat_note'] = 'Despoja el |cFFFFFD00Barco de Juguete Tuskarr|r para conseguir el {item:200876}, el cual comienza la misión {quest:72063} para devolvérselo a {npc:195252}.'

L['pm_ench_shalasar_glimmerdusk'] = 'En la segunda planta de la torre rota.'
L['pm_herb_hua_greenpaw'] = 'Está arrodillada junto a un árbol.'
L['pm_leath_erden'] = 'Está junto a un {npc:193092} muerto al lado del río.'
L['pt_alch_canteen_of_suspicious_water_note'] = 'Dentro de las profundidades de una cueva cerca de un {npc:194887} muerto.'
L['pt_ench_stormbound_horn_note'] = 'En el |cFFFFFD00Alto Son del Viento|r.'
L['pt_jewel_fragmented_key_note'] = 'Bajo las raíces del árbol en un edificio derrumbado.'
L['pt_jewel_lofty_malygite_note'] = 'Flotando en el aire en una cueva.'
L['pt_leath_wind_blessed_hide_note'] = 'Dentro del campamento de centauros de las |cFFFFFD00Tierras Altas de Shikaar|r.'
L['pt_script_sign_language_reference_sheet_note'] = 'Colgando en la entrada de la tienda.'
L['pt_smith_ancient_spear_shards_note'] = 'Dentro una cueva al oeste de |cFFFFFD00Trecho de Rusza\'thar|r'
L['pt_smith_falconer_gauntlet_drawings_note'] = 'En una isla en el mar, dentro de una choza.'
L['pt_tailor_noteworthy_scrap_of_carpet_note'] = 'Reposa en una choza pequeña. ' .. ns.color.Orange('3 élites en la choza')
L['pt_tailor_silky_surprise_note'] = 'Busca y despoja la |cFFFFFD00Fronda de Hierba Gatera|r.'

L['lizi_note'] = 'Completa la cadena de misiones |cFFFFFD00El día libre de la iniciada|r comenzando con {quest:65901}. Completa las misiones cada día para curar a Lizi y recibir su montura.\n\nAdemás de los objetos necesarios, todas las misiones requieren 150x {currency:2003} para un total de 750x {currency:2003}.'
L['lizi_note_day1'] = 'Recoge 20x {item:192615} de los enemigos insecto en las |cFFFFFD00Islas Dragón|r.'
L['lizi_note_day2'] = 'Recoge 20x {item:192658} de los enemigos planta en las |cFFFFFD00Islas Dragón|r.'
L['lizi_note_day3'] = 'Recoge 10x {item:194966} pescadas en cualquier masa de agua dulce en las |cFFFFFD00Islas Dragón|r. Se encuentran con más frecuencia en los interiores de las |cFFFFFD00Llanuras de Ohn\'ahra|r.'
L['lizi_note_day4'] = 'Recoge 20x {item:192636} de los mamuts de las |cFFFFFD00Llanuras de Ohn\'ahra|r.'
L['lizi_note_day5'] = 'Acepta la misión {quest:71195} de {npc:190014} y consigue 1x {item:200598} de {npc:190015} en la tienda al sur de los |cFFFFFD00Manantiales Ohn\'iri|r.'

L['ohnahra_note_start'] = 'Completa la cadena de misiones |cFFFFFD00El día libre de la iniciada|r comenzando con {quest:65901} y entonces aparecerá {npc:190022} en los |cFFFFFD00Manantiales Ohn\'iri|r detrás de la choza del sabio del viento.\n\nReúne los siguientes objetos:'
L['ohnahra_note_item1'] = 'Recoge 3x {item:201929} de los {npc:186151}, el boss final de la mazmorra |cFFFFFD00Ofensiva Nokhud|r (dificultad Heroica). No tiene un 100% de caer.'
L['ohnahra_note_item2'] = 'Compra 1x {item:201323} de {npc:196707} por 50x {currency:2003} y 1x {item:194562}.\n{item:194562} puede ser despojado de los enemigos Perdidos en el Tiempo en |cFFFFFD00Thaldrazsus|r.'
L['ohnahra_note_item3'] = 'Compra 1x {item:191507} de la Casa de Subastas. (los Alqumistas pueden comprar la {item:191588} a {npc:196707} al llegar a Renombre 22).'
L['ohnahra_note_end'] = 'Una vez con todos los objetos, vuelve a {npc:190022} y acepta {quest:72512}. Ves a {npc:194796} para entregar la misión y recibir tu montura.'

L['bakar_note'] = '¡Acaricia el perro!'
L['bakar_ellam_note'] = 'Si jugadores suficientes acarician a esta perra, os guiará a su escondite.'
L['bakar_hugo_note'] = 'Viaja con el Campamento Aylaag.'
L['options_icons_bakar'] = '{achievement:16424}'
L['options_icons_bakar_desc'] = 'Muestra dónde están todos los perros (bakar) para el logro {achievement:16424}.'

L['ancestor_note'] = 'Consigue el bufo {spell:369277} (dura 1 hora) en una tienda en la |cFFFFFD00Avanzada Pasoleño|r para ver al ancestro y ofrecerle el item requerido.'
L['options_icons_ancestor'] = '{achievement:16423}'
L['options_icons_ancestor_desc'] = 'Muestra dónde están todos los ancestros para el logro {achievement:16423}.'

L['dreamguard_note'] = 'Selecciona al Guardasueños y teclea' .. ns.color.Orange('/dormir.')
L['options_icons_dreamguard'] = '{achievement:16574}'
L['options_icons_dreamguard_desc'] = 'Muestra dónde están los Guardasueños para el logro {achievement:16574}.'

L['khadin_note'] = 'Intercambia una {item:191784} por conocimiento de la profesión.'
L['the_great_swog_note'] = 'Intercambia {item:199338}, {item:199339} y {item:199340} por un {item:202102}.'
L['hunt_instructor_basku_note'] = 'Entrega {item:200093} para conseguir reputación con |cFFFFFD00Centauros Maruuk|r.'
L['elder_yusa_note'] = nil
L['initiate_kittileg_note'] = nil

-------------------------------------------------------------------------------
--------------------------------- THALDRASZUS ---------------------------------
-------------------------------------------------------------------------------

L['ancient_protector_note'] = 'Mata a una {npc:193244} cercana para conseguir un {item:197708}. Combina 5 {item:197708} para crear un {item:197733}. Úsalo para activar los Reactores de los Titanes cercanos.'
L['blightpaw_note'] = 'Habla con el {npc:193222} y acepta ayudarle.'
L['corrupted_proto_dragon_note'] = 'Inspecciona el |cFFFFFD00Huevo de Dragón Corrupto|r para hacer aparecer al raro.'
L['lord_epochbrgl_note'] = 'Haz click en la {npc:193257} para hacer aparecer al raro.'
L['weeping_vilomah_note'] = 'Habla con {npc:193206} para invocar al raro.'
L['woofang_note'] = 'Acaricia al {npc:193156} para hacer aparecer al raro.'

L['acorn_harvester_note'] = 'Recoge una |cFFFFFD00Bellota|r del suelo cercano para conseguir {spell:388485} y entonces interactúa con {npc:196172}.\n\n|cFFFF0000(BUG: Para poder hacer click en el {npc:196172} puede ser necesario un reload)|r.'
L['cracked_hourglass_note'] = 'La {item:199068} se puede encontrar en las Mochilas de Explorador de Expedición y en las Tierras Perturbadas.'
L['sandy_wooden_duck_note'] = 'Recoge el {item:199069} y úsalo.'

L['tasty_hatchling_treat_note'] = 'En un barril detrás de la librería.'

L['pm_mining_bridgette_holdug'] = 'Encima de un pilar de roca cubierto de hierba.'
L['pm_tailor_elysa_raywinder'] = 'En una repisa a media altura de la torre.'
L['pt_alch_contraband_concoction_note'] = 'Escondido en los arbustos. ' .. ns.color.Orange('Difícil de ver')
L['pt_alch_furry_gloop_note'] = 'Deja a un {npc:194855} cercano dentro de cada caldera y mata al monstruo que aparecerá.'
L['pt_ench_fractured_titanic_sphere_note'] = 'Al Sur de |cFFFFFD00Tyrhold|r.'
L['pt_jewel_alexstraszite_cluster_note'] = 'En |cFFFFFD00Tyrhold|r.'
L['pt_jewel_painters_pretty_jewel_note'] = 'Dentro de una lámpara.'
L['pt_leath_decayed_scales_note'] = 'Dentro de una cesta.'
L['pt_script_counterfeit_darkmoon_deck_note'] = 'Habla con {npc:194856} y ofrécete a ayudarla a recoger su |cFFFFFD00Colección de la Luna Negra|r esparcida a sus pies. Haz click en las cartas en el orden correcto (del As al 8). Después habla con ella de nuevo para conseguir la colección.'
L['pt_script_forgetful_apprentices_tome_note'] = 'Encima de la mesa cercana a un gran telescopio.'
L['pt_script_how_to_train_your_whelpling_note'] = 'Pequeño libro marrón tirado en la caja de arena.'
L['pt_smith_draconic_flux_note'] = 'Dentro de un edificio.'
L['pt_tailor_ancient_dragonweave_bolt_note'] = 'Haz click en el |cFFFFFD00Telar de Tejido de Dragón Ancestral|r para completar un minijuego donde has de conectar los carretes de hilo a la gema central.'
L['pt_tailor_miniature_bronze_dragonflight_banner_note'] = 'Bandera pequeña dentro de una pila de arena.'

L['picante_pomfruit_cake_note'] = '{item:200904} no está disponible todos los días. Tendrás que comprobarlo cada día en el |cFF00CCFFEnclave Rubí|r. Mientras estás allí, asegúrate de probar los 3 platos disponibles para completar también el logro {achievement:16556}.'
L['icecrown_bleu_note'] = 'Cómpraselo a {npc:196729} ' .. ns.color.NPC('<Vendedor de quesos>') .. ' en el |cFF00CCFFMercado de los Artesanos|r.'
L['dreamwarding_dripbrew_note'] = 'Cómpraselo a {npc:197872} ' .. ns.color.NPC('<Cafeinamante>') .. ' en el |cFFFFFD00Laboratorio Nocturno|r.'
L['arcanostabilized_provisions_note'] = 'Cómpraselo a {npc:198831} ' .. ns.color.NPC('<Chef jefa>') .. ' en la |cFF00CCFFConfluencia Temporal|r en |cFF00CCFFEl Futuro Primalista|r.'
L['steamed_scarab_steak_note'] = 'Cómpraselo a {npc:197586} ' .. ns.color.NPC('<Camarera de la sauna>') .. ' en la |cFFFFFD00Sauna de Sueños Serenos|r.'
L['craft_creche_crowler_note'] = 'Cómpraselo a {npc:187444} ' .. ns.color.NPC('<Vendedora ambulante de bebidas dracónicas>') .. ' en un mapa aleatorio cada día: |cFFFFFD00Vitasagrario Rubí|r, |cFFFFFD00Posada de la Escama Verde|r, |cFFFFFD00Campamento Desubicado|r, |cFFFFFD00Confluencia Temporal|r.'
L['bivigosas_blood_sausages_note'] = 'Cómpraselo a {npc:188895} ' .. ns.color.NPC('<Alimentos y bebidas>') .. ' en el |cFFFFFD00Puesto Gelikyr|r.'
L['options_icons_specialties'] = '{achievement:16621}'
L['options_icons_specialties_desc'] = 'Muestra dónde están las comidas y bebidas para el logro {achievement:16621}.'

L['new_perspective_note'] = 'Haz una foto con la cámara S.E.L.F.I.E. al paisaje. La localización se marcará con un círculo violeta claro tan pronto como estés en el modo de cámara.\n\nSi no se te marca en el logro, cambia tu perspectiva.'
L['options_icons_new_perspective'] = '{achievement:16634}'
L['options_icons_new_perspective_desc'] = 'Muestra dónde están los paisajes para el logro {achievement:16634}.'

L['ruby_feast_gourmand'] = 'Cada día, un invitado chef al azar sirve distintos platos y bebidas.'

L['sorotis_note'] = 'Entrega {item:199906} para conseguir reputación con |cFFFFFD00Acuerdo de Valdrakken|r.'

-------------------------------------------------------------------------------
------------------------------ THE WAKING SHORE -------------------------------
-------------------------------------------------------------------------------

L['brundin_the_dragonbane_note'] = 'El Destacamento de Guerra Qalashi viaja encima del {npc:192737} a esta torre.'
L['captain_lancer_note'] = 'Aparece inmediatamente después de completar el evento {spell:388945}.'
L['enkine_note'] = 'Mata a {npc:193137}, {npc:193138} o {npc:193139} a lo largo del rio de lava para consesguir {item:201092}. Úsalas y pesca cerca de la {npc:191866} en la lava.'
L['lepidoralia_note'] = 'Está en la |cFFFFFD00Caverna del Aleteo|r. Ayuda al {npc:193342} a coger {npc:193274} hasta que aparezca el raro.'
L['obsidian_citadel_rare_note'] = 'Tú y otros jugadores teneis que devolver un total de %dx {item:191264} a %s. Para fabricar una llave necesitarás combinar 30x {item:191251} y 3x {item:193201}. Puedes conseguir estos objetos de los enemigos de la |cFFFFFD00Ciudadela Obsidiana|r.'
L['shadeslash_note'] = 'Haz click en el |cFFFFFD00Foco Birlado|r para hacer aparecer al raro.'
L['obsidian_throne_rare_note'] = 'Dentro del |cFFFFFD00Trono Obsidiana|r.'
L['skald_impaler_note'] = 'Usa 5x {item:194701} para invocar al raro.'
L['slurpo_snail_note'] = 'Despoja un {item:201033} de una cueva en |cFFFFFD00Las Tierras Azures|r (11, 41) y úsalo en esta cueva para invocar al raro.'
L['worldcarver_atir_note'] = 'Recoge 3x {item:191211} del {npc:187366} cercano y ponlos en los {npc:197395} para hacer aparecer al raro.'

L['bubble_drifter_note'] = 'La {item:199061} se puede encontrar en las Mochilas de Explorador de Expedición y en las Tierras Perturbadas.'
L['dead_mans_chestplate_note'] = 'Dentro de la torre. En el piso central.'
L['fullsails_supply_chest_note'] = 'La llave la sueltan los {npc:187971} y los {npc:187320} al sur de la |cFFFFFD00Embajada Reposo Alado|r.'
L['golden_dragon_goblet_note'] = 'Despoja la {item:202081} del {npc:190056} en la |cFFFFFD00Costa Indómita|r y completa la pequeña cadena de misiones.'
L['misty_treasure_chest_note'] = 'Ponte en {npc:185485} que sobresale de la cascada para entrar en la cueva.'
L['onyx_gem_cluster_note'] = 'A Renombre 21 con la Expedición Dragontina se puede completar la misión {quest:70833} para conseguir el {item:200738} como recompensa (una vez por cuenta) o comprar el mapa a {npc:189065} por 3 {item:192863} y 500 {currency:2003} y usarlo.'
L['torn_riding_pack_note'] = 'Está encima de la cascada.'
L['yennus_kite_note'] = 'Bloqueada en una rama en lo alto del árbol.'

L['fullsails_supply_chest'] = 'Cofre de Suministros Todavela'
L['hidden_hornswog_hoard_note'] = [[
Recoge tres objetos distintos y combínalos para crear el |cFFFFFD00"Acertijo de observador: Una Guía de Campo"|r junto al {npc:192362} para conseguir el {item:200063} y alimentarlo. Se moverá fuera del camino y podrás despojar su tesoro.

{item:200064}
{item:200065}
{item:200066}
]]

L['pm_alch_grigori_vialtry'] = 'En una repisa con vistas al |cFFFFFD00Asalto Raudoescarcha|r.'
L['pm_skin_zenzi'] = 'Sentada junto al ro.'
L['pm_smith_grekka_anvilsmash'] = 'Reposa en la hierba al lado de la torre en ruinas.'
L['pt_alch_frostforged_potion_note'] = 'En el centro del cráter helado.'
L['pt_alch_well_insulated_mug_note'] = 'En la |cFFFFFD00Fortaleza de Ruinadragón|r entre varios enemigos élite.'
L['pt_ench_enchanted_debris_note'] = 'Usa y sigue a la {npc:194872} para despojar los escombros al final.'
L['pt_ench_flashfrozen_scroll_note'] = 'Dentro del sistema de cuevas del |cFFFFFD00Enclave Raudoescarcha|r.'
L['pt_ench_lava_infused_seed_note'] = 'En una flor en el |cFFFFFD00Castillo Quiebrascama|r.'
L['pt_engi_boomthyr_rocket_note'] = 'Recoge los objetos listados en las |cFFFFFD00Notas sobre Cohetes Bumthyr|r:\n\n{item:198815}\n{item:198817}\n{item:198816}\n{item:198814}\n\nUna vez con todos, devuélvelos al cohete para recibir el tesoro.'
L['pt_engi_intact_coil_capacitor_note'] = 'Interactúa con los tres |cFFFFFD00Cable Expuesto|r para arreglar y despojar la |cFFFFFD00Bobina Tesla Sobrecargada|r.'
L['pt_jewel_closely_guarded_shiny_note'] = 'Gema azul debajo de un árbol que hay junto a un nido.'
L['pt_jewel_igneous_gem_note'] = 'Haz click rápidamente en los 3 cristales de las islas pequeñas dentro del magma.'
L['pt_leath_poachers_pack_note'] = 'Junto a un Vulpera muerto junto al cauce del río.'
L['pt_leath_spare_djaradin_tools_note'] = 'Junto a un dragón rojo muerto.'
L['pt_script_pulsing_earth_rune_note'] = 'Detrás de una mesa que hay dentro del edificio derrumbado.'
L['pt_smith_ancient_monument_note'] = 'Derrota a los 4 {npc:188648} rodeando una espada en un pedestal.\n\n|cFFFF0000(BUG: Actualmente, tras hacer click en la espada no tendrás el objeto en el inventario. En lugar de eso, se te enviará al buzón de correo tras algo de tiempo.)|r'
L['pt_smith_curious_ingots_note'] = 'Pequeño lingote en el suelo en el |cFFFFFD00Castillo Quiebrascama|r.'
L['pt_smith_glimmer_of_blacksmithing_wisdom_note'] = 'Fabrica una {item:189541} cerca de la |cFFFFFD00Forja a Medio Apagar|r. El objeto en la |cFFFFFD00Tina Floja|r se convertirá en despojable.'
L['pt_smith_molten_ingot_note'] = 'Patea 3 lingotes dentro de la lava para hacer aparecer a un enemigo. Despoja el cofre una vez lo hayas derrotado.'
L['pt_smith_qalashi_weapon_diagram_note'] = 'Encima de un yunque.'
L['pt_tailor_itinerant_singed_fabric_note'] = 'Un trozo de tela colgando de unos árboles justo fuera de la cueva donde aparece el boss final. ' .. ns.color.Orange('Requiere precisión montando dragones o un portal de brujo')
L['pt_tailor_mysterious_banner_note'] = 'Revoloteando por encima de los edificios.'

L['quack_week_1'] = 'Semana 1'
L['quack_week_2'] = 'Semana 2'
L['quack_week_3'] = 'Semana 3'
L['quack_week_4'] = 'Semana 4'
L['quack_week_5'] = 'Semana 5'
L['lets_get_quacking'] = 'Sólo puedes rescatar un {npc:187863} a la semana.'

L['complaint_to_scalepiercer_note'] = 'Haz click en la |cFFFFFD00Tablilla de Piedra|r que hay dentro de la choza (en el lado izquierdo de la parte de atrás).'
L['grand_flames_journal_note'] = 'Haz click en la |cFFFFFD00Tablilla de Piedra|r de fuera detrás de la choza.'
L['wyrmeaters_recipe_note'] = 'Haz click en la |cFFFFFD00Tablilla de Piedra|r que hay dentro de la choza (en el lado izquierdo).'

L['options_icons_ducklings'] = '{achievement:16409}'
L['options_icons_ducklings_desc'] = 'Muestra dónde están los patitos para el logro {achievement:16409}.'
L['options_icons_chiseled_record'] = '{achievement:16412}'
L['options_icons_chiseled_record_desc'] = 'Muestra dónde están las tablillas para el logro {achievement:16412}.'

L['grand_theft_mammoth_note'] = 'Monta el {npc:194625} hacia el {npc:198163}.\n\n|cFFFF0000(BUG: Si no puedes interactuar con el {npc:194625} haz /reload.)|r'
L['options_icons_grand_theft_mammoth'] = '{achievement:16493}'
L['options_icons_grand_theft_mammoth_desc'] = 'Muestra dónde están los {npc:194625} para el logro {achievement:16493}.'

L['options_icons_stories'] = '{achievement:16406}'
L['options_icons_stories_desc'] = 'Muestra dónde están las misiones para el logro {achievement:16406}.'
L['all_sides_of_the_story_garrick_and_shuja_note'] = 'Comienza la cadena de misiones y escucha la historia de la {npc:184449} y de {npc:184451}.'
L['all_sides_of_the_story_duroz_and_kolgar_note'] = 'En una habitación pequeña debajo de la plataforma.\n\nComienza la cadena de misiones y escucha la historia de {npc:194800} y de {npc:194801}. En las siguientes dos semanas se desbloquearán más misiones.'
L['all_sides_of_the_story_tarjin_note'] = 'Comienza la cadena de misiones con {quest:70779}.\n{npc:196214} te contará otra historia cada semana.'
L['all_sides_of_the_story_veritistrasz_note'] = 'Comienza la misión {quest:70132} para escuchar las historias de {npc:194076}.\nDespués, desbloquearás la misión {quest:70134} seguida de {quest:70268}.\n\nPara la última misión necesitarás {item:198661} que podrás encontrar dentro de la ' .. ns.color.Yellow('Fortaleza de Ruinadragón') .. '.'

L['slumbering_worldsnail_note1'] = [[
1. Despoja 3x {item:193201} y 30x {item:191251} de los enemigos de alrededor de la |cFFFFFD00Ciudadela Obsidiana|r para formar una {item:191264}.

2. Intercambia la {item:191264} por un {item:200069} a {npc:187275}.

3. Hay un 30% de posibilidades de que el alijo contenga un {item:199215}.

4. Usar el título de miembro te otorgará el debuff {spell:386848} que te permitirá farmear {item:202173} alrededor de la |cFFFFFD00Ciudadela Obsidiana|r.

5. Recoge 1000x {item:202173} para comprar el {item:192786}.]]

L['slumbering_worldsnail_note2'] = ns.color.Orange('Note: Si mueres perderás el debuff de membresía. Compre un nuevo título de miembro a {npc:193310} por 20x {item:202173} antes de morir o necesitarás entregar más llaves para la oportunidad de sacar un título de miembro del alijo.')

L['magmashell_note'] = 'Despoja {item:201883} de los {npc:193138} alrededor de la |cffffff00Ciudadela Obsidiana|r y llévaselo al {npc:199010}.\n\n' .. ns.color.Orange('Haciendo click en el caracol se canalizará un hechizo durante 20 segundos después de lo cuales conseguirás la montura. Muy recomendable traer a un amigo sanador o usar el juguete {item:200116}.')

L['otto_note_start1'] = 'Consigue unas {item:202042}. Las gafas tienen un 100% de probabilidades de salir del {item:202102} que puede ser comprado a {npc:191608} en las |cFFFFFD00Llanuras de Ohn\'ahra|r.\n\nEl saco se puede comprar con 1x {item:199340} la cual puede ser comprada con 5x {item:199339} que éstas se pueden comprar por 75x {item:199338}. A su vez, estas últimas se pueden pescar alrededor de las |cFFFFFD00Islas Dragón|r o derrotando a enemigos |cFFFFFD00<Morrocotudo>|r en los nodos de pesca.'
L['otto_note_start2'] = ns.color.Orange('Derrotar enemigos |cFFFFFD00<Morrocotudo>|r requiere Renombre 7 con |cFFFFFD00Colmillarr de Iskaara|r y acceso al {item:194510}.')
L['otto_note_start3'] = 'Una vez con las {item:202042} ves al bar subacuático |cFFFFFD00El Baño de Burbujas|r en la |cFFFFFD00Gruta Siseante|r y quédate de pie en la plataforma de baile que hay al lado de la barra hasta conseguir el debuff {spell:396539}. Cuando el debuff se acabe te desmayarás y despertarás junto a un barril. Interactúa con él para despojar el {item:202061}. Ahora necesitas llenar el barril con peces para alimentar a {npc:199563}.'
L['otto_note_item1'] = 'Recoge 100x {item:202072}, un pez con probabilidad alta de ser pescado en las aguas abiertas de |cFFFFFD00Iskaara|r en las |cFFFFFD00Tierras Azures|r. Usar el barril con los peces te dará un {item:202066}.'
L['otto_note_item2'] = 'Recoge 25x {item:202073}, un pez con probabilidad rara de ser pescado en la lava alrededor de la |cFFFFFD00Ciudadela Obsidiana|r en las |cFFFFFD00Orillas del Despertar|r. Usar el barril con los peces te dará un {item:202068}.'
L['otto_note_item3'] = 'Recoge 1x {item:202074}, un pez con probabilidad rara de ser pescado en las aguas cerca de |cFFFFFD00Academia Algeth\'ar|r en |cFFFFFD00Thaldraszus|r. Usar el barril con los peces te dará un {item:202069}.'
L['otto_note_end'] = 'Vuelve a la |cFFFFFD00Gruta Siseante|r en las |cFFFFFD00Orillas del Despertar|r y deja el barril donde lo encontrastes para invocar a {npc:199563} y ¡recibir tu montura!'

L['options_icons_safari'] = '{achievement:16519}'
L['options_icons_safari_desc'] = 'Muestra dónde están las mascotas de combate para el logro {achievement:16519}.'
L['shyfly_note'] = 'Has de estar en la misión {quest:70853} para poder ver las {npc:189102}.'

L['cataloger_jakes_note'] = 'Entrega {item:192055} para conseguir reputación con |cFFFFFD00Expedición Dragontina|r.'
