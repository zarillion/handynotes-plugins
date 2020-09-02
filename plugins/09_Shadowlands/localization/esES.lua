--	Spanish Localization by (EU) Krovikan-Minahonda

local ADDON_NAME, _ = ...
local L = LibStub("AceLocale-3.0"):NewLocale(ADDON_NAME, "esES", false, true)
if not L then return end

-------------------------------------------------------------------------------
----------------------------------- GENERAL -----------------------------------
-------------------------------------------------------------------------------

L["context_menu_title"] = "HandyNotes Shadowlands"
L["options_title"] = "Shadowlands"
L["covenant_required"] = "Requiere ser miembro de la curia %s."

-------------------------------------------------------------------------------
--------------------------------- ARDENWEALD ----------------------------------
-------------------------------------------------------------------------------

L["deifir_note"] = "Monta {npc=164238} que va dando vueltas en círculos y usa {spell:319566} y {spell:319575} para frenarlo o aturdirlo respectivamente."
L["faeflayer_note"] = "En una cueva pequeña escondida tras una cascada."
L["humongozz_note"] = "Planta una {item:175247} en la Tierra Húmeda para hacer aparecer {npc:164122}. Tras un minuto de {spell:319367}, aparecerá {npc=164112}. La seta cae de muchos enemigos de la zona."--Revisar que Damp Loam sea Tierra Húmeda
L["lehgo_note"] = "Destruye los Huevos de Gorm Temblorosos y mata {npc:171827} hasta que aparezca {npc:167851}. En una cueva (entrada al sureste en las Madrigueras Polvorientas Dusty Burrows(58.5 31.9))."--Revisar que Dusty Burrows sea Madrigueras Polvorientas y Revisar que Quivering Gorm Eggs sean Huevos de Gorm Temblorosos
L["rootwrithe_note"] = "Empuja a las {npc:167928} hasta que aparezca {npc=167726}."
L["rotbriar_note"] = "Habla con {npc:171684} y comenzará a cantar. Tras algo de diálogo, aparecerá {npc:167724} cerca."
L["slumbering_note"] = "Correr hacia la niebla te dormirá en pocos segundos y te alejará. Usa una bengala o una mascota con daño en área para sacar a {npc=167721} fuera de la niebla."
L["skuld_vit_note"] = "En una cueva bloqueada por una barrera. Con el hechizo {spell:310143} de la curia de las Sílfides Nocturnas se podrá atravesar la barrera y entrar en la cueva. Una vez haya sido pulleado {npc=164415}, la barrera desaparecerá."
L["valfir_note"] = "Haz click en la Semilla de Ánima Brillante a mitad de camino y usa {spell:338045} para quitar el buff {spell:338038} de {npc=168647}."--Revisar que Sparkling Animaseed sea Semilla de Ánima Brillante
L["wrigglemortis_note"] = "Estira el {npc:164179} para sacarlo de la tierra y hacer aparecer a {npc=164147}."

L["star_lake"] = "Anfiteatro del Lago Estrellado"--Revisar que Star Lake Amphitheater sea Anfiteatro del Lago Estrellado"
L["star_lake_note"] = "Habla con {npc:171743}, el Director de Escena, el cual iniciará uno de los combates especiales."--Revisar que Stage Director sea Director de Escena

L["desiccated_moth"] = "Salta sobre {npc:169997} al noroeste del árbol para flotar encima de una rama. Quema las {item:180784} en el Quemador de Incienso para conseguir el tesoro."--Revisar que Incense Burner sea Quemador de Incienso
L["dreamsong_heart"] = "Salta sobre {npc:169997} lejos al noreste para ser lanzado dentro del árbol."
L["elusive_faerie_cache"] = "Coge {spell:333923} en la esquina noreste de la Arboleda del Recuerdo y lo usas para despojar el cofre."--Revisar que Eventide Grove sea Arboleda del Recuerdo, comprobar el artículo si es lo o la
L["enchanted_dreamcatcher"] = "Colgando de la parte superior de las raíces. La forma más facil del saltar arriba es en el lado oeste."
L["faerie_trove"] = "Está debajo de la plataforma."
L["harmonic_chest"] = "Requiere dos personas. Uno toca el arpa y el otro toca el tambor para desbloquear el cofre."
L["hearty_dragon_plume"] = "Haz click en la {spell:333554} en la cima de las cascadas cercanas y úsala para flotar abajo hasta la rama."
L["old_ardeite_note"] = "Mata al {npc:160747} y al {npc:160748} en Shimmerbough hacia el sureste para conseguir {item:174042}. Usa este objeto para volar cerca de {npc:164391} y targetearlo."
L["swollen_anima_seed"] = "Una gran semilla reposando dentro del tronco de un árbol."

