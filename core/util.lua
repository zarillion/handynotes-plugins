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

ns.NameResolver = NameResolver
