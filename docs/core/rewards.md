# Reward Classes <!-- omit from toc -->

- [Section](#section)
- [Spacer](#spacer)
- [Achievement](#achievement)
- [Currency](#currency)
- [Follower](#follower)
- [Item](#item)
- [Heirloom](#heirloom)
- [Mount](#mount)
- [Pet](#pet)
- [Quest](#quest)
- [Recipe](#recipe)
- [Spell](#spell)
- [Title](#title)
- [Toy](#toy)
- [Transmog](#transmog)
- [Reputation](#reputation)

All rewards are accessible via `ns.reward`

---

## Section
Adds a separator between the Rewards.

```lua
Section("Title of the Section")
```

<!-- ![Section Reward](../assets/png/reward_section_example.png) -->

---

## Spacer

The Spacer Reward just adds a blank line.

### Example <!-- omit from toc -->

```lua
Spacer()
```

---

## Achievement

### Example <!-- omit from toc -->

```lua
Achievement({id = 17736, criteria = {qty = true, id = 1}}) -- The Gift of Cheese
```

### Properties <!-- omit from toc -->

- `id` (int) (*required*)
  - The ID of the achievement
- `criteria` (int)
  - The *criteria id* (preferred) or *criteria index* of the achievement.
  - Supports following properties:
    - `id` (id)
      - *criteria id* (preferred) or *criteria index*
    - `qty` (bool)
      - For achievements with a counter. For example [Grand Treasure Hunter](wowhead.com/ach9728)
    - `suffix` (string)
      - Can be used with `qty` to add a custom suffix.
- `oneline` (boolean)
  - When true, the criteria text won't be rendered.
- `note` (string)
  - This can be used to add a short note underneath the reward line.

---

## Currency

Is Used to display a Currency in the Node rewards

### Example <!-- omit from toc -->

```lua
Currency({id = 2245}) -- Flightstones
```

### Properties <!-- omit from toc -->

- `id` (int) (*required*)
  - The ID of the currency
- `note` (string)
  - a short note behind the reward text

---

## Follower

### Example <!-- omit from toc -->

```lua
Follower({id = 467, icon = 608952}) -- Fen Tao
```

### Properties <!-- omit from toc -->

- `id` (int) (*required*)
  - The follower ID.
- `icon` ([name](icons.hmtl) / int)
  - This sets the icon to be shown before the reward text.
- `note` (string)
  - a short note behind the reward text

---

## Item

The Item reward is used as the base class for other item related rewards

### Example <!-- omit from toc -->

```lua
Item({item = 188793, quest = 65282, note = '150'}) -- Improved Cypher Analysis Tool
```

### Properties <!-- omit from toc -->

- `item` (int) (*required*)
  - The Item ID.
- `type` (string)
  - The type string is added behind the reward text
- `note` (string)
  - A short note behind the reward for additional information. Is placed behind the `type` string.
- `status` (string)
  - Is used to set a custom status string on the end of the line.
- `bag` (boolean)
  - If set to true the `GetStatus()` function checks if the player has the item in his bag and sets `status` to `Green(L['completed'])` or `Red(L['incomplete'])`
- `quest` (int)
  - If a quest id is added the `GetStatus()` function checks if the player has completed the quest and sets `status` to `Green(L['completed'])` or `Red(L['incomplete'])`
- `weekly` (int)
  - If a weekly quest id is added the `GetStatus()` function checks if the player has completed the quest and sets `status` to `Green(L['weekly'])` or `Red(L['weekly'])`

---

## Heirloom

Uses [Item](#item) as its base class, all properties from Item can be used here too.

### Example <!-- omit from toc -->

```lua
Heirloom({item = 122250}) -- Tattered Dreadmist Mask
```

### Properties <!-- omit from toc -->

- `item` (int) (*required*)
  - The ID of the Heirloom Item
- `type` (string)
  - `L['heirloom']` by default.

---

## Mount

Uses [Item](#item) as its base class, all properties from Item can be used here too.

### Example <!-- omit from toc -->

```lua
Mount({item = 44168, id = 265}) -- Time-Lost Proto-Drake
```

### Properties <!-- omit from toc -->

- `item` (int) (*required*)
  - The Item ID from which you learn the mount.
- `id` (int) (*required*)
  - The [MountID](https://warcraft.wiki.gg/wiki/MountID).

---

## Pet

Uses [Item](#item) as its base class, all properties from Item can be used here too.

### Example <!-- omit from toc -->

```lua
Pet({id = 635}) -- Adder
```

### Properties <!-- omit from toc -->

- `item` (int) (*required*)
  - The Item ID from which you learn the pet.
- `id` (int) (*required*)
  - The [BattlePetSpeciesID](https://warcraft.wiki.gg/wiki/BattlePetSpeciesID) of the Pet.

---

## Quest

### Example <!-- omit from toc -->

```lua
Quest({id = 60}) -- Kobold Candles
```

### Properties <!-- omit from toc -->

- `id` (int) (*required*)
  - The ID of the rewarded quest.

---

## Recipe

Uses [Item](#item) as its base class, all properties from Item can be used here too.

### Example <!-- omit from toc -->

```lua
Recipe({item = 198104, profession = 185}) -- Recipe: Blubbery Muffin
```

### Properties <!-- omit from toc -->

- `item` (int) (*required*)
  - Them Item ID of the Recipe, not the Product.
- `profession` (int) (*required*)
  - The profession ID
  - [Base SkillLineID](https://warcraft.wiki.gg/wiki/TradeSkillLineID)

  | SkillLineID | Profession     |
  | :---------: | -------------- |
  |     129     | First Aid      |
  |     164     | Blacksmithing  |
  |     165     | Leatherworking |
  |     171     | Alchemy        |
  |     182     | Herbalism      |
  |     185     | Cooking        |
  |     186     | Mining         |
  |     197     | Tailoring      |
  |     202     | Engineering    |
  |     333     | Enchanting     |
  |     356     | Fishing        |
  |     393     | Skinning       |
  |     755     | Jewelcrafting  |
  |     773     | Inscription    |
  |     794     | Archeology     |


---

## Spell

Uses [Item](#item) as its base class, all properties from Item can be used here too.

Is Used to track Items that reward a Spell

### Example <!-- omit from toc -->

```lua
Spell({item = item_id, spell = spell_id})
```

### Properties <!-- omit from toc -->

- `item` (int) (*required*)
  - The Item ID.
- `spell` (int) (*required*)
  - The Spell ID that is learned when Using the Item.

---

## Title

### Example <!-- omit from toc -->

```lua
Title({id = title_id, pattern = '{title} {player}'})
```

### Properties <!-- omit from toc -->

- `id` (int) (*required*)
  - The [TitleID](https://warcraft.wiki.gg/wiki/TitleId).
- `pattern` (string) (*required*)
  - Required to show the title in the right order.
    - `'{title} {player}'`
    - `'{player}, {title}'`
- `type` (string)
  - Optional type after the title text.
- `note` (string)
  - Optional note after the title text

---

## Toy

Uses [Item](#item) as its base class, all properties from Item can be used here too.

### Example <!-- omit from toc -->

```lua
Toy({item = item_id})
```

### Properties <!-- omit from toc -->

- `item` (int) (*required*)
  - The ID of the Toy.

---

## Transmog

Uses [Item](#item) as its base class, all properties from Item can be used here too.

### Example <!-- omit from toc -->

```lua
Transmog({item = item_id, slot = L[slot_locale]})

-- for cosmetic items
Transmog({item = item_id})
```

### Properties <!-- omit from toc -->

- `item` (int) (*required*)
  - The ID of the Transmog Item
- `type` (string) ([*Locale*](localizations.html))
  - Should always be set to mark the Item Type (leather, 1h_sword, cloak, cosmetic, etc.)
  - Important for cosmetic cloaks.
- `slot` (string) ([*Locale*](localizations.html))
  - Obsolete, was replaced by `type`.

---

## Reputation

### Example: <!-- omit from toc -->
```lua
Reputation({id = 2590, gain = 150, quest = 84036, note = 'Example Note'})
```

### Properties <!-- omit from toc -->
- `id` (int) (*required*)
  - The [FactionID](https://www.wowhead.com/factions) of the faction the reputation is for, The FactionID is in the url for each factions page.
- `gain` (int) (*required*)
  - Amount of Reputation gained.
- `quest` (int)
  -  If a quest id is added the `GetStatus()` function checks if the player has completed the quest and sets `status` to `Green(L['claimed'])` or `Red(L['unclaimed'])`
- `note` (string)
  - Optional note at the end of the reward item.
