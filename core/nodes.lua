-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Class = ns.Class
local Group = ns.Group
local IsInstance = ns.IsInstance
local Requirement = ns.requirement.Requirement

-------------------------------------------------------------------------------
------------------------------------- NODE ------------------------------------
-------------------------------------------------------------------------------

--[[

Base class for all displayed nodes.

    label (string): Tooltip title for this node
    sublabel (string): Oneline string to display under label
    group (Group): Options group for this node (display, scale, alpha)
    fgroup (string): A category of nodes that should be focused together
    icon (string|number): The icon texture to display
    alpha (float): The default alpha value for this type
    scale (float): The default scale value for this type
    minimap (bool): Should the node be displayed on the minimap
    parent (int|int[]): Parent map IDs to display the node on
    quest (int|int[]): Quest IDs that cause this node to disappear
    questAny (boolean): Hide node if *any* quests are true (default *all*)
    questCount (boolean): Display completed quest count as rlabel
    questDeps (int|int[]): Quest IDs that must be true to appear
    requires (str|Requirement[]): Requirements to interact or unlock
    rewards (Reward[]): Array of rewards for this node
--]]

local Node = Class('Node', nil, {
    label = UNKNOWN,
    minimap = true,
    alpha = 1,
    scale = 1,
    icon = 'default',
    group = ns.groups.MISC
})

function Node:Initialize(attrs)
    -- assign all attributes
    if attrs then for k, v in pairs(attrs) do self[k] = v end end

    -- normalize table values
    self.quest = ns.AsTable(self.quest)
    self.questDeps = ns.AsTable(self.questDeps)
    self.parent = ns.AsIDTable(self.parent)
    self.requires = ns.AsTable(self.requires, Requirement)
    self.group = ns.AsTable(self.group, Group)
    self.vignette = ns.AsTable(self.vignette)

    -- ensure proper group(s) is/are assigned
    for _, group in pairs(self.group) do
        if not IsInstance(group, Group) then
            error('group attribute must be a Group class instance: ' .. group)
        end
    end

    -- live event countdown (see ns.Intervals.LiveEvent below)
    if self.areaPOI then
        self.interval = ns.Intervals.LiveEvent({areaPoiID = self.areaPOI})
    end
end

--[[
Return the associated texture, scale and alpha value to pass to HandyNotes
for this node.
--]]

function Node:GetDisplayInfo(mapID, minimap)
    local icon = ns.GetIconPath(self.icon)
    local scale = self.scale * self.group[1]:GetScale(mapID) -- Get scale/alpha form first (main) group
    -- timer nodes enlarge while inside their timer window: 2.5x the default
    -- scale in the green/red tiers, 1.8x in the yellow tier (interval nodes
    -- have no red tier: their green window is 2.5x, the yellow window 1.8x)
    if self.interval and ns:GetOpt('interval_enlarged') then
        local isLive = IsInstance(self.interval, ns.Intervals.LiveEvent)
        if (isLive and self.interval:IsSoon()) or
            (not isLive and self.interval:IsGreen()) then
            scale = self.scale * 2.5 * self.group[1]:GetScale(mapID)
        elseif (isLive and self.interval:IsYellow()) or
            (not isLive and self.interval:IsSoon()) then
            scale = self.scale * 1.8 * self.group[1]:GetScale(mapID)
        end
    end
    local alpha = self.alpha * self.group[1]:GetAlpha(mapID)

    if not minimap and WorldMapFrame.isMaximized and
        ns:GetOpt('maximized_enlarged') then
        scale = scale * 1.3 -- enlarge on maximized world map
    end

    return icon, scale, alpha
end

--[[
Return the glow POI for this node. If the node is hovered or focused, a green
glow is applyed to help highlight the node.
--]]

function Node:GetGlow(mapID, minimap, focused)
    if self.glow then
        local _, scale, alpha = self:GetDisplayInfo(mapID, minimap)
        self.glow.alpha = alpha
        self.glow.scale = scale
        if focused then
            self.glow.r, self.glow.g, self.glow.b = 0, 1, 0
        elseif self.OnClick then
            self.glow.r, self.glow.g, self.glow.b = 0, 0, 1
        else
            self.glow.r, self.glow.g, self.glow.b = 1, 1, 0
        end
        return self.glow
    end
end

--[[
Return the "collected" status of this node. A node is collected if all
associated rewards have been obtained (achievements, toys, pets, mounts).
--]]

function Node:IsCollected(type)
    for reward in self:IterateRewards() do
        if (not type or ns.IsInstance(reward, type)) and reward:IsEnabled() then
            if reward:IsObtainable() and not reward:IsObtained() then
                return false
            end
        end
    end
    return true
end

--[[
Return the "completed" state of this node. A node is completed if any or all
associated quests have been completed. The behavior of any vs all is switched
with the `questAny` attribute (default: all).

This method can also be overridden to check for some other form of completion,
such as an achievement criteria.

This method is *not* called if the "Show completed" setting is enabled.
--]]

function Node:IsCompleted()
    if self.quest and self.questAny then
        -- Completed if *any* attached quest ids are true
        for i, quest in ipairs(self.quest) do
            if C_QuestLog.IsQuestFlaggedCompleted(quest) then
                return true
            end
        end
    elseif self.quest then
        -- Completed only if *all* attached quest ids are true
        for i, quest in ipairs(self.quest) do
            if not C_QuestLog.IsQuestFlaggedCompleted(quest) then
                return false
            end
        end
        return true
    end
    return false
end

--[[
Return true if this node should be displayed.
--]]

function Node:IsEnabled()
    -- Check prerequisites
    if not self:PrerequisiteCompleted() then return false end

    -- Check completed state
    if self.group == ns.groups.QUEST or not ns:GetOpt('show_completed_nodes') then
        if self:IsCompleted() then return false end
    end

    -- Check faction
    if self.faction then
        if ns:GetOpt('ignore_faction_restrictions') then return true end
        if self.faction ~= ns.faction then return false end
    end

    -- Check class
    if self.class then
        if ns:GetOpt('ignore_class_restrictions') then return true end
        if self.class ~= ns.class then return false end
    end

    return true
