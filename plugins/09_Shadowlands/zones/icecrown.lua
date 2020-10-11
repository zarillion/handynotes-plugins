-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local _, ns = ...
local L = ns.locale
local Map = ns.Map

local Node = ns.node.Node
local Rare = ns.node.Rare

local Section = ns.reward.Section
local Item = ns.reward.Item
local Transmog = ns.reward.Transmog

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({ id=118 })
local nodes = map.nodes

function map:Prepare ()
    Map.Prepare(self)

    -- Hide nodes until the "Return of the Scourge" is completed
    if ns.faction == 'Alliance' then
        self.phased = C_QuestLog.IsQuestFlaggedCompleted(60767)
    else
        self.phased = C_QuestLog.IsQuestFlaggedCompleted(60761)
    end
end

C_QuestLine.GetQuestLineInfo(60761, 1129)

-------------------------------------------------------------------------------
------------------------------------ INTRO ------------------------------------
-------------------------------------------------------------------------------

if UnitFactionGroup('player') == 'Alliance' then
    map.intro = ns.node.Quest({
        quest=60767,
        scale=3,
        note=L["prepatch_intro"],
        group=ns.groups.INTRO,
        rewards={
            ns.reward.Quest({id={60113, 60116, 60117, 59876, 60766, 60767}})
        }
    })
else
    map.intro = ns.node.Quest({
        quest=60761,
        scale=3,
        note=L["prepatch_intro"],
        group=ns.groups.INTRO,
        rewards={
            ns.reward.Quest({id={60115, 60669, 60670, 60725, 60759, 60761}})
        }
    })
end

map.nodes[43905720] = map.intro

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

local SHARED = {
    ns.reward.Spacer(),
    Section(L["shared_loot"]),
    Transmog({item=183652, slot=L["bow"]}), -- Zod's Echoing Longbow
    Transmog({item=183682, slot=L["cloth"]}), -- Cinch of the Servant
    Transmog({item=183683, slot=L["leather"]}), -- Skittering Vestments
    Transmog({item=183640, slot=L["mail"]}), -- Leggings of Disreputable Charms
    Transmog({item=183654, slot=L["plate"]}), -- Etched Dragonbone Stompers
    Item({item=183616}) -- Accursed Keepsake
}

