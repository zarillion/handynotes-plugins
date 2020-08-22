local ADDON_NAME, ns = ...

-------------------------------------------------------------------------------
------------------------------ DATAMINE TOOLTIP -------------------------------
-------------------------------------------------------------------------------

local NameResolver = CreateFrame("GameTooltip", ADDON_NAME.."_NameResolver",
    UIParent, "GameTooltipTemplate")

NameResolver.cache = {}
NameResolver.prepared = {}
NameResolver:SetOwner(UIParent, "ANCHOR_NONE")

function NameResolver:IsLink (link)
    if link == nil then return link end
    return strsub(link, 1, 5) == 'unit:'
end

function NameResolver:Prepare (link)
    if self:IsLink(link) and not (self.cache[link] or self.prepared[link]) then
        self:SetHyperlink(link)
        self.prepared[link] = true
    end
end

function NameResolver:Resolve (link)
    -- may be passed a raw name or a hyperlink to be resolved
    if not self:IsLink(link) then return link or UNKNOWN end

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
