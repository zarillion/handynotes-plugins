-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Safari = ns.node.Safari

local Item = ns.reward.Item
local Transmog = ns.reward.Transmog

local POI = ns.poi.POI

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({id = 17, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[48753194] = ns.node.Collectible({
    id = 7363,
    note = L['bl_rare_note'],
    scale = 1.5,
    icon = 132596,
    rewards = {
        Transmog({item = 13102, type = L['cloth']}), -- Cassandra's Grace
        Transmog({item = 13009, type = L['leather']}), -- Cow King's Hide
        Transmog({item = 13008, type = L['cloth']}), -- Dalewind Trousers
        Transmog({item = 6660, type = L['dagger']}), -- Julie's Dagger
        Transmog({item = 13144, type = L['cloth']}), -- Serenity Belt
        Transmog({item = 13052, type = L['2h_sword']}), -- Warmonger
        Transmog({item = 1203, type = L['shield']}), -- Aegis of Stormwind
        Transmog({item = 13014, type = L['1h_axe']}), -- Axe of Rin'ji
        Transmog({item = 13027, type = L['1h_mace']}), -- Bonesnapper
        Transmog({item = 13122, type = L['cloak']}), -- Dark Phantom Cape
        Transmog({item = 13120, type = L['leather']}), -- Deepfury Bracers
        Transmog({item = 13018, type = L['2h_axe']}), -- Executioner's Cleaver
        Transmog({item = 9433, type = L['cloth']}), -- Forgotten Wraps
        Transmog({item = 13074, type = L['plate']}), -- Golem Shard Leggings
        Transmog({item = 13139, type = L['gun']}), -- Guttbuster
        Transmog({item = 13073, type = L['plate']}), -- Mugthol's Helm
        Transmog({item = 13111, type = L['leather']}), -- Sandals of the Insurgent
        Transmog({item = 754, type = L['1h_sword']}), -- Shortsword of Vengeance
        Transmog({item = 13039, type = L['crossbow']}), -- Skull Splitting Crossbow
        Transmog({item = 13059, type = L['polearm']}), -- Stoneraven
        Transmog({item = 13134, type = L['mail']}), -- Belt of the Gladiator
        Transmog({item = 8190, type = L['1h_sword']}), -- Hanzo Sword
        Transmog({item = 4090, type = L['1h_mace']}), -- Mug O' Hurt
        Transmog({item = 1607, type = L['staff']}), -- Soulkeeper
        Transmog({item = 1721, type = L['1h_mace']}), -- Viking Warhammer
        Transmog({item = 13109, type = L['cloak']}), -- Blackflame Cape
        Transmog({item = 13046, type = L['2h_mace']}), -- Blanchard's Stout
        Transmog({item = 13021, type = L['bow']}), -- Needle Threader
        Transmog({item = 13065, type = L['wand']}), -- Wand of Allistarj
        Transmog({item = 13112, type = L['leather']}), -- Winged Helm
        Transmog({item = 13066, type = L['plate']}), -- Wyrmslayer Spaulders
        Transmog({item = 13030, type = L['offhand']}), -- Basilisk Bone
        Transmog({item = 13043, type = L['2h_sword']}), -- Blade of the Titans
        Transmog({item = 13055, type = L['polearm']}), -- Bonechewer
        Transmog({item = 2564, type = L['leather']}), -- Elven Spirit Claws
        Transmog({item = 13022, type = L['bow']}), -- Gryphonwing Long Bow
        Transmog({item = 13067, type = L['plate']}), -- Hydralick Armor
        Transmog({item = 13035, type = L['1h_sword']}), -- Serpent Slicer
        Transmog({item = 13125, type = L['mail']}), -- Elven Chain Boots
        Transmog({item = 13076, type = L['plate']}), -- Giantslayer Bracers
        Transmog({item = 13128, type = L['mail']}), -- High Bergg Helm
        Transmog({item = 13082, type = L['shield']}), -- Mountainside Buckler
        Transmog({item = 4091, type = L['dagger']}), -- Widowmaker
        Transmog({item = 13126, type = L['mail']}), -- Battlecaller Gauntlets
        Transmog({item = 1720, type = L['staff']}) -- Tanglewood Staff
    }
})

local BLRare = Class('BLRare', ns.node.Rare, {
    rewards = {
        Item({item = 8244}), -- Flawless Draenethyst Sphere
        Item({item = 10593}) -- Imperfect Draenethyst Fragment
    },
    IsCompleted = function() return map.nodes[48753194]:IsCompleted() end,
    IsEnabled = function() return map.nodes[48753194]:IsEnabled() end
}) -- Blasted Lands Rare

map.nodes[73625527] = BLRare({id = 8298}) -- Akubar the Seer
map.nodes[31087015] = BLRare({id = 45260}) -- Bkackleaf
map.nodes[60697510] = BLRare({id = 45258}) -- Cassia the Slitherqueen
map.nodes[47601460] = BLRare({id = 8301}) -- Clack the Reaver
map.nodes[52582737] = BLRare({id = 8302}) -- Deatheye
map.nodes[36982852] = BLRare({id = 8304}) -- Dreadscorn
map.nodes[55604000] = BLRare({id = 8303}) -- Grunter
map.nodes[46813939] = BLRare({id = 8297}) -- Magronos the Unyielding
map.nodes[46402660] = BLRare({
    id = 8296,
    location = L['in_cave'],
    pois = {POI({45103042})}
}) -- Mojo the Twisted
map.nodes[60482959] = BLRare({id = 45257}) -- Mordak Nightbender
map.nodes[32184441] = BLRare({id = 45262}) -- Narixxus the Doombringer
map.nodes[49313534] = BLRare({id = 8300}) -- Ravage
map.nodes[61284050] = BLRare({
    id = 8299,
    pois = {
        ns.poi.Path({
            63673316, 62353252, 61023286, 60043395, 59563531, 59393672,
            59603814, 60233955, 61284050, 62774060, 63873979, 64573850,
            64833702, 64783561, 64403428, 63673316
        })
    }
}) -- Spiteflayer
map.nodes[51364878] = BLRare({
    id = 7846,
    pois = {
        ns.poi.Path({
            57615140, 56955290, 55835413, 54475457, 53165403, 52235297,
            51615166, 51325024, 51364878, 51654743, 52194617, 53144515,
            54484473, 55954515, 56864618, 57504751, 57824902, 57785045, 57615140
        })
    }
}) -- Teremus the Devourer

map.nodes[33604960] = ns.node.AnniversaryRare({
    id = 121818,
    quest = 47461,
    rewards = {
        Transmog({item = 150380, slot = L['cloak']}), -- Eskhandar's Pelt
        Transmog({item = 150385, slot = L['cloth']}), -- Fel Infused Leggings
        Transmog({item = 150386, slot = L['cloth']}), -- Blacklight Bracer
        Transmog({item = 150381, slot = L['leather']}), -- Flayed Doomguard Belt
        Transmog({item = 150382, slot = L['leather']}), -- Doomhide Gauntlets
        Transmog({item = 150379, slot = L['mail']}), -- Infernal Headcage
        Transmog({item = 150427, slot = L['1h_mace']}), -- Empyrean Demolisher
        Transmog({item = 150383, slot = L['staff']}) -- Amberseal Keeper
    }
}) -- Lord Kazzak

-------------------------------------------------------------------------------
------------------------------------ SAFARI -----------------------------------
-------------------------------------------------------------------------------

map.nodes[51403860] = Safari.FireBeetle({
    pois = {
        POI({
            31807260, 32206440, 33407500, 36807340, 37004840, 37004880,
            37606040, 40007480, 40205460, 40406840, 40605420, 40806300,
            41403580, 41603560, 42001480, 42002640, 42201440, 42402240,
            42402300, 42803260, 43208040, 43401940, 43402060, 43404260,
            43407920, 43603180, 43604220, 44203780, 44403340, 44403360,
            44603860, 45404560, 45407920, 45408660, 45601360, 45602000,
            47801280, 47802640, 48401180, 48803580, 49008240, 49603640,
            50602920, 51203740, 51403860, 53003060, 53201760, 54801560,
            55203820, 55403220, 55807860, 56607400, 57601960, 57802400,
            57803480, 58002460, 58003980, 59602720, 59602760, 59807960,
            60001640, 60001660, 60607120, 60803280, 60803580, 61006460,
            61203200, 61207040, 61406600, 61603940, 61606540, 62004020,
            62401380, 62607980, 63407280, 63407380, 63603460, 63802760,
            64202640, 64403040, 64603020, 65004220, 65406880, 65807980,
            66407300, 66407860, 67003660, 67603200, 67803580, 67804060,
            71405320, 71804820, 71805340, 71805360
        })
    }
}) -- Fire Beetle

map.nodes[53602980] = Safari.Scorpid({
    pois = {
        POI({
            37605520, 38605440, 39807440, 40605420, 40606320, 42603160,
            43204260, 43208000, 43401980, 44203780, 45408020, 45801380,
            47802600, 48201260, 48204680, 48607920, 48803580, 49002600,
            50403220, 52402540, 53602980, 55001540, 55203240, 55608020,
            57007300, 58003980, 59002820, 59602740, 59807900, 60603580,
            60803340, 61007120, 61806600, 63607280, 64403060, 65004200,
            67603220, 68003980, 68806340, 69606340, 69807300
        })
    }
}) -- Scorpid

map.nodes[59806040] = Safari.Scorpling({
    pois = {
        POI({
            55405980, 55606000, 56006140, 56006160, 56406300, 56806300,
            57405920, 57405980, 57605940, 57605980, 58206440, 58206460,
            58405740, 58405780, 58605740, 58605760, 58606420, 59406040,
            59406060, 59606080, 59806040, 60005800, 60005860, 61405700,
            61405880, 61605640, 61605680, 61605840, 61605860, 62406020,
            62406060, 62606020, 62606060, 64006000, 64406180, 64606180,
            65206040, 65206060
        })
    }
}) -- Scorpling

map.nodes[45407960] = Safari.Spider({
    pois = {POI({39407460, 45407960, 61606540})}
}) -- Spider

-------------------------------------------------------------------------------
-------------------------- THE SCAVENGER ACHIEVEMENT --------------------------
-------------------------------------------------------------------------------

map.nodes[43209080] = ns.node.ScavengerPool(3876)
map.nodes[46708850] = ns.node.ScavengerPool(3876)
map.nodes[52708480] = ns.node.ScavengerPool(3876)
map.nodes[57508420] = ns.node.ScavengerPool(3876)
map.nodes[61508480] = ns.node.ScavengerPool(3876)
map.nodes[68007960] = ns.node.ScavengerPool(3876)
map.nodes[69303590] = ns.node.ScavengerPool(3876)
map.nodes[69504030] = ns.node.ScavengerPool(3876)
map.nodes[69802970] = ns.node.ScavengerPool(3876)
map.nodes[70902360] = ns.node.ScavengerPool(3876)
map.nodes[71207550] = ns.node.ScavengerPool(3876)
map.nodes[72104380] = ns.node.ScavengerPool(3876)
map.nodes[72106230] = ns.node.ScavengerPool(3876)
map.nodes[72106950] = ns.node.ScavengerPool(3876)
map.nodes[73802110] = ns.node.ScavengerPool(3876)
