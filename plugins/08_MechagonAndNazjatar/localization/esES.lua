-- Spanish Localization by (EU) Krovikan-Minahonda

local ADDON_NAME, _ = ...
local L = LibStub("AceLocale-3.0"):NewLocale(ADDON_NAME, "esES", false, true)
if not L then return end

-------------------------------------------------------------------------------
----------------------------------- GENERAL -----------------------------------
-------------------------------------------------------------------------------

L["context_menu_title"] = "HandyNotes: Mecandria & Nazjatar"
L["options_title"] = "Mecandria & Nazjatar"

-------------------------------------------------------------------------------
----------------------------------- MECHAGON ----------------------------------
-------------------------------------------------------------------------------

L["operation_mechagon"] = "Operación Mecandria"

L["avenger_note"] = "Cuando {npc:155254} esté en Pernoóxido, mata al {npc:151159} que corre por toda la zona para hacer aparecer al {npc:151296}."
L["beastbot_note"] = "Fabrica un {item:168045} en {npc:150359} para activar a la {npc:151933}."
L["cogstar_note"] = "Mata {npc:154213} en cualquier sitio de la zona hasta que {npc:153228} se teleporte a ayudarlos."
L["crazed_trogg_note"] = "Usa un Roboespray, una vejiga llena de pintura, o un robot pintador en el Vertedero de Bondo para vestirte del color que grita {npc:152569}."
L["deepwater_note"] = "Fabrica un {item:167649} en {npc:150359} para invocar a {npc:151569}."
L["doppel_gang"] = "Los dobles"
L["doppel_note"] = 'Junto a otros dos jugadores, ha de usar cada uno una {item:169470} para activar a {npc:155060}. La {item:169470} se consigue de la misión diaria "Frenesí constructor de Tuercanética".'
L["drill_rig"] = "Requiere una {npc:150306}"
L["foul_manifest_note"] = "Activa el disyuntor y conecta los tres cables con los tres pilones del agua para invocar a la {npc:151202}."
L["furor_note"] = 'Durante la misión diaria "Ayuda de Nordrassil", haz click en las pequeñas setas azules hasta que aparezca {npc:151884}.'
L["killsaw_note"] = "Aparece en cualquier sitio del bosque al oeste de la isla donde hayan {npc:151871} cortando árboles. Has de matarlos para que aparezca {npc:152007} para vengarlos. Los {npc:151871} no aparecen los días que esté Ventura y Cía en el bosque."
L["leachbeast_note"] = "Usa una {item:168961} que sueltan los enemigos de Depósito Trastovatio para activar la Máquina de alteración climática. Esto hará que comiencen a aparecer {npc:151745}. Tras matar a varios saldrá {npc:152764}"
L["nullifier_note"] = 'Para hacer aparecer al {npc:151124} hay que piratear el {npc:152174} usando ya sea la tarjeta {item=168435} o el {item:168023}. El primero puede caer de {npc:151625} mientras que el segundo puede caer de los enemigos que atacan a las {npc:150306} JD41 y JD99.'
L["scrapclaw_note"] = "Cerca de la orilla bajo el agua (82.3 77.9) aparece {npc:155583}."
L["sparkqueen_note"] = '{npc:153000} sólo aparece cuando la misión diaria "¡Bichos a montones!" está activa.'
L["rusty_note"] = "Fabrica un {item:169114} en {npc:150359} para ir al futuro alternativo. {npc:154225} sólo aparece cuando {npc:73691} NO está presente en Pernoóxido."
L["vaultbot_note"] = "Kitea al {npc:150394} hasta la bobina tesla en el Vertedero de Bondo o fabrica una {item:167062} en {npc:150359} para abrirlo."

L["iron_chest"] = "Arcón de los Marea de Hierro"
L["mech_chest"] = "Cofre mecanizado"
L["msup_chest"] = "Cofre de Suministros Mecanizados"
L["rust_chest"] = "Cofre Oxidado Viejo"
L["iron_chest_note"] = "Ábrelo con la {item:169872} que sueltan los enemigos de Rocío del Oeste."
L["msup_chest_note"] = "Ábrelo con la {item:169873} que sueltan los enemigos de Rocío del Oeste."
L["rust_chest_note"] = "Ábrelo con la {item:169218} que sueltan los enemigos de Rocío del Oeste."

