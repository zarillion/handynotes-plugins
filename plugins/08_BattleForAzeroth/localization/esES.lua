--Spanish Localization by (EU) Krovikan-Minahonda

local ADDON_NAME, ns = ...
local L = LibStub("AceLocale-3.0"):NewLocale(ADDON_NAME, "esES", false, true)
if not L then return end

-------------------------------------------------------------------------------
----------------------------------- DRUSTVAR ----------------------------------
-------------------------------------------------------------------------------

L["ancient_sarco_note"] = "Abre el Sarcófago Antiguo para invocar oleadas de {npc:128181}."
L["beshol_note"] = "Abre el Cofre Claramente Seguro para invocar a {npc:129805}."
L["cottontail_matron_note"] = "Haz click en el Cráneo del Ritual Bestial para invocar a {npc:129904}."
L["gluttonous_yeti_note"] = "Esta {npc:127979} está condenada ..."
L["seething_cache_note"] = "Abre el Alijo Hirviente para invocar oleadas de {npc:129031}."
L["the_caterer_note"] = "Usa el Pastel de Boda Arruinado para invocar a {npc:139358}."
L["vicemaul_note"] = "Haz click en la {npc:127652} para pescar a {npc:127651}."

L["merchants_chest_note"] = "Mata al {npc:137468} cercano que sostiene un llavero para conseguir la {item:163710} para poder abrir el cofre."
L["wicker_pup_note"] = [[
Enciende las {npc:143609} apagadas para activar el cofre. Combina los objetos de los cuatro cofres para crear un {npc:143189}.

• Embrujado: {item:163790}
• Encantado: {item:163796}
• Hechizado: {item:163791}
• Maldito: {item:163789}
]]

local runebound = "Activa los {npc:143688} en el orden mostrado en las placas de metal detrás del cofre:\n\n"
L["runebound_cache_note"] = runebound.."Izquierda -> Abajo -> Arriba -> Derecha"
L["runebound_chest_note"] = runebound.."Izquierda -> Derecha -> Abajo -> Arriba"
L["runebound_coffer_note"] = runebound.."Derecha -> Arriba -> Izquierda -> Abajo"

-- NOTE: These quotes (and for trainers in other zones) were taken from the quotes
-- for this NPC on Wowhead. If no quotes were listed, I started a battle with the NPC
-- and jotted down the opening line. Adds a little flavor to the tooltips.
L["captain_hermes_note"] = "¡Sí! ¡Poder crustáceo!"
L["dilbert_mcclint_note"] = "Hola, mi nombre es {npc:140461}, el Gestor de Infecciones. Siempre es agradable luchar contra otro entusiasta de las arañas."
L["fizzie_spark_note"] = "¿Piensas que tus mascotas tienen alguna oportunidad contra mi equipo imbuido por la Azerita? ¡Eso desearías!"
L["michael_skarn_note"] = "Sólo recuerda cómo empezamos esta batalla, tú pedistes esto."

L["linda_deepwater_note"] = "Para poder acceder, debes haber completado la cadena de misiones de {npc:136458} justo fuera de Calacualquiera."

-------------------------------------------------------------------------------
----------------------------------- MECHAGON ----------------------------------
-------------------------------------------------------------------------------

L["avenger_note"] = "Cuando {npc:155254} esté en Pernoóxido, mata al {npc:151159} que corre por toda la zona para hacer aparecer al {npc:151296}."
L["beastbot_note"] = "Fabrica un {item:168045} en {npc:150359} para activar a la {npc:151933}."
L["cogstar_note"] = "Mata {npc:154213} en cualquier sitio de la zona hasta que {npc:153228} se teleporte a ayudarlos."
L["crazed_trogg_note"] = "Usa un Roboespray, una vejiga llena de pintura, o un robot pintador en el Vertedero de Bondo para vestirte del color que grita {npc:152569}."
L["deepwater_note"] = "Fabrica un {item:167649} en {npc:150359} para invocar a {npc:151569}."
L["doppel_note"] = "Junto a otros dos jugadores, ha de usar cada uno una {item:169470} para activar a {npc:155060}. La {item:169470} se consigue de la misión diaria {daily:56405}."
L["foul_manifest_note"] = "Activa el disyuntor y conecta los tres cables con los tres pilones del agua para invocar a la {npc:151202}."
L["furor_note"] = "Durante la misión diaria {daily:55463}, haz click en las pequeñas setas azules hasta que aparezca {npc:151884}."
L["killsaw_note"] = "Aparece en cualquier sitio del bosque al oeste de la isla donde hayan {npc:151871} cortando árboles. Has de matarlos para que aparezca {npc:152007} para vengarlos. Los {npc:151871} no aparecen los días que esté Ventura y Cía en el bosque."
L["leachbeast_note"] = "Usa una {item:168961} que sueltan los enemigos de Depósito Trastovatio para activar la Máquina de alteración climática. Esto hará que llueva y que comiencen a aparecer {npc:151745}. Tras matar a varios saldrá {npc:152764}"
L["nullifier_note"] = [[
Piratea el {npc:152174} usando uno de estos objetos:

• Una tarjeta perforada {item:168435} despojada de {npc:151625}.

• Un {item:168023} despojado de los enemigos que atacan a las tuneladoras JD41 y JD99.
]]
L["scrapclaw_note"] = "Cerca de la orilla bajo el agua (82.3 77.9) aparece {npc:155583}."
L["sparkqueen_note"] = "{npc:153000} sólo aparece cuando la misión diaria {daily:55765} está activa."
L["rusty_note"] = "Fabrica un {item:169114} en {npc:150359} para ir al futuro alternativo. {npc:154225} sólo aparece cuando {npc:153993} NO está presente en Pernoóxido."
L["vaultbot_note"] = "Kitea al {npc:150394} hasta la bobina tesla en el Vertedero de Bondo o fabrica una {item:167062} en {npc:150359} para abrirlo."

L["iron_chest"] = "Arcón de los Marea de Hierro"
L["mech_chest"] = "Cofre mecanizado"
L["msup_chest"] = "Cofre de Suministros Mecanizados"
L["rust_chest"] = "Cofre Oxidado Viejo"
L["iron_chest_note"] = "Ábrelo con la {item:169872} que sueltan los enemigos de Rocío del Oeste."
L["msup_chest_note"] = "Ábrelo con la {item:169873} que sueltan los enemigos de Rocío del Oeste."
L["rust_chest_note"] = "Ábrelo con la {item:169218} que sueltan los enemigos de Rocío del Oeste."

