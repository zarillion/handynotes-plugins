# POIs <!-- omit from toc -->

`ns.poi.`

- [POI](#poi)
- [Path](#path)
- [Line](#line)
- [Arrow](#arrow)
- [Circle](#circle)
- [Square](#square)

## POI

Base class for other POI Classes.
POIs are only displayed when hovering a node.

```lua
POI({41176055, 41526214, 41995819, 43565838})
POI({color = 'Green', 41176055, 41526214}) -- this also works, but is not recommended
POI({color = 'Red', points = {41176055, 41526214, 41995819, 43565838}})
```

A POI can have just a table of coordinates, those will be marked by a dot. The color is by default blue and can be changed by the user through the settings.
POIs can also have folloing properties:

### Required Properties <!-- omit from toc -->

`ns.poi.POI` requires the following properties:

- `points` ([int]) (*required*)
  - POI coordintes in a table.

### Optional Properties <!-- omit from toc -->

`ns.poi.POI` supports the following properties:

- `color` ([color](colors.html))
  - Can use all colors set in [colors.lua](colors.html).
- `icon` ([string](icons.html))
  - Changes the dot to an [icon](icons.html).
- `quest` (int / [int])
  - Hides the POI if all quests are completed.
- `questAny` (int / [int])
  - Hides the POI if any Quest is completed.
- `questDeps` (int / [int])
  - Hides the POI if the required Quests are not completed

<!--
---

## Glow
Only used internally for hover and focus effects.

```lua
Glow()
``` -->

---

## Path

A Path is used to draw lines between multiple coordinates.

```lua
Path({41176055, 41526214, 41995819, 43565838})
Path({color = 'Red', points = {41176055, 41526214, 41995819, 43565838}})
```

---

## Line

This adds a Segmented Line between two far apart coordinates.

```lua
Line({41176055, 41526214})
Line({color = 'Red', points = {41176055, 41526214}})
```

---

## Arrow

Uses [Line](#line) as its base class but adds an arrow to the last segment.

```lua
Arrow({41176055, 41526214})
```

---

## Circle

This is a function which returns coordinates of a circle.

```lua
Path({Circle({origin = 50005000, radius = 5.5})})
```

### Required Properties <!-- omit from toc -->

`ns.poi.Cirlce` requires the following properties:

- `origin` (int)
  - Coordinate from the center of the cirle.
- `radius` (float)
  - Radius of the circle.

---

## Square

This is a function which returns coordinates of a square.

```lua
Path({Square({origin = 50005000, radius = 5.5})})
```

### Required Properties <!-- omit from toc -->

`ns.poi.Square` requires the following properties:

- `origin` (int)
  - Coordinate from the center of the square.
- `width` (float)
  - Width of the Square.
