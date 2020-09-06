-------------------------------------------------------------------------------
--------------------------------- LOAD MODULE ---------------------------------
-------------------------------------------------------------------------------

local luaunit = require('luaunit')

local module, err = loadfile('../core/class.lua')
if err then print(err); os.exit() end

module('TEST', _G)

-------------------------------------------------------------------------------
----------------------------- TEST CLASS INSTANCES ----------------------------
-------------------------------------------------------------------------------

TestClass = {}

function TestClass:testConstructor ()
    local Node = Class('Node')

    -- Verify __tostring function works
    luaunit.assertEquals(tostring(Node), '<class "Node">')

    -- Verift no parent is set
    luaunit.assertIsNil(Node.__parent)

    -- Verify name parameter must be a string
    local msg = 'name parameter must be a string'
    luaunit.assertErrorMsgContains(msg, Class)
    luaunit.assertErrorMsgContains(msg, Class, 123)
end

function TestClass:testDefaultInitMethod ()
    -- Verify all base classes are given a default noop init() method
    local Node = Class('Node')
    luaunit.assertIsFunction(Node.init)
    luaunit.assertIsNil(Node.init())
end

function TestClass:testAttributeAssignment ()
    -- Verify class attributes can be set directly
    local Node = Class('Node')
    Node.icon = 'default'
    Node.alpha = 1
    Node.scale = 2

    luaunit.assertEquals(Node.icon, 'default')
    luaunit.assertEquals(Node.alpha, 1)
    luaunit.assertEquals(Node.scale, 2)
end

function TestClass:testAttributesParameter ()
    -- Verify class attributes can be set using the attrs param
    local Node = Class('Node', nil, {
        icon = 'default',
        alpha = 1,
        scale = 2
    })

    luaunit.assertEquals(Node.icon, 'default')
    luaunit.assertEquals(Node.alpha, 1)
    luaunit.assertEquals(Node.scale, 2)
end

function TestClass:testInstantiation ()
    -- Verify instances can be created
    local Node = Class('Node')
    local node = Node()

    luaunit.assertIsTable(node)
    luaunit.assertStrMatches(tostring(node), '<Node object at [0-9a-f]+>')
    luaunit.assertIs(node.__class, Node)
end

function TestClass:testInstantiationWithAttributes ()
    -- Verify instances can be created with initial attributes
    local Node = Class('Node')
    local node = Node({ foo='bar' })

    luaunit.assertIsNil(Node.foo)
    luaunit.assertEquals(node.foo, 'bar')
end

function TestClass:testInitMethod ()
    -- Verify class init() method is called upon instantiation
    local Node = Class('Node', nil, { scale = 1 })

    function Node:init ()
        self.icon = 'default'
        self.scale = self.scale + 1
    end

    local node = Node()

    luaunit.assertEquals(node.icon, 'default')
    luaunit.assertEquals(node.scale, 2)
end

function TestClass:testClassMethod ()
    -- Class methods should be called with the instance as self
    local Node = Class('Node', nil, { icon='default' })
    function Node:update() return 123 end
    function Node:getIcon() return self.icon end
    local node = Node({ icon='treasure' })

    luaunit.assertEquals(node:update(), 123)
    luaunit.assertEquals(node:getIcon(), 'treasure')
end

function TestClass:testGetter ()
    -- Getter functions should run on instance attribute access
    -- Getter functions should *not* run on class attribute access
    local Node = Class('Node', nil, { _icon = 'default' })
    function Node.getters:icon () return self._icon end

    luaunit.assertIsFunction(Node.getters.icon)
    luaunit.assertIsNil(Node.icon)
    luaunit.assertEquals(Node().icon, 'default')
end

function TestClass:testGetterFromAttrs ()
    -- Getter functions should be settable from the attrs parameter
    local Node = Class('Node', nil, {
        _icon = 'default',
        getters = {
            icon = function (self) return self._icon end
        }
    })

    luaunit.assertIsFunction(Node.getters.icon)
    luaunit.assertIsNil(Node.icon)
    luaunit.assertEquals(Node().icon, 'default')
