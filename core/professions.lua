-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...

-------------------------------------------------------------------------------
--------------------------------- PROFESSIONS ---------------------------------
-------------------------------------------------------------------------------

-- LuaFormatter off
ns.professions = {
    ALCHEMY = {
        name = 'Alchemy',
        icon = 4620669,
        skillID = 171,
        variantID = {2485, 2484, 2483, 2482, 2481, 2480, 2479, 2478, 2750, 2823}
    },
    ARCHAEOLOGY = {
        name = 'Archaeology',
        icon = 441139,
        skillID = 794
    },
    BLACKSMITHING = {
        name = 'Blacksmithing',
        icon = 4620670,
        skillID = 164,
        variantID = {2477, 2476, 2475, 2474, 2473, 2472, 2454, 2437, 2751, 2822}
    },
    COOKING = {
        name = 'Cooking',
        icon = 4620671,
        skillID = 185,
        variantID = {2548, 2547, 2546, 2545, 2544, 2543, 2542, 2541, 2752, 2824}
    },
    ENCHANTING = {
        name = 'Enchanting',
        icon = 4620672,
        skillID = 333,
        variantID = {2494, 2493, 2492, 2491, 2489, 2488, 2487, 2486, 2753, 2825}
    },
    ENGINEERING = {
        name = 'Engineering',
        icon = 4620673,
        skillID = 202,
        variantID = {2506, 2505, 2504, 2503, 2502, 2501, 2500, 2499, 2755, 2827}
    },
    FISHING = {
        name = 'Fishing',
        icon = 4620674,
        skillID = 356,
        variantID = {2592, 2591, 2590, 2589, 2588, 2587, 2586, 2585, 2754, 2826}
    },
    HERBALISM = {
        name = 'Herbalism',
        icon = 4620675,
        skillID = 182,
        variantID = {2556, 2555, 2554, 2553, 2552, 2551, 2550, 2549, 2760, 2832}
    },
    INSCRIPTION = {
        name = 'Inscription',
        icon = 4620676,
        skillID = 773,
        variantID = {2514, 2513, 2512, 2511, 2510, 2509, 2508, 2507, 2756, 2828}
    },
    JEWELCRAFTING = {
        name = 'Jewelcrafting',
        icon = 4620677,
        skillID = 755,
        variantID = {2524, 2523, 2522, 2521, 2520, 2519, 2518, 2517, 2757, 2829}
    },
    LEATHERWORKING = {
        name = 'Leatherworking',
        icon = 4620678,
        skillID = 165,
        variantID = {2532, 2531, 2530, 2529, 2528, 2527, 2526, 2525, 2758, 2830}
    },
    MINING = {
        name = 'Mining',
        icon = 4620679,
        skillID = 186,
        variantID = {2572, 2571, 2570, 2569, 2568, 2567, 2566, 2565, 2761, 2833}
    },
    SKINNING = {
        name = 'Skinning',
        icon = 4620680,
        skillID = 393,
        variantID = {2564, 2563, 2562, 2561, 2560, 2559, 2558, 2557, 2762, 2834}
    },
    TAILORING = {
        name = 'Tailoring',
        icon = 4620681,
        skillID = 197,
        variantID = {2540, 2539, 2538, 2537, 2536, 2535, 2534, 2533, 2759, 2831}
    }
}
-- LuaFormatter on

-------------------------------------------------------------------------------

local function GetName(self)
    return C_TradeSkillUI.GetTradeSkillDisplayName(self.skillID)
end

local function HasProfession(self) return ns.PlayerHasProfession(self.skillID) end

for name, profession in pairs(ns.professions) do
    profession.GetName = GetName
    profession.HasProfession = HasProfession
end
