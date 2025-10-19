-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...

local L = ns.locale
local Class = ns.Class

-------------------------------------------------------------------------------
--------------------------------- REQUIREMENT ---------------------------------
-------------------------------------------------------------------------------

--[[

Base class for all node requirements.

    text (string): Requirement text

--]]

local Requirement = Class('Requirement', nil, {text = UNKNOWN})
function Requirement:GetText()
    local text = self.text
    if self.type then text = text .. ' (' .. self.type .. ')' end
    return text
end
function Requirement:IsMet() return false end

-------------------------------------------------------------------------------
--------------------------------- ACHIEVEMENT ---------------------------------
-------------------------------------------------------------------------------

local Achievement = Class('Achievement', Requirement, {type = L['achievement']})

function Achievement:Initialize(id)
    self.id = id
    self.text = string.format('{achievement:%d}', self.id)
end

function Achievement:IsMet()
    local _, _, _, completed = GetAchievementInfo(self.id)

    return completed
end

-------------------------------------------------------------------------------
---------------------------------- CURRENCY -----------------------------------
-------------------------------------------------------------------------------

local Currency = Class('Currency', Requirement, {type = L['currency']})

function Currency:Initialize(id, count)
    self.id, self.count = id, count
    self.text = string.format('{currency:%d} x%d', self.id, self.count)
end

function Currency:IsMet()
    local info = C_CurrencyInfo.GetCurrencyInfo(self.id)
    return info and info.quantity >= self.count
end

-------------------------------------------------------------------------------
------------------------------- GARRISON TALENT -------------------------------
-------------------------------------------------------------------------------

local GarrisonTalent = Class('GarrisonTalent', Requirement)

function GarrisonTalent:Initialize(id, text) self.id, self.text = id, text end

function GarrisonTalent:GetText()
    local info = C_Garrison.GetTalentInfo(self.id)
    return self.text == UNKNOWN and info.name or self.text:format(info.name)
end

function GarrisonTalent:IsMet()
    local info = C_Garrison.GetTalentInfo(self.id)
    return info and info.researched
end

-------------------------------------------------------------------------------
----------------------------- GARRISON TALENT RANK ----------------------------
-------------------------------------------------------------------------------

local GarrisonTalentRank = Class('GarrisonTalentRank', Requirement)

function GarrisonTalentRank:Initialize(id, rank) self.id, self.rank = id, rank end

function GarrisonTalentRank:GetText()
    local info = C_Garrison.GetTalentInfo(self.id)
    return L['ranked_research']:format(info.name, self.rank, info.talentMaxRank)
end

function GarrisonTalentRank:IsMet()
    local info = C_Garrison.GetTalentInfo(self.id)
    return info and info.talentRank and info.talentRank >= self.rank
end

-------------------------------------------------------------------------------
------------------------------------ ITEM -------------------------------------
-------------------------------------------------------------------------------

local Item = Class('Item', Requirement, {type = L['item']})

-- Quality (optional - added in Dragnflight):
-- 1 = Bronze 1 diamond
-- 2 = Silver 2 diamonds
-- 3 = Gold 3 diamonds
-- 4 = Diamond 4 diamonds
-- 5 = Orange 1 large diamond
function Item:Initialize(id, count, quality)
    self.id, self.count, self.quality = id, count, quality
    self.text = string.format('{item:%d}', self.id)
    if self.quality ~= nil then
        self.text = self.text ..
                        C_Texture.GetCraftingReagentQualityChatIcon(self.quality)
    end
    if self.count and self.count > 1 then
        self.text = self.text .. ' x' .. self.count
    end
end

function Item:IsMet() return ns.PlayerHasItem(self.id, self.count) end

-------------------------------------------------------------------------------
------------------------------------- PET -------------------------------------
-------------------------------------------------------------------------------

local Pet = Class('Pet', Requirement, {type = L['pet']})

function Pet:Initialize(id)
    self.id = id
    self.text = select(1, C_PetJournal.GetPetInfoBySpeciesID(self.id))
end

function Pet:IsMet() return C_PetJournal.GetNumCollectedInfo(self.id) > 0 end

-------------------------------------------------------------------------------
--------------------------------- PROFESSION ----------------------------------
-------------------------------------------------------------------------------

