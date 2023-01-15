-- Spanish Translation by (EU) Krovikan-Minahonda
local ADDON_NAME, ns = ...
local L = ns.NewLocale('esES')
if not L then return end

-------------------------------------------------------------------------------
--------------------------------- MOUNT HYJAL ---------------------------------
-------------------------------------------------------------------------------

L['hyjal_phase0'] = 'Fase 0 - Pre Invasión'
L['hyjal_phase1'] = 'Fase 1 - Invasión'
L['hyjal_phase2'] = 'Fase 2 - El Santuario de Malorne'
L['hyjal_phase3'] = 'Fase 3 - El Frente de Magma'
L['hyjal_phase4a'] = 'Fase 4a - Zona de los Druidas de la Garfa'
L['hyjal_phase4b'] = 'Fase 4b - Zona de las Celadoras de las Sombras'
L['hyjal_phase5'] = 'Fase 5 - El Recrecimiento'

L['hyjal_phase1_note'] = 'Completa misiones en el {location:Monte Hyjal} hasta conseguir la misión {quest:29389}. Esta cadena de misiones comenzará la Fase de Invasión.'
L['hyjal_phase2_note'] = 'Para avanzar en la Fase 2 necesitarás 10 {currency:416} para poder hacer la misión {quest:29198}.\n\nConseguirás {currency:416} en las misiones diarias.'
L['hyjal_phase3_note'] = 'Para avanzar en la Fase 3 necesitarás 15 {currency:416} para poder hacer la misión {quest:29201}.\n\nConseguirás {currency:416} en las misiones diarias.'
L['hyjal_phase4_note'] = [[
La Fase 4 está dividida en 2 partes.

Para avanzar en la Fase 4a necesitarás 150 {currency:416} para poder hacer la misión {quest:29181}.
Para avanzar en la Fase 4b necesitarás 150 {currency:416} para poder hacer la misión {quest:29214}.

Conseguirás {currency:416} en las misiones diarias.
]]
L['hyjal_phase5_note'] = 'Para avanzar en la Fase 5 necesitarás completar las misiones {quest:29215} y {quest:29182}.' -- review

L['portal_molten_front'] = 'Portal al Frente de Magma'

L['spider_hill_note'] = [[
Alcanza el punto más alto en la {location:Guarida de la Viuda}.

Para llegar arriba necesitas provocar a las {npc:52981} sin matarlas. Ellas te lanzarán {spell:97959} y te tirarán hacia arriba.
Métodos recomendados para jugadores de nivel máximo:

{item:46725}
Cazador de Demonios: {spell:185245}
Druida: {spell:2908}
Cazador: {spell:1513}
Mago: {spell:241178}
Paladín: {spell:62124}
Sacerdote: {spell:528}
Pícaro: {spell:36554}
Chamán: {spell:52870}
Guerrero: {spell:355}
]]

L['fiery_lords_note'] = 'Sólo hay un {npc:53267} al mismo tiempo. Tras matarlo, el siguiente aparecerá al momento.'
L['have_we_met_note'] = [[
Al llegar al {location:Nidal de Sethria} te ayudará un grupo de guerreros élite con la misión diaria.

Teclea la emoción {emote:/saludando} para saludar a los NPC que se requieren.
]]

L['ludicrous_speed_note'] = [[
Durante la misión diaria {daily:29147}, consigue 65 acumulaciones de {spell:100957}.

{npc:52594} te dará 15 acumulaciones
{npc:52596} te dará 5 acumulaciones
{npc:52595} te dará 1 acumulación
]]

L['angry_little_squirrel_note'] = 'Provoca a un enemigo hacia el árbol y una {npc:52195} lanzará una bellota a su cabeza.'
L['hyjal_bear_cub_note'] = 'Durante la misión diaria {daily:29161}, tira un {npc:52688} encima de un {npc:52795}.'
L['child_of_tortolla_note'] = 'Durante la misión diaria {daily:29101}, en lugar de patear una tortuga al agua, patéala hacia un {npc:52219}.'
L['ready_for_raiding_2_note'] = 'Derrota a los {title:Teniente de la Llama} requeridos en el {location:Tramo de Ragnaros} sin que te alcance ninguno de sus ataques especiales.'
L['flawless_victory_note'] = 'Mata en solitario a un {npc:52552} sin recibir daño de {spell:97243} o de {spell:96688}.'
L['gang_war_note'] = 'Gana un duelo en el {location:Nidal de Sethria} durante la misión diaria {daily:29128}.'
L['death_from_above_note'] = [[
Bombardea a {title:Señor del Fuego} cuando estés haciendo la misión diaria {daily:29290}.

{note: Sólo hay 3 {title:Señor del Fuego} activos al mismo tiempo. Para completar el logro más rápido no devuelvas la misión y regresa al día siguiente.}
]]
L['flamewalker_sentinel_note'] = 'Usa la {item:137663} para bajar su vida y así te lance {spell:98369}. Esquiva todos los disparos y mátalo.'
L['flamewalker_shaman_note'] = 'Usa la {item:137663} para bajar su vida. Espera a que se mate él mismo.'
