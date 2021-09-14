-- Spanish Translation by (EU) Krovikan-Minahonda
local ADDON_NAME, ns = ...
local L = ns.NewLocale('esES')
if not L then return end

-------------------------------------------------------------------------------
-------------------------------- ACROSS ZONES ---------------------------------
-------------------------------------------------------------------------------

L['edge_of_reality'] = 'Acantilado de la Realidad'
L['edge_of_reality_note'] = ns.color.Yellow('Edge of Reality') .. ' el portal te llevará a otro sitio, donde podrás despojar la {item:121815}.'
L['treasures_discovered'] = 'tesoros descubiertos'
L['strange_spore_treasure'] = 'Espora Extraña'
L['multiple_spawn_note'] = 'Puede aparecer en varios sitios.'

-------------------------------------------------------------------------------
----------------------------------- GORGROND ----------------------------------
-------------------------------------------------------------------------------

L['poundfist_note'] = 'Tiene una reaparición larga de entre 50 y 90 horas.'
L['trophy_of_glory_note'] = 'Has de acabar de construir tu Edificio de Avanzada de la Ciudadela en Gorgrond para conseguir que caigan los objetos de misión.'
L['roardan_sky_terror_note'] = 'Vuela alrededor de Madreselva y de Avanzada de las Bestias haciendo 3 paradas en el camino.'

L['explorer_canister_treasure'] = 'Bote de Explorador'
L['discarded_pack_treasure'] = 'Paquete Desechado'
L['ockbars_pack_treasure'] = 'Bolsa de Ockbar'
L['stashed_emergency_rucksack_treasure'] = 'Mochila de Emergencia Oculta'
L['strange_looking_dagger_treasure'] = 'Daga de Apariencia Rara'
L['remains_of_balik_orecrusher_treasure'] = 'Restos de Balik Machacamenas'
L['odd_skull_treasure'] = 'Calavera Extraña'
L['sashas_secret_stash_treasure'] = 'Alijo Secreto de Sasha'
L['vindicators_hammer_treasure'] = 'Martillo de Vindicador'
L['remains_if_balldir_deeprock_treasure'] = 'Restos de Balldir Rocabismal'
L['brokors_sack_treasure'] = 'Bolsa de Brokor'
L['suntouched_spear_treasure'] = 'Lanza Toquesol'
L['warm_goren_egg_treasure'] = 'Huevo de Goren Caliente'
L['weapons_cache_treasure'] = 'Alijo de Armas'
L['petrified_rylak_egg_treasure'] = 'Huevo de Rylak Petrificado'
L['snipers_crossbow_trerasure'] = 'Ballesta de Francotirador'
L['iron_supply_chest_treasure'] = 'Cofre de Suministros de la Horda de Hierro'
L['horned_skull_treasure'] = 'Cráneo Cornudo'
L['evermorn_supply_cache_treasure'] = 'Alijo de Suministros Sol Eterno'
L['harvestable_precious_crystal_treasure'] = 'Cristal Precioso Recolectable'
L['femur_of_improbability_treasure'] = 'Fémur de Improbabilidad'
L['laughing_skull_cache_treasure'] = 'Alijo Riecráneos'
L['pile_of_rubble_treasure'] = 'Montón de Escombros'
L['ninja_pepe_treasure'] = 'Pepe Ninja'
L['attack_plans_treasure'] = 'Órdenes de Ataque de la Horda de Hierro'
L['laughing_skull_note'] = 'Encima del árbol.'
L['warm_goren_egg_note'] = 'El {item:118705} tras incubar 7 días se convierte en {item:118716}.'
L['ninja_pepe_note'] = 'Sentado en una silla que hay dentro de la choza.'

L['options_icons_attack_plans'] = '{achievement:9656}'
L['options_icons_attack_plans_desc'] = 'Muestra los sitios dónde están los Planes de Ataque de la Horda de Hierro para {achievement:9656}.'

-------------------------------------------------------------------------------
------------------------------------ TALADOR ----------------------------------
-------------------------------------------------------------------------------

