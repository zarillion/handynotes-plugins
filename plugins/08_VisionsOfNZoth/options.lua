-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local _, ns = ...
local L = ns.locale;

-------------------------------------------------------------------------------
------------------------------- ASSAULT EVENTS --------------------------------
-------------------------------------------------------------------------------

ns.optionDefaults.profile.icon_scale_assaultevents = 1
ns.optionDefaults.profile.icon_alpha_assaultevents = 1.0

ns.options.args.IconOptions.args['group_icon_assaultevents'] = {
    type = "header",
    name = L["options_icons_assaultevents"],
    order = 100,
}

ns.options.args.IconOptions.args['icon_scale_assaultevents'] = {
    type = "range",
    name = L["options_scale"],
    desc = L["options_scale_desc"],
    min = 0.25, max = 3, step = 0.01,
    arg = "icon_scale_assaultevents",
    order = 101,
}

ns.options.args.IconOptions.args['icon_alpha_assaultevents'] = {
    type = "range",
    name = L["options_opacity"],
    desc = L["options_opacity_desc"],
    min = 0, max = 1, step = 0.01,
    arg = "icon_alpha_assaultevents",
    order = 102,
}