end

function TestClass:testSetter ()
    -- Setter functions should run on instance attribute access
    -- Setter functions should *not* run on class attribute access
    local Node = Class('Node', nil)
    function Node.setters:icon (value) self._icon = value end
    local node = Node()

    luaunit.assertIsFunction(Node.setters.icon)
    luaunit.assertIsNil(Node.icon)
    luaunit.assertIsNil(node.icon)

    node.icon = 'default'

    luaunit.assertIsNil(Node.icon)
    luaunit.assertIsNil(node.icon)
    luaunit.assertIsNil(Node._icon)
    luaunit.assertEquals(node._icon, 'default')
end

function TestClass:testSetterFromAttrs ()
    -- Setter functions should be settable from the attrs parameter
    local Node = Class('Node', nil, {
        setters = {
            icon = function (self, value) self._icon = value end
        }
    })
    local node = Node()

    luaunit.assertIsFunction(Node.setters.icon)
    luaunit.assertIsNil(Node.icon)
    luaunit.assertIsNil(node.icon)

    node.icon = 'default'

    luaunit.assertIsNil(Node.icon)
    luaunit.assertIsNil(node.icon)
    luaunit.assertIsNil(Node._icon)
    luaunit.assertEquals(node._icon, 'default')
end

function TestClass:testSetterCalledFromInstanceAttrs ()
    -- Setter functions should be called from initial attributes
    local Node = Class('Node', nil)
    function Node.setters:icon (value) self._icon = value end
    local node = Node({ icon='default' })

    luaunit.assertIsNil(Node.icon)
    luaunit.assertIsNil(node.icon)
    luaunit.assertIsNil(Node._icon)
    luaunit.assertEquals(node._icon, 'default')
end

-------------------------------------------------------------------------------
---------------------------- TEST CLASS INHERITANCE ---------------------------
-------------------------------------------------------------------------------

TestInheritance = {}

function TestInheritance:testInitOverride ()
    -- Verify subclasses can override the init() method
    local Node = Class('Node')
    local Rare = Class('Rare', Node)

    function Node:init () self.scale = 1 end
    function Rare:init () self.icon = 'skull' end

    local node = Node()
    local rare = Rare()

    luaunit.assertIsNil(Node.__parent)
    luaunit.assertIs(Rare.__parent, Node)

    luaunit.assertEquals(node.scale, 1)
    luaunit.assertIsNil(node.icon)

    luaunit.assertIsNil(rare.scale)
    luaunit.assertEquals(rare.icon, 'skull')
end

function TestInheritance:testAttributeInheritance ()
    -- Class attributes should be interited and accessible from instances
    local Node = Class('Node', nil, { icon='default', scale=1 })
    local Rare = Class('Rare', Node, { alpha=1, scale=2 })

    luaunit.assertEquals(Rare.icon, 'default')
    luaunit.assertEquals(Rare.alpha, 1)
    luaunit.assertEquals(Rare.scale, 2)

    luaunit.assertEquals(tostring(Node), '<class "Node">')
    luaunit.assertEquals(tostring(Rare), '<class "Rare">')

    local node = Node()
    local rare = Rare({ icon='skull' })

    luaunit.assertStrMatches(tostring(node), '<Node object at [0-9a-f]+>')
    luaunit.assertStrMatches(tostring(rare), '<Rare object at [0-9a-f]+>')

    luaunit.assertEquals(rare.icon, 'skull')
    luaunit.assertEquals(rare.alpha, 1)
    luaunit.assertEquals(rare.scale, 2)
    luaunit.assertIsNil(rare.label)
end