-------------------------------------------------------------------------------
----------------------------------- BASTION -----------------------------------
-------------------------------------------------------------------------------

L["aspirant_eolis_note"] = "Despoja un {item:180613} en las cercanías y leelo con {npc:171211} como objetivo para activarlo."
L["basilofos_note"] = "Muévete alrededor de la roca hasta que una marca de fijado lila aparezca sobre tu cabeza. Quédate quieto y espera a que aparezcan cuatro textos de emoción. Tras ello, aparecerá {npc:170659}."
L["beasts_of_bastion"] = "Bestias del Bastión"
--L["beasts_of_bastion_note"] = "Habla con {npc:161441} para invocar una de las cuatro bestias."
L["bookkeeper_mnemis_note"] = "Tiene la posibilidad de aparecer en lugar de los {npc:166867} del sitio."
L["cloudfeather_patriarch_note"] = "Mata {npc:158110} en el aŕea hasta que {npc:170932} aparezca."
L["collector_astor_note"] = "Lee los seis capítulos del Legado de Mercia dispersos por la habitación y recibirás un susurro de {npc:157979}. Habla con ella para recibir {spell:333779} el cual te permitirá encontrar el {item:180569} al noroeste. Al devolverle el capítulo, aparecerá {npc:171014}."--Revisar si Mercia's Legacy es Legado de Mercia
L["corrupted_clawguard_note"] = "Despoja un {item:180651} en Avanzada Forjafuego subiendo la colina y úsalo para reparar el {npc:171300}."--Revisar si Forgefire Outpost es Avanzada Forjafuego
L["dark_watcher_note"] = "Sólo puede verse estando muerto. Habla con {npc:170623} y lanzará {spell:332830} en ti antes de que seas atacado."
L["demi_hoarder_note"] = "Comienza con 99 acumulaciones de {spell:333874}, reduciendo el daño recibido. Las acumulaciones bajan lentamente con el daño. {npc:171011} seguirá una ruta. Desaparecerá si alcanza el final."
L["dionae_note"] = "Cuando {npc:163460} se hace immune, haz click en las cuatro {npc:163747} para romperle el escudo."--Revisar genero de las/los npc:163747
L["herculon_note"] = [[
Recoge {item:172451} y úsalas para dar a {npc:158659} acumulaciones de {spell:343531}. A las 10 acumulaciones, se activará.

Las motas se pueden recoger de los Recipientes de Ánima Agotados cercanos localizados en la habitación o justo fuera.
]]--Revisar si Depleted Anima Canisters son Recipientes de Ánima Agotados
L["nikara_note"] = "Con otros dos jugadores, haz click en el Ancient Incense para invocar a {npc:160882}."
L["unstable_memory_note"] = "Puede aparecer cuando los {npc:171018} estén presentes. Arrastra un {npc:171018} dentro de otros para que reciba 10 acumulaciones de {spell:333558}, lo que hará que se convierta en {npc:171008}."
--L["wingflayer_note"] = "Para invocar a {npc:167078}, haz click en el cuerno de la mesa cercana que hay al sureste (subiendo unas escaleras)."

L["broken_flute"] = "Mata a los {npc:170009} cercanos hasta que uno suelte la {item:180536}. Usa las herramientas para repararla."
L["experimental_construct_part"] = "Despoja {item:180534} y úsalo para reparar la parte. El ánima tiene varios sitios de aparición."--Revisar que anima sea ánima
L["larion_harness"] = "Localizado dentro del Salón de las Bestias."--Revisar si Hall of Beasts es Salón de las Bestias
L["memorial_offering"] = "Compra una botella de {item:180788} a {npc:171526} en el Retiro del Aspirante. Colócala en la bandeja de bebidas que hay cerca del cofre para conseguir la {item:180797}."--Revisar si Aspirant's Rest es Retiro del Aspirante
L["scroll_of_aeons"] = "Coge de un cuenco 2 {item:173973} en el centro del área y colócalos en los cuencos de tributo cercanos para revelar el tesoro {item:173984}."