L["rec_rig_note"] = "Para activar el modo difícil, has de usar el arma {spell:292352} para convertir todos los {npc:150825} en {npc:151049}. Las mascotas {npc:154904} y {npc:155579} se puede obtener en ambas dificultades."

L["grease_bot_note"] = "Haz click en el robot para conseguir 5% de celeridad y 10% de velocidad de movimiento durante 2 horas."
L["shock_bot_note"] = "Haz click en el robot para conseguir un proc de poder hacer daño a enemigos cercanos durante 2 horas."
L["welding_bot_note"] = "Haz click en el robot para aumentar la vida y la sanación recibida un 10% durante 2 horas."

L["options_icons_mech_buffs"] = "Buff de Robots"
L["options_icons_mech_buffs_desc"] = "Muestra las localizaciones de los robots de grasa, descargas y soldador en el mapa estando dentro de la mazmorra."
L["options_icons_mech_chest"] = "Cofres Mecanizados"
L["options_icons_mech_chest_desc"] = "Muestra las localizaciones de los cofres mecanizados. Hay 10 cofres únicos que pueden ser despojados una vez al día y cada cofre tiene 4-5 puntos de aparición. Las localizaciones están agrupadas por color."
L["options_icons_locked_chest"] = "Cofres Cerrados"
L["options_icons_locked_chest_desc"] = "Muestra las localizaciones de los cofres cerrados en Rocío del Oeste."
L["options_icons_recrig"] = "Equipo de Recuperación"
L["options_icons_recrig_desc"] = "Muestra la localización del {npc:150448} y sus recompensas."

-------------------------------------------------------------------------------
----------------------------------- NAZJATAR ----------------------------------
-------------------------------------------------------------------------------

L["naz_intro_note"] = "Completa la cadena de misiones instroductoria para desbloquear los raros, los tesoros y las misiones del mundo en Nazjatar."

L["alga_note"] = "CUIDADO: ¡{npc:152415} está invisible tras algunos {npc:145337}!"
L["allseer_note"] = "Aparece en cualquier sitio de la parte inferior de Kal'methir."
L["anemonar_note"] = "Para activar a {npc:152566} mata la {npc:150467} enfrente suyo."
L["avarius_note"] = "Usa la {item:167012} para recoger y colocar los cristales de colores en sus pedestales para invocar a {npc:150191}. ¡No necesitas ser minero!"
L["banescale_note"] = "Tiene una pequeña posibilidad de aparecer de inmediato tras matar a {npc:152359}."
L["elderunu_note"] = "Aparece en cualquier sitio en la parte superior de Kal'methir."
L["gakula_note"] = "Espanta a otro sitio a los {npc:152275} hasta que aparezca {npc=152323}."
L["glimmershell_note"] = "Tiene una pequeña posibilidad de aparecer en lugar de {npc:152426}."
L["kelpwillow_note"] = "Para activar a {npc:152567} llévale una {npc:154725} usando en ella un {item:167893}."
L["lasher_note"] = "Planta una {item:166888} en el suelo y aliméntala con moscas hasta que aparezca el {npc:149653}."
L["matriarch_note"] = "{npc:152542}, {npc:152548} y {npc:152545} comparten entre sí el tiempo de aparición."
L["needle_note"] = "Normalmente aparece en la zona de la Puerta de la Reina."
L["oronu_note"] = "Para activar a {npc:152397} invoca la mascota {npc:154849}."
L["rockweed_note"] = "Mata a todos los {npc:152549} y al {npc:151166} de la zona hasta que aparezca el {npc:150583}. Se recomienda un grupo de banda ya que esto puede requerir mucho tiempo."
L["sandcastle_note"] = "Usa una {item:167077} para revelar todos los cofres de la zona hasta que aparezca {npc:151870}."
L["tidelord_note"] = "Mata a los tres {npc:145326} y al {npc:153999} que ellos invocan hasta que aparezca {npc:153928} o {npc:153898}."
L["tidemistress_note"] = "Haz click en los huevos de Espécimen Inalterado hasta que aparezca {npc:154148}."
L["urduu_note"] = "Para activar a {npc:152568} mata enfrente suyo a un {npc:152563}."
L["voice_deeps_notes"] = "Usa un {item:168161} para romper la barrera de rocas y acceder a {npc:151719}."
L["vorkoth_note"] = "Lanza la {item:167059} dentro del charco de {npc:152472} hasta que aparezca {npc:150468}."
L["area_spawn"] = "Aparece en los alrededores."
L["cora_spawn"] = "Aparece en cualquier sitio del Bosque Coral."
L["cave_spawn"] = "Aparece en una cueva."
L["east_spawn"] = "Aparece en cualquier sitio de la mitad este de la zona."
L["ucav_spawn"] = "Aparece en una cueva bajo el agua."
L["zone_spawn"] = "Aparece por toda la zona."

L["supply_chest"] = "Cofre de Suministros de Guerra"
L["assassin_looted"] = "despojado mientras eres un asesino."

L["arcane_chest"] = "Cofre Arcano"
L["glowing_chest"] = "Valija Arcana Resplandeciente"
L["arcane_chest_01"] = "Bajo algunas algas."
L["arcane_chest_02"] = "Dentro del edificio subiendo las escaleras."
L["arcane_chest_03"] = "En el segundo piso."
L["arcane_chest_04"] = "En el agua en la parte superior de la cascada."
L["arcane_chest_05"] = "En las ruinas."
L["arcane_chest_06"] = "" -- in the open
L["arcane_chest_07"] = "Al final de la cueva. La entrada está en Marisma de Zanj'ir."
L["arcane_chest_08"] = "Escondido debajo de algunas estrellas de mar."
L["arcane_chest_09"] = "En una cueva detrás del {npc:154914}."
L["arcane_chest_10"] = "Debajo de un caparazón decolorado."
L["arcane_chest_11"] = "Sobre una colina."
L["arcane_chest_12"] = "En la parte superior de una cascada."
L["arcane_chest_13"] = "En la cima del acantilado, detrás de un árbol."
L["arcane_chest_14"] = "Dentro del Templo de Elun'alor."
L["arcane_chest_15"] = "En el lado derecho del edificio."
L["arcane_chest_16"] = "En una cueva debajo del agua."
L["arcane_chest_17"] = "En la parte superior de una cascada."
L["arcane_chest_18"] = "En una cueva justo debajo del camino."
L["arcane_chest_19"] = "En la parte superior del arco rocoso. Usa un planeador."
L["arcane_chest_20"] = "En la parte superior de una montaña."
L["glowing_chest_1"] = "Al final de una cueva bajo el agua. Defiende el pilón."
L["glowing_chest_2"] = "Descruza los cables."
L["glowing_chest_3"] = "Al final de una cueva. Defiende el pilón."
L["glowing_chest_4"] = "Alinea 3 runas rojas."
L["glowing_chest_5"] = "En una cueva. Defiende el pilón."
L["glowing_chest_6"] = "Descruza los cables."
L["glowing_chest_7"] = "Alinea 4 runas azules."
L["glowing_chest_8"] = "Sobre el tejado. Defiende el pilón."