local function SharedLoot(rewards)
    for i, r in ipairs(SHARED) do
        rewards[#rewards + 1] = r
    end
    table.insert(rewards, 1, Section(L["unique_loot"]))
    return rewards
end

-------------------------------------------------------------------------------

nodes[31607050] = Rare({
    id=174067,
    quest=62345,
    sublabel=L["orig_nax"],
    rlabel='(1)',
    note=L["icecrown_rares"],
    rewards=SharedLoot({
        Transmog({item=183642, slot=L["cloth"]}), -- Robes of Rasped Breaths
        Item({item=183676, note=L["ring"]}) -- Hailstone Loop
    })
}) -- Noth the Plaguebringer

nodes[36506740] = Rare({
    id=174066,
    quest=62344,
    sublabel=L["orig_nax"],
    rlabel='(2)',
    note=L["icecrown_rares"],
    rewards=SharedLoot({
        Transmog({item=183643, slot=L["2h_axe"]}), -- Severance of Mortality
        Transmog({item=183645, slot=L["leather"]}), -- Cinch of the Tortured
        Transmog({item=183644, slot=L["mail"]}) -- Regurgitator's Shoulderpads
    })
}) -- Patchwerk

nodes[49703270] = Rare({
    id=174065,
    quest=62343,
    sublabel=L["orig_icc"],
    rlabel='(3)',
    note=L["icecrown_rares"],
    rewards=SharedLoot({
        Transmog({item=183647, slot=L["polearm"]}), -- Bloodspatter
        Transmog({item=183646, slot=L["mail"]}), -- Chestguard of Siphoned Vitality
        Transmog({item=183648, slot=L["plate"]}) -- Veincrusher Gauntlets
    })
}) -- Blood Queen Lana'thel

nodes[57103030] = Rare({
    id=174064,
    quest=62342,
    sublabel=L["orig_icc"],
    rlabel='(4)',
    note=L["icecrown_rares"],
    rewards=SharedLoot({
        Transmog({item=183649, slot=L["leather"]}), -- Bag of Discarded Entrails
        Transmog({item=183651, slot=L["leather"]}), -- Chestplate of Septic Sutures
        Item({item=183650, note=L["trinket"]}) -- Miniscule Abomination in a Jar
    })
}) -- Professor Putricide

nodes[51107850] = Rare({
    id=174063,
    quest=62341,
    sublabel=L["orig_icc"],
    rlabel='(5)',
    note=L["icecrown_rares"],
    rewards=SharedLoot({
        Transmog({item=183641, slot=L["cloth"]}), -- Shoulderpads of Corpal Rigidity
        Transmog({item=183653, slot=L["leather"]}), -- Deathwhisper Vestment
        Transmog({item=183655, slot=L["mail"]}) -- Handgrips of Rime and Sleet
    })
}) -- Lady Deathwhisper

nodes[57805610] = Rare({
    id=174062,
    quest=62340,
    sublabel=L["orig_utp"],
    rlabel='(6)',
    note=L["icecrown_rares"],
    rewards=SharedLoot({
        Transmog({item=183656, slot=L["leather"]}), -- Drake Rider's Jerkin
        Transmog({item=183657, slot=L["mail"]}), -- Skadi's Scaled Sollerets
        Transmog({item=183670, slot=L["plate"]}) -- Skadi's Saronite Belt
    })
}) -- Skadi the Ruthless

nodes[52305260] = Rare({
    id=174061,
    quest=62339,
    sublabel=L["orig_utk"],
    rlabel='(7)',
    note=L["icecrown_rares"],
    rewards=SharedLoot({
        Transmog({item=183658, slot=L["2h_axe"]}), -- Ingvar's Monolithic Skullcleaver
        Transmog({item=183668, slot=L["leather"]}), -- Razor-Barbed Leather Belt
        Item({item=183659, note=L["ring"]}) -- Annhylde's Band
    })
}) -- Ingvar the Plunderer

nodes[54004470] = Rare({
    id=174060,
    quest=62338,
    sublabel=L["orig_utk"],
    rlabel='(8)',
    note=L["icecrown_rares"],
    rewards=SharedLoot({
        Transmog({item=183678, slot=L["fist"]}), -- Keleseth's Influencer
        Transmog({item=183679, slot=L["leather"]}), -- Taldaram's Supple Slippers
        Transmog({item=183677, slot=L["mail"]}), -- Blood-Drinker's Belt
        Transmog({item=183661, slot=L["mail"]}), -- Drake Stabler's Gauntlets
        Transmog({item=183680, slot=L["cloak"]}), -- Royal Sanguine Cloak
        Item({item=183625, note=L["neck"]}) -- Reforged Necklace of Taldaram
    })
}) -- Prince Keleseth

nodes[64802210] = Rare({
    id=174059,
    quest=62337,
    sublabel=L["orig_tot"],
    rlabel='(9)',
    note=L["icecrown_rares"],
    rewards=SharedLoot({
        Transmog({item=183638, slot=L["dagger"]}), -- Phantasmic Kris
        Transmog({item=183637, slot=L["leather"]}), -- Shoulderpads of the Notorious Knave
        Transmog({item=183636, slot=L["plate"]}) -- Helm of the Violent Fracas
    })
}) -- The Black Knight

nodes[70603850] = Rare({
    id=174058,
    quest=62336,
    sublabel=L["orig_fos"],
    rlabel='(10)',
    note=L["icecrown_rares"],
    rewards=SharedLoot({
        Transmog({item=183675, slot=L["cloth"]}), -- Cold Sweat Mitts
        Transmog({item=183668, slot=L["leather"]}), -- Razor-Barbed Leather Belt
        Transmog({item=183639, slot=L["mail"]}), -- Gaze of Bewilderment
        Transmog({item=183635, slot=L["plate"]}), -- Grieving Gauntlets
        Item({item=183634}) -- Papa's Mint Condition Bag
    })
}) -- Bronjahm

nodes[47406720] = Rare({
    id=174057,
    quest=62335,
    sublabel=L["orig_pos"],
    rlabel='(11)',
    note=L["icecrown_rares"],
    rewards=SharedLoot({
        Transmog({item=183674, slot=L["cloth"]}), -- Rimewoven Pantaloons
        Transmog({item=183633, slot=L["leather"]}), -- Fringed Wyrmleather Leggings
        Transmog({item=183632, slot=L["shield"]}) -- Protector of Stolen Souls
    })
}) -- Scourgelord Tyrannus

nodes[59107240] = Rare({
    id=174056,
    quest=62334,
    sublabel=L["orig_pos"],
    rlabel='(12)',
    note=L["icecrown_rares"],
    rewards=SharedLoot({
        Transmog({item=183630, slot=L["2h_axe"]}), -- Garfrost's Two-Ton Bludgeon
        Transmog({item=183666, slot=L["plate"]}), -- Legguards of the Frosty Fathoms
        Item({item=183631, note=L["ring"]}) -- Ring of Carnelian and Sinew
    })
}) -- Forgemaster Garfrost

nodes[58208350] = Rare({
    id=174055,
    quest=62333,
    sublabel=L["orig_hor"],
    rlabel='(13)',
    note=L["icecrown_rares"],
    rewards=SharedLoot({
        Transmog({item=183687, slot=L["cloth"]}), -- Frayed Flesh-Stitched Shoulderguards
        Transmog({item=183663, slot=L["cloth"]}), -- Sightless Capuchin of Ulmaas
        Transmog({item=183662, slot=L["mail"]}) -- Frostsworn Rattleshirt
    })
}) -- Marwyn

nodes[50208810] = Rare({
    id=174054,
    quest=62332,
    sublabel=L["orig_hor"],
    rlabel='(14)',
    note=L["icecrown_rares"],
    rewards=SharedLoot({
        Transmog({item=183664, slot=L["cloth"]}), -- Bracer of Ground Molars
        Transmog({item=183665, slot=L["plate"]}), -- Valonforth's Marred Pauldrons
        Transmog({item=183666, slot=L["plate"]}) -- Legguards of the Frosty Fathoms
    })
}) -- Falric

nodes[80106120] = Rare({
    id=174053,
    quest=62331,
    sublabel=L["orig_dtk"],
    rlabel='(15)',
    note=L["icecrown_rares"],
    rewards=SharedLoot({
        Transmog({item=183686, slot=L["leather"]}), -- Breeches of the Skeletal Serpent
        Transmog({item=183684, slot=L["shield"]}), -- Tharon'ja's Protectorate
        Item({item=183685, note=L["ring"]}) -- Phantasmic Seal of the Prophet
    })
}) -- The Prophet Tharon'ja

nodes[77806610] = Rare({
    id=174052,
    quest=62330,
    sublabel=L["orig_dtk"],
    rlabel='(16)',
    note=L["icecrown_rares"],
    rewards=SharedLoot({
        Transmog({item=183627, slot=L["1h_mace"]}), -- Summoner's Granite Gavel
        Transmog({item=183671, slot=L["mail"]}), -- Necromantic Wristwraps
        Transmog({item=183672, slot=L["plate"]}) -- Cuirass of Undeath
    })
}) -- Novos the Summoner

nodes[58303940] = Rare({
    id=174051,
    quest=62329,
    sublabel=L["orig_dtk"],
    rlabel='(17)',
    note=L["icecrown_rares"],
    rewards=SharedLoot({
        Transmog({item=183626, slot=L["2h_sword"]}), -- Troll Gorer
        Transmog({item=183669, slot=L["cloth"]}) -- Cowl of the Rampaging Troll
    })
}) -- Trollgore

nodes[67505800] = Rare({
    id=174050,
    quest=62328,
    sublabel=L["orig_azn"],
    rlabel='(18)',
    note=L["icecrown_rares"],
    rewards=SharedLoot({
        Transmog({item=183681, slot=L["dagger"]}) -- Webrending Machete
    })
}) -- Krik'thir the Gatewatcher

nodes[29606220] = Rare({
    id=174049,
    quest=62327,
    sublabel=L["orig_atk"],
    rlabel='(19)',
    note=L["icecrown_rares"],
    rewards=SharedLoot({
        Transmog({item=183678, slot=L["fist"]}), -- Keleseth's Influencer
        Transmog({item=183679, slot=L["leather"]}), -- Taldaram's Supple Slippers
        Transmog({item=183677, slot=L["mail"]}), -- Blood-Drinker's Belt
        Transmog({item=183661, slot=L["mail"]}), -- Drake Stabler's Gauntlets
        Transmog({item=183680, slot=L["cloak"]}), -- Royal Sanguine Cloak
        Item({item=183625, note=L["neck"]}) -- Reforged Necklace of Taldaram
    })
}) -- Prince Taldaram

nodes[44204910] = Rare({
    id=174048,
    quest=62326,
    sublabel=L["orig_atk"],
    rlabel='(20)',
    note=L["icecrown_rares"],
    rewards=SharedLoot({
        Transmog({item=183624, slot=L["dagger"]}), -- Serrated Blade of Nadox
        Item({item=183673, note=L["ring"]}) -- Nerubian Aegis Ring
    })
}) -- Elder Nadox