L['wandering_vindicator_note'] = 'Tras derrotarlo, has de recoger la espada que hay junto a una piedra.'
L['legion_vanguard_note'] = '{npc:88494} se invoca desde el portal. Mata {npc:83023} alrededor del portal around portal y a cualquiera, hasta que lo convoquen.'
L['taladorantula_note'] = 'Aplasta sacos de huevos y mata {npc:75258} de alrededor hasta que se invoque a {npc:77634}. Tarda unos 3 o 5 minutos aplastando.'
L['shirzir_note'] = 'Debajo, en la Tumba de Almas.'
L['kharazos_galzomar_sikthiss_note'] = '{npc:78710}, {npc:78713} y {npc:78715} comparten el mismo botín, lugar de aparición y camino.'
L['orumo_the_observer_note'] = [[
{npc:87668} requiere que 5 personas se posicionen en las runas para poder invocarlo y matarlo.

Alternativamente, los Brujos pueden usar {spell:48020} y los Monjes {spell:119996} para teleportarse a las runas, lo que reduce el número de personas requeridas a 3.

Otra opción es usar 5 de tus propios personajes, moverlos de uno en uno a las runas y desconectarlos ahí.

La última opción es usar sólo un personaje. Ves a la runa, enciéndela, telepórtate fuera y repite con cada runa. Lo mejor es tener la {item:6948} lo más cercana posible.

Se pueden combinar cualquiera de los métodos anteriores para invocar a {npc:87668}.
]]

-------------------------------------------------------------------------------
--------------------------------- TANAAN JUNGLE -------------------------------
-------------------------------------------------------------------------------

L['deathtalon_note'] = ns.color.Red('Señor de las Sombras Iskar grita: ¡Tras el velo, todo lo que encontraréis es muerte!')
L['doomroller_note'] = ns.color.Red('Maestra de asedio Mar\'tak grita: ¡Ja ja! ¡Pisotead sus cuerpos!')
L['terrorfist_note'] = ns.color.Red('Frogan grita: ¡Un gronito enorme va hacia el Refugio Rangari! ¡Vamos a necesitar ayuda!')
L['vengeance_note'] = ns.color.Red('Tyrana Velhari grita: ¡Los insectos merecen ser aplastados!')
L['iron_armada_note'] = 'Este juguete también se puede comprar en la AH y hace falta para {achievement:10353}.'
L['commander_kraggoth_note'] = 'Encima de la torre al noreste.'
L['grannok_note'] = 'Encima de la torre al sureste.'
L['szirek_the_twisted_note'] = 'Captura el Puesto Fortificado del Este para invocar a {npc:93001}.'
L['the_iron_houndmaster_note'] = 'Captura el Puesto Fortificado del Oeste para invocar al {npc:92977}.'
L['belgork_thromma_note'] = 'Esta cueva tiene 2 entradas.'
L['driss_vile_note'] = 'Encima de la torre.'
L['overlord_magruth_note'] = 'Mata los orcos de alrededor para hacerlo aparecer.'
L['mistress_thavra_note'] = 'En el piso superior de una cueva.'
L['dorg_the_bloody_note'] = 'Mata al {npc:89706} y a los otros enemigos en el sitio donde aparece.'
L['grand_warlock_netherkurse_note'] = 'Mata a enemigos alrededor del lugar de aparición.'
L['ceraxas_note'] = 'Aparece el {npc:90426} con la misión {quest:38428} para la mascota tras matar al {npc:90434}.'
L['commander_orgmok_note'] = 'Trota alrededor subido en {npc:89676}.'
L['rendrak_note'] = 'Recoge 10 {item:124045} de los {npc:89788} alrededor del pantano. Combínalas para invocar a {npc:92627}.'
L['akrrilo_note'] = 'Compra un {item:124093} a {npc:92805} y úsalo en la Arena de los Colmillo Negro en Fang\'rila.'
L['rendarr_note'] = 'Compra un {item:124094} a {npc:92805} y úsalo en la Arena de los Colmillo Negro en Fang\'rila.'
L['eyepiercer_note'] = 'Compra un {item:124095} a {npc:92805} y úsalo en la Arena de los Colmillo Negro en Fang\'rila.'
L['the_night_haunter_note'] = [[
Consigue 10 acumulaciones del debuff {spell:183612}.

El debuff se consigue usando {npc:92651} o siendo encontrando por {npc:92645} (100% de probabilidades).
]]
L['xemirkol_note'] = [[
Compra un {item:128502} o un {item:128503} a {npc:95424} y úsalo en el lugar de aparición para ser teleportado a {npc:96235}.

Los cristales te teleportan a un raro aleatorio cercano, así que lo mejor es matar a {npc:92887} y usar un {item:128502}.

{npc:96235} tiene un contador de reapación largo (alrededor de 1 día) y la mejor forma de conseguirlo es tras el reinicio de servidores o saltando de reino.
]]