L["slimy_cocoon"] = "Crisálida babosa"
L["ravenous_slime_note"] = "Alimenta a una {npc:151782} con una alimaña usando un {item:167893}. Repetir durante cinco días hasta que aparezca una Crisálida Babosa con una mascota en su interior. La babosa se habrá ido hasta el próximo reinicio semanal."
L["slimy_cocoon_note"] = "¡Una mascota está lista para ser recogida de la Crisálida! Si no te aparece, la Crisálida está en reutilización en tu fase. Cambia de fase o vuelve a comprobar más tarde."

L["cat_figurine"] = "Figurillas de Gato Cristalinas"
L["cat_figurine_01"] = "En una cueva bajo el agua. La Figurilla está en el suelo cuando la cueva se hace grande."
L["cat_figurine_02"] = "En una cueva debajo de la cascada cercana. La Figurilla está debajo de una estrella de mar en la pared."
L["cat_figurine_03"] = "En una cueva bajo el agua. La Figurilla está escondida debajo de algunas conchas rotas."
L["cat_figurine_04"] = "En una cueva bajo el agua. La Figurilla está en el suelo cuando la cueva se hace grande."
L["cat_figurine_05"] = "En una cueva pequeña. La Figurilla está escondida detrás de una planta del suelo."
L["cat_figurine_06"] = "En una cueva bajo el agua llena de {npc:152559} hostiles. La Figurilla está en la pared."
L["cat_figurine_07"] = "En una cueva pequeña. La Figurilla está en la pared entre algunos corales."
L["cat_figurine_08"] = "En una cueva pequeña. Esquiva las áreas arcanas. La Figurilla está encima de una roca alta en la parte trasera."
L["cat_figurine_09"] = "En una cueva bajo el agua. La Figurila está en la parte superior del arco rocoso por el techo."
L["cat_figurine_10"] = "En una cueva justo debajo del camino. La Figurilla está entre los tres barriles."
L["figurines_found"] = "Figurilla de Cristal Encontrada"

L["mardivas_lab"] = "Laboratorio de Mardivas"
L["no_reagent"] = "Sin ingredientes"
L["swater"] = "Agua Inferior"
L["gwater"] = "Agua Superior"
L["sfire"] = "Fuego Inferior"
L["gfire"] = "Fuego Superior"
L["searth"] = "Tierra Inferior"
L["gearth"] = "Tierra Superior"
L["tentacle_taco"] = "Vende {item:170100} si llevas puesto el {item:169489}."

L["options_icons_slimes_nazj"] = "Babas Voraces"
L["options_icons_slimes_nazj_desc"] = "Muestra las localizaciones de las cuatro Babas Voraces que producen mascotas al ser alimentadas."
L["options_icons_cats_nazj"] = "Figurillas de Gato"
L["options_icons_cats_nazj_desc"] = "Muestra las localizaciones de las figurillas de gato para el logro {achievement:13836}."
L["options_icons_misc_nazj"] = "Miscelánea"
L["options_icons_misc_nazj_desc"] = "Muestra la localización de la cueva de Murloco y el Laboratorio de Mardivas."

-------------------------------------------------------------------------------
------------------------------------ NAZMIR -----------------------------------
-------------------------------------------------------------------------------

L["captain_mukala_note"] = "Intenta abrir el Cofre Maldito para invocar a {npc:125232}."
L["enraged_water_note"] = "Examina el {npc:134295} para invocar al {npc:134294}."
L["lucille_note"] = "Habla con {npc:134297} para invocar a {npc:134296}."
L["offering_to_bwonsamdi_note"] = "Corre al árbol cercano y salta dentro de la estructura rota."
L["shambling_ambusher_note"] = "Intenta abrir el {npc:124473} para activar al {npc=124475}."
L["zaamar_note"] = "Dentro de las Catacumbas de la Necrópolis, entrada al sur, te encontrarás con {npc:129657}."

L["grady_prett_note"] = "¡Tiempo de luchar y caer! ¡Hagámoslo!"
L["korval_dark_note"] = "Este lugar es escalofriante, hagamos un combate rápido."
L["lozu_note"] = "Luchemos con honor, extrangero."

L["tales_bwonsamdi_note"] = "En el pilar destruido."
L["tales_hireek_note"] = "Un Pergamino en la mesa."
L["tales_kragwa_note"] = "En la pared destruida."
L["tales_torga_note"] = "Bajo el agua de un pilar destruido."

L["carved_in_stone_41860"] = "Dentro de un edificio destruido cerca de la montaña."
L["carved_in_stone_41861"] = "En el pilar destruido."
L["carved_in_stone_41862"] = "En la pared destruida, enfrente del pilar grandioso."
L["carved_in_stone_42116"] = "En el pilar que hay al lado del {npc:126126}."
L["options_icons_carved_in_stone"] = "Tallada en Piedra"
L["options_icons_carved_in_stone_desc"] = "Muestra las localizaciones de las pictografías para el logro {achievement:13024}."

L["hoppin_sad_53419"] = "Detrás de dos árboles bajo una raíz enorme."
L["hoppin_sad_53420"] = "En las ruinas."
L["hoppin_sad_53424"] = "En un acantalido."
L["hoppin_sad_53425"] = "En el árbol cerca de la cascada."
L["hoppin_sad_53426"] = "Bajo algunas raices."

L["options_icons_hoppin_sad"] = "Tristeza Saltarina"
L["options_icons_hoppin_sad_desc"] = "Muestra las localizaciones de los {npc:143317} para el logro {achievement:13028}."

