# Node Classes

## Node

This is the base class for all displayed nodes.

**Example:**
``` lua
ns.node.Node({
    label = 'Example Node',
    icon = 'peg_yw',
    note = 'This is a Note on the Example Node.'
})
```

All Node classes can have following Properties by default:

* `label` (string) (*required*)
  * The Title that is shown in the Tooltip when hovering a node.
* `icon` ([iconString](/icons.hmtl) | int) (*required*)
  * The icon texture to display.
* `sublabel` (string)
  * Oneline string to display under label.
* `rlabel` (string)
  * Label in the top right corner of the tooltip.
* `group` ([Group](/Groups.hmtl))
  * Options group for this node (display, scale, alpha).
* `fgroup ` (string)
  * A category of nodes that should be focused together when hovered or clicked.
* `alpha` (float) (*default: 1.0*)
  * The default alpha value for this type.
* `scale` (float) (*default: 1.0*)
  * The default scale value for this type.
* `minimap` (boolean)
  * Should the node be displayed on the minimap?
* parent (int | int[ ] | { })
  * Parent map IDs to display the node on.
  * `{ }` Also supports some basic node properties:
    * `id` (int)(*required*)
      * Parent Map ID
    * `note` (string)
      * The Note thats displayed on the parent Node.
    * `pois` ([POI](/pois.html))
      * POIs shown on the parent map.
* `quest` (int | int[ ])
  * Quest IDs that cause this node to disappear.
* `questAny` (boolean)
  * Hide node if *any* quests are true (default *all*)
* `questCount` (boolean)
  * Display completed quest count as rlabel.
* `questDeps` (int | int[ ])
  * Quest IDs that must be true to appear.
* `requires` (str | [Requirement](/requirements.hmtl)[ ])
  * Requirements to interact or unlock
* `rewards` ([Reward](/rewards.hmtl)[ ])
  * Array of rewards for this node