L["gift_of_agthia"] = "Haz click en la antorcha encendida cerca del puente roto al noroeste y lleva la {spell:333320} de antorcha a antorcha hasta llegar al cofre. Encender la última antorcha te dará la {spell:333063}."
L["gift_of_chyrus"] = "Arrollídate frente al cofre para conseguir la {spell:333045}."
L["gift_of_devos"] = [[
Al suroeste del cofre hay una antorcha donde puedes coger {spell:333912}. Montar, entrar en combate o recibir daño hará que sueltes la llama. Debes hacer tu camino de regreso al cofre y poner la llama en el Blandón de Devoción para conseguir la {spell:333070}.

Antes de coger la llama, limpia de enemigos el camino al cofre. Mientras corras con la llama, haz click en algún {npc:156571} a lo largo del camino para conseguir {spell:335012} el cual incrementa la velocidad de movimiento.
]]--Revisar que Brazier of Devotion sea Blandón de Devoción
L["gift_of_thenios"] = [[
Detrás del cofre hay una plataforma de vuelo llamada "Camino de la Sabiduría". Esto lleva a una secuencia de plataformas con diferentes inciensos con los que puedes comulgar:

• Incienso de la Sabiduría
• Incienso de la Paciencia
• Incienso de la Visión
• Incienso del Juicio

Comulga con ellos en el orden Paciencia => Sabiduría => Visión. En la plataforma del Juicio aparecerá un orbe llamado "Camino de la Sabiduría Perspicaz".

El orbe te llevará al verdadero Incienso del Juicio. Comulga con él y aparecerá la última plataforma de vuelo que te dará la {spell:333068} al abrir el cofre.
]]--Revisar que Path of Wisdom sea Camino de la Sabiduría, que incenses sea inciensos, los tipos de incienso y que Path of Insightful Wisdom sea Camino de la Sabiduría Perspicaz
L["gift_of_vesiphone"] = "Toca una de las campanas para hacer que aparezca una {npc:170849} y mátala para recibir el debuff {spell:333239}. El agua que cae frente al cofre limpiará el debuff y te dará la {spell:332785}."