L["rec_rig"] = "{npc:150448}"
L["rec_rig_note"] = "Para activar el modo difícil, has de usar el arma {spell:292352} para convertir todos los {npc:150825} en {npc:151049}. Las mascotas {npc:154904} y {npc:155579} se puede obtener en ambas dificultades."

L["grease_bot"] = "{npc:155911}"
L["grease_bot_note"] = "Haz click en el robot para conseguir 5% de celeridad y 10% de velocidad de movimiento durante 2 horas."
L["shock_bot"] = "{npc:155909}"
L["shock_bot_note"] = "Haz click en el robot para conseguir un proc de poder hacer daño a enemigos cercanos durante 2 horas."
L["welding_bot"] = "{npc=155910}"
L["welding_bot_note"] = "Haz click en el robot para aumentar la vida y la sanación recibida un 10% durante 2 horas."

L["options_icons_mech_buffs"] = "Buff de Robots"
L["options_icons_mech_buffs_desc"] = "Muestra las localizaciones de los robots de grasa, descargas y soldador en el mapa estando dentro de la mazmorra."
L["options_icons_mech_chest"] = "Cofres Mecanizados"
L["options_icons_mech_chest_desc"] = "Muestra las localizaciones de los cofres mecanizados. Hay 10 cofres únicos que pueden ser despojados una vez al día y cada cofre tiene 4-5 puntos de aparición. Las localizaciones están agrupadas por color."
L["options_icons_locked_chest"] = "Cofres Cerrados"
L["options_icons_locked_chest_desc"] = "Muestra las localizaciones de los cofres cerrados en Rocío del Oeste."
L["options_icons_recrig"] = "Equipo de Recuperación"
L["options_icons_recrig_desc"] = "Muestra la localización del Equipo de Recuperación y sus recompensas."

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
L["oronu_note"] = "Para activar a {npc:152397} invoca una {npc:154849}."
L["rockweed_note"] = "Mata a todos los {npc:152549} y {npc:151166} de la zona hasta que aparezca el {npc:150583}. Se recomienda un grupo de banda ya que esto puede requerir mucho tiempo."
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
L["assassin_looted"] = " despojado mientras un asesino."

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

L["mardivas_lab"] = "Laboratorio de Mardivas"
L["no_reagent"] = "Sin ingredientes"
L["swater"] = "Agua Inferior"
L["gwater"] = "Agua Superior"
L["sfire"] = "Fuego Inferior"
L["gfire"] = "Fuego Superior"
L["searth"] = "Tierra Inferior"
L["gearth"] = "Tierra Superior"
L["murloco"] = "{npc:152593}"
L["tentacle_taco"] = "Vende "..ITEM_QUALITY_COLORS[4].hex.."[{item:170100}]|r si llevas puesto el {item:169489}."

L["options_icons_treasures_nazj"] = "Tesoros"
L["options_icons_treasures_nazj_desc"] = "Muestra las localizaciones de los cofres para el logro Rastreador de tesoros."
L["options_icons_slimes_nazj"] = "Babas Voraces"
L["options_icons_slimes_nazj_desc"] = "Muestra las localizaciones de las cuatro Babas Voraces que producen mascotas al ser alimentadas."
L["options_icons_cats_nazj"] = "Figurillas de Gato Cristalinas"
L["options_icons_cats_nazj_desc"] = "Muestra las localizaciones de las figurillas de gato cristalinas para el logro Figurillas de felino encontradas."
L["options_icons_misc_nazj"] = "Miscelánea"
L["options_icons_misc_nazj_desc"] = "Muestra la localización de la cueva de Murloco y el Laboratorio de Mardivas."

-------------------------------------------------------------------------------
------------------------------------ CAVES ------------------------------------
-------------------------------------------------------------------------------

L["blindlight_cave"] = "Cueva de entrada a {npc:152712}."
L["caverndark_cave"] = "Cueva de entrada a {npc:152464}."
L["chasmhaunt_cave"] = "Cueva de entrada a {npc:152556}."
L["shassera_cave"] = "Cueva de entrada a {npc:152552}."