end

--[[
Iterate over rewards that are enabled for this character.
--]]

function Node:IterateRewards()
    local index, reward = 0, nil
    return function()
        if not (self.rewards and #self.rewards) then return end
        repeat
            index = index + 1
            if index > #self.rewards then return end
            reward = self.rewards[index]
        until reward and reward:IsEnabled()
        return reward
    end
end

--[[
Return the prerequisite state of this node. A node has its prerequisites met if
all quests defined in the `questDeps` attribute are completed. This method can
be overridden to check for other prerequisite criteria.
--]]

function Node:PrerequisiteCompleted()
    -- Prerequisite not met if any dependent quest ids are false
    if not self.questDeps then return true end
    for i, quest in ipairs(self.questDeps) do
        if not C_QuestLog.IsQuestFlaggedCompleted(quest) then
            return false
        end
    end
    return true
end

--[[
Prepare this node for display by fetching localization information for anything
referenced in the text attributes of this node. This method is called when a
world map containing this node is opened.
--]]

function Node:Prepare()
    -- verify chosen icon exists
    if type(self.icon) == 'string' and ns.icons[self.icon] == nil then
        error('unknown icon: ' .. self.icon)
    end

    -- initialize glow POI (if glow icon available)

    if not self.glow then
        local icon = ns.GetGlowPath(self.icon)
        if icon then self.glow = ns.poi.Glow({icon = icon}) end
    end

    ns.PrepareLinks(self.label)
    ns.PrepareLinks(self.sublabel)
    ns.PrepareLinks(self.location)
    ns.PrepareLinks(self.note)
    ns.PrepareLinks(self.rlabel)

    if self.requires then
        for i, req in ipairs(self.requires) do
            if IsInstance(req, Requirement) then
                ns.PrepareLinks(req:GetText())
            else
                ns.PrepareLinks(req)
            end
        end
    end

    if self.rewards then
        for i, reward in ipairs(self.rewards) do reward:Prepare() end
    end
end

--[[
Render this node onto the given tooltip. Many features are optional depending
on the attributes set on this specific node, such as setting an `rlabel` or
`sublabel` value.
--]]

function Node:Render(tooltip, focusable)
    -- render the label text with NPC names resolved
    tooltip:SetText(ns.RenderLinks(self.label, true))

    local color, text
    local rlabel = self.rlabel or ''

    if self.questCount and self.quest and #self.quest then
        -- set rlabel to a (completed / total) display for quest ids
        local count = 0
        for i, quest in ipairs(self.quest) do
            if C_QuestLog.IsQuestFlaggedCompleted(quest) then
                count = count + 1
            end
        end
        color = (count == #self.quest) and ns.status.Green or ns.status.Gray
        rlabel = rlabel .. ' ' .. color(tostring(count) .. '/' .. #self.quest)
    end

    if self.faction then
        rlabel = rlabel .. ' ' ..
                     ns.GetIconLink(self.faction:lower(), 16, 1, -1)
    end

    if focusable then
        -- add an rlabel hint to use left-mouse to focus the node
        local focus = ns.GetIconLink('left_mouse', 12) ..
                          ns.status.Gray(L['focus'])
        rlabel = (#rlabel > 0) and focus .. ' ' .. rlabel or focus
    end

    if self.OnClick then
        local click = ns.GetIconLink('left_mouse', 12)
        rlabel = click .. ' ' .. ns.status.Gray(self.clabel) or click
    end

    -- render top-right label text
    if #rlabel > 0 then
        local rtext = _G[tooltip:GetName() .. 'TextRight1']
        rtext:SetTextColor(1, 1, 1)
        rtext:SetText(ns.RenderLinks(rlabel, true))
        rtext:Show()
    end

    -- optional text directly under sublabel/label for development notes
    if self.devnote and _G['HandyNotes_ZarPluginsDevelopment'] then
        tooltip:AddLine(ns.RenderLinks(self.devnote), 1, 0, 1)
    end
    -- optional text directly under sublabel/label for development notes
    if self.areaPOI and _G['HandyNotes_ZarPluginsDevelopment'] then
        local _, scale = self:GetDisplayInfo(0, true)
        tooltip:AddLine(ns.RenderLinks('Poi ID: ' .. self.areaPOI), 0.58, 0.43,
            0.84)
        tooltip:AddLine(ns.RenderLinks('scale: ' .. ('%.2f'):format(scale)),
            0.58, 0.43, 0.84)
    end
    -- optional text directly under label
    if self.sublabel then
        tooltip:AddLine(ns.RenderLinks(self.sublabel, true), 1, 1, 1)
    end

    -- display item, spell or other requirements
    if self.requires then
        for i, req in ipairs(self.requires) do
            if IsInstance(req, Requirement) then
                color = req:IsMet() and ns.color.White or ns.color.Red
                text = color(L['requires'] .. ' ' .. req:GetText())
            else
                text = ns.color.Red(L['requires'] .. ' ' .. req)
            end
            tooltip:AddLine(ns.RenderLinks(text, true))
        end
    end

    -- additional text for the node to describe where the object or
    -- rare can be found
    if self.location and ns:GetOpt('show_notes') then
        if self.requires or self.sublabel then
            GameTooltip_AddBlankLineToTooltip(tooltip)
        end
        tooltip:AddLine(ns.RenderLinks(self.location), 1, 1, 1, true)
    end

    -- additional text for the node to describe how to interact with the
    -- object or summon the rare; rendered before the interval timers so
    -- live events line up with the old interval nodes. Blank line only
    -- when the node already has text above, otherwise it hugs the label.
    if self.note and ns:GetOpt('show_notes') then
        if self.requires or self.sublabel or self.location then
            GameTooltip_AddBlankLineToTooltip(tooltip)
        end
        tooltip:AddLine(ns.RenderLinks(self.note), 1, 1, 1, true)
    end

    -- adds text if the node spawns in a specific rotation (live event
    -- timers hide the line entirely when no event data is available);
    -- always separated from the heading by a blank line. Paragraph breaks
    -- in the text (\n\n in the note templates) render as blank lines too,
    -- so the whole text is split on \n instead of skipping empty lines.
    if self.interval then
        local intervalText = self.interval:GetText()
        if intervalText then
            GameTooltip_AddBlankLineToTooltip(tooltip)
            local lines = {}
            for line in (intervalText .. '\n'):gmatch('(.-)\n') do
                lines[#lines + 1] = line
            end
            if #lines > 0 and lines[#lines] == '' then
                lines[#lines] = nil -- trailing break added by the .. '\n'
            end
            for i, line in ipairs(lines) do
                if line == '' then
                    GameTooltip_AddBlankLineToTooltip(tooltip)
                else
                    tooltip:AddLine(ns.RenderLinks(line), 1, 1, 1, true)
                end
            end
        end
    end

    -- all rewards (achievements, pets, mounts, toys, quests) that can be
    -- collected or completed from this node
    if self.rewards and ns:GetOpt('show_loot') then
        self:RenderRewards(tooltip)
    end

    if self.spellID then
        local spell = Spell:CreateFromSpellID(self.spellID)
        self.cancelSpellDataCallback = spell:ContinueWithCancelOnSpellLoad(
            function()
                GameTooltip_AddBlankLineToTooltip(tooltip)
                EmbeddedItemTooltip_SetSpellWithTextureByID(tooltip.ItemTooltip,
                    self.spellID, spell:GetSpellTexture())
                self.cancelSpellDataCallback = nil
            end);
    end
end

function Node:RenderRewards(tooltip)
    local firstAchieve, firstOther = true, true
    for reward in self:IterateRewards() do
        -- Add a blank line between achievements and other rewards
        local isAchieve = ns.IsInstance(reward, ns.reward.Achievement)
        local isSpacer = ns.IsInstance(reward, ns.reward.Spacer)
        if isAchieve and firstAchieve then
            tooltip:AddLine(' ')
            firstAchieve = false
        elseif not (isAchieve or isSpacer) and firstOther then
            tooltip:AddLine(' ')
            firstOther = false
        end

        reward:Render(tooltip)
    end
end

function Node:Unrender(tooltip)
    if self.cancelSpellDataCallback then
        self.cancelSpellDataCallback()
        self.cancelSpellDataCallback = nil
    end
end

-------------------------------------------------------------------------------
--------------------------------- COLLECTIBLE ---------------------------------
-------------------------------------------------------------------------------

local Collectible = Class('Collectible', Node)

function Collectible.getters:label()
    if self.id then return ('{npc:%d}'):format(self.id) end
    if self.item then return ('{item:%d}'):format(self.item) end
    for reward in self:IterateRewards() do
        if IsInstance(reward, ns.reward.Achievement) then
            return GetAchievementCriteriaInfoByID(reward.id,
                reward.criteria[1].id) or UNKNOWN
        end
    end
    return UNKNOWN
end

function Collectible:IsCompleted()
    if self:IsCollected() then return true end
    return Node.IsCompleted(self)
end

-------------------------------------------------------------------------------
------------------------------------ INTRO ------------------------------------
-------------------------------------------------------------------------------

local Intro = Class('Intro', Node, {
    icon = 'quest_ay',
    scale = 3,
    group = ns.groups.QUEST,
    minimap = false
})

function Intro:Initialize(attrs)
    Node.Initialize(self, attrs)
    if self.quest then
        C_QuestLog.GetTitleForQuestID(self.quest[1]) -- fetch info from server
    end
end

function Intro.getters:label()
    if self.quest then
        return C_QuestLog.GetTitleForQuestID(self.quest[1]) or UNKNOWN
    end
    return UNKNOWN
end

-------------------------------------------------------------------------------
------------------------------------- ITEM ------------------------------------
-------------------------------------------------------------------------------

local Item = Class('Item', Node, {icon = 454046})

function Item:Initialize(attrs)
    Node.Initialize(self, attrs)
    if not self.id then error('id required for Item nodes') end

    if not self.icon then
        self.icon = 454046 -- temp loading icon
        local item = _G.Item:CreateFromItemID(self.id)
        if not item:IsItemEmpty() then
            item:ContinueOnItemLoad(function()
                self.icon = item:GetItemIcon()
            end)
        end
    end
end

function Item:IsCompleted()
    if not self.ignore_bags and ns.PlayerHasItem(self.id) then return true end
    return Node.IsCompleted(self)
end

function Item:Render(tooltip, focusable)
    Node.Render(self, tooltip, focusable)
    GameTooltip_AddBlankLineToTooltip(tooltip)
    -- EmbeddedItemTooltip_SetItemByID(tooltip.ItemTooltip, self.id)
    tooltip:SetItemByID(self.id)
end

function Item.getters:label() return ('{item:%d}'):format(self.id) end

-------------------------------------------------------------------------------
------------------------------------- NPC -------------------------------------
-------------------------------------------------------------------------------

local NPC = Class('NPC', Node)

function NPC:Initialize(attrs)
    Node.Initialize(self, attrs)
    if not self.id then error('id required for NPC nodes') end
end

function NPC.getters:label() return ('{npc:%d}'):format(self.id) end

-------------------------------------------------------------------------------
---------------------------------- PETBATTLE ----------------------------------
-------------------------------------------------------------------------------

local PetBattle = Class('PetBattle', NPC, {
    icon = 'paw_y',
    scale = 1.2,
    group = ns.groups.PETBATTLE
})

-------------------------------------------------------------------------------
----------------------------- PROFESSION TREASURES ----------------------------
-------------------------------------------------------------------------------

local ProfessionMaster = Class('ProfessionMaster', NPC, {
    scale = 0.9,
    group = ns.groups.PROFESSION_TREASURES
})

function ProfessionMaster:IsEnabled()
    if not ns.PlayerHasProfession(self.skillID) then return false end
    return NPC.IsEnabled(self)
end

local ProfessionTreasure = Class('ProfessionTreasure', Item, {
    scale = 0.9,
    group = ns.groups.PROFESSION_TREASURES
})

function ProfessionTreasure:IsEnabled()
    if not ns.PlayerHasProfession(self.skillID) then return false end
    return Item.IsEnabled(self)
end

local PM = {}
local PT = {}

for _, profession in pairs(ns.professions) do
    if profession.variantID ~= nil then
        local name = profession.name
        local icon = profession.icon
        local skillID = profession.skillID

        PM[name] = Class(name .. 'Master', ProfessionMaster, {
            icon = icon,
            skillID = skillID,
            level = 1,
            getters = {
                requires = function(self)
                    local profession = ns.getProfessionBySkillID(self.skillID)
                    local variantID = profession.variantID[ns.expansion]
                    local level = self.level
                    return ns.requirement.Profession(skillID, variantID, level)
                end
            }
        })

        PT[name] = Class(name .. 'Treasure', ProfessionTreasure, {
            icon = icon,
            skillID = skillID,
            level = 1,
            getters = {
                requires = function(self)
                    local profession = ns.getProfessionBySkillID(self.skillID)
                    local variantID = profession.variantID[ns.expansion]
                    local level = self.level
                    return ns.requirement.Profession(skillID, variantID, level)
                end
            }
        })
    end
end

-------------------------------------------------------------------------------
------------------------------------ QUEST ------------------------------------
-------------------------------------------------------------------------------

local Quest = Class('Quest', Node,
    {note = AVAILABLE_QUEST, group = ns.groups.QUEST})

function Quest:Initialize(attrs)
    Node.Initialize(self, attrs)
    C_QuestLog.GetTitleForQuestID(self.quest[1]) -- fetch info from server
end

function Quest.getters:icon() return self.daily and 'quest_ab' or 'quest_ay' end

function Quest.getters:label()
    return C_QuestLog.GetTitleForQuestID(self.quest[1]) or UNKNOWN
end

-------------------------------------------------------------------------------
------------------------------------- RARE ------------------------------------
-------------------------------------------------------------------------------

local Rare = Class('Rare', NPC, {scale = 1.2, group = ns.groups.RARE})

function Rare.getters:icon()
    if self:IsCollected() then
        return 'skull_w'
    elseif not self:IsCollected(ns.reward.Reputation) then
        return 'skull_p'
    else
        return 'skull_b'
    end
end

function Rare.getters:label()
    local label = NPC.getters.label(self)
    if ns:GetOpt('show_npc_id') then
        label = label .. ' (' .. ns.color.White(self.id) .. ')'
    end
    return label
end

function Rare:IsEnabled()
    if ns:GetOpt('hide_done_rares') and self:IsCollected() then return false end
    return NPC.IsEnabled(self)
end

-------------------------------------------------------------------------------
---------------------------------- RARE ELITE ---------------------------------
-------------------------------------------------------------------------------

local RareElite = Class('RareElite', Rare, {
    rlabel = '(' .. ns.color.Gray(L['elite']) .. ')',
    scale = 1.8
})

function RareElite.getters:icon()
    if self:IsCollected() then
        return 'star_skull_w'
    elseif not self:IsCollected(ns.reward.Reputation) then
        return 'star_skull_p'
    else
        return 'star_skull_b'
    end
end

function RareElite.getters:label()
    local label = NPC.getters.label(self)
    if ns:GetOpt('show_npc_id') then
        label = label .. ' (' .. ns.color.White(self.id) .. ')'
    end
    return label
end

function RareElite:IsEnabled()
    if ns:GetOpt('hide_done_rares') and self:IsCollected() then return false end
    return NPC.IsEnabled(self)
end

-------------------------------------------------------------------------------
-------------------------------- SKYRIDING RACE -------------------------------
-------------------------------------------------------------------------------

local SkyridingRace = Class('SkyridingRace', Collectible,
    {icon = 1100022, group = ns.groups.SKYRIDING_RACE})

local SKYRIDING_RACE_TYPES = {
    [1] = {type = 'normal', label = L['sr_normal']},
    [2] = {type = 'advanced', label = L['sr_advanced']},
    [3] = {type = 'reverse', label = L['sr_reverse']},
    [4] = {type = 'challenge', label = L['sr_challenge']},
    [5] = {type = 'reverseChallenge', label = L['sr_reverse_challenge']},
    [6] = {type = 'stormRace', label = L['sr_storm_race']}
}

-- DRAGONFLIGHT ONLY: Storm Races were unlocked once a player had the
-- Algarian Stormrider mount from [Heroic Edition: Algarian Stormrider]
function SkyridingRace.CanAddRace(raceType)
    if raceType == 'stormRace' then
        local unlocked = select(4, GetAchievementInfo(19027))
        return unlocked and true or false
    end
    return true
end

function SkyridingRace.getters:sublabel()
    local hasRaceType = false
    local note = L['sr_best_time']
    local txt = L['sr_your_best_time']
    for _, race in ipairs(SKYRIDING_RACE_TYPES) do
        if self[race.type] then
            local currencyID = self[race.type][1]
            local label = race.label
            local time = currencyID and
                             C_CurrencyInfo.GetCurrencyInfo(currencyID).quantity or
                             0

            txt = txt .. '\n' .. format(note, label, time / 1000)
            hasRaceType = true
        end
    end
    return hasRaceType and txt or nil
end

function SkyridingRace.getters:note()
    local hasRaceType = false
    local Silver = ns.color.Silver
    local Gold = ns.color.Gold
    local note = L['sr_target_time']
    local txt = L['sr_your_target_time']
    for _, race in ipairs(SKYRIDING_RACE_TYPES) do
        if self[race.type] then
            local label = race.label
            -- SILVER
            local hasSilverTime = false
            local sTime = self[race.type][2]
            if sTime ~= nil and sTime ~= 0 then
                sTime = Silver(sTime)
                hasSilverTime = true
            end
            -- GOLD
            local hasGoldTime = false
            local gTime = self[race.type][3]
            if gTime ~= nil and gTime ~= 0 then
                gTime = Gold(gTime)
                hasGoldTime = true
            end
            if hasSilverTime and hasGoldTime then
                if self.CanAddRace(race.type) then
                    txt = txt .. '\n' .. format(note, label, sTime, gTime)
                    hasRaceType = true
                end
            end
        end
    end
    txt = txt .. '\n\n' .. L['sr_bronze']
    return hasRaceType and txt or nil
end

-------------------------------------------------------------------------------
----------------------------------- TREASURE ----------------------------------
-------------------------------------------------------------------------------

local Treasure = Class('Treasure', Node, {
    icon = 'chest_gy',
    scale = 1.3,
    group = ns.groups.TREASURE
})

function Treasure.getters:label()
    for reward in self:IterateRewards() do
        if IsInstance(reward, ns.reward.Achievement) then
            return GetAchievementCriteriaInfoByID(reward.id,
                reward.criteria[1].id) or UNKNOWN
        end
    end
    return UNKNOWN
end

function Treasure:IsEnabled()
    if ns:GetOpt('hide_done_treasures') and self:IsCollected() then
        return false
    end
    return Node.IsEnabled(self)
end

-------------------------------------------------------------------------------
------------------------------------ VENDOR -----------------------------------
-------------------------------------------------------------------------------

local Vendor = Class('Vendor', Collectible,
    {icon = 'bag', scale = 1.35, group = ns.groups.VENDOR})

-------------------------------------------------------------------------------
-------------------------------- Interval Class -------------------------------
-------------------------------------------------------------------------------

-- tooltip labels come from core localization
local EVENT_TIME_LEFT = L['time_remaining'] or 'Time Remaining:'
local EVENT_STARTS_IN = L['starts_in'] or 'Starts In:'
local EVENT_NEXT = L['next_time'] or 'Next:'

local Interval = Class('Interval', nil, {
    format_12hrs = L['time_format_12hrs'],
    format_24hrs = L['time_format_24hrs']
})

-- Timezone label appended to the clock lines in tooltips; follows Blizzard's
-- Use Local Time option so the label can never contradict the value.
local function TimezoneSuffix()
    if GetCVarBool('timeMgrUseLocalTime') then return L['local_time'] end
    return L['server_time']
end

-- Read Blizzard's localized unit abbreviations from GlobalStrings so the
-- widget countdown parser works in every locale.
local function AbbrForms(globalName, fallback)
    local abbr = _G[globalName]
    if type(abbr) ~= 'string' or abbr == '' then return {fallback} end
    local singular, plural = abbr:match('|4([^:]+):([^;]*);')
    if singular then
        local forms = {singular}
        if plural ~= '' and plural ~= singular then forms[2] = plural end
        return forms
    end
    local cleaned = abbr:gsub('%%.', ''):gsub('^%s+', ''):gsub('%s+$', '')
    return {cleaned}
end

local DAY_FORMS = AbbrForms('DAYS_ABBR', 'Day')
local HOUR_FORMS = AbbrForms('HOURS_ABBR', 'Hr')
local MIN_FORMS = AbbrForms('MINUTES_ABBR', 'Min')
local SEC_FORMS = AbbrForms('SECONDS_ABBR', 'Sec')

-- SecondsToTime drops the seconds unit, so sub-minute durations render as an
-- empty string. Show seconds explicitly during the last minute instead.
local function FormatCountdown(secs)
    if secs < 60 then
        if secs <= 0 then return '0' .. SEC_FORMS[1] end
        return SecondsToTime(secs, false, true)
    end
    return SecondsToTime(secs, true, true)
end

ns.FormatCountdown = FormatCountdown

-- Seconds between the machine's wall clock and UTC (its timezone offset).
-- time() returns the UTC epoch, so the offset falls out of comparing it with
-- the local date components; clock skew affects both equally and cancels.
local function MachineTimezoneOffset()
    local localDate = date('*t')
    local offset = localDate.hour * 3600 + localDate.min * 60 + localDate.sec -
                       (time() % 86400)
    if offset > 43200 then offset = offset - 86400 end
    if offset < -43200 then offset = offset + 86400 end
    return offset
end

-- Shift a server epoch so date() renders the server's wall clock instead of
-- the machine's local time, no matter which timezone the player is in (e.g.
-- playing from abroad). C_DateAndTime.GetServerTimeLocal() returns the server
-- time offset by the server's timezone, independent of the machine's.
local function ServerClockEpoch(serverEpoch)
    return serverEpoch + C_DateAndTime.GetServerTimeLocal() - GetServerTime() -
               MachineTimezoneOffset()
end

ns.ServerClockEpoch = ServerClockEpoch

-- date() epoch: local or server clock, following Blizzard's Use Local Time
-- option (timeMgrUseLocalTime: 0 = server time, 1 = local time).
local function DisplayEpoch(serverEpoch)
    if GetCVarBool('timeMgrUseLocalTime') then return serverEpoch end
    return ServerClockEpoch(serverEpoch)
end

-- Refresh when the player toggles Blizzard's time display options.
ns.addon:RegisterEvent('CVAR_UPDATE', function(_, varname)
    if varname == 'TIMEMGRUSELOCALTIME' or varname == 'TIMEMGRUSEMILITARYTIME' then
        ns.addon:Refresh()
    end
end)

function Interval:Initialize(attrs)
    if attrs then for k, v in pairs(attrs) do self[k] = v end end

    local region_initial = {
        [1] = self.initial.us,
        [2] = self.initial.kr,
        [3] = self.initial.eu,
        [4] = self.initial.tw,
        [5] = self.initial.cn
    } -- https://warcraft.wiki.gg/wiki/API_GetCurrentRegion

    if self.id then
        self.SpawnTime = self.id * self.offset +
                             (region_initial[GetCurrentRegion()] or
                                 self.initial.us)
    end
end

function Interval:Next()
    if not (self.id and self.initial and self.interval) then return false end
    local CurrentTime = GetServerTime()
    local SpawnTime = self.SpawnTime

    local NextSpawn = SpawnTime +
                          math.ceil((CurrentTime - SpawnTime) / self.interval) *
                          self.interval
    local TimeLeft = NextSpawn - CurrentTime

    return NextSpawn, TimeLeft
end

-- 30/10 min yellow/green-red windows, capped at a fraction of the cycle.
function Interval:Threshold(field, cycle)
    if field == 'yellow' then
        return math.min(1800, (cycle or self.interval) * 0.3)
    end
    return math.min(600, (cycle or self.interval) * 0.1)
end

-- True inside the yellow (soon) window.
function Interval:IsSoon()
    local _, TimeLeft = self:Next()
    local threshold = self:Threshold('yellow', self.interval)
    return TimeLeft and threshold and TimeLeft < threshold
end

-- No third tier: IsSoon is the yellow state, IsGreen the green window.
function Interval:IsYellow() return false end

-- True inside the green window, or during the first 3 minutes right after a
-- spawn (the icon stays enlarged; the tooltip text keeps its normal color).
function Interval:IsGreen()
    local _, TimeLeft = self:Next()
    local threshold = self:Threshold('green', self.interval)
    if TimeLeft and threshold and TimeLeft < threshold then return true end
    -- post-spawn hold: TimeLeft counts down to the *next* spawn, so the
    -- current spawn was one interval ago; hold for the first 3 minutes
    return TimeLeft and self.interval and TimeLeft > self.interval - 180 and
               TimeLeft <= self.interval
end

-- Next yellow/green boundary (drives the scale refresh), nil without a spawn.
function Interval:NextBoundaryChange()
    local NextSpawn = self:Next()
    if not NextSpawn then return nil end
    local now = GetServerTime()
    local threshold = self:Threshold('yellow', self.interval)
    local enterYellow = NextSpawn - threshold
    if enterYellow > now then return enterYellow end
    local enterGreen = NextSpawn - self:Threshold('green', self.interval)
    if enterGreen > now then return enterGreen end
    -- leaving the 3-minute post-spawn hold
    local holdEnd = NextSpawn - self.interval + 180
    if holdEnd > now then return holdEnd end
    return NextSpawn -- already inside the window: leaving it is the change
end

function Interval:GetText()
    -- clock format follows Blizzard's time format option
    -- (timeMgrUseMilitaryTime: 0 = 12-hour clock, 1 = 24-hour clock)
    local TimeFormat = GetCVarBool('timeMgrUseMilitaryTime') and
                           self.format_24hrs or self.format_12hrs

    local NextSpawn, TimeLeft = self:Next()

    local SpawnsIn = FormatCountdown(TimeLeft)

    local color = ns.color.Orange
    if TimeLeft < self:Threshold('yellow', self.interval) then
        color = ns.color.Yellow
    end
    if TimeLeft < self:Threshold('green', self.interval) then
        color = ns.color.Green
    end
    SpawnsIn = color(SpawnsIn)

    -- next spawn line, like the live events; the timezone label follows
    -- Blizzard's Use Local Time option so it can't contradict the value
    local clockText = date(TimeFormat, DisplayEpoch(NextSpawn)) .. ' ' ..
                          TimezoneSuffix()
    local timeLine = EVENT_NEXT .. ' ' .. ns.color.Orange(clockText)

    -- countdown label shared with live events; templates hold the %s
    local text
    if self.text then
        -- two-%s templates take both values; single-%s gets the line below
        local _, placeholders = self.text:gsub('%%s', '')
        if placeholders > 1 then
            text = format(self.text, EVENT_NEXT .. ' ' .. SpawnsIn, timeLine)
        else
            text = format(self.text, EVENT_NEXT .. ' ' .. SpawnsIn) .. '\n' ..
                       timeLine
        end
    else
        text = format('%s %s\n%s', EVENT_NEXT, SpawnsIn, timeLine)
    end
    ns.PrepareLinks(text)
    return text
end

-------------------------------------------------------------------------------
-------------------------------- LIVE EVENT -----------------------------------
-------------------------------------------------------------------------------
-- Server-driven event timer: any node with an `areaPOI` attribute gets one
-- automatically via Node:Initialize. Without event data GetText() returns
-- nil and the line is hidden.
ns.Intervals = ns.Intervals or {}

local scheduled = {} -- areaPoiID -> {startTime = ..., endTime = ..., duration = ..., nextStart = ...}
local hasScheduler = C_EventScheduler ~= nil
local hasAreaPOI = C_AreaPoiInfo ~= nil

local function RefreshEvents()
    wipe(scheduled)
    if not (hasScheduler and C_EventScheduler.HasData and
        C_EventScheduler.HasData() and C_EventScheduler.GetScheduledEvents) then
        return
    end
    local now = GetServerTime()
    for _, ev in ipairs(C_EventScheduler.GetScheduledEvents() or {}) do
        if ev.areaPoiID and ev.endTime and ev.endTime > now then
            -- cyclic events repeat; keep the nearest window
            local cur = scheduled[ev.areaPoiID]
            if not cur or ev.endTime < cur.endTime then
                scheduled[ev.areaPoiID] = {
                    startTime = ev.startTime,
                    endTime = ev.endTime,
                    duration = ev.duration or
                        (ev.startTime and ev.endTime - ev.startTime)
                }
            end
            -- remember the next start after this window (the event's cycle)
            if ev.startTime and ev.startTime > now then
                local s = scheduled[ev.areaPoiID]
                local windowStart = s.startTime or ev.startTime
                if ev.startTime > windowStart then
                    if not s.nextStart or ev.startTime < s.nextStart then
                        s.nextStart = ev.startTime
                    end
                end
            end
        end
    end
end

if hasScheduler then
    local frame = CreateFrame('Frame')
    frame:RegisterEvent('PLAYER_ENTERING_WORLD')
    frame:RegisterEvent('EVENT_SCHEDULER_UPDATE')
    frame:RegisterEvent('AREA_POIS_UPDATED')
    frame:SetScript('OnEvent', function(_, event)
        if event == 'PLAYER_ENTERING_WORLD' and C_EventScheduler.RequestEvents then
            C_EventScheduler.RequestEvents()
        end
        RefreshEvents()
    end)
end

-- Strip Blizzard chat-escape codes and plural forms from widget text.
local function StripEscapes(text)
    text = text:gsub('|c%x%x%x%x%x%x%x%x', '')
    text = text:gsub('|cn[%w_]+:', '')
    text = text:gsub('|r', '')
    text = text:gsub('|n', ' ')
    text = text:gsub('|4([^:]+):[^;]*;', '%1')
    return text
end

-- Escape Lua pattern metacharacters for literal matching (UTF-8 safe).
local function EscapePattern(s)
    return s:gsub('[%^%$%(%)%%%.%[%]%*%+%-%?]', '%%%0')
end

-- Number directly before a unit word: "6 Std. 8 Min." parses the 8, not the 6.
local function NumBeforeUnit(text, forms)
    for _, form in ipairs(forms) do
        local num = text:match('(%d+)%s*' .. EscapePattern(form))
        if num then return tonumber(num) end
    end
    return nil
end

-- Parse a rendered countdown using Blizzard's localized unit strings.
local function ParseTimeLeft(text)
    if type(text) ~= 'string' then return nil end
    text = StripEscapes(text)

    local d = NumBeforeUnit(text, DAY_FORMS)
    local h = NumBeforeUnit(text, HOUR_FORMS)
    local m = NumBeforeUnit(text, MIN_FORMS)
    local s = NumBeforeUnit(text, SEC_FORMS)

    if not (d or h or m or s) then return nil end
    return (d or 0) * 86400 + (h or 0) * 3600 + (m or 0) * 60 + (s or 0)
end

-- Some events only expose their countdown as a "Time Left" widget on the
-- POI's tooltip widget set.
local function WidgetSecondsLeft(areaPoiID)
    if not (hasScheduler and C_EventScheduler.GetEventUiMapID and hasAreaPOI and
        C_AreaPoiInfo.GetAreaPOIInfo and C_UIWidgetManager and
        C_UIWidgetManager.GetAllWidgetsBySetID and
        C_UIWidgetManager.GetTextWithStateWidgetVisualizationInfo) then
        return nil
    end
    local mapID = C_EventScheduler.GetEventUiMapID(areaPoiID)
    if not mapID then return nil end
    local info = C_AreaPoiInfo.GetAreaPOIInfo(mapID, areaPoiID)
    if not (info and info.tooltipWidgetSet) then return nil end
    local widgets =
        C_UIWidgetManager.GetAllWidgetsBySetID(info.tooltipWidgetSet) or {}
    for _, w in ipairs(widgets) do
        local vis = C_UIWidgetManager.GetTextWithStateWidgetVisualizationInfo(
            w.widgetID)
        local secs = vis and vis.text and ParseTimeLeft(vis.text)
        if secs then return secs end
    end
    return nil
end

local function EventSecondsLeft(areaPoiID)
    -- timed map event POI: real remaining time
    if hasAreaPOI and C_AreaPoiInfo.IsAreaPOITimed and
        C_AreaPoiInfo.IsAreaPOITimed(areaPoiID) and
        C_AreaPoiInfo.GetAreaPOISecondsLeft then
        local left = C_AreaPoiInfo.GetAreaPOISecondsLeft(areaPoiID)
        if left then return left end
    end
    -- widget-text fallback
    local left = WidgetSecondsLeft(areaPoiID)
    if left then return left end
    -- scheduled event window end
    local sched = scheduled[areaPoiID]
    if sched and sched.endTime then
        local left = sched.endTime - GetServerTime()
        if left > 0 then return left end
    end
    return nil
end

-- the scheduled event's window duration (color base)
local function LiveEvent_GetDuration(areaPoiID)
    local sched = scheduled[areaPoiID]
    return sched and sched.duration
end

local LiveEvent = Class('LiveEvent', Interval, {})

-- Interval:Initialize reads self.initial (hardcoded spawn epochs), which
-- LiveEvent does not use; only copy the attrs.
function LiveEvent:Initialize(attrs)
    if attrs then for k, v in pairs(attrs) do self[k] = v end end
end

function LiveEvent:Next()
    if not self.areaPoiID then return false end
    local now = GetServerTime()
    -- not started yet: next occurrence is the window start, not its end
    local sched = scheduled[self.areaPoiID]
    if sched and sched.startTime and sched.startTime > now then
        return sched.startTime, sched.startTime - now
    end
    local left = EventSecondsLeft(self.areaPoiID)
    if not left then return false end
    return now + left, left
end

-- True while the node is enlarged: green text before the event starts (10%
-- of the cycle), then for the first 5 minutes after it starts, then again
-- during the last 10% of the window (red text).
function LiveEvent:IsSoon()
    local now = GetServerTime()
    local sched = scheduled[self.areaPoiID]
    if sched and sched.startTime and sched.startTime > now then
        local period = ((sched.nextStart or sched.endTime) or 0) -
                           sched.startTime
        if period <= 0 then period = sched.duration or 0 end
        return period > 0 and sched.startTime - now <
                   self:Threshold('green', period)
    end
    local left = EventSecondsLeft(self.areaPoiID)
    local duration = LiveEvent_GetDuration(self.areaPoiID) or 0
    if not left or duration <= 0 then return false end
    -- inside the red window (matches the red tooltip text)
    if left < self:Threshold('green', duration) then return true end
    -- first 5 minutes after the window starts (no tooltip color change)
    local windowDur = sched and sched.startTime and sched.endTime and
                          (sched.endTime - sched.startTime) or 0
    return windowDur > 0 and left > windowDur - 300 and left <= windowDur
end

-- True while the tooltip shows yellow text: 30%-10% of the cycle before the
-- start, 30%-10% of the window while running (drives the 1.8x scale tier).
function LiveEvent:IsYellow()
    local now = GetServerTime()
    local sched = scheduled[self.areaPoiID]
    if sched and sched.startTime and sched.startTime > now then
        local period = ((sched.nextStart or sched.endTime) or 0) -
                           sched.startTime
        if period <= 0 then period = sched.duration or 0 end
        local nextIn = sched.startTime - now
        return period > 0 and nextIn < self:Threshold('yellow', period) and
                   nextIn >= self:Threshold('green', period)
    end
    local left = EventSecondsLeft(self.areaPoiID)
    local duration = LiveEvent_GetDuration(self.areaPoiID) or 0
    return
        left and duration > 0 and left < self:Threshold('yellow', duration) and
            left >= self:Threshold('green', duration)
end

-- Next moment the enlarged state changes (drives the scale-1.8/2.5 refresh):
-- the yellow window entry when idle, the green window entry, the window start
-- when already inside it, the end of the 5-minute post-start hold, the yellow
-- window entry while running, the red window entry, or the window end.
function LiveEvent:NextBoundaryChange()
    local now = GetServerTime()
    local sched = scheduled[self.areaPoiID]
    if sched and sched.startTime and sched.startTime > now then
        local period = ((sched.nextStart or sched.endTime) or 0) -
                           sched.startTime
        if period <= 0 then period = sched.duration or 0 end
        if period > 0 then
            local nextIn = sched.startTime - now
            -- next state change: enter yellow, enter green, or the window
            -- start
            local yellow = self:Threshold('yellow', period)
            if nextIn > yellow then return sched.startTime - yellow end
            local green = self:Threshold('green', period)
            if nextIn > green then return sched.startTime - green end
            return sched.startTime -- inside the green window: leaving it is the change
        end
    end
    local left = EventSecondsLeft(self.areaPoiID)
    local duration = LiveEvent_GetDuration(self.areaPoiID) or 0
    if left and duration > 0 then
        local endTime = now + left
        local windowDur = sched and sched.startTime and sched.endTime and
                              (sched.endTime - sched.startTime) or 0
        if windowDur > 0 and left > windowDur - 300 and left <= windowDur then
            return endTime - (windowDur - 300) -- post-start hold ends here
        end
        local yellow = self:Threshold('yellow', duration)
        if left > yellow then return endTime - yellow end -- hold over: entering yellow is the change
        local green = self:Threshold('green', duration)
        if left > green then return endTime - green end -- yellow over: entering red is the change
        return endTime -- inside the red window: refresh when it ends
    end
    return nil
end

function LiveEvent:GetText()
    -- clock format follows Blizzard's time format option
    -- (timeMgrUseMilitaryTime: 0 = 12-hour clock, 1 = 24-hour clock)
    local TimeFormat = GetCVarBool('timeMgrUseMilitaryTime') and
                           self.format_24hrs or self.format_12hrs

    local NextSpawn, TimeLeft = self:Next()

    local text
    if NextSpawn then
        local sched = scheduled[self.areaPoiID]
        local notStarted = sched and sched.startTime and sched.startTime >
                               GetServerTime()

        local duration = LiveEvent_GetDuration(self.areaPoiID) or 0

        -- time remaining: red window, then yellow, else orange
        local yellow = self:Threshold('yellow', duration)
        local red = self:Threshold('green', duration)

        -- event cycle: next start minus this start (fall back to duration)
        local period = 0
        if sched and sched.startTime then
            period = ((sched.nextStart or sched.endTime) or 0) - sched.startTime
        end
        if period <= 0 then period = duration end

        -- the upcoming start when not started; otherwise the next window's
        -- start (weekly ritual sites report a single window -- no next)
        local nextTime
        if notStarted then
            nextTime = NextSpawn
        else
            nextTime = sched and sched.nextStart
        end
        local nextIn = nextTime and (nextTime - GetServerTime()) or 0

        local nextClock = nextTime and DisplayEpoch(nextTime)

        -- cycle fraction: orange (far), yellow (soon), green (very soon)
        local nextColor = ns.color.Orange
        if period > 0 then
            if nextIn < self:Threshold('yellow', period) then
                nextColor = ns.color.Yellow
            end
            if nextIn < self:Threshold('green', period) then
                nextColor = ns.color.Green
            end
        end

        -- not started: countdown + next start time
        if notStarted then
            local clockText = date(TimeFormat, nextClock) .. ' ' ..
                                  TimezoneSuffix()
            text = format('%s %s\n%s %s', EVENT_STARTS_IN,
                nextColor(FormatCountdown(nextIn)), EVENT_NEXT,
                ns.color.Orange(clockText))
        else
            local SpawnsIn = FormatCountdown(TimeLeft)

            local color = ns.color.Orange
            if TimeLeft < yellow then color = ns.color.Yellow end
            if TimeLeft < red then color = ns.color.Red end
            SpawnsIn = color(SpawnsIn)

            if nextTime then
                local clockText = date(TimeFormat, nextClock) .. ' ' ..
                                      TimezoneSuffix()
                text = format('%s %s\n%s %s', EVENT_TIME_LEFT, SpawnsIn,
                    EVENT_NEXT, ns.color.Orange(clockText))
            else
                text = format('%s %s', EVENT_TIME_LEFT, SpawnsIn)
            end
        end
    else
        -- no event schedule data for this areaPOI: hide the timer line
        -- entirely (the node renders as if it had no interval)
        return nil
    end

    if self.text then text = format(self.text, text) end
    ns.PrepareLinks(text)
    return text
end

ns.Intervals.LiveEvent = LiveEvent

-------------------------------------------------------------------------------

ns.node = {
    Collectible = Collectible,
    SkyridingRace = SkyridingRace,
    Intro = Intro,
    Item = Item,
    Node = Node,
    NPC = NPC,
    PetBattle = PetBattle,
    ProfessionMasters = PM,
    ProfessionTreasures = PT,
    Quest = Quest,
    Rare = Rare,
    RareElite = RareElite,
    Treasure = Treasure,
    Vendor = Vendor
}

ns.Interval = Interval