L["anima_shard"] = "Fragmento de Ánima perdida"--Revisar que Lost Anima Shard sea Fragmento de Ánima perdida
L["anima_shard_61225"] = "En una plataforma inferior debajo del puente."
L["anima_shard_61235"] = "En una repisa sobre la cascada."
L["anima_shard_61236"] = "Sobre un arco enmedio de la estructura principal."
L["anima_shard_61237"] = "En una repisa justo sobre el agua."
L["anima_shard_61238"] = "En el agua debajo de un puente pequeño."
L["anima_shard_61239"] = "Encima de una fina columna de piedra."
L["anima_shard_61241"] = "Sobre la entrada a la Cámara de la Primera Reflexión."--Revisar que Chamber of First Reflection sea Cámara de la Primera Reflexión
L["anima_shard_61244"] = "En una roca en el lado del precipicio."
L["anima_shard_61245"] = "En una roca sobre una cascada pequeña."
L["anima_shard_61247"] = "En la pared sobre una fuente pequeña de agua."
L["anima_shard_61249"] = "Oculto detrás de una columna de piedra en el nivel superior del Pináculo de la Pureza."--Revisar que Purity's Pinnacle sea Pináculo de la Pureza
L["anima_shard_61250"] = "Reposando detrás de una escalera."
L["anima_shard_61251"] = "Reposando debajo de una campana pequeña."
L["anima_shard_61253"] = "Encima de un arco de piedra caido."
L["anima_shard_61254"] = "Encima de una estructura de madera pequeña."
L["anima_shard_61257"] = "En una repisa pequeña justo debajo de {npc:162523}."
L["anima_shard_61258"] = "En una repisa pequeña en la parte inferior del Reposo del Héroe."--Revisar que Hero's Rest sea Reposo del Héroe
L["anima_shard_61260"] = "En el suelo debajo de la plataforma."
L["anima_shard_61263"] = "Sobre un pilar de piedra."
L["anima_shard_61270"] = "Reposando en la base de un árbol."
L["anima_shard_61271"] = "En una estantería en la plataforma superior."
L["anima_shard_61273"] = "En una repisa justo debajo del precipicio que sobresale."
L["anima_shard_61274"] = "Escondido debajo de la plataforma."
L["anima_shard_61275"] = "En el Salón de las Bestias debajo de unos barriles."--Revisar si Hall of Beasts es Salón de las Bestias
L["anima_shard_61277"] = "Sobre una fina columna de piedra."
L["anima_shard_61278"] = "Debajo del puente y sobre una roca."
L["anima_shard_61279"] = "Sobre una fina columna de piedra."
L["anima_shard_61280"] = "En la esquina de la mesa."
L["anima_shard_61281"] = "En una repisa sobre el tesoro de las Ofrendas Conmemorativas."--Revisar que Memorial Offerings sea Ofrendas Conmemorativas
L["anima_shard_61282"] = "En una repisa debajo de la cima del precipio. Salta sobre la roca siguiente o serás llevado de vuelta arriba."
L["anima_shard_61283"] = "En una cueva debajo de la Capilla de Miri, detrás de unos barriles."--Revisar que Miri's Chapel sea Capilla de Miri
L["anima_shard_61284"] = "En una repisa debajo de un saliente rocoso, camino al sur."
L["anima_shard_61285"] = "Al final de una pequeña repisa de roca."
L["anima_shard_61286"] = "En una repisa que domina el camino."
L["anima_shard_61287"] = "En una repisa sobre una cascada pequeña."
L["anima_shard_61288"] = "En la punta de una repisa pequeña."
L["anima_shard_61289"] = "Encima de la glorieta."--gazebo es ¿glorieta?
L["anima_shard_61290"] = "Al final de un estrecho saliente rocoso."
L["anima_shard_61291"] = "En el fondo del estanque junto a los pies de una estatua."
L["anima_shard_61292"] = "Sobre un arco de piedra."
L["anima_shard_61293"] = "Sobre una fina columna de piedra en el nivel inferior."
L["anima_shard_61294"] = "Escondido detrás de una pila de barriles."
L["anima_shard_61295"] = "Detrás del {npc:156889} en una estantería."
L["anima_shard_61297"] = "Detrás de un pilar de piedra."
L["anima_shard_61298"] = "Reposando detrás de un sillón."
L["anima_shard_61299"] = "Escondido detrás de una gran antorcha."
L["anima_shard_61300"] = "En una repisa que cuelga sobre la fuente central."
L["options_toggle_anima_shards"] = "Fragmentos Perdidos de Ánima"--Revisar que Lost Anima Shards sea Fragmentos Perdidos de Ánima
L["options_toggle_anima_shards_desc"] = "Muestra la localización de los 50 fragmentos perdidos de ánima para el logro Trabajo Fragmentado."--Revisar que lost anima shards sea fragmentos perdidos de ánima y que Shard Labor sea Trabajo Fragmentado

-------------------------------------------------------------------------------
--------------------------------- MALDRAXXUS ----------------------------------
-------------------------------------------------------------------------------

L["chelicerae_note"] = "Destroy the {npc:159885} to activate the rare."
L["deepscar_note"] = "Can appear in multiple entrances to the Theater of Pain."
L["gieger_note"] = "Pull the {npc:162815} to activate the rare."
L["gristlebeak_note"] = "Break all nearby {npc:162761} to engage the rare."
L["malkorak_note"] = "At the top of the tower (lots of stairs)."
L["schmitd_note"] = "Use nearby {spell:313451} to break his shield."

L["mixed_pool_note"] = [[
Gather ingredients from the surrounding mobs and toss them into the pool. Once 30 ingredients have been added, one of seven rares will spawn depending on the combination used.

• Collect {spell:306713} from {npc:167923} and {npc:167948} to the north.

• Collect {spell:306719} from {npc:165015} and {npc:171142} to the south.

• Collect {spell:306722} from {npc:165027} and {npc:166438} to the south.
]]

L["blackhound_cache"] = "Blackhound Cache"
L["bladesworn_supply_cache"] = "Bladesworn Supply Cache"
L["glutharns_note"] = "In a cave behind the waterfall of slime. Kill {npc:172485} and both {npc:172479} to unlock the chest."
L["kyrian_keepsake_note"] = "Inspect the {npc:169664} to loot the treasure."
L["plaguefallen_chest_note"] = [[
Stand in the green slime (requires healing!) to get 10 stacks of {spell:330069} and be transformed into a {spell:330092}.

Once transformed, visit the cave underneath {npc:158406}'s platform (entrance on the east side) and click the pipe to transport to the chest.
]]
L["stolen_jar_note"] = "In a cave underneath the giant mushroom."
L["strange_growth_note"] = "Pull on the {npc:165037} to reveal the treasure."
L["vat_of_slime_note"] = "Click the bottle on the table and then click on the vat of slime."

