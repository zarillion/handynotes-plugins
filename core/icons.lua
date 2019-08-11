local ADDON_NAME, ns = ...
local ICONS = "Interface\\Addons\\"..ADDON_NAME.."\\icons\\icons.blp"
local ICONS_SIZE = 256

ns.icons = {

    ---------------------------------------------------------------------------
    ---------------------------------- GAME -----------------------------------
    ---------------------------------------------------------------------------

    default = "Interface\\Icons\\TRADE_ARCHAEOLOGY_CHESTOFTINYGLASSANIMALS",
    diablo_murloc = "Interface\\Icons\\inv_pet_diablobabymurloc.blp",
    emerald_cat = "Interface\\Icons\\trade_archaeology_catstatueemeraldeyes.blp",
    green_egg = "Interface\\Icons\\Inv_egg_02.blp",
    slime = "Interface\\Icons\\ability_creature_poison_05.blp",

    ---------------------------------------------------------------------------
    -------------------------------- EMBEDDED ---------------------------------
    ---------------------------------------------------------------------------

    -- coords={l, r, t, b}
    battle_pet = { icon=ICONS, coords={1, 29, 213, 239} },
    cave = { icon=ICONS, coords={94, 116, 1, 25} },
    peg_blue = { icon=ICONS, coords={0, 20, 63, 82} },
    portal = { icon=ICONS, coords={1, 28, 186, 211} },
    shootbox_blue = { icon=ICONS, coords={119, 152, 1, 43} },
    skull_blue = { icon=ICONS, coords={78, 105, 134, 163} },
    skull_white = { icon=ICONS, coords={78, 105, 104, 133} },
    star_chest = { icon=ICONS, coords={118, 153, 45, 80} },
    treasure = { icon=ICONS, coords={119, 141, 81, 106} },
    treasure_yellow = { icon=ICONS, coords={143, 165, 81, 106} },
    treasure_orange = { icon=ICONS, coords={167, 189, 81, 106} },
    treasure_red = { icon=ICONS, coords={191, 213, 81, 106} },
    treasure_purple = { icon=ICONS, coords={119, 141, 107, 132} },
    treasure_blue = { icon=ICONS, coords={143, 165, 107, 132} },
    treasure_teal = { icon=ICONS, coords={167, 189, 107, 132} },
    treasure_green = { icon=ICONS, coords={191, 213, 107, 132} },
    treasure_camo = { icon=ICONS, coords={119, 141, 133, 159} },
    treasure_lime = { icon=ICONS, coords={143, 165, 133, 159} },
    treasure_brown = { icon=ICONS, coords={167, 189, 133, 159} },
    treasure_white = { icon=ICONS, coords={191, 213, 133, 159} }

};

for name, icon in pairs(ns.icons) do
    if type(icon) == 'table' then
        icon.tCoordLeft = icon.coords[1]/ICONS_SIZE
        icon.tCoordRight = icon.coords[2]/ICONS_SIZE
        icon.tCoordTop = icon.coords[3]/ICONS_SIZE
        icon.tCoordBottom = icon.coords[4]/ICONS_SIZE
        icon.coords = nil
    end
end
