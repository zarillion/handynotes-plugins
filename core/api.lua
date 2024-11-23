-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...

-------------------------------------------------------------------------------
---------------------------- LEGACY API FUNCTIONS -----------------------------
-------------------------------------------------------------------------------

local GetFactionInfoByID = GetFactionInfoByID or function(factionID)
    if not factionID then return nil end

    local fi = C_Reputation.GetFactionDataByID(factionID)
    if fi then
        return fi.name, fi.description, fi.reaction,
            fi.currentReactionThreshold, fi.nextReactionThreshold,
            fi.currentStanding, fi.atWarWith, fi.canToggleAtWar, fi.isHeader,
            fi.isCollapsed, nil, fi.isWatched, fi.isChild, fi.factionID,
            fi.hasBonusRepGain, nil,
            -- the following is only available with Patch 11.0 and above
            fi.isAccountWide, fi.isHeaderWithRep, fi.canSetInactive
    end
end

local GetSpellInfo = GetSpellInfo or function(spellID)
    if not spellID then return nil end

    local si = C_Spell.GetSpellInfo(spellID)
    if si then
        return si.name, nil, si.iconID, si.castTime, si.minRange, si.maxRange,
            si.spellID, si.originalIconID
    end
end

ns.api = {GetSpellInfo = GetSpellInfo, GetFactionInfoByID = GetFactionInfoByID}
