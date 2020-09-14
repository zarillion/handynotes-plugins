-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local L = ns.locale

-------------------------------------------------------------------------------
---------------------------- WORLD MAP BUTTON MIXIN ----------------------------
-------------------------------------------------------------------------------

local WorldMapOptionsButtonMixin = {}
_G[ADDON_NAME.."WorldMapOptionsButtonMixin"] = WorldMapOptionsButtonMixin

function WorldMapOptionsButtonMixin:OnLoad()
	UIDropDownMenu_SetInitializeFunction(self.DropDown, function (self, level)
		self:GetParent():InitializeDropDown(level)
	end)
	UIDropDownMenu_SetDisplayMode(self.DropDown, "MENU")
end

function WorldMapOptionsButtonMixin:OnMouseDown(button)
	self.Icon:SetPoint("TOPLEFT", 6, -6)
	ToggleDropDownMenu(1, nil, self.DropDown, self, 0, -5)
	PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON)
end

function WorldMapOptionsButtonMixin:OnMouseUp()
	self.Icon:SetPoint("TOPLEFT", self, "TOPLEFT", 4, -4)
end

function WorldMapOptionsButtonMixin:OnEnter()
	GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
	GameTooltip_SetTitle(GameTooltip, L["context_menu_title"])
	GameTooltip_AddNormalLine(GameTooltip, L["map_button_text"])
	GameTooltip:Show()
end

function WorldMapOptionsButtonMixin:Refresh()
	local mapID = self:GetParent():GetMapID()
	if mapID and ns.maps[mapID] then self:Show() else self:Hide() end
end

function WorldMapOptionsButtonMixin:InitializeDropDown(level)
	if level == 1 then
		UIDropDownMenu_AddButton({
			isTitle = true,
			notCheckable = true,
			text = WORLD_MAP_FILTER_TITLE
		})

		local map = ns.maps[self:GetParent():GetMapID()]
		local profile = ns.addon.db.profile

		for i, group in ipairs(map.groups) do
			local mapID = map.parents[group] or map.id
			UIDropDownMenu_AddButton({
				text = L["options_icons_"..group],
				isNotRadio = true,
				keepShownOnClick = true,
				hasArrow = true,
				value = group,
				checked = profile['icon_display_'..group..'_'..mapID],
				arg1 = 'icon_display_'..group..'_'..mapID,
				func = function (self, option)
					profile[option] = self.checked
					ns.addon:Refresh()
				end
			})
		end

		UIDropDownMenu_AddSeparator()
		UIDropDownMenu_AddButton({
			text = L["options_show_completed_nodes"],
			isNotRadio = true,
			keepShownOnClick = true,
			checked = profile.show_completed_nodes,
			func = function (self, option)
				profile.show_completed_nodes = self.checked
				ns.addon:Refresh()
			end
		})
	elseif level == 2 then
		local defaults = ns.optionDefaults.profile
		local profile = ns.addon.db.profile

		-- Get correct map ID to query/set options for
		local group = UIDROPDOWNMENU_MENU_VALUE
		local map = ns.maps[self:GetParent():GetMapID()]
		local mapID = map.parents[group] or map.id

		-- Check for global alpha/scale options before using map ones
		local alphaArg = 'icon_alpha_'..group
		local scaleArg = 'icon_scale_'..group
		if not defaults[alphaArg] then alpha_arg = alphaArg..'_'..mapID end
		if not defaults[scaleArg] then scale_arg = scaleArg..'_'..mapID end

		-- Adjust alpha/scale frames for this group
		local alphaFrame = _G[ADDON_NAME.."AlphaMenuOption"]
		local scaleFrame = _G[ADDON_NAME.."ScaleMenuOption"]
		alphaFrame.Label:SetText(L["options_opacity"])
		scaleFrame.Label:SetText(L["options_scale"])
		alphaFrame.Value:SetText(FormatPercentage(profile[alphaArg] or 1, true))
		scaleFrame.Value:SetText(string.format("%.2f", profile[scaleArg] or 1))
		alphaFrame.Slider:SetAccessorFunction(function () return profile[alphaArg] or 1 end)
		scaleFrame.Slider:SetAccessorFunction(function () return profile[scaleArg] or 1 end)
		alphaFrame.Slider:SetMutatorFunction(function (v)
			profile[alphaArg] = v
			alphaFrame.Value:SetText(FormatPercentage(v, true))
			ns.addon:Refresh()
		end)
		scaleFrame.Slider:SetMutatorFunction(function (v)
			profile[scaleArg] = v
			scaleFrame.Value:SetText(string.format("%.2f", v))
			ns.addon:Refresh()
		end)
		alphaFrame.Slider:UpdateVisibleState()
		scaleFrame.Slider:UpdateVisibleState()

		UIDropDownMenu_AddButton({ customFrame = alphaFrame }, 2)
		UIDropDownMenu_AddButton({ customFrame = scaleFrame }, 2)
	end
end