-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local _, ns = ...

-------------------------------------------------------------------------------
------------------------------------ CLASS ------------------------------------
-------------------------------------------------------------------------------

ns.Class = function (name, parent, attrs)
    if type(name) ~= 'string' then error('name parameter must be a string') end

    local Class = attrs or {}
    Class.getters = Class.getters or {}
    Class.setters = Class.setters or {}

    setmetatable(Class, {
        __call = function (self, instanceAttrs)
            instance = {}
            instance.__class = Class;

            local address = tostring(instance):gsub("table: ", "", 1)

            setmetatable(instance, {
                __tostring = function ()
                    return '<'..name..' object at '..address..'>'
                end,

                __index = function (self, index)
                    local getter = Class.getters[index]
                    if getter then return getter(self) end
                    return Class[index]
                end,

                __newindex = function (self, index, value)
                    local setter = Class.setters[index]
                    if setter then
                        setter(self, value)
                    else
                        rawset(self, index, value)
                    end
                end
            })

            -- assign attributes after setmetatable() to trigger any setters
            for k, v in pairs(instanceAttrs or {}) do
                instance[k] = v
            end

            -- call init() method for instance
            Class.init(instance)

            return instance
        end,

        __tostring = function ()
            return '<class "'..name..'">'
        end,

        __index = parent
    })

    if parent then
        setmetatable(Class.getters, { __index = parent.getters })
        setmetatable(Class.setters, { __index = parent.setters })
        Class.__parent = parent
    elseif not Class.init then
        -- Add default init() method for base class
        Class.init = function (self) end
    end

    return Class
end

-------------------------------------------------------------------------------
----------------------------------- HELPERS -----------------------------------
-------------------------------------------------------------------------------

ns.isinstance = function (instance, class)
    local function compare (c1, c2)
        if c2 == nil then return false end
        if c1 == c2 then return true end
        return compare(c1, c2.__parent)
    end
    return compare(class, instance.__class)
end

ns.clone = function (instance, newattrs)
    local clone = {}
    for k, v in pairs(instance) do clone[k] = v end
    for k, v in pairs(newattrs or {}) do clone[k] = v end
    return instance.__class(clone)
end