function TestInheritance:testMethodInheritance ()
    -- Parent class methods should be accessible and overridable
    local Node = Class('Node')
    function Node:update() return 123 end
    function Node:getIcon() return self.icon end
    local Rare = Class('Rare', Node)
    function Rare:update() return 456 end

    local node = Node({ icon='treasure' })
    local rare = Rare({ icon='skull' })

    luaunit.assertEquals(node:update(), 123)
    luaunit.assertEquals(node:getIcon(), 'treasure')
    luaunit.assertEquals(rare:update(), 456)
    luaunit.assertEquals(rare:getIcon(), 'skull')
end

function TestInheritance:testGetterInheritance ()
    -- Verify getter is inherited from parent
    local Node = Class('Node')
    function Node.getters:id () return 123 end
    local Rare = Class('Rare', Node)

    luaunit.assertIsNil(Node.id)
    luaunit.assertIsNil(Rare.id)
    luaunit.assertEquals(Node().id, 123)
    luaunit.assertEquals(Rare().id, 123)
    luaunit.assertEquals(Rare({ id=789 }).id, 789)

    -- Verify static value in child overrides getter in parent
    Rare.id = 456

    luaunit.assertIsNil(Node.id)
    luaunit.assertEquals(Rare.id, 456)
    luaunit.assertEquals(Node().id, 123)
    luaunit.assertEquals(Rare().id, 456)
    luaunit.assertEquals(Rare({ id=789 }).id, 789)

    -- Verify getter in child overrides getter in parent
    Rare.id = nil
    function Rare.getters:id () return 456 end

    luaunit.assertIsNil(Node.id)
    luaunit.assertIsNil(Rare.id)
    luaunit.assertEquals(Node().id, 123)
    luaunit.assertEquals(Rare().id, 456)
    luaunit.assertEquals(Rare({ id=789 }).id, 789)
end

function TestInheritance:testSetterInheritance ()
    -- Verify setters are inherited from parent
    local Node = Class('Node')
    function Node.setters:id (value) self._id = value end
    local Rare = Class('Rare', Node)

    Rare.id = 123

    luaunit.assertEquals(Rare.id, 123)
    luaunit.assertIsNil(Rare._id)

    Rare.id = nil
    local rare = Rare({ id = 456 })

    luaunit.assertIsNil(rare.id)
    luaunit.assertEquals(rare._id, 456)

    -- Verify setter in child overrides setter in parent
    function Rare.setters:id (value) self._id = value + 10 end

    rare.id = 10

    luaunit.assertIsNil(rare.id)
    luaunit.assertEquals(rare._id, 20)

    -- Verify static class attribute does not interfere with setter
    Rare.id = 123
    rare.id = 42
    luaunit.assertEquals(Rare.id, 123)
    luaunit.assertEquals(rare.id, 123)
    luaunit.assertEquals(rare._id, 52)
end

-------------------------------------------------------------------------------
------------------------------ TEST CLASS HELPERS -----------------------------
-------------------------------------------------------------------------------

TestHelpers = {}

function TestHelpers:testIsInstance ()
    -- isinstance() should check the inheritance chain for a matching class
    local Node = Class('Node')
    local Rare = Class('Rare', Node)
    local NPC = Class('NPC')

    luaunit.assertIsTrue(isinstance(Rare(), Rare))
    luaunit.assertIsTrue(isinstance(Rare(), Node))
    luaunit.assertIsFalse(isinstance(Rare(), NPC))
    luaunit.assertIsFalse(isinstance(NPC(), Node))
end

function TestHelpers:testClone ()
    -- clone() should duplicate a class instance and override attributes
    local Node = Class('Node', nil, { icon='default' })
    local node1 = Node({ scale=1 })
    local node2 = clone(node1, { scale=2 })

    luaunit.assertNotIs(node1, node2)
    luaunit.assertIsTrue(isinstance(node1, Node))
    luaunit.assertIsTrue(isinstance(node2, Node))
    luaunit.assertEquals(node1.icon, 'default')
    luaunit.assertEquals(node1.scale, 1)
    luaunit.assertEquals(node2.icon, 'default')
    luaunit.assertEquals(node2.scale, 2)
end

-------------------------------------------------------------------------------

os.exit(luaunit.LuaUnit.run())