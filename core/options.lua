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
        force_nodes = false,
        
        -- poi color
        poi_color_R = 0,
        poi_color_G = 0,
        poi_color_B = 1,
        
        -- path color
        path_color_R = 0,
        path_color_G = 0,
        path_color_B = 1
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
                        wipe(ns.addon.db.char)
                        ns.addon:Refresh()
                    end
                },
                FocusHeader = {
                    type = "header",
                    name = L["options_focus_settings"],
                    order = 15,
                },
                POI_color = {
                    type = "color",
                    name = L["options_poi_color"],
                    desc = L["options_poi_color_desc"],
                    set = function(_,r,g,b,a)
                    ns.addon.db.profile.poi_color_R = r
                    ns.addon.db.profile.poi_color_G = g
                    ns.addon.db.profile.poi_color_B = b
                    ns.addon:Refresh()
                    end,
                    get = function(info) return 
                    ns.addon.db.profile.poi_color_R, 
                    ns.addon.db.profile.poi_color_G, 
                    ns.addon.db.profile.poi_color_B
                    end,
                    order = 16,
                },
                PATH_color = {
                    type = "color",
                    name = L["options_path_color"],
                    desc = L["options_path_color_desc"],
                    set = function(_,r,g,b,a)
                    ns.addon.db.profile.path_color_R = r
                    ns.addon.db.profile.path_color_G = g
                    ns.addon.db.profile.path_color_B = b
                    ns.addon:Refresh()
                    end,
                    get = function(info) return
                    ns.addon.db.profile.path_color_R,
                    ns.addon.db.profile.path_color_G,
                    ns.addon.db.profile.path_color_B
                    end,
                    order = 17,
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

-- Display these groups in the global settings tab. They are the most common
-- group options that players might want to customize.

function ns.CreateGlobalGroupOptions()
    for i, group in ipairs({
        ns.groups.RARE,
        ns.groups.TREASURE,
        ns.groups.PETBATTLE,
        ns.groups.OTHER
    }) do
        ns.options.args.GlobalTab.args['group_icon_'..group.name] = {
            type = "header",
            name = L["options_icons_"..group.name],
            order = i * 10,
        }

        ns.options.args.GlobalTab.args['icon_scale_'..group.name] = {
            type = "range",
            name = L["options_scale"],
            desc = L["options_scale_desc"],
            min = 0.3, max = 3, step = 0.01,
            arg = group.scaleArg,
            width = 1.13,
            order = i * 10 + 1,
        }

        ns.options.args.GlobalTab.args['icon_alpha_'..group.name] = {
            type = "range",
            name = L["options_opacity"],
            desc = L["options_opacity_desc"],
            min = 0, max = 1, step = 0.01,
            arg = group.alphaArg,
            width = 1.13,
            order = i * 10 + 2,
        }
    end
end

-------------------------------------------------------------------------------
------------------------------- OPTIONS HELPERS -------------------------------
-------------------------------------------------------------------------------

local _INITIALIZED = {}

function ns.CreateGroupOptions (map, group)
    -- Check if we've already initialized this group
    if _INITIALIZED[group.name..map.id] then return end
    _INITIALIZED[group.name..map.id] = true

    -- Create map options group under zones tab
    local options = ns.options.args.ZonesTab.args['Zone_'..map.id]
    if not options then
        options = {
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
        ns.options.args.ZonesTab.args['Zone_'..map.id] = options
    end

    map._icons_order = map._icons_order or 0
    map._visibility_order = map._visibility_order or 0

    options.args.IconsGroup.args["icon_toggle_"..group.name] = {
        type = "toggle",
        arg = group.displayArg,
        name = L["options_icons_"..group.name],
        desc = L["options_icons_"..group.name.."_desc"],
        disabled = function () return not group:IsEnabled() end,
        width = 0.9,
        order = map._icons_order
    }

    options.args.VisibilityGroup.args["header_"..group.name] = {
        type = "header",
        name = L["options_icons_"..group.name],
        order = map._visibility_order
    }

    options.args.VisibilityGroup.args['icon_scale_'..group.name] = {
        type = "range",
        name = L["options_scale"],
        desc = L["options_scale_desc"],
        disabled = function () return not (group:IsEnabled() and group:GetDisplay()) end,
        min = 0.3, max = 3, step = 0.01,
        arg = group.scaleArg,
        width = 0.95,
        order = map._visibility_order + 1
    }

    options.args.VisibilityGroup.args['icon_alpha_'..group.name] = {
        type = "range",
        name = L["options_opacity"],
        desc = L["options_opacity_desc"],
        disabled = function () return not (group:IsEnabled() and group:GetDisplay()) end,
        min = 0, max = 1, step = 0.01,
        arg = group.alphaArg,
        width = 0.95,
        order = map._visibility_order + 2
    }

    map._icons_order = map._icons_order + 1
    map._visibility_order = map._visibility_order + 3
end