-------------------------------------------------------------------------------
------------------------------- STORMSONG VALLEY ------------------------------
-------------------------------------------------------------------------------

L["in_basement"] = "En el sótano."
L["jakala_note"] = "Habla con {npc:140925}."
L["nestmother_acada_note"] = "Inspecciona el Nido de Acada para hacer aparecer a la {npc:138963}."
L["sabertron_note"] = "Mata al {npc:139334} para activar uno de los {npc:139328}."
L["whiplash_note"] = "Sólo aparece cuando la misión {wq:Trallazo} está activa."

L["discarded_lunchbox_note"] = "Dentro del edificio encima de la estantería más alta."
L["hidden_scholars_chest_note"] = "Encima del techo del edificio."
L["honey_vat"] =  "Tanque de Miel"
L["smugglers_stash_note"] = "En el agua debajo de la plataforma."
L["sunken_strongbox_note"] = "En el agua debajo del barco."
L["venture_co_supply_chest_note"] = "Sube por la escalerilla a la cubierta del barco."
L["weathered_treasure_chest_note"] = "En una cueva oculta. Tiene tres entradas, todas escondidas detrás de un grupo de árboles."

L["curious_grain_sack"] = "Saco de Grano Curioso"
L["small_treasure_chest"] = "Cofre del Tesoro Pequeño"
L["small_treasure_51927"] = "En el edificio debajo de las escaleras."
L["small_treasure_51940"] = "En el edificio."

L["eddie_fixit_note"] = "¡Prepárate para enfrentarte a mi equipo inderrotable de robots altamente modificados y personalizados!"
L["ellie_vern_note"] = "He encontrado las criaturas marinas más duras del mundo para luchar por mi, no tienes ni una oportunidad."
L["leana_darkwind_note"] = "Sospecho que las raras criaturas de esta isla harán un combate extraño."

L["honeyback_harvester_note"] = "Habla con {npc:155193} para empezar el evento. El Depósito de Jalea Fresca puede ser despojado una vez a la hora y se restablece pasada una hora."
L["options_icons_honeybacks"] = "Cosechadora Mielabdomen"
L["options_icons_honeybacks_desc"] = "Muestra las localizaciones del evento de la Cosechadora Mielabdomen para el farmeo de la reputación Colmena Mielabdomen."

local luncheon = (UnitFactionGroup('player') == 'Alliance') and '{npc:138221} en Brennadam' or '{npc:138096} en Fuerte Guerracolmillo'
L["these_hills_sing_note"] = "Abre {item:160485} aquí. Cómpraselo a "..luncheon.." o despoja uno del tesoro \"Fiambrera desechada\" en Brennadam."

L["ancient_tidesage_scroll"] = "Pergamino Antiguo de Sabiomar"
L["ancient_tidesage_scroll_note"] = "Lee los 8 Pergamino Antiguo de Sabiomar para conseguir el logro."
L["options_icons_tidesage_legends"] = "Leyendas de los Sabiomar"
L["options_icons_tidesage_legends_desc"] = "Muestra las localizaciones de los pergaminos antiguos para el logro {achievement:13051}."

L["long_forgotten_rum_note"] = "Para entrar en la cueva debe haberse completado la misión {quest:50697} de {npc:134710} en Ribera Inerte. También lo vende {npc:137040} en Drustvar."

-------------------------------------------------------------------------------
------------------------------- TIRAGARDE SOUND -------------------------------
-------------------------------------------------------------------------------

L["honey_slitherer_note"] = "Habla con {npc:137176} para invocar al {npc:137183}."
L["tempestria_note"] = "Inspecciona el Montón de Carne Sospechosa para invocar a {npc:133356}."
L["twin_hearted_note"] = "Molesta a la Efigie Ritual para activar el ensamblaje."
L["wintersail_note"] = "Destruye el Alijo de Contrabandista para invocar al capitán."

L["hay_covered_chest_note"] = "Monta al {npc:130350} camino abajo hasta {npc:131453} para hacer aparecer el tesoro."
L["pirate_treasure_note"] = [[
Requiere el mapa del tesoro correspondiente.

Los mapas caen de cualquier pirata de Kul Tiras. Fuerte Libre (mundo abierto) es un buen lugar para matar piratas.
]]

local damp_note =  "\n\nLee los cinco pergaminos para ganar acceso al tesoro."

L["damp_scroll"] = "Un Pergamino Húmedo"
L["damp_scroll_note_1"] = "Entrada en Monasterio Canto Tormenta."..damp_note
L["damp_scroll_note_2"] = "En el suelo de un sótano detrás del {npc:136343}."..damp_note
L["damp_scroll_note_3"] = "En el suelo del piso de arriba junto al {npc:136343}."..damp_note
L["damp_scroll_note_4"] = "En el suelo de un sótano junto al {npc:136343}."..damp_note
L["damp_scroll_note_5"] = "En una esquina bajo el malecón."..damp_note
L["ominous_altar"] = "Altar Agorero"
L["ominous_altar_note"] = "Habla con el Altar Agorero para ser teleportado al tesoro."
L["secret_of_the_depths_note"] = "Lee los cinco Pergaminos Húmedos, y entonces habla con el Altar Agorero para ser teleportado al tesoro."

L["burly_note"] = "Estos pequeños son muy extraños, pero seguro que pegan muy duro. ¿Estás seguro de querer empezar este combate?"
L["delia_hanako_note"] = "Antes de que empecemos, sólo te quiero recordar que no te sientas muy mal cuando mi equipo aniquile al tuyo."
L["kwint_note"] = "Una persona contra un tiburón, quizás sea una pelea justa. ¿Una persona contra tres? Estás loco."

L["upright_citizens_node"] = [[
Uno de los tres NPCs de debajo aparecerá cada vez que la misión de asalto {wq:Una brigada de ciudadanos no demasiado sobrios} esté activa.

• {npc:146295}
• {npc:145107}
• {npc:145101}

Recluta a cada uno para conseguir el logro. Durante varios asaltos hará falta comprobar la zona, la misión del mundo y que el NPC correcto esté activo.
]]
L["options_icons_upright_citizens"] = "Ciudadanos ejemplares"
L["options_icons_upright_citizens_desc"] = "Muestra las localizaciones de los NPC para el logro {achievement:13285}."

-------------------------------------------------------------------------------
------------------------------------ ULDUM ------------------------------------
-------------------------------------------------------------------------------

