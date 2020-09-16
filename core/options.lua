-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local _, ns = ...
local L = ns.locale

-------------------------------------------------------------------------------
---------------------------------- DEFAULTS -----------------------------------
-------------------------------------------------------------------------------

ns.optionDefaults = {
    profile = {
        -- icon scales
        icon_scale_caves = 1,
        icon_scale_other = 1,
        icon_scale_pet_battles = 1,
        icon_scale_rares = 1,
        icon_scale_treasures = 1,

        -- icon alphas
        icon_alpha_caves = 0.75,
        icon_alpha_other = 1.0,
        icon_alpha_pet_battles = 1.0,
        icon_alpha_rares = 0.75,
        icon_alpha_treasures = 0.75,

        -- visibility
        hide_done_rare = false,
        hide_minimap = false,
        show_completed_nodes = false,

        -- tooltip
        show_loot = true,
        show_notes = true,

        -- development
        development = false,
        show_debug_map = false,
        show_debug_quest = false,
        force_nodes = false
    },
}

-------------------------------------------------------------------------------
--------------------------------- OPTIONS UI ----------------------------------
-------------------------------------------------------------------------------

ns.options = {
    type = "group",
    name = L["options_title"],
    childGroups = "tab",
    get = function(info) return ns.addon.db.profile[info.arg] end,
    set = function(info, v) ns.addon.db.profile[info.arg] = v; ns.addon:Refresh() end,
    args = {
        GeneralTab = {
            type = "group",
            name = L["options_general_settings"],
            desc = L["options_general_description"],
            order = 0,
            args = {
                VisibilityHeader = {
                    type = "header",
                    name = L["options_visibility_settings"],
                    order = 10,
                },
                show_completed_nodes = {
                    type = "toggle",
                    arg = "show_completed_nodes",
                    name = L["options_show_completed_nodes"],
                    desc = L["options_show_completed_nodes_desc"],
                    order = 11,
                    width = "full",
                },
                hide_done_rare = {
                    type = "toggle",
                    arg = "hide_done_rare",
                    name = L["options_toggle_hide_done_rare"],
                    desc = L["options_toggle_hide_done_rare_desc"],
                    order = 12,
                    width = "full",
                },
                hide_minimap = {
                    type = "toggle",
                    arg = "hide_minimap",
                    name = L["options_toggle_hide_minimap"],
                    desc = L["options_toggle_hide_minimap_desc"],
                    order = 13,
                    width = "full",
                },
                restore_all_nodes = {
                    type = "execute",
                    name = L["options_restore_hidden_nodes"],
                    desc = L["options_restore_hidden_nodes_desc"],
                    order = 14,
                    width = "full",
                    func = function ()
                        table.wipe(ns.addon.db.char)
                        ns.addon:Refresh()
                    end
                },
                TooltipsHeader = {
                    type = "header",
                    name = L["options_tooltip_settings"],
                    order = 20,
                },
                show_loot = {
                    type = "toggle",
                    arg = "show_loot",
                    name = L["options_toggle_show_loot"],
                    desc = L["options_toggle_show_loot_desc"],
                    order = 21,
                },
                show_notes = {
                    type = "toggle",
                    arg = "show_notes",
                    name = L["options_toggle_show_notes"],
                    desc = L["options_toggle_show_notes_desc"],
                    order = 22,
                }
            }
        },
        GlobalTab = {
            type = "group",
            name = L["options_global"],
            desc = L["options_global_description"],
            order = 1,
            args = {
            }
        },
        ZonesTab = {
            type = "group",
            name = L["options_zones"],
            desc = L["options_zones_description"],
            childGroups = "select",
            order = 2,
            args = {
            }
        }
    }
}

