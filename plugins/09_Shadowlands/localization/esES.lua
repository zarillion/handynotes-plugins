--[[
	Spanish Localization by (EU) Krovikan-Minahonda
--]]

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
L["humongozz_note"] = "Planta una {item:175247} en la Tierra Húmeda para hacer aparecer {npc:164122}. Tras un minuto de {spell:319367}, aparecerá {npc=164112}. La seta cae de muchos enemigos de la zona."--[Revisar que Damp Loam sea Tierra Húmeda]--
L["lehgo_note"] = "Destruye los Huevos de Gorm Temblorosos y mata {npc:171827} hasta que aparezca {npc:167851}. En una cueva (entrada al sureste en las Madrigueras Polvorientas Dusty Burrows(58.5 31.9))."--[Revisar que Dusty Burrows sea Madrigueras Polvorientas y Revisar que Quivering Gorm Eggs sean Huevos de Gorm Temblorosos]--
L["rootwrithe_note"] = "Empuja a las {npc:167928} hasta que aparezca {npc=167726}."
L["rotbriar_note"] = "Habla con {npc:171684} y comenzará a cantar. Tras algo de diálogo, aparecerá {npc:167724} cerca."
L["slumbering_note"] = "Correr hacia la niebla te dormirá en pocos segundos y te alejará. Usa una bengala o una mascota con daño en área para sacar a {npc=167721} fuera de la niebla."
L["skuld_vit_note"] = "En una cueva bloqueada por una barrera. Con el hechizo {spell:310143} de la curia de las Sílfides Nocturnas se podrá atravesar la barrera y entrar en la cueva. Una vez haya sido pulleado {npc=164415}, la barrera desaparecerá."
L["valfir_note"] = "Haz click en el Sparkling Animaseed a mitad de camino y usa {spell:338045} para quitar el buff {spell:338038} de {npc=168647}."--[[Revisar the Sparkling Animassed]]--
L["wrigglemortis_note"] = "Estira el {npc:164179} para sacarlo de la tierra y hacer aparecer a {npc=164147}."

L["star_lake"] = "Anfiteatro del Lago Estrellado"--[Revisar que Star Lake Amphitheater sea Anfiteatro del Lago Estrellado"]--
L["star_lake_note"] = "Habla con {npc:171743}, el Director de Escena, el cual iniciará uno de los combates especiales."--[Revisar que Stage Director sea Director de Escena