local Profession = Class('Profession', Requirement)

function Profession:Initialize(skillID, variantID, level)
    self.skillID = skillID
    self.variantID = variantID
    self.level = level
    self.text = C_TradeSkillUI.GetTradeSkillDisplayName(variantID or skillID)

    if level then self.text = self.text .. ' (' .. level .. ')' end
end

function Profession:IsMet() return ns.PlayerHasProfession(self.skillID) end

-------------------------------------------------------------------------------
------------------------------------ QUEST ------------------------------------
-------------------------------------------------------------------------------

local Quest = Class('Quest', Requirement, {type = L['quest']})

function Quest:Initialize(id, text, repeatable)
    self.id = id
    self.text = text
    self.type = repeatable and L['quest_repeatable'] or self.type
end

function Quest:GetText()
    local text = C_QuestLog.GetTitleForQuestID(self.id) or self.text or UNKNOWN
    return ('%s (%s)'):format(text, self.type)
end

function Quest:IsMet() return C_QuestLog.IsQuestFlaggedCompleted(self.id) end

-------------------------------------------------------------------------------
--------------------------------- REPUTATION ----------------------------------
-------------------------------------------------------------------------------

local Reputation = Class('Reputation', Requirement)

-- @todo will cause problems when requiring lower / negative reputations. Maybe add comparison as optional parameter with default value '>='.
function Reputation:Initialize(id, level, isRenown, isAmount)
    self.id = id
    self.level = level
    self.isRenown = isRenown
    self.isAmount = isAmount
end

function Reputation:GetText()
    local level = self.level
    if self.isAmount then
        level = ns.FormatReputation(self.level)
    elseif self.isRenown then
        level = _G['COVENANT_SANCTUM_LEVEL']:format(level)
    else
        level = GetText('FACTION_STANDING_LABEL' .. level)
    end
    return ('%s (%s)'):format(ns.api.GetFactionInfoByID(self.id), level)
end

function Reputation:IsMet()
    if self.isAmount then
        return select(6, ns.api.GetFactionInfoByID(self.id)) >= self.level
    elseif self.isRenown then
        return C_MajorFactions.GetCurrentRenownLevel(self.id) >= self.level
    else
        return select(3, ns.api.GetFactionInfoByID(self.id)) >= self.level
    end
end

-------------------------------------------------------------------------------
------------------------------------ SPELL ------------------------------------
-------------------------------------------------------------------------------

local Spell = Class('Spell', Requirement, {type = L['spell']})

function Spell:Initialize(id)
    self.id = id
    self.text = string.format('{spell:%d}', self.id)
end

function Spell:IsMet() return C_UnitAuras.GetPlayerAuraBySpellID(self.id) ~= nil end

-------------------------------------------------------------------------------
------------------------------- Specialization --------------------------------
-------------------------------------------------------------------------------

local Specialization = Class('Specialization', Requirement,
    {type = _G['SPECIALIZATION']})

function Specialization:Initialize(id)
    self.id = id
    self.text = select(2, GetSpecializationInfoByID(self.id))
end

function Specialization:IsMet()
    local specID = GetSpecializationInfo(GetSpecialization())
    return specID == self.id
end

-------------------------------------------------------------------------------
------------------------------------- TOY -------------------------------------
-------------------------------------------------------------------------------

local Toy = Class('Toy', Item, {type = L['toy']})

function Toy:IsMet() return PlayerHasToy(self.id) end

-------------------------------------------------------------------------------
----------------------------------- WAR MODE ----------------------------------
-------------------------------------------------------------------------------

local WarMode = Class('WarMode', Requirement, {
    text = PVP_LABEL_WAR_MODE,
    IsMet = function()
        return C_PvP.IsWarModeActive() or C_PvP.IsWarModeDesired()
    end
})()

-------------------------------------------------------------------------------

ns.requirement = {
    Achievement = Achievement,
    Currency = Currency,
    GarrisonTalent = GarrisonTalent,
    GarrisonTalentRank = GarrisonTalentRank,
    Item = Item,
    Pet = Pet,
    Profession = Profession,
    Quest = Quest,
    Reputation = Reputation,
    Requirement = Requirement,
    Specialization = Specialization,
    Spell = Spell,
    Toy = Toy,
    WarMode = WarMode
}
