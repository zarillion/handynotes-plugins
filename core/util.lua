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
        if type == 'npc' then
            NameResolver:Prepare(("unit:Creature-0-0-0-0-%d"):format(id))
        elseif type == 'item' then
            GetItemInfo(id) -- prime item info
        elseif type == 'spell' then
            GetSpellInfo(id) -- prime spell info
        end
    end
end

function renderLinks(str)
    return str:gsub('{(%l+):(%d+)}', function (type, id)
        if type == 'npc' then
            local name = NameResolver:Resolve(("unit:Creature-0-0-0-0-%d"):format(id))
            return ns.color.NPC(name)
        end
        if type == 'item' then
            local _, link, _, _, _, _, _, _, _, icon = GetItemInfo(id)
            if link and icon then
                return '|T'..icon..':0:0:1:-1|t '..link
            end
        end
        if type == 'spell' then
            local name, _, icon = GetSpellInfo(id)
            if name and icon then
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
