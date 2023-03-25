# Reward Classes

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

All rewards are accessible via `ns.reward`

---

## Section

```lua
Section("Title of the Section")
```

---

## Spacer

The Spacer Reward just adds a blank line.

### Example:

```lua
Spacer()
```

---

## Achievement

### Example:

```lua
Achievement({
    id = achievement_id,
    criteria = criteria_id or criteria_index
})
```

### Properties

 * `id` (int) (*required*)
   * The ID of the achievement
 * `criteria` (int)
   * The *criteria id* (preferred) or *criteria index* of the achievement.

   * Supports follwing properties:
     * `id` (id)
       * *criteria id* (preferred) or *criteria index*
     * `qty` (bool)
       * For achievements with a counter. For example [Grand Treasure Hunter](wowhead.com/ach9728)
     * `suffix` (string)
       * Can be used with `qty` to add a custom suffix.
 * `oneline` (boolean)
   * When true, the criteria text wont be rendered.
 * `note` (string)
   * This can be used to add a short note underneath the reward line.

---

## Currency

Is Used to display a Currency in the Node rewards

### Example:

```lua
Currency({
    id = currency_id,
})
```

### Properties

* `id` (int) (*required*)
   * The ID of the currency
* `note` (string)
   * a short note behind the reward text

---

## Follower

### Example:

```lua
Follower({
    id = follower_id
})
```

### Properties

* `id` (int) (*required*)
  * The follower ID.
* `icon` ([name](icons.hmtl) / int)
  * This sets the icon to be shown before the reward text.
* `note` (string)
   * a short note behind the reward text

---

## Item

The Item reward is used as the base class for other item related rewards

### Example:

```lua
Item({
    item = item_id
})
```

### Properties

* `item` (int) (*required*)
  * The Item ID.
* `type` (string)
  * The type string is added behind the reward text
* `note` (string)
  * A short note behind the reward for additional informations. Is placed behind the `type` string.
* `status` (string)
  * Is used to set a custom status string on the end of the line.
  *
* `bag` (boolean)
  * If set to true the `GetStatus()` function checks if the player has the item in his bag and sets `status` to `Green(L['completed'])` or `Red(L['incomplete'])`
* `quest` (int)
  *  If a quest id is added the `GetStatus()` function checks if the player has completed the quest and sets `status` to `Green(L['completed'])` or `Red(L['incomplete'])`
*  `weekly` (int)
   *  If a weekly quest id is added the `GetStatus()` function checks if the player has completed the quest and sets `status` to `Green(L['weekly'])` or `Red(L['weekly'])`

---

## Heirloom

Uses [Item](#item) as its base class, all properties from Item can be used here too.

### Example:

```lua
Heirloom({
    item = item_id
})
```

### Properties

* `item` (int) (*required*)
  * The ID of the Heirloom Item
* `type` (string)
  * `L['heirloom']` by default.

---

## Mount

Uses [Item](#item) as its base class, all properties from Item can be used here too.

### Example:

```lua
Achievement({
    item = item_id
    id = achievement_id,
})
```

### Properties

* `item` (int) (*required*)
  * The Item ID from which you learn the mount.
* `id` (int) (*required*)
  * The [MountID](https://wowpedia.fandom.com/wiki/MountID).

---

## Pet

Uses [Item](#item) as its base class, all properties from Item can be used here too.

### Example:

```lua
Pet({
    item = item_id,
    id = BattlePetSpeciesID
})
```

### Properties

* `item` (int) (*required*)
  * The Item ID from which you learn the pet.
* `id` (int) (*required*)
  * The [BattlePetSpeciesID](https://wowpedia.fandom.com/wiki/BattlePetSpeciesID) of the Pet.

---

## Quest

### Example:

```lua
Quest({
    id = quest_id
})
```

### Properties

* `id` (int) (*required*)
  * The ID of the rewarded quest.

---

## Recipe

Uses [Item](#item) as its base class, all properties from Item can be used here too.

### Example:

```lua
Recipe({
    item = recipe_item_id,
    profession = PROFESSION
})
```

### Properties

* `item` (int) (*required*)
  * Them Item ID of the Recipe, not the Product.
* `profession` ([Profession](profession.html)) (*required*)
  * The Profession Object/Constant.

---

## Spell

Uses [Item](#item) as its base class, all properties from Item can be used here too.

### Example:

```lua
Spell({
    item = item_id,
    spell = spell_id
})
```

### Properties

* `item` (int) (*required*)
  * The Item ID.
* `spell` (int) (*required*)
  * The Spell ID that is learned when Using the Item.

---

## Title

### Example:

```lua
Title({
    id = title_id,
    pattern = 'pattern'
})
```

### Properties

* `id` (int) (*required*)
  * The [TitleID](https://wowpedia.fandom.com/wiki/TitleId).
* `pattern` (string) (*required*)
  * Required to show the title in the right order.
    * `'{title} {player}'`
    * `'{player}, {title}'`
* `type` (string)
  * Optioanl type after the title text.
* `note` (string)
  * Optional note after the title text

---

## Toy

Uses [Item](#item) as its base class, all properties from Item can be used here too.

### Example:

```lua
Toy({
    item = item_id
})
```

### Properties

* `item` (int) (*required*)
  * The ID of the Toy.

---

## Transmog

Uses [Item](#item) as its base class, all properties from Item can be used here too.

### Example:

```lua
Transmog({
    item = item_id
    slot = L[slot_locale]
})
```

### Properties

* `item` (int) (*required*)
  * The ID of the Transmog Item
* `slot` (string) ([*Locale*](localizations.html))
  * Should always be set to mark the Item Type (leather, 1h_sword, cloak, cosmetic, etc.)
  * Important for cosmetic cloaks.
