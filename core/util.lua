local ADDON_NAME, ns = ...

-------------------------------------------------------------------------------
------------------------------ DATAMINE TOOLTIP -------------------------------
-------------------------------------------------------------------------------

local NamePreparer = CreateFrame("GameTooltip", ADDON_NAME.."_NamePreparer", UIParent, "GameTooltipTemplate")
local NameResolver = CreateFrame("GameTooltip", ADDON_NAME.."_NameResolver", UIParent, "GameTooltipTemplate")

NameResolver.cache = {}
NameResolver.prepared = {}

NamePreparer:SetOwner(UIParent, "ANCHOR_NONE")
NameResolver:SetOwner(UIParent, "ANCHOR_NONE")

function NameResolver:IsLink (link)
    if link == nil then return link end
    return strsub(link, 1, 5) == 'unit:'
end

function NameResolver:Prepare (link)
    if self:IsLink(link) and not (self.cache[link] or self.prepared[link]) then
        -- use a separate tooltip to spam load NPC names, doing this with the
        -- main tooltip can sometimes cause it to become unresponsive and never
        -- update its text until a reload
        NamePreparer:SetHyperlink(link)
        self.prepared[link] = true
    end
end

function NameResolver:Resolve (link)
    -- may be passed a raw name or a hyperlink to be resolved
    if not self:IsLink(link) then return link or UNKNOWN end

    -- all npcs must be prepared ahead of time to avoid breaking the resolver
    if not self.prepared[link] then
        ns.debug('ERROR: npc link not prepared:', link)
    end

    local name = self.cache[link]
    if name == nil then
        self:SetHyperlink(link)
        name = _G[self:GetName().."TextLeft1"]:GetText() or UNKNOWN
        if name ~= UNKNOWN then
            self.cache[link] = name
        end
    end
    return name
end

-------------------------------------------------------------------------------
-------------------------------- LINK RENDERER --------------------------------
-------------------------------------------------------------------------------

function prepareLinks(str)
    if not str then return end
    for type, id in str:gmatch('{(%l+):(%d+)}') do
        id = tonumber(id)
        -- NOTE: no prep apprears to be necessary for currencies
        if type == 'npc' then
            NameResolver:Prepare(("unit:Creature-0-0-0-0-%d"):format(id))
        elseif type == 'item' then
            GetItemInfo(id) -- prime item info
        elseif type == 'spell' then
            GetSpellInfo(id) -- prime spell info
        end
    end
end

function renderLinks(str, nameOnly)
    return str:gsub('{(%l+):(%d+)}', function (type, id)
        id = tonumber(id)
        if type == 'npc' then
            local name = NameResolver:Resolve(("unit:Creature-0-0-0-0-%d"):format(id))
            if nameOnly then return name end
            return ns.color.NPC(name)
        elseif type == 'achievement' then
            if nameOnly then
                local _, name = GetAchievementInfo(id)
                if name then return name end
            else
                local link = GetAchievementLink(id)
                if link then return link end
            end
        elseif type == 'currency' then
            local info = C_CurrencyInfo.GetCurrencyInfo(id)
            if info then
                if nameOnly then return info.name end
                local link = C_CurrencyInfo.GetCurrencyLink(id, 0)
                if link then
                    return '|T'..info.iconFileID..':0:0:1:-1|t '..link
                end
            end
        elseif type == 'item' then
            local name, link, _, _, _, _, _, _, _, icon = GetItemInfo(id)
            if link and icon then
                if nameOnly then return name end
                return '|T'..icon..':0:0:1:-1|t '..link
            end
        elseif type == 'spell' then
            local name, _, icon = GetSpellInfo(id)
            if name and icon then
                if nameOnly then return name end
                local spell = ns.color.Spell('|Hspell:'..id..'|h['..name..']|h')
                return '|T'..icon..':0:0:1:-1|t '..spell
            end
        end
        return type..'+'..id
    end)
end

-------------------------------------------------------------------------------

ns.NameResolver = NameResolver
ns.prepareLinks = prepareLinks
ns.renderLinks = renderLinks
