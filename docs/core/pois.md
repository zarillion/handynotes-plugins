# Points of Interest (POIs)

Points of Interest (POIs) are visual overlays that appear on the map when hovering over nodes. They provide additional context like paths, areas, or related locations.

## Overview

POIs extend the map display with custom graphics:
- **Points** - Individual coordinate markers
- **Paths** - Connected lines between multiple points
- **Lines** - Direct connections between two points
- **Arrows** - Directional indicators
- **Circles** - Circular areas or ranges
- **Squares** - Rectangular areas

All POIs support conditional display based on quests, requirements, and user preferences.

## POI Base Class

The base class for all Point of Interest overlays.

```lua
ns.poi.POI({41176055, 41526214, 41995819, 43565838})
```

### Basic Usage

```lua
-- From Azj-Kahet plugin - Simple POI for treasure location
cot.nodes[67013019] = ns.node.Treasure({
    quest = 82721,
    label = '{item:224783}',
    note = L['memory_cache_note'],
    requires = ns.requirement.Item(224783), -- Web-Entangled Key
    pois = {POI({67303040})} -- Key location marker
}) -- Trapped Memory Cache

-- Multiple coordinate path showing route
local poi = ns.poi.POI({59004200, 60004300, 61004400, 62004500})

-- With color and quest condition from project
local poi = ns.poi.POI({
    color = 'Red',
    quest = 82718, -- Hide after treasure collected
    points = {62601430, 63501530, 64401630}
})
```

### POI Display Behavior

POIs are **only displayed when hovering over their associated node**. This keeps the map clean while providing additional context when needed.

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
-- From project plugins - Path showing route through Azj-Kahet
Path({58463084, 59004200, 60004300, 61004400, 62004500})

-- Colored path with quest condition
Path({
    color = 'Blue',
    quest = 83287, -- A Spider's-Eye View
    points = {45321322, 46522291, 47954059, 49234156}
})

-- Path for profession treasure route
Path({
    color = 'Green',
    points = {42835735, 44484947, 46812169, 47954059}
}) -- Alchemy treasure path
```

---

## Line

This adds a Segmented Line between two far apart coordinates.

```lua
-- From project - Line connecting rare spawn to related treasure
Line({61411274, 62601430}) -- Tka'ktath Fleshripper to Concealed Contraband

-- Colored line with completion tracking
Line({
    color = 'Yellow',
    quest = 81705, -- Hide after rare killed
    points = {59235348, 58463084} -- Kej to Memory Cache Merchant
})

-- Line showing connection between vendor and treasure
Line({
    color = 'Purple',
    points = {58463084, 67013019} -- Memory Merchant to Trapped Cache
})
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
