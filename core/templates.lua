-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale

local LibDD = LibStub:GetLibrary('LibUIDropDownMenu-4.0')

-------------------------------------------------------------------------------
--------------------------- UIDROPDOWNMENU_ADDSLIDER --------------------------
-------------------------------------------------------------------------------

local function Custom_UIDropDownMenu_AddSlider(info, level)
    local function format(v)
        if info.percentage then return FormatPercentage(v, true) end
        return string.format('%.2f', v)
    end

    info.frame.Label:SetText(info.text)
    info.frame.Value:SetText(format(info.value))
    info.frame.Slider:SetMinMaxValues(info.min, info.max)
    info.frame.Slider:SetMinMaxValues(info.min, info.max)
    info.frame.Slider:SetValueStep(info.step)
    info.frame.Slider:SetAccessorFunction(function() return info.value end)
    info.frame.Slider:SetMutatorFunction(function(v)
        info.frame.Value:SetText(format(v))
        info.func(v)
    end)
    info.frame.Slider:UpdateVisibleState()

    LibDD:UIDropDownMenu_AddButton({customFrame = info.frame}, level)
end

-------------------------------------------------------------------------------
---------------------------- WORLD MAP BUTTON MIXIN ---------------------------
-------------------------------------------------------------------------------

local WorldMapOptionsButtonMixin = {}
_G[ADDON_NAME .. 'WorldMapOptionsButtonMixin'] = WorldMapOptionsButtonMixin

-- Helper functions
local function IsGroupChecked(data) return data.group:GetDisplay(data.mapid) end
local function SetGroupChecked(data)
    data.group:SetDisplay(not IsGroupChecked(data), data.mapid)
end

local function GetOpt(option) return ns:GetOpt(option) end
local function SetOpt(option) ns:SetOpt(option, not ns:GetOpt(option)) end

local function GetGroupText(group, isAchievement) -- to assemble the Menu button text
    local iconLink = type(group.icon) == 'number' and
                         ns.GetIconLink(group.icon, 12, 1, 0) .. ' ' or
                         ns.GetIconLink(group.icon, 16)
    local status = ''

    if isAchievement then
        local _, _, _, completed, _, _, _, _, _, _, _, _, earnedByMe =
            GetAchievementInfo(group.achievement)
        status = ' ' .. (earnedByMe and ns.GetIconLink('check_gn') or
                     (completed and ns.GetIconLink('check_bl') or ''))
    end
    return iconLink .. ' ' .. ns.RenderLinks(group.label, true) .. status
end
-- Helper functions end

