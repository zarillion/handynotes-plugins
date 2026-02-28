-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

local LoreObject = ns.node.LoreObject
local PT = ns.node.ProfessionTreasures
local Rare = ns.node.Rare
local Safari = ns.node.Safari
local SkyridingGlyph = ns.node.SkyridingGlyph
local Telescope = ns.node.Telescope
local Treasure = ns.node.Treasure
local FrogPrincess = ns.node.FrogPrincess
local Songseeker = ns.node.Songseeker
local SpiritpawMarathon = ns.node.SpiritpawMarathon

local Achievement = ns.reward.Achievement
local Mount = ns.reward.Mount
local Item = ns.reward.Item
local Transmog = ns.reward.Transmog
local Reputation = ns.reward.Reputation
local Section = ns.reward.Section
local Spacer = ns.reward.Spacer

local POI = ns.poi.POI
local Path = ns.poi.Path

-------------------------------------------------------------------------------

local map = Map({id = 2437, settings = true})
local aam = Map({id = 2536, settings = true}) -- Atal'Aman

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[34413305] = Rare({
    id = 242023,
    quest = 89569, -- 94683
    rewards = {
        Achievement({id = 62122, criteria = 111839}),
        Reputation({id = 2696, gain = 50, quest = 94683}), Spacer(),
        Section(L['shared_drops']), Mount({item = 257152, id = 2760}), -- Amani Sharptalon
        Mount({item = 257200, id = 2775}) -- Witherbark Pango
    }
}) -- Necrohexxer Raz'ka

map.nodes[51801862] = Rare({
    id = 242024,
    quest = 89570, -- 94697
    rewards = {
        Achievement({id = 62122, criteria = 111840}),
        Reputation({id = 2696, gain = 50, quest = 94697}), Spacer(),
        Section(L['shared_drops']), Mount({item = 257152, id = 2760}), -- Amani Sharptalon
        Mount({item = 257200, id = 2775}) -- Witherbark Pango
    }
}) -- The Snapping Scourge

map.nodes[51857291] = Rare({
    id = 242025,
    quest = 89571, -- 94698
    rewards = {
        Achievement({id = 62122, criteria = 111841}),
        Transmog({item = 256231, type = L['2h_sword']}),
        Reputation({id = 2696, gain = 50, quest = 94698}), Spacer(),
        Section(L['shared_drops']), Mount({item = 257152, id = 2760}), -- Amani Sharptalon
        Mount({item = 257200, id = 2775}) -- Witherbark Pango
    }
}) -- Skullcrusher Harak

map.nodes[28952444] = Rare({
    id = 242028,
    location = L['in_cave'],
    quest = 89575, -- 89575/81425/94699?
    rewards = {
        Achievement({id = 62122, criteria = 111842}),
        Reputation({id = 2696, gain = 50, quest = 94699}), Spacer(),
        Section(L['shared_drops']), Mount({item = 257152, id = 2760}), -- Amani Sharptalon
        Mount({item = 257200, id = 2775}) -- Witherbark Pango
    }
}) -- Lightwood Borer enterance 28732403

map.nodes[50876514] = Rare({
    id = 245975,
    quest = 91174, -- 94700
    rewards = {
        Achievement({id = 62122, criteria = 111843}),
        Transmog({item = 264580, type = L['plate']}),
        Reputation({id = 2696, gain = 50, quest = 94700}), Spacer(),
        Section(L['shared_drops']), Mount({item = 257152, id = 2760}), -- Amani Sharptalon
        Mount({item = 257200, id = 2775}) -- Witherbark Pango
    }
}) -- Mrrlokk

map.nodes[38994997] = Rare({
    id = 247976,
    quest = 91634, -- 94701
    rewards = {
        Achievement({id = 62122, criteria = 111844}),
        Transmog({item = 264627, type = L['polearm']}), -- Rav'ik's Space Hunting Spear
        Reputation({id = 2696, gain = 50, quest = 94701}), Spacer(),
        Section(L['shared_drops']), Mount({item = 257152, id = 2760}), -- Amani Sharptalon
        Mount({item = 257200, id = 2775}) -- Witherbark Pango
    },
    parent = aam.id
}) -- Poacher Rav'ik

map.nodes[30484456] = Rare({
    id = 242031,
    quest = 89578, -- 94702
    rewards = {
        Achievement({id = 62122, criteria = 111845}),
        Reputation({id = 2696, gain = 50, quest = 94702}), Spacer(),
        Section(L['shared_drops']), Mount({item = 257152, id = 2760}), -- Amani Sharptalon
        Mount({item = 257200, id = 2775}) -- Witherbark Pango
    }
}) -- Spinefrill