L["uldum_intro_note"] = "Completa la cadena de misiones introductorias para desbloquear los raros, tesoros y misiones de asalto en Uldum."

L["aqir_flayer"] = "Comparte lugar de aparición con {npc:163114} y {npc:154365}."
L["aqir_titanus"] = "Comparte lugar de aparición con {npc:154353}."
L["aqir_warcaster"] = "Comparte lugar de aparición con {npc:154352}."
L["atekhramun"] = "Aplasta los {npc:152765} hasta que aparezca {npc:152757}."
L["chamber_of_the_moon"] = "Subterráneo en la Cámara de la Luna."
L["chamber_of_the_stars"] = "Subterráneo en la Cámara de las Estrellas."
L["chamber_of_the_sun"] = "Subterráneo en la Cámara del Sol."
L["dunewalker"] = "Para poder atacarle hay que quitarle el escudo de inmunidad. Para ello, en la plataforma de encima haz click en la Esencia del Sol."
L["friendly_alpaca"] = "Alimenta a la alpaca con {item:174858} siete veces para aprenderla como montura. Aparece durante 10 minutos en una localización, después tiene un largo tiempo de reaparición."
L["gaze_of_nzoth"] = "Comparte lugar de reaparición con {npc:156890}."
L["gersahl_note"] = "Alimenta a una {npc:162765} siete veces para una montura. No requiere Herboristería."
L["gersahl"] = "Arbusto Gershal"
L["hmiasma"] = "Atrae {npc:158703} y {npc:160625} al círculo azul donde está {npc:160623} para alimentarle. Cuando haya crecido lo suficiente se activará."
L["kanebti"] = "Recoge {item:168160} haciendo click en {npc:152427}, los cuales comparten lugar de aparición con los {npc:151859} normales. Inserta la Figurilla en el Altar del Escarabajo para invocar a {npc:152431}."
L["right_eye"] = "Te da la mitad derecha del juguete {item:175140}."
L["neferset_rare"] = "Los seis raros comparten los tres lugares de aparición en Neferset. Tras completar un número de veces el evento del Ritual de Invocación, aparecerán tres raros aleatorios."
L["platform"] = "Aparece encima de la plataforma flotante."
L["single_chest"] = "¡Este cofre aparece sólo en una localización! Si no está aquí, espera un poco y aparecerá."
L["tomb_widow"] = "Para invocarlo: cuando los sacos de huevos blancos están presentes por los pilares, mata las arañas invisibles."
L["uatka"] = "Junto con otros dos jugadores más, haced click al mismo tiempo en el {npc:152777}. Requiere que cada uno tenga un {item:171208} de un Relicario Amathet."
L["wastewander"] = "Comparte lugar de aparición con {npc:154369}."

L["amathet_cache"] = "Alijo Amathet"
L["black_empire_cache"] = "Alijo del Imperio Negro"
L["black_empire_coffer"] = "Arca del Imperio Negro"
L["infested_cache"] = "Alijo Infestado"
L["infested_strongbox"] = "Caja fuerte Infestada"
L["amathet_reliquary"] = "Relicario Amathet"

L["options_icons_assault_events"] = "Eventos del Asalto"
L["options_icons_assault_events_desc"] = "Muestra las localizaciones de los posibles eventos del asalto."
L["options_icons_coffers"] = "Alijos Cerrados"
L["options_icons_coffers_desc"] = "Muestra las localizaciones de los alijos cerrados (despojables una vez por asalto)."

L["ambush_settlers"] = "Mata oleadas de enemigos hasta que acabe el evento."
L["burrowing_terrors"] = "Salta encima de los {npc:162073} para aplastarlos."
L["call_of_void"] = "Haz click para purificar el Pilón de Ritual."
L["combust_cocoon"] = "Lanza las bombas de fuego a las crisálidas del techo."
L["dormant_destroyer"] = "Haz click en todos los cristales de {npc:162194}."
L["executor_nzoth"] = "Mata el {npc:157680} y, entonces, destruye el {npc:157738}."
L["hardened_hive"] = "Coge el {spell:317550} y quema todos los sacos de huevos."
L["in_flames"] = "Coge los cubos de agua y apaga las llamas."
L["monstrous_summon"] = "Mata a todos los {npc:160914} para parar la invocación."
L["obsidian_extract"] = "Destruye los cristales de {npc:162088}."
L["purging_flames"] = "Recoge los cuerpos y tíralos al fuego."
L["pyre_amalgamated"] = "Limpia la pira y mata todas las amalgamas hasta que aparezca la {npc:157593}."
L["ritual_ascension"] = "Mata a todos los {npc:152233}."
L["solar_collector"] = "Enciende los cinco cristales de poder en todos los lados del Recolector. Haciendo click en un cristal enciendes o apagas todos los cristales que están a su lado."
L["summoning_ritual"] = "Mata a los acólitos y cierra el portal de invocación. Tras completar el evento cierto número de veces, aparecerán tres raros aleatorios aldrededor de Neferset."
L["titanus_egg"] = "Destruye el {npc:163257} y mata al {npc:163268}."
L["unearthed_keeper"] = "Destruye el {npc:156849}."
L["virnall_front"] = "Mata oleadas de enemigos hasta que aparezca {npc:152163}."
L["voidflame_ritual"] = "Apaga todas las velas tocadas por el Vacío."

L["beacon_of_sun_king"] = "Gira los rayos de las tres estatuas hacia el orbe."
L["engine_of_ascen"] = "Mueve las cuatro estatuas hasta interceptar los rayos."
L["lightblade_training"] = "Mata {npc:156637} y {npc:152196} hasta que aparezca {npc:152197}."
L["raiding_fleet"] = "Quema todos los botes usando la antorcha de la misión."
L["slave_camp"] = "Abre todos las jaulas cercanas."
L["unsealed_tomb"] = "Protege a {npc:152439} de las oleadas de enemigos."

-------------------------------------------------------------------------------
------------------------------------ VALE -------------------------------------
-------------------------------------------------------------------------------

L["vale_intro_note"] = "Completa la cadena de misiones introductorias para desbloquear los raros, tesoros y misiones de asalto en el Valle de la Flor Eterna."

