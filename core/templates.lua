-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale

-------------------------------------------------------------------------------
--------------------------------- CREATESLIDER --------------------------------
-------------------------------------------------------------------------------

local function Custom_CreateSlider(info, parent)
    local function format(v)
        if info.percentage then return FormatPercentage(v, true) end
        return string.format('%.2f', v)
    end

    parent:CreateTemplate(ADDON_NAME .. 'SliderMenuOptionTemplate')
        :AddInitializer(function(frame)
            local value = info.value()
            frame.Label:SetText(info.text)
            frame.Value:SetText(format(value))
            frame.Slider:SetMinMaxValues(info.min, info.max)
            frame.Slider:SetMinMaxValues(info.min, info.max)
            frame.Slider:SetValueStep(info.step)
            frame.Slider:SetAccessorFunction(function() return value end)
            frame.Slider:SetMutatorFunction(function(v)
                frame.Value:SetText(format(v))
                info.func(v)
            end)
            frame.Slider:UpdateVisibleState()
        end)
end

local function Custom_TextElement(text, parent)
    parent:CreateTemplate(ADDON_NAME .. 'TextMenuOptionTemplate')
        :AddInitializer(function(frame) frame.Text:SetText(text) end)
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

local function GetGroupText(group) -- to assemble the Menu button text
    local iconLink = type(group.icon) == 'number' and
                         ns.GetIconLink(group.icon, 12, 1, 0) .. ' ' or
                         ns.GetIconLink(group.icon, 16)
    local status = ''

    if group.type == ns.group_types.ACHIEVEMENT then
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

        local current_group_type = nil
        local achievements_menu = nil

        for _, group in ipairs(map.groups) do
            -- Add a separator each time the group type changes
            if current_group_type and current_group_type ~= group.type then
                root:CreateDivider()
            end
            current_group_type = group.type

            if group:IsEnabled() and group:HasEnabledNodes(map) then
                if group.type == ns.group_types.ACHIEVEMENT then
                    if not achievements_menu then
                        achievements_menu =
                            root:CreateButton(ns.GetIconLink(236671, 12, 1, 0) ..
                                                  '  ' .. ACHIEVEMENTS)
                    else
                        local ach_menu_button =
                            achievements_menu:CreateCheckbox(GetGroupText(group),
                                IsGroupChecked, SetGroupChecked, {
                                    mapid = map.id,
                                    group = group
                                })
                        self:AddGroupOptions(group, ach_menu_button)
                    end
                else
                    local group_menu_button =
                        root:CreateCheckbox(GetGroupText(group), IsGroupChecked,
                            SetGroupChecked, {mapid = map.id, group = group})

                    -- Submenu for group options
                    self:AddGroupOptions(group, group_menu_button)
                end
            end
        end

        root:CreateDivider()

        local menu_reward_types = root:CreateButton(L['options_reward_types'])
        for _, type in ipairs({
            'manuscript', 'mount', 'pet', 'recipe', 'toy', 'transmog',
            'all_transmog'
        }) do
            menu_reward_types:CreateCheckbox(
                L['options_' .. type .. '_rewards'], GetOpt, SetOpt,
                'show_' .. type .. '_rewards')
        end

        root:CreateCheckbox(L['options_toggle_use_char_achieves'], GetOpt,
            SetOpt, 'use_char_achieves')

        local ignore_class_button = root:CreateCheckbox(L['ignore_class_restrictions'], GetOpt,
            SetOpt, 'ignore_class_restrictions')
        ignore_class_button:SetTooltip(function(tooltip)
            tooltip:AddLine(L['ignore_class_restrictions_desc'], 0.8, 0.8, 0.8);
        end)

        local ignore_faction_button = root:CreateCheckbox(L['ignore_faction_restrictions'], GetOpt,
            SetOpt, 'ignore_faction_restrictions')
        ignore_faction_button:SetTooltip(function(tooltip)
            tooltip:AddLine(L['ignore_faction_restrictions_desc'], 0.8, 0.8, 0.8);
        end)

        root:CreateDivider()

        root:CreateButton(L['options_open_settings_panel'], function()
            HideUIPanel(WorldMapFrame)
            Settings.OpenToCategory('HandyNotes')
            LibStub('AceConfigDialog-3.0'):SelectGroup('HandyNotes', 'plugins',
                ADDON_NAME, 'ZonesTab', 'Zone_' .. map.id)
        end)
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

function WorldMapOptionsButtonMixin:AddGroupOptions(group, parent)
    local map = ns.maps[self:GetParent():GetMapID()]

    Custom_TextElement(ns.RenderLinks(group.desc), parent)

    parent:CreateDivider()

    -- Add show completed checkbox for this group
    local show_comp_opt = 'show_completed_' .. group.name
    local show_completed_button = parent:CreateCheckbox(
        L['options_show_completed_nodes'],
        function() return ns:GetOpt(show_comp_opt) end,
        function() ns:SetOpt(show_comp_opt, not ns:GetOpt(show_comp_opt)) end)

    -- Add tooltip text for show completed
    show_completed_button:SetTooltip(function(tooltip)
        tooltip:AddLine(L['options_show_completed_nodes_desc'], 0.8, 0.8, 0.8);
    end)

    -- Add hide done checkbox for this group
    local hide_done_opt = 'hide_done_' .. group.name
    local hide_done_button = parent:CreateCheckbox(
        L['options_hide_done_nodes'],
        function() return ns:GetOpt(hide_done_opt) end,
        function() ns:SetOpt(hide_done_opt, not ns:GetOpt(hide_done_opt)) end)

    -- Add tooltip text for hide done
    hide_done_button:SetTooltip(function(tooltip)
        tooltip:AddLine(L['options_hide_done_nodes_desc'], 0.8, 0.8, 0.8);
    end)

    Custom_CreateSlider({
        text = L['options_opacity'],
        min = 0,
        max = 1,
        step = 0.01,
        value = function() return group:GetAlpha(map.id) end,
        percentage = true,
        func = function(v) group:SetAlpha(v, map.id) end
    }, parent)

    Custom_CreateSlider({
        text = L['options_scale'],
        min = 0.3,
        max = 3,
        step = 0.05,
        value = function() return group:GetScale(map.id) end,
        func = function(v) group:SetScale(v, map.id) end
    }, parent)
end