map.nodes[46295113] = Rare({
    id = 242032,
    location = L['in_cave'],
    quest = 89579, -- 94703
    rewards = {
        Achievement({id = 62122, criteria = 111846}),
        Transmog({item = 264541, type = L['leather']}), -- Egg-Swaddling Sash
        Reputation({id = 2696, gain = 50, quest = 94703}), Spacer(),
        Section(L['shared_drops']), Mount({item = 257152, id = 2760}), -- Amani Sharptalon
        Mount({item = 257200, id = 2775}) -- Witherbark Pango
    }
}) -- Oophaga

map.nodes[47773422] = Rare({
    id = 242033,
    quest = 89580, -- 94704
    rewards = {
        Achievement({id = 62122, criteria = 111847}),
        Transmog({item = 264648, type = L['1h_mace']}), -- Verminscale Gavel
        Reputation({id = 2696, gain = 50, quest = 94704}), Spacer(),
        Section(L['shared_drops']), Mount({item = 257152, id = 2760}), -- Amani Sharptalon
        Mount({item = 257200, id = 2775}) -- Witherbark Pango
    }
}) -- Tiny Vermin

map.nodes[21307055] = Rare({
    id = 242034,
    quest = 89581, -- 94705
    rewards = {
        Achievement({id = 62122, criteria = 111848}),
        Reputation({id = 2696, gain = 50, quest = 94705}), Spacer(),
        Section(L['shared_drops']), Mount({item = 257152, id = 2760}), -- Amani Sharptalon
        Mount({item = 257200, id = 2775}) -- Witherbark Pango
    }
}) -- Voidtouched Crustacean

map.nodes[39592097] = Rare({ -- wowhead beta coords
    id = 242035,
    location = L['in_cave'],
    quest = 89583, -- 89583/94706
    rewards = {
        Achievement({id = 62122, criteria = 111849}),
        Reputation({id = 2696, gain = 50, quest = 94706}), Spacer(),
        Section(L['shared_drops']), Mount({item = 257152, id = 2760}), -- Amani Sharptalon
        Mount({item = 257200, id = 2775}) -- Witherbark Pango
    }
}) -- The Devouring Invader in cave

map.nodes[33718897] = Rare({
    id = 242026,
    quest = 89572, -- 94707
    rewards = {
        Achievement({id = 62122, criteria = 111850}), Item({item = 265543}),
        Reputation({id = 2696, gain = 50, quest = 94707}), Spacer(),
        Section(L['shared_drops']), Mount({item = 257152, id = 2760}), -- Amani Sharptalon
        Mount({item = 257200, id = 2775}) -- Witherbark Pango
    }
}) -- Elder Oaktalon

map.nodes[47682056] = Rare({
    id = 242027,
    quest = 89573, -- 94708, -- 89573
    rewards = {
        Achievement({id = 62122, criteria = 111851}), Item({item = 265560}),
        Reputation({id = 2696, gain = 50, quest = 94708}), Spacer(),
        Section(L['shared_drops']), Mount({item = 257152, id = 2760}), -- Amani Sharptalon
        Mount({item = 257200, id = 2775}) -- Witherbark Pango
    }
}) -- Depthborn Eelamental

map.nodes[46394339] = Rare({
    id = 245691,
    quest = 91072, -- 94709
    rewards = {
        Achievement({id = 62122, criteria = 111852}),
        Reputation({id = 2696, gain = 50, quest = 94709}), Spacer(),
        Section(L['shared_drops']), Mount({item = 257152, id = 2760}), -- Amani Sharptalon
        Mount({item = 257200, id = 2775}) -- Witherbark Pango
    }
}) -- The Decaying Diamondback

map.nodes[45294170] = Rare({
    id = 245692,
    quest = 91073, -- 94710
    rewards = {
        Achievement({id = 62122, criteria = 111853}),
        Reputation({id = 2696, gain = 50, quest = 94710}), Spacer(),
        Section(L['shared_drops']), Mount({item = 257152, id = 2760}), -- Amani Sharptalon
        Mount({item = 257200, id = 2775}) -- Witherbark Pango
    }
}) -- Asha the Empowered

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[44724409] = Treasure({
    requires = ns.requirement.Item(259361, 1000), -- Vile Essence
    quest = 90794,
    rewards = {
        Achievement({id = 62125, criteria = 111854}),
        Mount({item = 257444, id = 2786}) -- Hexed Vilefeather Eagle
    }
}) -- Abandoned Ritual Skull