L["big_blossom_mine"] = "Está dentro de la Mina de la Gran Flor. La entrada está al noreste."
L["guolai"] = "Está dentro de las Salas Guo-Lai."
L["guolai_left"] = "Está dentro de las Salas Guo-Lai (pasillo de la izquierda)."
L["guolai_center"] = "Está dentro de las Salas Guo-Lai (pasillo central)."
L["guolai_right"] = "Está dentro de las Salas Guo-Lai (pasillo de la derecha)."
L["pools_of_power"] = "Está dentro de las Pozas de Poder. La entrada está por La Pagoda Dorada."
L["left_eye"] = "Te da la mitad izquierda del juguete {item:175140}."
L["tisiphon"] = "Haz click en la Caña de pescar de la suerte de Danielle."

L["ambered_cache"] = "Alijo ámbar"
L["ambered_coffer"] = "Arca de ámbar"
L["mogu_plunder"] = "Botín mogu"
L["mogu_strongbox"] = "Caja fuerte mogu"

L["abyssal_ritual"] = "Mata a los {npc:153179} y después a la {npc:153171}."
L["bound_guardian"] = "Mata a los tres {npc:154329} y libera a la {npc:154328}."
L["colored_flames"] = "Coge las llamas coloreadas de sus antorchas y llévalas a las runas de su color."
L["construction_ritual"] = "Pon la estatua del tigre en el rayo."
L["consuming_maw"] = "Haz click en Tentáculos y Tumores Corruptos hasta que te saque fuera."
L["corruption_tear"] = "Coge la {spell:304670} y cierra la {npc:156472} sin dejar que los ojos giratorios te golpeen."
L["electric_empower"] = "Mata a los {npc:153095} y después a {npc:156549}."
L["empowered_demo"] = "Cierra todos los relicarios de espíritus."
L["empowered_wagon"] = "Coge las {npc:156300} y colócalas bajo el {npc:158037}."
L["feeding_grounds"] = "Destruye las cámaras de suspensión y los receptáculos de ámbar."
L["font_corruption"] = "Gira las estatuas de los Mogu hasta que ambos rayos lleguen a cada lado de la consola. Entonces, haz click en ella."
L["goldbough_guardian"] = "Protege al {npc:156623} de las oleadas de enemigos."
L["infested_statue"] = "Arranca los {npc:157532} hasta llevarlos a 15 metros de la estatua."
L["kunchong_incubator"] = "Destruye todos los generadores del campo de fuerza."
L["mantid_hatch"] = "Coge los {spell:305301} y destruye las incubadoras de larvas."
L["mending_monstro"] = "Destruye los cristales de {npc:157552}."
L["mystery_sacro"] = "Haz click en todas las Lápidas Sospechosas y mata al {npc:157298}."
L["noodle_cart"] = "Defiende a {npc:157615} mientras arregla su carro."
L["protect_stout"] = "Protege la cueva de las oleadas de enemigos."
L["pulse_mound"] = "Mata los tentáculos y ojos de alrededor y entonces, mata al {npc:157529}."
L["ravager_hive"] = "Destruye todas las colmenas del árbol."
L["ritual_wakening"] = "Mata a los {npc:157942}."
L["serpent_binding"] = "Mata los {npc:157345} y después a {npc:157341}."
L["stormchosen_arena"] = "Mata todos los enemigos de la arena y después al General del Clan."
L["swarm_caller"] = "Destruye el pilón {npc:157719}."
L["vault_of_souls"] = "Haz click en la urna y destruye todas las estatuas."
L["void_conduit"] = "Haz click en el {npc:162194} y aplasta los ojos del suelo hasta que te saque fuera."
L["war_banner"] = "Quema los estandartes y mata oleadas de enemigos hasta que aparezca el comandante."
L["weighted_artifact"] = "Coge el Jarrón Extrañamente Pesado y vuelve por donde has venido para ponerlo en el Artefacto Mogu Pesado. Si te atonta una estatua se te caerá el Jarrón Extrañamente Pesado."

-------------------------------------------------------------------------------
----------------------------------- VISIONS -----------------------------------
-------------------------------------------------------------------------------

L["colored_potion"] = "Poción Coloreada"
L["colored_potion_note"] = [[
La poción junto al cuerpo de %s siempre indica el color de la poción de efectos negativos de la visión en curso.

El color de la poción de +100 de cordura se puede saber por el color de esta poción (|cFFFF0000bad|r => |cFF00FF00good|r):

Negro => Verde
Azul => Violeta
Verde => Rojo
Violeta => Negro
Rojo => Azul
]]

L["bear_spirit_note"] = "Mata el {npc:160404} y todas las oleadas de enemigos para conseguir un buff de 10% de celeridad."
L["buffs_change"] = "Los buffs disponibles cambian en cada pasada. Si el edificio está cerrado o el NPC/objeto no está, es que el buff no está en esa pasada."
L["clear_sight"] = "Requiere {spell:307519} rango %d."
L["craggle"] = "Deja un juguete en el suelo (como el {item:44606}) para distraerlo mientras sus robots siguen patrullando. Cuando estén suficientemente separados, mata los robots y después a {npc:158284}."
L["empowered_note"] = "Atraviesa el laberinto de minas hasta el piso superior y súbete encima de la {npc:161324} para conseguir un buff de 10% de daño incrementado."
L["enriched_note"] = "Mata al {npc:161293} para conseguir un buff de 10% de crítico."
L["ethereal_essence_note"] = "Mata a {npc:161198} para conseguir un buff de 10% de crítico."
L["ethereal_note"] = "Consigue cristales naranjas escondidos a lo largo de la visión y llévaselos a {npc:162358} para conseguir Recuerdos adicionales. Hay un total de 10 cristales, 2 en cada zona.\n\n|cFF00FF00¡No olvides despojar el cofre!|r"
L["heroes_bulwark_note"] = "Mata a {npc:158588} dentro de la taberna para conseguir un buff de 10% de vida."
L["inside_building"] = "Dentro de un edificio."
L["mailbox"] = "Buzón de Correos"
L["mail_muncher"] = "Cuando se abre, existe la probabilidad de que aparezca el raro {npc:160708}."
L["odd_crystal"] = "Cristal Extraño"
L["requited_bulwark_note"] = "Mata a {npc:157700} para conseguir un buff de 7% de versatilidad."
L["shave_kit_note"] = "Dentro de la peluquería. Despoja la caja que hay encima de la mesa."
L["smiths_strength_note"] = "Mata a {npc:158565} en la choza de la herrería  para conseguir un buff de 10% de daño incrementado."
L["spirit_of_wind_note"] = "Mata a {npc:161140} para conseguir un buff de 10% de celeridad y de velocidad de movimiento."
L["void_skull_note"] = "Haz click en la calavera del suelo para despojar el juguete."

