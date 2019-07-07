local _, ns = ...

local BATTLE_PET_SCALE = 1.1;
local CAVE_SCALE = 1.5;
local PORTAL_SCALE = 1.5;
local SKULL_SCALE = 1.8;
local SHOOTBOX_SCALE = 2;
local STAR_CHEST_SCALE = 1.5;
local TREASURE_SCALE = 1.3;

ns.icons = {
    skull_grey="Interface\\Addons\\HandyNotes_MechagonAndNazjatar\\Artwork\\RareWhite.blp",
    skull_purple="Interface\\Addons\\HandyNotes_MechagonAndNazjatar\\Artwork\\RarePurple.blp",
    skull_blue="Interface\\Addons\\HandyNotes_MechagonAndNazjatar\\Artwork\\RareBlue.blp",
    skull_yellow="Interface\\Addons\\HandyNotes_MechagonAndNazjatar\\Artwork\\RareYellow.blp",
	default="Interface\\Icons\\TRADE_ARCHAEOLOGY_CHESTOFTINYGLASSANIMALS",
	eye="Interface\\Icons\\INV_Misc_Eye_02.blp",
	shadowmend="Interface\\Icons\\Spell_Priest_Shadow Mend.blp",
    battle_pet={
        icon="Interface\\Addons\\HandyNotes_MechagonAndNazjatar\\Artwork\\BattlePet.blp",
        scale=BATTLE_PET_SCALE
    },
    portal={
        icon="Interface\\Addons\\HandyNotes_MechagonAndNazjatar\\Artwork\\Portal.blp",
        scale=PORTAL_SCALE
    },
    treasure={
        icon="Interface\\Addons\\HandyNotes_MechagonAndNazjatar\\Artwork\\Treasure.blp",
        scale=TREASURE_SCALE
    },
	portalGreen={
		icon="Interface\\Addons\\HandyNotes_MechagonAndNazjatar\\Artwork\\ObjectIconsAtlas.blp",
		tCoordLeft=219/512, tCoordRight=243/512, tCoordTop=108/512, tCoordBottom=129/512,
	},
	cave={
		icon="Interface\\Addons\\HandyNotes_MechagonAndNazjatar\\Artwork\\ObjectIconsAtlas.blp",
		tCoordLeft=439/512, tCoordRight=470/512, tCoordTop=62/512, tCoordBottom=95/512,
        scale=CAVE_SCALE
	},
	starChest={
		icon="Interface\\Addons\\HandyNotes_MechagonAndNazjatar\\Artwork\\ObjectIconsAtlas.blp",
		tCoordLeft=351/512, tCoordRight=383/512, tCoordTop=408/512, tCoordBottom=440/512,
        scale=STAR_CHEST_SCALE
	},
	starChestBlue={
		icon="Interface\\Addons\\HandyNotes_MechagonAndNazjatar\\Artwork\\shootboxes.blp",
		tCoordLeft=6/256, tCoordRight=58/256, tCoordTop=6/64, tCoordBottom=58/64,
        scale=SHOOTBOX_SCALE
	},
	starChestPurple={
		icon="Interface\\Addons\\HandyNotes_MechagonAndNazjatar\\Artwork\\shootboxes.blp",
		tCoordLeft=(64+6)/256, tCoordRight=(64+58)/256, tCoordTop=6/64, tCoordBottom=58/64,
        scale=SHOOTBOX_SCALE
	},
	starChestYellow={
		icon="Interface\\Addons\\HandyNotes_MechagonAndNazjatar\\Artwork\\shootboxes.blp",
		tCoordLeft=(128+6)/256, tCoordRight=(128+58)/256, tCoordTop=6/64, tCoordBottom=58/64,
        scale=SHOOTBOX_SCALE
	},
	starChestBlank={
		icon="Interface\\Addons\\HandyNotes_MechagonAndNazjatar\\Artwork\\shootboxes.blp",
		tCoordLeft=(192+6)/256, tCoordRight=(192+58)/256, tCoordTop=6/64, tCoordBottom=58/64,
        scale=SHOOTBOX_SCALE
	},
	skullWhite={
		icon="Interface\\Addons\\HandyNotes_MechagonAndNazjatar\\Artwork\\skulls.blp",
		tCoordLeft=0/256, tCoordRight=40/256, tCoordTop=0/256, tCoordBottom=40/256,
        scale=SKULL_SCALE
	},
	skullWhiteRedGlow={
		icon="Interface\\Addons\\HandyNotes_MechagonAndNazjatar\\Artwork\\skulls.blp",
		tCoordLeft=40/256, tCoordRight=80/256, tCoordTop=0/256, tCoordBottom=40/256,
        scale=SKULL_SCALE
	},
	skullWhiteGreenGlow={
		icon="Interface\\Addons\\HandyNotes_MechagonAndNazjatar\\Artwork\\skulls.blp",
		tCoordLeft=80/256, tCoordRight=120/256, tCoordTop=0/256, tCoordBottom=40/256,
        scale=SKULL_SCALE
	},
	skullBlue={
		icon="Interface\\Addons\\HandyNotes_MechagonAndNazjatar\\Artwork\\skulls.blp",
		tCoordLeft=0/256, tCoordRight=40/256, tCoordTop=40/256, tCoordBottom=80/256,
        scale=SKULL_SCALE
	},
	skullBlueRedGlow={
		icon="Interface\\Addons\\HandyNotes_MechagonAndNazjatar\\Artwork\\skulls.blp",
		tCoordLeft=40/256, tCoordRight=80/256, tCoordTop=40/256, tCoordBottom=80/256,
        scale=SKULL_SCALE
	},
	skullBlueGreenGlow={
		icon="Interface\\Addons\\HandyNotes_MechagonAndNazjatar\\Artwork\\skulls.blp",
		tCoordLeft=80/256, tCoordRight=120/256, tCoordTop=40/256, tCoordBottom=80/256,
        scale=SKULL_SCALE
	}
};