map.nodes[46838186] = Treasure({
    quest = 90793,
    rewards = {
        Achievement({id = 62125, criteria = 111855}),
        Reputation({id = 2696, gain = 75, quest = 90793}),
        Mount({item = 257223, id = 2778}) -- Ancestral War Bear
    },
    pois = {
        -- Honored Warrior's Urn:
        POI({points = 54772240, label = '{item:259220}'}), -- Spawns Jan'alai's Chosen (255233), drops Dragonhawk Feather
        POI({points = 34543348, label = '{item:259223}'}), -- Spawns Halazzi's Chosen (255232), drops Lynx Claw
        POI({points = 51578491, label = '{item:259221}'}), -- Spawns Akil'zon's Chosen (255231) drops eagle talon
        POI({points = 32698349, label = '{item:259219}'}) -- Spawns Nalorakk's Chosen (255171), drops Bear Tooth
    }
}) -- Honored Warrior's Cache
-- 93560 Triggered when clicking the cache
-- Node also appears on the minimap at 21507728, but i cant find it.

map.nodes[21897738] = Treasure({
    quest = 93871,
    rewards = {
        Achievement({id = 62125, criteria = 111856}), Item({item = 265362}) -- Arsenal: Twilight Blade
    },
    pois = { -- sealing orbs
        POI({points = 24027566, label = L['sealing_orb'], quest = 93918}),
        POI({points = 26097401, label = L['sealing_orb'], quest = 93919}),
        POI({points = 26098074, label = L['sealing_orb'], quest = 93916}),
        POI({points = 23957895, label = L['sealing_orb'], quest = 93917})
    }
}) -- Sealed Twilight Blade Bounty

map.nodes[20846654] = Treasure({
    quest = 90795,
    rewards = {Achievement({id = 62125, criteria = 111857})}
}) -- Bait and Tackle

map.nodes[41994779] = Treasure({
    quest = 90796,
    location = L['in_small_cave'],
    rewards = {Achievement({id = 62125, criteria = 111858})}
}) -- Burrow Bounty

map.nodes[52326599] = Treasure({
    quest = 90797,
    rewards = {Achievement({id = 62125, criteria = 111859})}
}) -- Mrruk's Mangy Trove

map.nodes[40483595] = Treasure({
    quest = 90798,
    rewards = {Achievement({id = 62125, criteria = 111860})}
}) -- Secret Formula

map.nodes[42645243] = Treasure({
    quest = 90799,
    rewards = {
        Achievement({id = 62125, criteria = 111861}), Item({item = 255008}) -- Abandoned Eagle Egg - todo: probably placeholder ([DNT] in name), has duration: 3 days
    }
}) -- Abandoned Nest

map.nodes[44325620] = Treasure({
    label = 'Ruz\'avalt\'s Prized Tackle',
    quest = 90790,
    rewards = {}
}) -- Ruz'avalt's Prized Tackle
-- TODO: not interactable

-------------------------------------------------------------------------------
----------------------------- PROFESSION TREASURES ----------------------------
-------------------------------------------------------------------------------