L["c_alley_corner"] = "En una esquina del callejón."
L["c_bar_upper"] = "En el piso superior de la taberna."
L["c_behind_bank_counter"] = "En el banco, tras el mostrador del fondo."
L["c_behind_boss"] = "En el edificio de refugiados que hay detrás del boss."
L["c_behind_boxes"] = "En la esquina, detrás de unas cajas."
L["c_behind_cart"] = "Detrás de un carro destruido."
L["c_behind_house_counter"] = "En la casa, detrás del mostrador."
L["c_behind_mailbox"] = "Detrás del buzón de correos."
L["c_behind_pillar"] = "Escondido detrás de un pilar que hay detrás del edificio de la embajada."
L["c_behind_rexxar"] = "Escondido detrás del edificio de {npc:155098}, por la parte derecha."
L["c_behind_stables"] = "Detrás de los establos donde peleas contra el {npc:158157}."
L["c_by_pillar_boxes"] = "Por el muro, entre un pilar y algunas cajas."
L["c_center_building"] = "En el piso inferior del edificio central."
L["c_forge_corner"] = "En una esquina, por la forja."
L["c_hidden_boxes"] = "Escondido detrás de algunas cajas, detrás del edificio de {npc:152089}."
L["c_inside_auction"] = "Dentro de la casa de subastas, a la derecha."
L["c_inside_big_tent"] = "Dentro de la tienda grande, a la izquierda."
L["c_inside_cacti"] = "Dentro de la zona de cactus alrededor de la esquina."
L["c_inside_hut"] = "Dentro del primer edificio de la derecha."
L["c_inside_leatherwork"] = "Dentro del edificio de la peletería."
L["c_inside_orphanage"] = "Dentro del orfanato."
L["c_inside_transmog"] = "Dentro del edificio de transfiguración."
L["c_left_cathedral"] = "Escondido a la izquierda de las escaleras de entrada a la catedral."
L["c_left_inquisitor"] = "A la izquierda de las escaleras que hay detrás del miniboss del Inquisidor."
L["c_on_small_hill"] = "En lo alto de una colina pequeña."
L["c_top_building"] = "En la planta superior del edificio."
L["c_underneath_bridge"] = "Debajo del puente."
L["c_walkway_corner"] = "En una esquina de la pasarela superior."
L["c_walkway_platform"] = "En una plataforma sobre la pasarela superior."

L["options_icons_visions_buffs"] = "Buffs"
L["options_icons_visions_buffs_desc"] = "Muestra las localizaciones de eventos que garantizan buffs de daño durante 1 hora."
L["options_icons_visions_chest"] = "Cofres"
L["options_icons_visions_chest_desc"] = "Muestra las localizaciones posibles de cofres dentro de las visiones horripilantes."
L["options_icons_visions_crystals"] = "Cristales Extraños"
L["options_icons_visions_crystals_desc"] = "Muestra las localizaciones posibles de cristales extraños dentro de las visiones horripilantes."
L["options_icons_visions_mail"] = "Buzones"
L["options_icons_visions_mail_desc"] = "Muestra las localizaciones de buzones para la montura del {item:174653}."
L["options_icons_visions_misc"] = "Miscelánea"
L["options_icons_visions_misc_desc"] = "Muestra las localizaciones de raros, juguetes, pociones y del etéreo dentro de las visiones horripilantes."

-------------------------------------------------------------------------------
----------------------------------- VOLDUN ------------------------------------
-------------------------------------------------------------------------------

L["bloodwing_bonepicker_note"] = "Recoge el {npc:136390} en la cumbre para invocar al buitre {npc:136393}."
L["nezara_note"] = "Corta las cuerdas sujetas a los cuatro {npc:128952} para liberar a {npc:128951}."
L["vathikur_note"] = "Mata a las {npc:126894} para invocar a {npc=130401}."
L["zunashi_note"] = "Entrando por el norte de la boca de un gran cráneo se accede a {npc:129411}."

L["ashvane_spoils_note"] = "Monta en la {npc:132662} para bajar colina abajo para hacer aparecer el botín en la parte inferior."
L["excavators_greed_note"] = "Dentro de un túnel colapsado."
L["grayals_offering_note"] = "Tras completar {quest:50702}, entra en Atul'Aman y haz click en el Altar Antiguo para hacer aparecer la ofrenda."
L["kimbul_offerings_note"] = "Encima de una colina sobre el Templo de Kimbul."
L["sandsunken_note"] = "Haz click en el Corcho Abandonado para sacar el tesoro fuera de la arena."

L["keeyo_note"] = "¡Tiempo para una gran aventura!"
L["kusa_note"] = "Estoy en una racha ganadora, no tienes ni una oportunidad contra mi y mi equipo."
L["sizzik_note"] = "Siempre aprecio un buen combate con un desafiador nuevo."

L["tales_akunda_note"] = "En el estanque."
L["tales_kimbul_note"] = "Junto al árbol marchito."
L["tales_sethraliss_note"] = "En el suelo junto a la mesa."

L["plank_1"] = "Donde acaba la arena en la cima de la colina."
L["plank_2"] = "Junto a un edificio destruido."
L["plank_3"] = "En el lado de la pirámide. El camino empieza en el otro tablón cercano."
L["plank_4"] = "Sobre una duna de arena a lo largo del lado de la pirámide."
L["plank_5"] = "Sigue la cola de la serpiente para encontrar el tablón."
L["planks_ridden"] = "tablones destartalados montados"
L["options_icons_dune_rider"] = "Jinete de las Dunas"
L["options_icons_dune_rider_desc"] = "Muestra las localizaciones de los tablones destartalados para el logro {achievement:13018}."

L["elusive_alpaca"] = "Alimenta a la {npc:162681} con {item:161128} para aprenderla como montura. Aparece durante 10 minutos en una localización y después tiene un largo tiempo de reaparición."

-------------------------------------------------------------------------------
---------------------------------- WARFRONTS ----------------------------------
-------------------------------------------------------------------------------

