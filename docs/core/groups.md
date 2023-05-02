# Group Class

```lua
ns.Group(name, icon, attrs)
```

<!-- A Group needs to have a `name` and an `icon` which is used to display the group in the options menu on the World Map Button. -->

```lua
ns.groups.ELUSIVE_CREATURE = ns.Group('elusive_creature', 644271, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.EXPANSION,
    IsEnabled = function(self)
        -- Only display group for skinning players
        if not ns.professions.SKINNING:HasProfession() then return false end
        return ns.Group.IsEnabled(self)
    end
})
```

<!-- name
icon
label
desc
type
order -->