L['discarded_helm_treasure'] = 'Yelmo Desechado'
L['weathered_axe_treasure'] = 'Hacha Deteriorada'
L['axe_of_the_weeping_wolf_treasure'] = 'Hacha del Lobo Sollozante'
L['sacrificial_blade_treasure'] = 'Hoja de Sacrificio'
L['crystallized_essence_of_the_elements_treasure'] = 'Esencia de los Elementos Cristalizada'
L['snake_charmers_flute_treasure'] = 'Flauta de Encantador de Serpientes'
L['lodged_hunting_spear_treasure'] = 'Lanza de Caza Atascada'
L['looted_mystical_staff_treasure'] = 'Bastón Místico Despojado'
L['the_blade_of_kranak_treasure'] = 'El Filo de Kra\'nak'
L['forgotten_champions_blade_treasure'] = 'Filo de Campeón Olvidado'
L['rune_etched_femur_treasure'] = 'Fémur con Runas Grabadas'
L['book_of_zyzzix_treasure'] = 'Libro de Zyzzix'
L['the_commanders_shield_treasure'] = 'Escudo del Comandante'
L['scouts_belongings_treasure'] = 'Pertenencias de Explorador'
L['polished_crystal_treasure'] = 'Cristal Pulido'
L['strange_sapphire_treasure'] = 'Zafiro Extraño'
L['censer_of_torment_treasure'] = 'Incensario de Tormento'
L['overgrown_relic_treasure'] = 'Reliquia Desmesurada'
L['jewel_of_hellfire_treasure'] = 'Joya de Fuego Infernal'
L['skull_of_the_mad_chief_treasure'] = 'Cráneo del Jefe Loco'
L['jeweled_arakkoa_effigy_treasure'] = 'Efigie Arakkoa con Joyas'
L['tome_of_secrets_treasure'] = 'Escrito de Secretos'
L['the_perfect_blossom_treasure'] = 'La Flor Perfecta'
L['brazier_of_awakening_treasure'] = 'Blandón de Despertar'
L['dazzling_rod_treasure'] = 'Vara Deslumbrante'
L['crystallized_fel_spike_treasure'] = 'Púa Vil Cristalizada'
L['fel_drenched_satchel_treasure'] = 'Cartera Envilecida'
L['the_eye_of_grannok_treasure'] = 'El Ojo de Grannok'
L['borrowed_enchanted_spyglass_treasure'] = 'Catalejo Encantado \'Prestado\''
L['bleeding_hollow_mushroom_stash_treasure'] = 'Alijo de Champiñones de los Foso Sangrante'
L['mysterious_corrupted_obelist_treasure'] = 'Obelisco Corrupto Misterioso'
L['spoils_of_war_treasure'] = 'Botín de Guerra'
L['stolen_captains_chest_treasure'] = 'Cofre del Capitán Robado'
L['bleeding_hollow_warchest_treasure'] = 'Cofre de Guerra de los Foso Sangrante'
L['looted_bleeding_hollow_treasure_treasure'] = 'Tesoro de los Foso Sangrante Despojado'
L['partially_mined_apexis_crystal_treasure'] = 'Cristal Apexis Parcialmente Extraído'
L['pale_removal_equipment_treasure'] = 'Equipo de Eliminación de Pálidos'
L['stashed_iron_sea_booty_treasure'] = 'Botín del Mar de Hierro Oculto'
L['ironbeards_treasure_treasure'] = 'Tesoro de Barbaférrea'
L['forgotten_sack_treasure'] = 'Saco Olvidado'
L['blackfang_island_cache_treasure'] = 'Alijo de la Isla Colmillo Negro'
L['fel_tainted_apexis_formation_treasure'] = 'Formación Apexis Contaminada de Energía Vil'
L['jewel_of_the_fallen_star_treasure'] = 'Joya de la Estrella Caída'
L['forgotten_shard_of_the_cipher_treasure'] = 'Fragmento de la Clave Olvidado'
L['strange_fruit_treasure'] = 'Fruta Extraña'
L['stashed_bleeding_hollow_loot_treasure'] = 'Botín de los Foso Sangrante Oculto'
L['forgotten_iron_horde_supplies_treasure'] = 'Suministros de la Horda de Hierro Olvidados'
L['bejeweled_egg_treasure'] = 'Huevo con Joyas'
L['dead_mans_chest_treasure'] = 'Cofre de un Hombre Muerto'
L['the_commanders_shield_note'] = 'Dentro del edificio.'
L['the_eye_of_grannok_note'] = 'En el segundo piso de la torre cerca de las escaleras.'
L['tower_chest_note'] = 'Encima de una torre.'
L['spoils_of_war_note'] = 'Dentro de la cabaña.'
L['strange_fruit_note'] = 'La {item:127396} tras incubar 14 days se convierte en {item:127394}.'
