# HandyNotes Plugins Framework

**A comprehensive framework for creating World of Warcraft addon plugins that add interactive markers to in-game maps.**

## What is HandyNotes Plugins?

HandyNotes Plugins is a powerful framework that extends the popular [HandyNotes](https://www.curseforge.com/wow/addons/handynotes) addon, enabling developers to create rich, interactive map experiences for World of Warcraft players. The framework provides everything needed to add treasures, rare spawns, NPCs, profession nodes, and other points of interest to the game's maps.

### Why Use This Framework?

- **🚀 Rapid Development** - Pre-built classes for common node types (treasures, rares, NPCs, etc.)
- **🎨 Rich UI Integration** - Seamless integration with WoW's map interface and HandyNotes
- **🔄 Dynamic Content** - Automatic quest tracking, completion states, and conditional visibility
- **🌍 Multi-Language** - Built-in localization support for international audiences
- **⚡ Performance Optimized** - Efficient rendering and memory management for large datasets
- **🎯 User-Friendly** - Intuitive options panels and filtering for end users

## Core Framework Overview

The HandyNotes plugins framework provides a comprehensive set of classes and utilities for creating interactive map nodes, managing requirements and rewards, and organizing content through groups and filters.

### Key Components

- **[Nodes](core/nodes.html)** - Base classes for all interactive map markers (NPCs, treasures, quests, etc.)
- **[Groups](core/groups.html)** - Organization system for categorizing and controlling node visibility
- **[Requirements](core/requirements.html)** - System for defining prerequisites for nodes (achievements, quests, items, etc.)
- **[Rewards](core/rewards.html)** - Classes for representing different types of rewards (items, currencies, achievements, etc.)
- **[Icons](core/icons.html)** - Icon system for node markers and UI elements
- **[Colors](core/colors.html)** - Color utilities and predefined color schemes
- **[POIs](core/pois.html)** - Point of Interest classes for custom map overlays

## Installation & Setup

### For End Users
1. Install [HandyNotes](https://www.curseforge.com/wow/addons/handynotes) from CurseForge
2. Download desired expansion plugins:
   - [The War Within](https://www.curseforge.com/wow/addons/handynotes-the-war-within)
   - [Dragonflight](https://www.curseforge.com/wow/addons/handynotes-dragonflight)
   - [Shadowlands](https://www.curseforge.com/wow/addons/handynotes-shadowlands)
   - And many more...
3. Extract to your `World of Warcraft/_retail_/Interface/AddOns/` folder
4. Enable in the AddOns menu and configure via the map dropdown

### For Developers
1. Clone the repository: `git clone https://github.com/zarillion/handynotes-plugins`
2. Study the [Quick Reference Guide](README.md) for development patterns
3. Use existing plugins as templates for new expansions or content types
4. Follow the contribution guidelines for submitting improvements

## Available Plugins

The framework supports plugins for all major WoW expansions:

| Expansion | Plugin | Content |
|-----------|--------|---------|
| **The War Within** | `11_TheWarWithin` | Khaz Algar zones, Delves, Siren Isle |
| **Dragonflight** | `10_Dragonflight` | Dragon Isles, Forbidden Reach, Zaralek Cavern |
| **Shadowlands** | `09_Shadowlands` | Covenant zones, The Maw, Zereth Mortis |
| **Battle for Azeroth** | `08_BattleForAzeroth` | Kul Tiras, Zandalar, Mechagon, Nazjatar |
| **Legion** | `07_Legion` | Broken Isles, Argus |
| **Warlords of Draenor** | `06_WarlordsOfDraenor` | Draenor zones |
| **Mists of Pandaria** | `05_MistsOfPandaria` | Pandaria zones |
| **Cataclysm** | `04_Cataclysm` | Revamped zones, new zones |
| **Wrath of the Lich King** | `03_WrathOfTheLichKing` | Northrend zones |
| **The Burning Crusade** | `02_TheBurningCrusade` | Outland zones |
| **World of Warcraft** | `01_WorldOfWarcraft` | Classic Azeroth zones |

## Features

### Node Types
- **🏆 Treasures** - Hidden chests, caches, and collectibles with quest tracking
- **💀 Rare Spawns** - Elite creatures with loot tables and spawn timers
- **👥 NPCs** - Vendors, trainers, and important characters
- **⚔️ Profession Nodes** - Gathering spots, knowledge treasures, recipes
- **✈️ Flight Points** - Travel network visualization
- **🎯 Quests** - Quest givers and objectives
- **🐾 Pet Battles** - Battle pet locations and trainers

### Smart Features
- **Quest Integration** - Automatic completion tracking and hiding
- **Achievement Progress** - Visual progress indicators for meta-achievements
- **Reputation Requirements** - Content gated behind faction standings
- **Profession Filters** - Show only relevant content for your professions
- **Class-Specific Content** - Automatic filtering based on character class
- **Multi-Language Support** - Full localization for 9+ languages

### Getting Started

The framework uses a class-based architecture built on Lua. Each plugin typically defines:

1. **Map data** - Zone information and node collections
2. **Node definitions** - Individual markers with their properties
3. **Group organization** - How nodes are categorized and controlled
4. **Localization** - Multi-language support for text content

### Architecture

The core framework is built around several key concepts:

- **Object-Oriented Design** - Uses a custom class system with inheritance
- **Namespace Organization** - All functionality organized under the `ns` namespace
- **Event-Driven** - Integration with WoW's event system for dynamic updates
- **Modular Structure** - Each component can be used independently or together

## Quick Start

For a comprehensive overview with examples and best practices, see the **[Documentation README](README.md)**.

### Basic Plugin Structure

```lua
-- Create a new map
local map = ns.Map({id = 123, settings = true})

-- Define groups for organization
map.groups.TREASURES = ns.Group('treasures', 'chest_yw')
map.groups.RARES = ns.Group('rares', 'skull_w')

-- Add treasure node
map.nodes[12345678] = ns.node.Treasure({
    label = 'Hidden Treasure',
    icon = 'chest_yw',
    group = map.groups.TREASURES,
    quest = 54321,
    rewards = {ns.reward.Item(187423)}
})

-- Add rare mob node
map.nodes[87654321] = ns.node.Rare({
    label = 'Elite Guardian',
    icon = 'skull_w',
    group = map.groups.RARES,
    requires = ns.requirement.Quest(12345),
    pois = {
        ns.poi.Path({12345678, 23456789, 34567890})
    }
})
```

## Contributing

We welcome contributions from the community! Here's how you can help:

### Ways to Contribute
- **🐛 Bug Reports** - Found an issue? Report it on [GitHub Issues](https://github.com/zarillion/handynotes-plugins/issues)
- **💡 Feature Requests** - Suggest new features or improvements
- **🗺️ Content Updates** - Help keep node locations and data current
- **🌐 Translations** - Improve localization for your language
- **💻 Code Contributions** - Submit pull requests for fixes and features

### Development Guidelines
1. Follow existing code patterns and naming conventions
2. Test your changes across multiple characters and zones
3. Update documentation for any API changes
4. Include localization keys for user-visible text
5. Ensure compatibility with the latest WoW client

## Support & Community

### Getting Help
- **📖 Documentation** - Start with this documentation site
- **💬 Issues** - [GitHub Issues](https://github.com/zarillion/handynotes-plugins/issues) for bug reports
- **📧 Contact** - Reach out to maintainers for complex issues

### License & Credits
- **License** - [MIT License](https://github.com/zarillion/handynotes-plugins/blob/master/LICENSE)
- **Credits** - Built by [zarillion](https://github.com/zarillion) and contributors
- **Dependencies** - Requires [HandyNotes](https://www.curseforge.com/wow/addons/handynotes) addon

## Developer Resources

- **[Quick Reference Guide](README.md)** - Examples, patterns, and best practices
- **[Core Framework Documentation](core/)** - Detailed API reference
- **[GitHub Repository](https://github.com/zarillion/handynotes-plugins)** - Source code and issues
- **[Plugin Templates](https://github.com/zarillion/handynotes-plugins/tree/master/plugins)** - Real-world examples

---

**Ready to start?** Check out the [Quick Reference Guide](README.md) for development patterns and examples, or dive into the [Core Framework Documentation](core/) for detailed API information.
