local ADDON_NAME, ns = ...
local ICONS = "Interface\\Addons\\"..ADDON_NAME.."\\icons\\icons.blp"

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

    battle_pet = { icon=ICONS, l=145/256, r=175/256, t=81/256, b=108/256 },
    portal = { icon=ICONS, l=123/256, r=150/256, t=110/256, b=135/256 },
    treasure = { icon=ICONS, l=121/256, r=143/256, t=82/256, b=107/256 },
    peg_blue = { icon=ICONS, l=0/256, r=20/256, t=63/256, b=82/256 },
    cave = { icon=ICONS, l=94/256, r=116/256, t=1/256, b=25/256 },
    star_chest = { icon=ICONS, l=118/256, r=153/256, t=45/256, b=80/256 },
    shootbox_blue = { icon=ICONS, l=119/256, r=152/256, t=1/256, b=43/256 },
    skull_white = { icon=ICONS, l=5/256, r=33/256, t=113/256, b=143/256 },
    skull_blue = { icon=ICONS, l=5/256, r=33/256, t=153/256, b=183/256 }

};

for name, icon in pairs(ns.icons) do
    if type(icon) == 'table' then
        ns.icons[name] = {
            icon = icon.icon,
            tCoordLeft = icon.l,
            tCoordRight = icon.r,
            tCoordTop = icon.t,
            tCoordBottom = icon.b
        }
    end
end
