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
	local function InitializeDropDown(self)
		self:GetParent():InitializeDropDown()
	end
	UIDropDownMenu_SetInitializeFunction(self.DropDown, InitializeDropDown)
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

function WorldMapOptionsButtonMixin:InitializeDropDown()
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
end