for i, group in ipairs({'rares', 'treasures', 'pet_battles', 'other'}) do
    ns.options.args.GlobalTab.args['group_icon_'..group] = {
        type = "header",
        name = L["options_icons_"..group],
        order = i * 10,
    }

    ns.options.args.GlobalTab.args['icon_scale_'..group] = {
        type = "range",
        name = L["options_scale"],
        desc = L["options_scale_desc"],
        min = 0.3, max = 3, step = 0.01,
        arg = "icon_scale_"..group,
        width = 1.13,
        order = i * 10 + 1,
    }

    ns.options.args.GlobalTab.args['icon_alpha_'..group] = {
        type = "range",
        name = L["options_opacity"],
        desc = L["options_opacity_desc"],
        min = 0, max = 1, step = 0.01,
        arg = "icon_alpha_"..group,
        width = 1.13,
        order = i * 10 + 2,
    }
end

-------------------------------------------------------------------------------
------------------------------- OPTIONS HELPERS -------------------------------
-------------------------------------------------------------------------------

local _INITIALIZED = {}
local _EMPTY_DEFAULTS = {}

function ns.InitializeGroup (map, group)
    -- Check if we've already initialized this group
    if _INITIALIZED[group..map.id] then return end
    _INITIALIZED[group..map.id] = true

    -- Create default option values for this group if they are not set
    local defaults = ns.optionDefaults.profile
    local map_defaults = map.options[group] or _EMPTY_DEFAULTS

    -- Create display toggle default for this group. If global ones do not
    -- exist, also create scale/alpha defaults.
    defaults['icon_display_'..group..'_'..map.id] = map_defaults.display ~= false
    if not defaults['icon_alpha_'..group] then
        defaults['icon_alpha_'..group..'_'..map.id] = map_defaults.alpha or 1
    end
    if not defaults['icon_scale_'..group] then
        defaults['icon_scale_'..group..'_'..map.id] = map_defaults.scale or 1
    end

    -- Create map options group under zones tab
    local map_options = ns.options.args.ZonesTab.args['Zone_'..map.id]
    if not map_options then
        map_options = {
            type = "group",
            name = C_Map.GetMapInfo(map.id).name,
            args = {
                IconsGroup = {
                    type = "group",
                    name = L["options_icon_settings"],
                    inline = true,
                    order = 1,
                    args = {}
                },
                VisibilityGroup = {
                    type = "group",
                    name = L["options_visibility_settings"],
                    inline = true,
                    order = 2,
                    args = {}
                }
            }
        }
        ns.options.args.ZonesTab.args['Zone_'..map.id] = map_options
    end

    map._icons_order = map._icons_order or 0
    map._visibility_order = map._visibility_order or 0

    local defaults = ns.optionDefaults.profile
    local display_arg = "icon_display_"..group.."_"..map.id
    local alpha_arg = 'icon_alpha_'..group
    local scale_arg = 'icon_scale_'..group
    if not defaults[alpha_arg] then alpha_arg = alpha_arg..'_'..map.id end
    if not defaults[scale_arg] then scale_arg = scale_arg..'_'..map.id end

    map_options.args.IconsGroup.args["icon_toggle_"..group] = {
        type = "toggle",
        arg = display_arg,
        name = L["options_icons_"..group],
        desc = L["options_icons_"..group.."_desc"],
        width = 0.9,
        order = map._icons_order
    }

    map_options.args.VisibilityGroup.args["header_"..group] = {
        type = "header",
        name = L["options_icons_"..group],
        order = map._visibility_order
    }

    map_options.args.VisibilityGroup.args['icon_scale_'..group] = {
        type = "range",
        name = L["options_scale"],
        desc = L["options_scale_desc"],
        disabled = function () return not ns.addon.db.profile[display_arg] end,
        min = 0.3, max = 3, step = 0.01,
        arg = scale_arg,
        width = 0.95,
        order = map._visibility_order + 1
    }

    map_options.args.VisibilityGroup.args['icon_alpha_'..group] = {
        type = "range",
        name = L["options_opacity"],
        desc = L["options_opacity_desc"],
        disabled = function () return not ns.addon.db.profile[display_arg] end,
        min = 0, max = 1, step = 0.01,
        arg = alpha_arg,
        width = 0.95,
        order = map._visibility_order + 2
    }

    map._icons_order = map._icons_order + 1
    map._visibility_order = map._visibility_order + 3
end