map.nodes[40395117] = PT.Alchemy({quest = 89114, id = 238535}) -- Vial of Zul'Aman Oddities
aam.nodes[49102321] = PT.Alchemy({quest = 89116, id = 238537, parent = map.id}) -- Measured Ladle
aam.nodes[33086582] = PT.Blacksmithing({
    quest = 89179,
    id = 238542,
    parent = map.id
}) -- Carefully Racked Spear
aam.nodes[48712253] = PT.Enchanting({
    quest = 89100,
    id = 238548,
    parent = map.id
}) -- Enchanted Amani Mask
map.nodes[40415118] = PT.Enchanting({quest = 89106, id = 238554}) -- Loa-Blessed Dust
aam.nodes[65143476] = PT.Engineering({
    quest = 89138,
    id = 238561,
    parent = map.id
}) -- Offline Helper Bot
map.nodes[34218780] = PT.Engineering({quest = 89140, id = 238563}) -- Handy Wrench
map.nodes[40484935] = PT.Inscription({quest = 89068, id = 238573}) -- Leather-Bound Techniques
aam.nodes[45294561] = PT.Leatherworking({
    quest = 89092,
    id = 238591,
    parent = map.id
}) -- Bundle of Tanner's Trinkets
map.nodes[33087891] = PT.Leatherworking({quest = 89089, id = 238588}) -- Amani Leatherworker's Tool
map.nodes[30758397] = PT.Leatherworking({quest = 89091, id = 238590}) -- Prestigiously Racked Hide
map.nodes[42004653] = PT.Mining({quest = 89145, id = 238597}) -- Spelunker's Lucky Charm
aam.nodes[33296591] = PT.Mining({quest = 89149, id = 238601, parent = map.id}) -- Amani Expert's Chisel
aam.nodes[44904517] = PT.Skinning({quest = 89167, id = 238629, parent = map.id}) -- Cadre Skinning Knife
map.nodes[33077907] = PT.Skinning({quest = 89172, id = 238634}) -- Amani Skinning Knife
map.nodes[40393601] = PT.Skinning({quest = 89170, id = 238632}) -- Amani Tanning Oil
map.nodes[40534936] = PT.Tailoring({quest = 89085, id = 238619}) -- Artisan's Cover Comb

-------------------------------------------------------------------------------
---------------------------- ZUL'AMAN GLYPH HUNTER ----------------------------
-------------------------------------------------------------------------------

map.nodes[19177064] = SkyridingGlyph({
    rewards = {Achievement({id = 61581, criteria = 110353})}
}) -- Revantusk Sedge

map.nodes[42923436] = SkyridingGlyph({
    rewards = {Achievement({id = 61581, criteria = 110355})}
}) -- Shadebasin Watch

map.nodes[53638039] = SkyridingGlyph({
    rewards = {Achievement({id = 61581, criteria = 110354})}
}) -- Temple of Akil'zon

map.nodes[51482357] = SkyridingGlyph({
    rewards = {Achievement({id = 61581, criteria = 110356})}
}) -- Temple of Jan'alai

map.nodes[53205448] = SkyridingGlyph({
    rewards = {Achievement({id = 61581, criteria = 110357})}
}) -- Strait of Hexx'alor

map.nodes[39551977] = SkyridingGlyph({
    rewards = {Achievement({id = 61581, criteria = 110358})}
}) -- Witherbark Bluffs

map.nodes[30418478] = SkyridingGlyph({
    rewards = {Achievement({id = 61581, criteria = 110359})}
}) -- Nalorakk's Prowl

map.nodes[27912860] = SkyridingGlyph({
    rewards = {Achievement({id = 61581, criteria = 110360})}
}) -- Zeb'Alar Lumberyard

map.nodes[24825483] = SkyridingGlyph({
    rewards = {Achievement({id = 61581, criteria = 110361})},
    parent = {2395, aam.id}
}) -- Amani Pass

map.nodes[46698217] = SkyridingGlyph({
    rewards = {Achievement({id = 61581, criteria = 110362})}
}) -- Solemn Valley

map.nodes[42748014] = SkyridingGlyph({
    rewards = {Achievement({id = 61581, criteria = 110363})}
}) -- Spiritpaw Burrow

---------------------------- MIDNIGHT LORE HUNTER -----------------------------

map.nodes[30178466] = LoreObject({
    quest = 94632,
    rewards = {
        Achievement({id = 62104, criteria = 111775}),
        Reputation({id = 2696, gain = 250, quest = 94632})
    },
    pois = {ns.poi.Entrance({31258397})}
}) -- Tablet of Nalorakk

map.nodes[53108211] = LoreObject({
    quest = 94627,
    rewards = {
        Achievement({id = 62104, criteria = 111772}),
        Reputation({id = 2696, gain = 250, quest = 94633})
    }
}) -- Tablet of Akil'zon

map.nodes[55131762] = LoreObject({
    quest = 94631,
    rewards = {
        Achievement({id = 62104, criteria = 111774}),
        Reputation({id = 2696, gain = 250, quest = 94631})
    }
}) -- Tablet of Jan'alai

map.nodes[39264472] = LoreObject({
    quest = 94673,
    rewards = {
        Achievement({id = 62104, criteria = 111777}),
        Reputation({id = 2696, gain = 250, quest = 94673})
    }
}) -- Tablet of Kulzi

map.nodes[32083165] = LoreObject({
    quest = 94628,
    rewards = {
        Achievement({id = 62104, criteria = 111773}),
        Reputation({id = 2696, gain = 250, quest = 94628})
    }
}) -- Tablet of Halazzi