L["boulderfist_outpost"] = "Dentro de la cueva de los Puño de Roca (la cueva grande). Entrada al noreste."
L["burning_goliath_note"] = "Una vez derrotado, aparecerá un {npc:141663} cerca del {npc:141668}."
L["cresting_goliath_note"] = "Una vez derrotado, aparecerá un {npc:141658} cerca del {npc:141668}."
L["rumbling_goliath_note"] = "Una vez derrotado, aparecerá un {npc:141659} cerca del {npc:141668}."
L["thundering_goliath_note"] = "Una vez derrotado, aparecerá un {npc:141648} cerca del {npc:141668}."
L["echo_of_myzrael_note"] = "Cuando hayan sido derrotados los cuatro goliats elementales, aparecerá el {npc:141668}."
L["frightened_kodo_note"] = "Desaparece tras unos pocos minutos. La aparición está garantizada tras un reinicio del servidor."

-------------------------------------------------------------------------------
----------------------------------- ZULDAZAR ----------------------------------
-------------------------------------------------------------------------------

L["murderbeak_note"] = "Lanza el cubo de anzuelos al mar y, entonces, mata {npc:134780} hasta que aparezca {npc:134782}."
L["vukuba_note"] = "Investiga el {npc:134049} y, entonces, mata oleadas de {npc:134047} hasta que aparezca {npc:134048}."

L["cache_of_secrets_note"] = "Sostenido por un {npc:137234} en una cueva detrás de una cascada."
L["da_white_shark_note"] = "Espera cerca de {npc:133208} hasta que se vuelva hostil."
L["dazars_forgotten_chest_note"] = "El camino comienza cerca de {npc:134738}."
L["gift_of_the_brokenhearted_note"] = "Coloca el incienso para hacer aparecer el cofre."
L["offerings_of_the_chosen_note"] = "En el segundo nivel de Zanchul."
L["riches_of_tornowa_note"] = "En el lado del acantilado."
L["spoils_of_pandaria_note"] = "En el piso inferior del barco."
L["tiny_voodoo_mask_note"] = "Sentado en la choza encima de {npc:141617}."
L["warlords_cache_note"] = "En la parte superior del barco, cerca del timón."

L["karaga_note"] = "No he luchado en mucho tiempo, espero ser todavía un buen desafio para ti."
L["talia_spark_note"] = "Las alimañas de esta tierra son viciosas, espero que estés listo para ello."
L["zujai_note"] = "¿Has venido a luchar conmigo en mi propio hogar? Buena suerte."

L["kuafon_note"] = [[
Despoja un {item:157782} de cualquier Pterrordáctilo en Zandalar para empezar la cadena de misiones. Algunas misiones tardarán varios dias en ser completadas.

Los mejores Pterrordáctilos para matar son {npc:126618} en Zanchul o {npc:122113} justo al sur de Tal'gurub.
]]
L["torcali_note"] = "Completa misiones en el Redil Bestia de Guerra hasta que {quest:47261} esté disponible para hacer. Algunas misiones tardarán varios dias en ser completadas."

L["totem_of_paku_note"] = "Habla con la {npc:137510} al norte del Gran Sello para seleccionar a Pa'ku como tu loa en Zuldazar."
L["options_icons_paku_totems"] = "Tótems de Pa'ku"
L["options_icons_paku_totems_desc"] = "Muestra las localizaciones de los {npc:131154} y sus rutas de viaje en Dazar'alor."

L["tales_gonk_note"] = "Reposa en la manta."
L["tales_gral_note"] = "En las raices del árbol."
L["tales_jani_note"] = "En el pilar destruido."
L["tales_paku_note"] = "Encima del edificio, en una roca cerca del agua."
L["tales_rezan_note"] = "Encima de la cueva del {npc:136428}."
L["tales_shadra_note"] = "Junto a la entrada, detrás de una antorcha."
L["tales_torcali_note"] = "Entre un grupo de barriles y las escaleras."
L["tales_zandalar_note"] = "Detrás de {npc:132989}."

local shared_dinos = "La misión diaria {daily:50860} debe estar activa (una de las cuatro diarias posibles) de la cadena de misiones de {npc:133680} para que aparezca. Esos días cualquiera puede verlos."
L["azuresail_note"] = "Comparte tiempo de aparición con {npc:135512} y {npc:135508}\n\n"..shared_dinos
L["thunderfoot_note"] = "Comparte tiempo de aparición con {npc:135510} y {npc:135508}\n\n"..shared_dinos
L["options_icons_life_finds_a_way"] = "La vida se abre camino... ¡hacia la muerte!"
L["options_icons_life_finds_a_way_desc"] = "Muestra las localizaciones de los dinosaurios aterradores para el logro {achievement:13048}."

-------------------------------------------------------------------------------
--------------------------------- ACROSS ZONES --------------------------------
-------------------------------------------------------------------------------

L["options_icons_mushroom_harvest"] = "Cosecha de Champiñones"
L["options_icons_mushroom_harvest_desc"] = "Muestra las localizaciones de los villanos fungáricos para el logro {achievement:13027}."

L["options_icons_tales_of_de_loa"] = "Érase una Vez un Loa"
L["options_icons_tales_of_de_loa_desc"] = "Muestra las localizaciones de los volúmenes para el logro {achievement:13036}."

L["jani_note"] = "Haz click en el Montón de Basura Misteriosa para que aparezca {npc:126334}."
L["rezan_note"] = ns.color.Red("Dentro de la mazmorra Atal'Dazar.")
L["bow_to_your_masters_note"] = "Reverencia a los loa de Zandalar ("..ns.color.Orange('/bow')..")."
L["options_icons_bow_to_your_masters"] = "Inclinarte ante tus maestros"
L["options_icons_bow_to_your_masters_desc"] = "Muestra las localizaciones para el logro {achievement:13020}."

-- Para la Horda, incluida una nota para las bebidas que deben comprarse en la AH
local horde_sheets = (UnitFactionGroup('player') == 'Horde') and [[ Las siguientes bebidas son inaccesibles para la Horda y deben comprarse en la casa de subastas:

• {item:163639}
• {item:163638}
• {item:158927}
• {item:162026}
• {item:162560}
• {item:163098}
]] or ''
L["three_sheets_note"] = "Adquiere cada una de las bebidas para conseguir el logro."..horde_sheets
L["options_icons_three_sheets"] = "Como una cuba"
L["options_icons_three_sheets_desc"] = "Muestra las localizaciones de los vendedores para el logro {achievement:13061}."
