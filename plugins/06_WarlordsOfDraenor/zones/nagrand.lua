-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible
local Node = ns.node.Node
local PetBattle = ns.node.PetBattle
local Rare = ns.node.Rare

local Achievement = ns.reward.Achievement
local Mount = ns.reward.Mount
local Title = ns.reward.Title

local Path = ns.poi.Path
local POI = ns.poi.POI

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({id = 550, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

local Lukhok = Rare({
    id = 50981,
    note = L['multiple_spawn_note'],
    rewards = {
        Mount({item = 116661, id = 614}) -- Mottled Meadowstomper
    }
})

map.nodes[66604400] = Lukhok
map.nodes[76203180] = Lukhok
map.nodes[72805360] = Lukhok
map.nodes[79205600] = Lukhok
map.nodes[84606360] = Lukhok
map.nodes[86806560] = Lukhok

local Nakk = Rare({
    id = 50990,
    note = L['multiple_spawn_note'],
    rewards = {
        Mount({item = 116659, id = 612}) -- Bloodhoof Bull
    }
}) -- Nakk the Thunderer

map.nodes[62801540] = Nakk
map.nodes[64601960] = Nakk
map.nodes[55003500] = Nakk
map.nodes[50003440] = Nakk

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[56200980] = PetBattle({
    id = 87110,
    rewards = {Achievement({id = 9724, criteria = 27015})}
}) -- Tarr the Terrible

-------------------------------------------------------------------------------
---------------------- STEAMWHEEDLE PRESERVATION SOCIETY ----------------------
-------------------------------------------------------------------------------

local highmaulPath = Path({
    31823445, 30463435, 30533354, 30813284, 29733211, 29083146, 28263070,
    27202986, 26512966, 26062999, 25343116, 24653239, 23913279, 23463428,
    23143550, 22523464, 23163561, 23173629, 23803760, 23683573, 23953635,
    24813806, 23953635, 24813806, 25043850, 25493882, 25323992, 25814103,
    25323992, 25323996, 25503881, 25613779, 25803737, 25873663, 25473883,
    25963904, 26733922, 26833981, 27004030, 26884094, 27014025, 27414030,
    27523975, 27983981, 27533982, 27383938, 27093895, 27313847, 27443798,
    28073840, 27453787, 28413603, 30793888, 30843999, 30283979, 29873941,
    29633897, 29483844, 29433787, 29563787, 29463743, 29723723, 30023706,
    30333704, 30603714, 30873737, 31123764, 31273793, 31413828, 30973904,
    28243575, 28613531, 29823447, 30213431, 30793434, 31643441
})

map.nodes[50304130] = Collectible({
    id = 87393,
    icon = 463874,
    note = L['steamwheedle_preservation_society_note'] .. '\n\n' ..
        L['highmaul_farm_path'],
    group = ns.groups.STEAMWHEEDLE_PRESERVATION_SOCIETY,
    rewards = {
        Achievement({id = 9472}), -- Steamwheedle Preservation Society
        Title({id = 284, criteria = 9472, pattern = '{title} {player}'}) -- "Conservationist" %s
    },
    pois = {Path({50304130, 31823445}), highmaulPath}
}) -- Sallee Silverclamp

-------------------------------------------------------------------------------
---------------------------- FINDING YOUR WAYSTONES ---------------------------
-------------------------------------------------------------------------------

map.nodes[31823445] = Collectible({
    label = L['finding_your_waystones_label'],
    icon = 528693,
    note = L['finding_your_waystones_note'] .. '\n\n' .. L['highmaul_farm_path'],
    group = ns.groups.FINDING_YOUR_WAYSTONES,
    rewards = {
        Achievement({
            id = 9497,
            criteria = {id = 1, qty = true, suffix = L['ogre_waystones']}
        }) -- Finding Your Waystone
    },
    pois = {highmaulPath}
}) -- Finding Your Waystones

-------------------------------------------------------------------------------
------------------------------- SONG OF SILENCE -------------------------------
-------------------------------------------------------------------------------

map.nodes[42093684] = Collectible({
    id = 87361,
    icon = 'peg_rd',
    scale = 1.5,
    group = ns.groups.SONG_OF_SILENCE,
    note = L['signal_horn_note'],
    rewards = {
        Achievement({
            id = 9541,
            criteria = {
                26142, -- Krahl Deadeye
                26143 -- Gortag Steelgrip
            }
        })
    },
    pois = {POI({43003560, 43203440, 43603520, 44203560, 44803580})}
})

map.nodes[45603480] = Collectible({
    id = 86959,
    icon = 'peg_rd',
    scale = 1.5,
    group = ns.groups.SONG_OF_SILENCE,
    rewards = {Achievement({id = 9541, criteria = 26140})}
}) -- Karosh Blackwind

map.nodes[43103640] = Collectible({
    id = 87234,
    icon = 'peg_rd',
    scale = 1.5,
    group = ns.groups.SONG_OF_SILENCE,
    rewards = {Achievement({id = 9541, criteria = 26141})}
}) -- Brutag Grimblade

-------------------------------------------------------------------------------
------------------------------- BURIED TREASURES ------------------------------
-------------------------------------------------------------------------------

map.nodes[41703750] = Collectible({
    id = 87522,
    icon = 'peg_yw',
    scale = 1.5,
    group = ns.groups.BURIED_TREASURES,
    note = L['garroshs_shackles'],
    rewards = {Achievement({id = 9548, criteria = 26145})}
}) -- Garrosh's Shackles

map.nodes[45503680] = Collectible({
    id = 87524,
    icon = 'peg_yw',
    scale = 1.5,
    group = ns.groups.BURIED_TREASURES,
    note = L['warsong_relics'],
    rewards = {Achievement({id = 9548, criteria = 26146})}
}) -- Warsong Relics

map.nodes[42303450] = Collectible({
    id = 87526,
    icon = 'peg_yw',
    scale = 1.5,
    group = ns.groups.BURIED_TREASURES,
    note = L['stolen_draenei_tome'],
    rewards = {Achievement({id = 9548, criteria = 26148})},
    pois = {POI({45303380, 45103820})}
}) -- Stolen Draenei Tome

map.nodes[46203420] = Collectible({
    id = 87530,
    icon = 'peg_yw',
    scale = 1.5,
    group = ns.groups.BURIED_TREASURES,
    note = L['dirt_mound'],
    rewards = {
        Achievement({
            id = 9548,
            criteria = {
                26147, -- Warsong Remains
                26149, -- Wolf Pup Remains
                26150 -- Gnarled Bone
            }
        })
    },
    pois = {POI({45603700, 43603880, 42603760, 42203760, 43203660, 44003420})}
})

-------------------------------------------------------------------------------
-------------------- ADVANCED HUSBANDRY / THE STABLE MASTER -------------------
-------------------------------------------------------------------------------

local StablesTarget = Class('StablesTarget', Collectible, {
    icon = 'peg_bl',
    scale = 1.5,
    group = ns.groups.THE_STABLE_MASTER,
    requires = {
        ns.requirement.Item(118469), -- Black Claw of Sethe
        ns.requirement.Item(118470) -- Garn-Tooth Necklace
    },
    note = L['stable_master_note'],
    getters = {
        rewards = function(self)
            return {
                Achievement({id = 9539, criteria = self.criteriaID}), -- Advanced Husbandry
                Achievement({id = 9540, criteria = self.criteriaID}), -- The Stable Master
                Mount({item = 116668, id = 621}), -- Armored Frostboar
                Mount({item = 116781, id = 644}), -- Armored Frostwolf
                Title({id = 277, criteria = 9540, pattern = '{title} {player}'}) -- Stable Master %s
            }
        end
    }
})

map.nodes[63008000] = StablesTarget({id = 87107, criteriaID = 1}) -- Maimclaw

map.nodes[79007100] = StablesTarget({id = 87095, criteriaID = 2}) -- Gorian Beast-Lasher

map.nodes[43006900] = StablesTarget({id = 87089, criteriaID = 3}) -- Moth of Wrath

map.nodes[90002300] = StablesTarget({id = 87102, criteriaID = 4}) -- Thundercall

map.nodes[53007700] = StablesTarget({id = 87090, criteriaID = 5}) -- Ironbore

map.nodes[69003400] = StablesTarget({id = 87105, criteriaID = 6}) -- Karak

-------------------------------------------------------------------------------
---------------------------------- VOIDTALON ----------------------------------
-------------------------------------------------------------------------------

local Voidtalon = Node({
    icon = 1094600,
    label = L['edge_of_reality'],
    note = L['edge_of_reality_note'],
    rewards = {
        Mount({id = 682, item = 121815}) -- Voidtalon of the Dark Star
    }
})

map.nodes[40534764] = Voidtalon
map.nodes[44033082] = Voidtalon
map.nodes[57262656] = Voidtalon