L["pet_cat"] = "Pet the damn cat!"
L["hairball"] = ns.color.Red("Only appears in the Festering Sanctum inside the Plaguefall dungeon!")
L["lime"] = "Sitting on top of the large bone arch."
L["moldstopheles"] = "Run around the back of the stalk and jump up the mushroom platforms. For the final platform, use a mount and jump at the corner where it meets the stalk."
L["pus_in_boots"] = "Located under the bridge."

L["options_toggle_kittens"] = "Kittens"
L["options_toggle_kittens_desc"] = "Display locations of kittens for the Nine Afterlives achievement."

-------------------------------------------------------------------------------
--------------------------------- REVENDRETH ----------------------------------
-------------------------------------------------------------------------------

L["amalgamation_of_light_note"] = "Move all three mirror traps to release the rare."
L["bog_beast_note"] = "Has a chance to spawn during the world quest \"Muck It Up\" after using {item:177880} on a {npc:166206}."
L["endlurker_note"] = "Click Anima Stake near {npc:165229} corpse and use {spell:321826} on top of the Shimmering Rift."
L["executioner_aatron_note"] = "Kill the three nearby {npc:166715} to remove {spell:324872}."
L["famu_note"] = "Talk to {npc:166483} to trigger the event."
L["grand_arcanist_dimitri_note"] = "Kill the four {npc:167467} to release the rare."
L["innervus_note"] = "Kill nearby {npc:160375}s to obtain a {item:177223} and unlock the crypt."
L["leeched_soul_note"] = "Inside the nearby crypt. Walk near {npc:165151} to start the event."
L["lord_mortegore_note"] = "Kill surrounding mobs to obtain {item:174378} and use it to empower a {npc:161870}. The rare will spawn once all four sigils are empowered."
L["manifestation_of_wrath_note"] = "Has a chance to spawn when a {npc:169916} is recovered during the \"Swarming Souls\" world quest."
L["scrivener_lenua_note"] = "Return {npc:160753} to the Forbidden Library."
L["sinstone_hoarder_note"] = "Appears on the minimap as a treasure chest. Attempt to loot the {npc:162503} and the rare will reveal itself."
L["soulstalker_doina_note"] = "Follow downstairs and through the mirror when she runs away."
L["tomb_burster_note"] = "Can be spawned if {npc:155777} is trapped in a web. Kill nearby {npc:155769}s and waves of {npc:155795}s until the rare spawns."
L["worldedge_gorger_note"] = "Obtain an {item:173939} from World Reavers, Devourers and Mites in the Banewood and the Endmire. Use it to light the Worldedge Braziers and summon the rare."

L["darkreach_supplies"] = "Jump on the {npc:169995} and glide southwest into the hollowed spire directly above the Cache of the Night treasure."
L["dredglaive_note"] = "Under the bridge in the {npc:173671} corpse."
L["lost_quill_note"] = "Loot {item:182475} from the bottle on the table in the Forbidden Library."
L["secret_chamber_note"] = "Loot a Discarded Anima Canister in front of the locked door and learn {spell:340701}. Use it to drain five of the nearby {npc:173838}s, then use {spell:340866} in front of the {npc:173786}."
L["taskmaster_trove_note"] = "Read the Ingress and Egress Rites then carefully make your way to the chest."
L["the_count_note"] = "Farm 99 {currency:1820} in the Endmire and then bring them to {npc:173488}."

L["abandoned_curios"] = "Abandoned Curios"
L["bleakwood_chest"] = "Bleakwood Chest"
L["chest_of_envious_dreams"] = "Chest of Envious Dreams"
L["filchers_prize"] = "Filcher's Prize"
L["fleeing_soul_bundle"] = "Fleeing Soul's Bundle"
L["gilded_plum_chest"] = "Gilded Plum Chest"
L["gilded_plum_chest_note"] = "Kill the {npc:166680} wandering up and down the road."
L["remlates_cache"] = "Remlate's Hidden Cache"
L["remlates_cache_note"] = "On the outer wall of Darkhaven behind the crypt."
L["smuggled_cache"] = "Smuggled Cache"
L["wayfairer_spoils"] = "Wayfairer's Abandoned Spoils"

L["options_toggle_carriages"] = "Carriages"
L["options_toggle_carriages_desc"] = "Display locations and paths of rideable carriages."