function WorldMapOptionsButtonMixin:OnLoad()
    self:SetupMenu(function(dropdown, root)
        local map = ns.maps[self:GetParent():GetMapID()]
        if not map then return end

        root:CreateTitle(WORLD_MAP_FILTER_LABEL_SHOW)

        local current_group_type, achievements_menu_added = nil, false

        for _, group in ipairs(map.groups) do
            if current_group_type and current_group_type ~= group.type then -- Add a separator each time the group type changes
                root:CreateDivider()
            end
            current_group_type = group.type

            if group:IsEnabled() and group:HasEnabledNodes(map) and group.type ~=
                ns.group_types.ACHIEVEMENT then
                local group_menu_button =
                    root:CreateCheckbox(GetGroupText(group), IsGroupChecked,
                        SetGroupChecked, {mapid = map.id, group = group})

                -- submenu for group options
                group_menu_button:CreateTemplate(ADDON_NAME ..
                                                     'SliderMenuOptionTemplate')

            elseif group:IsEnabled() and group:HasEnabledNodes(map) and
                group.type == ns.group_types.ACHIEVEMENT and
                not achievements_menu_added then
                local ach_menu = root:CreateButton(
                    ns.GetIconLink(236671, 12, 1, 0) .. '  ' .. ACHIEVEMENTS)

                -- Submenu for achievements
                for _, ach_group in ipairs(map.groups) do
                    if ach_group.type == ns.group_types.ACHIEVEMENT and
                        ach_group:IsEnabled() and ach_group:HasEnabledNodes(map) then

                        local ach_menu_button =
                            ach_menu:CreateCheckbox(GetGroupText(ach_group, true),
                                IsGroupChecked, SetGroupChecked, {
                                    mapid = map.id,
                                    group = ach_group
                                })
                        ach_menu_button:CreateTemplate(ADDON_NAME ..
                                                           'SliderMenuOptionTemplate')
                    end
                end
                achievements_menu_added = true
            end
        end

        root:CreateDivider()

        local menu_reward_types = root:CreateButton(L['options_reward_types'])
        for i, type in ipairs({
            'manuscript', 'mount', 'pet', 'recipe', 'toy', 'transmog',
            'all_transmog'
        }) do
            menu_reward_types:CreateCheckbox(
                L['options_' .. type .. '_rewards'], GetOpt, SetOpt,
                'show_' .. type .. '_rewards')
        end

        root:CreateCheckbox(L['options_show_completed_nodes'], GetOpt, SetOpt,
            'show_completed_nodes')
        root:CreateCheckbox(L['options_toggle_hide_done_rare'], GetOpt, SetOpt,
            'hide_done_rares')
        root:CreateCheckbox(L['options_toggle_use_char_achieves'], GetOpt,
            SetOpt, 'use_char_achieves')

        root:CreateButton(L['options_open_settings_panel'], function()
            HideUIPanel(WorldMapFrame)
            Settings.OpenToCategory('HandyNotes')
            LibStub('AceConfigDialog-3.0'):SelectGroup('HandyNotes', 'plugins',
                ADDON_NAME, 'ZonesTab', 'Zone_' .. map.id)
        end) -- todo
    end)
end

function WorldMapOptionsButtonMixin:OnMouseDown(button)
    self.Icon:SetPoint('TOPLEFT', 8, -8)
    PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON)
end

function WorldMapOptionsButtonMixin:OnMouseUp()
    self.Icon:SetPoint('TOPLEFT', self, 'TOPLEFT', 6, -6)
end

function WorldMapOptionsButtonMixin:OnEnter()
    GameTooltip:SetOwner(self, 'ANCHOR_RIGHT')
    GameTooltip_SetTitle(GameTooltip, ns.plugin_name)
    GameTooltip_AddNormalLine(GameTooltip, L['map_button_text'])
    GameTooltip:Show()
end

function WorldMapOptionsButtonMixin:Refresh()
    local enabled = ns:GetOpt('show_worldmap_button')
    local map = ns.maps[self:GetParent():GetMapID() or 0]
    if enabled and map and map:HasEnabledGroups() then
        self:Show()
    else
        self:Hide()
    end
end

-- function WorldMapOptionsButtonMixin:AddGroupOptions(group, level)
--     local map = ns.maps[self:GetParent():GetMapID()]

--     self.GroupDesc.Text:SetText(ns.RenderLinks(group.desc))
--     LibDD:UIDropDownMenu_AddButton({customFrame = self.GroupDesc}, level)
--     LibDD:UIDropDownMenu_AddButton({notClickable = true, notCheckable = true},
--         level)

--     Custom_UIDropDownMenu_AddSlider({
--         text = L['options_opacity'],
--         min = 0,
--         max = 1,
--         step = 0.01,
--         value = group:GetAlpha(map.id),
--         frame = self.AlphaOption,
--         percentage = true,
--         func = function(v) group:SetAlpha(v, map.id) end
--     }, level)

--     Custom_UIDropDownMenu_AddSlider({
--         text = L['options_scale'],
--         min = 0.3,
--         max = 3,
--         step = 0.05,
--         value = group:GetScale(map.id),
--         frame = self.ScaleOption,
--         func = function(v) group:SetScale(v, map.id) end
--     }, level)
-- end