map.nodes[52923212] = LoreObject({
    quest = 94674,
    rewards = {
        Achievement({id = 62104, criteria = 111778}),
        Reputation({id = 2696, gain = 250, quest = 94674})
    }
}) -- Tablet of Filo

------------------------- MIDNIGHT: THE HIGHEST PEAKS -------------------------

map.nodes[27797001] = Telescope({
    quest = 94541,
    achievement = 62289,
    criteria = 111578,
    repfaction = 2696
})
map.nodes[53018202] = Telescope({
    quest = 94542,
    achievement = 62289,
    criteria = 111579,
    repfaction = 2696
})
map.nodes[57692123] = Telescope({
    quest = 94543,
    achievement = 62289,
    criteria = 111580,
    repfaction = 2696
})
map.nodes[24635830] = Telescope({
    quest = 94544,
    achievement = 62289,
    criteria = 111581,
    repfaction = 2696
})
map.nodes[41854163] = Telescope({
    quest = 94545,
    achievement = 62289,
    criteria = 111582,
    repfaction = 2696
})

------------------------- THE FROG AND THE PRINCESS ----------------------------

map.nodes[31702263] = FrogPrincess(112041) -- Princess Fita
map.nodes[68281931] = FrogPrincess(112445) -- Princess Gabiku
aam.nodes[27534005] = FrogPrincess(112446, {parent = map.id}) -- Princess Jakobu
map.nodes[53945956] = FrogPrincess(112447) -- Princess Tafiki
map.nodes[29817915] = FrogPrincess(112448) -- Princess Zambina

----------------------------- SHADOWPINE SCATTERED ----------------------------

map.nodes[52687933] = Songseeker({
    rewards = {Achievement({id = 61455, criteria = 109749})}
}) -- Songseeker Baz'wa

map.nodes[47338191] = Songseeker({
    rewards = {Achievement({id = 61455, criteria = 109750})}
}) -- Songseeker Far'lan

map.nodes[33194347] = Songseeker({
    rewards = {Achievement({id = 61455, criteria = 109751})},
    pois = {
        Path({
            31533814, 32063855, 32553899, 33013949, 33194013, 33144080,
            33164147, 33144214, 33154281, 33194347, 32954410, 32604467,
            32254524, 31954584, 31714646, 31624653
        })
    }
}) -- Songseeker Jebanda

map.nodes[39175638] = Songseeker({
    rewards = {Achievement({id = 61455, criteria = 109752})}
}) -- Songseeker Dova

map.nodes[55201810] = Songseeker({
    location = 'On top of the Temple.', -- TODO: add localization line
    rewards = {Achievement({id = 61455, criteria = 109753})}
}) -- Songseeker Ikaja

------------------------- SPIRITPAW MARATHON ----------------------------

map.nodes[32292240] = SpiritpawMarathon({
    label = '{achievement:62202}',
    note = L['spiritpaw_marathon_note'],
    rewards = {
        Achievement({id = 62202, criteria = 112895, oneline = true}) -- Spiritpaw Marathon,
    },
    pois = {
        POI({points = 51523279, color = 'Pink'}) -- End
    }
}) -- Speak with Feevra (Achievement seems buggy not displaying on map)

-------------------------------------------------------------------------------
-------------------------------- SAFARI ---------------------------------------
-------------------------------------------------------------------------------

map.nodes[49608160] = Safari.AkilFledgling({
    pois = {POI({49608160, 47207570, 56207050, 52808060, 47838752})}
})
map.nodes[41304860] = Safari.EbonSnapling({pois = {POI({41304860, 32704560})}})
map.nodes[37606460] = Safari.GloomToad({
    pois = {
        POI({
            37606460, 43405720, 29302940, 45307310, 29004180, 37406480,
            45207300, 46575321, 38027922, 42166276
        })
    }
})
map.nodes[50405760] = Safari.StripedSnakebiter({
    pois = {POI({50405760, 51506720, 48104690, 48704970, 42166276})}
})
map.nodes[48602360] = Safari.DragonhawkMosswing({
    pois = {POI({48602360, 50802150, 50502480, 51802880})}
})
map.nodes[42205450] = Safari.Pangolil({pois = {POI({42205450, 38695442})}})
map.nodes[44903540] = Safari.SwampBiter({
    pois = {POI({44903540, 46803590, 51406510, 51406480, 47474984})}
})
