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

L["deifir_note"] = "Monta el raro que da vueltas en círculos y usa {spell:319566} y {spell:319575} para frenarlo y aturdirlo."
L["faeflayer_note"] = "En una cueva pequeña escondida tras una cascada."
L["humongozz_note"] = "Planta una {item:175247} en la Tierra Húmeda para hacer aparecer a {npc:164122}. Tras un minuto de {spell:319367}, aparecerá el raro. La seta cae de muchos enemigos de la zona."--[Revisar que Damp LOam sea Tierra Húmeda]--
L["lehgo_note"] = "Destroy Quivering Gorm Eggs and kill {npc:171827} until he spawns. En una cueva (entrada al sureste en las Madrigueras Polvorientas Dusty Burrows)."--[Revisar que Dusty Burrows sea Madrigueras Polvorientas y traducir el resto]--
L["rootwrithe_note"] = "Empuja a las {npc:167928} hasta que aparezca el raro."
L["rotbriar_note"] = "Habla con los {npc:171684} cercanos para invocar el raro después de algo de diálogo."
L["slumbering_note"] = "Correr hacia la niebla te aturdirá y te alejará. Usa una bengala o una mascota con daño en área para sacarlo fuera de la niebla."
L["skuld_vit_note"] = "En una cueva bloqueada por una barrera. Una Hada de la Noche debe usar {spell:310143} para entrar en la cueva. Una vez haya sido puleado el raro, la barrera desaparecerá."--[Revisar que Night Fae sea Hada de la Noche]--
L["valfir_note"] = "Click the Sparkling Animaseed a mitad de camino y usar {spell:338045} para quitar su {spell:338038} buff."--[[Revisar the Sparkling Animassed]]--
L["wrigglemortis_note"] = "Pullea el {npc:164179} para hacer aparecer el raro."
