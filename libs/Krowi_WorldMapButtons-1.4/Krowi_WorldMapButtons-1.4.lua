--[[
    Copyright (c) 2023 Krowi

    All Rights Reserved unless otherwise explicitly stated.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.
]]

---@diagnostic disable: undefined-global

local lib, oldminor = LibStub:NewLibrary('Krowi_WorldMapButtons-1.4', 9);

if not lib then
	return;
end

local version = (GetBuildInfo());
local major = string.match(version, "(%d+)%.(%d+)%.(%d+)(%w?)");
major = tonumber(major);
lib.HasNoOverlay = major <= 3;
lib.IsMainline = major >= 11;

lib.XOffset, lib.YOffset = 4, -2;

function lib:SetOffsets(xOffset, yOffset)
	self.XOffset = xOffset or self.XOffset;
	self.YOffset = yOffset or self.YOffset;
end

function lib.SetPoints()
	local xOffset, yOffset = lib.XOffset, lib.YOffset;
	for _, button in next, lib.Buttons do
		if button:IsShown() then
			button:SetPoint("TOPRIGHT", button.relativeFrame, -xOffset, yOffset);
			if lib.IsMainline then
				yOffset = yOffset - 32;
			else
				xOffset = xOffset + 32;
			end
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

local function AddButton(button)
	local xOffset, yOffset;
	if lib.IsMainline then
		yOffset = lib.YOffset - #lib.Buttons * 32;
	else
		xOffset = lib.XOffset + #lib.Buttons * 32;
	end
	button.relativeFrame = WorldMapFrame:GetCanvasContainer();
	button:SetPoint("TOPRIGHT", button.relativeFrame, lib.IsMainline and -lib.XOffset or -xOffset, lib.IsMainline and yOffset or lib.YOffset);
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