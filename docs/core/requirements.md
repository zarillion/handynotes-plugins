# Requirements <!-- omit from toc -->

`ns.requirement`

- [Requirement (Base Class)](#requirement-base-class)
- [Achievement](#achievement)
- [Currency](#currency)
- [GarrisonTalent](#garrisontalent)
- [GarrisonTalentRank](#garrisontalentrank)
- [Item](#item)
- [Profession](#profession)
- [Quest](#quest)
- [Reputation](#reputation)
- [Spell](#spell)
- [Toy](#toy)
- [WarMode](#warmode)

## Requirement (Base Class)

Base Class for all Requirements

```lua
Requirement({text = 'Requirement Text'})
```

### Default Properites <!-- omit from toc -->

- `text`  (string) (*default: 'UNKNOWN'*)
  - The text that is shown in the tooltip for the Requirement.

## Achievement

```lua
Achievement(id)
```

- `id`  (int) (*required*)
  - ID of the required Achievement.

---

## Currency

```lua
Currency(id, count)
```

- `id`  (int) (*required*)
  - ID of the required Achievement.
- `count`  (int) (*required*)
  - amount of the required Currency points.

---

## GarrisonTalent

```lua
GarrisonTalent(id, text)
```

- `id`  (int) (*required*)
  - ID of the required Garrison Talent. ([WoWDB](https://www.wowdb.com/garrison/talents))
- `text`  (string)
  - todo

---

## GarrisonTalentRank

```lua
GarrisonTalentRank(id, rank)
```

- `id`  (int) (*required*)
  - ID of the required Garrison Talent. ([WoWDB](https://www.wowdb.com/garrison/talents))
- `rank`  (int)
  - Talent rank required.

---

## Item

```lua
Item(id, count, quality)
```

- `id`  (int) (*required*)
  - ID of the required Garrison Talent id. ([WoWDB](https://www.wowdb.com/garrison/talents))
- `count`  (int)
  - Amount of the required Item.
- `quality`  (int) 1-5
  - Adds the Quality Icon for the Dragonflight Material.
    ![Crafting Quality](https://bnetcmsus-a.akamaihd.net/cms/content_entry_media/PATPGXI8XCOK1657150576099.png){height=150}

---

## Profession

```lua
Profession(skillID, variantID, level)
```

- todo

---

## Quest

```lua
Quest(id, text, daily)
```

- todo

---

## Reputation

```lua
Reputation(id, level, isRenown)
```

- todo

---

## Spell

```lua
Spell(id)
```

- todo

---

## Toy

```lua
Toy(id)
```

- todo

---

## WarMode

```lua
WarMode()
```

- Adds a line to the tooltip that checks if Warmode is activated
