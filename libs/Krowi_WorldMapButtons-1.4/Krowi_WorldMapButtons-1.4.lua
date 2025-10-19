--[[
	Krowi's World Map Buttons License
		Copyright ©2020 The contents of this library, excluding third-party resources, are
		copyrighted to their authors with all rights reserved.

		This library is free to use and the authors hereby grants you the following rights:

		1. 	You may make modifications to this library for private use only, you
			may not publicize any portion of this library. The only exception being you may
			upload to the github website.

		2. 	Do not modify the name of this library, including the library folders.

		3. 	This copyright notice shall be included in all copies or substantial
			portions of the Software.

		All rights not explicitly addressed in this license are reserved by
		the copyright holders.
]]

local lib, oldminor = LibStub:NewLibrary('Krowi_WorldMapButtons-1.4', 7);

if not lib then
	return;
end

local version = (GetBuildInfo());
local major = string.match(version, "(%d+)%.(%d+)%.(%d+)(%w?)");
lib.IsClassic = major == "1";
lib.IsTbcClassic = major == "2";
lib.IsWrathClassic = major == "3";
lib.HasNoOverlay = lib.IsClassic or lib.IsTbcClassic or lib.IsWrathClassic;
lib.IsDragonflight = major == "10";
lib.IsTheWarWithin = major == "11";
lib.IsMainline = lib.IsDragonflight or lib.IsTheWarWithin;

local AddButton;

lib.XOffset, lib.YOffset = 4, -2;
function lib:SetOffsets(xOffset, yOffset)
	self.XOffset = xOffset or self.XOffset;
	self.YOffset = yOffset or self.YOffset;
end

function lib.SetPoints()
	local xOffset = lib.XOffset;
	for _, button in next, lib.Buttons do
		if button:IsShown() then
			button:SetPoint("TOPRIGHT", button.relativeFrame, -xOffset, lib.YOffset);
			xOffset = xOffset + 32;
		end
	end
end

local function HookDefaultButtons()
	if WorldMapFrame.overlayFrames == nil then
		lib.HookedDefaultButtons = true;
		return;
	end

	for _, f in next, WorldMapFrame.overlayFrames do
		if WorldMapTrackingOptionsButtonMixin and f.OnLoad == WorldMapTrackingOptionsButtonMixin.OnLoad then
			f.KrowiWorldMapButtonsIndex = #lib.Buttons;
			tinsert(lib.Buttons, f);
		end
		if WorldMapTrackingPinButtonMixin and f.OnLoad == WorldMapTrackingPinButtonMixin.OnLoad then
			f.KrowiWorldMapButtonsIndex = #lib.Buttons;
			tinsert(lib.Buttons, f);
		end
		if WorldMapShowLegendButtonMixin and f.OnLoad == WorldMapShowLegendButtonMixin.OnLoad then
			f.KrowiWorldMapButtonsIndex = #lib.Buttons;
			tinsert(lib.Buttons, f);
		end
	end

	lib.HookedDefaultButtons = true;
end

local function PatchWrathClassic()
	if lib.HasNoOverlay and WorldMapFrame.RefreshOverlayFrames == nil then
		WorldMapFrame.RefreshOverlayFrames = function()
		end
	end

	PatchWrathClassic = function() end;
end

function AddButton(button)
	local xOffset = 4 + #lib.Buttons * 32;
	button:SetPoint("TOPRIGHT", WorldMapFrame:GetCanvasContainer(), "TOPRIGHT", -xOffset, -2);
	button.relativeFrame = WorldMapFrame:GetCanvasContainer();
	hooksecurefunc(WorldMapFrame, lib.HasNoOverlay and "OnMapChanged" or "RefreshOverlayFrames", function()
		button:Refresh();
		lib.SetPoints();
	end);

	tinsert(lib.Buttons, button);

	return button;
end

function lib:Add(templateName, templateType)
	if self.Buttons == nil then
		self.Buttons = {};
	end

	if not self.HookedDefaultButtons then
		HookDefaultButtons();
	end

	PatchWrathClassic();

	local button = CreateFrame(templateType, "Krowi_WorldMapButtons" .. (#self.Buttons + 1), lib.HasNoOverlay and WorldMapFrame.ScrollContainer or WorldMapFrame, templateName);

	if lib.HasNoOverlay then
		button:SetFrameStrata("TOOLTIP");
	end

	return AddButton(button);
end

-- handle upgrades

if oldminor and oldminor == 1 then
	lib.Buttons = lib.buttons;
end

if oldminor and oldminor == 3 then
	if lib.HasNoOverlay then
		for _, button in next, lib.Buttons do
			button:SetParent(WorldMapFrame.ScrollContainer);
			button:SetFrameStrata("TOOLTIP");
		end
	end
end

if oldminor and oldminor < 7 then
	if lib.HookedDefaultButtons and WorldMapFrame.overlayFrames and WorldMapShowLegendButtonMixin then
		-- Add the Legend button to the hooked set
		for _, f in next, WorldMapFrame.overlayFrames do
			if f.OnLoad == WorldMapShowLegendButtonMixin.OnLoad then
				f.KrowiWorldMapButtonsIndex = #lib.Buttons;
				tinsert(lib.Buttons, f);
			end
		end
	end
end
