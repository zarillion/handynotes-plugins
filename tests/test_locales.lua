-------------------------------------------------------------------------------
--------------------------------- LOAD MODULE ---------------------------------
-------------------------------------------------------------------------------

local lfs = require('lfs')
local luaunit = require('luaunit')

-------------------------------------------------------------------------------

function EJ_GetInstanceInfo() return 'DUNGEON' end
function UnitFactionGroup() return 'Horde' end
format = string.format -- doesn't support %1$s syntax!

local ColorModule, err = loadfile('../core/colors.lua')
if err then print(err); os.exit() end

-------------------------------------------------------------------------------
------------------------------- HELPER FUNCTIONS ------------------------------
-------------------------------------------------------------------------------

local function LocaleDirs()
    local first, dir = true
    local iter, dir_obj = lfs.dir('../plugins')
    return function ()
        -- always start with core localizations
        if first then
            first = false
            return 'Core', '../core/localization'
        end
        repeat
            dir = iter(dir_obj)
        until dir == nil or string.find(dir, '%d%d_%a')
        if dir then
            return dir:sub(4), ('../plugins/%s/localization'):format(dir)
        end
    end
end

local function Locales()
    local iterDirs = LocaleDirs()
    local plugin, dir = iterDirs()
    local iterFiles, dir_obj = lfs.dir(dir)
    local file
    return function ()
        repeat
            file = iterFiles(dir_obj)
            if file == nil then
                plugin, dir = iterDirs()
                if plugin ~= nil then
                    iterFiles, dir_obj = lfs.dir(dir)
                end
            end
        until (file == nil and plugin == nil) or (file and file:find('%a+.lua'))
        if file then return plugin, file:sub(1, 4), dir end
    end
end

-------------------------------------------------------------------------------
------------------------------ TEST LOCALE FILES ------------------------------
-------------------------------------------------------------------------------

TestLocales = {}

function TestLocales:CreateNamespace(expectedKeys)
    local ns = { keys = {}, expectedKeys = expectedKeys }
    ColorModule('TEST', ns)

    function ns.NewLocale(locale)
        local L = {}
        setmetatable(L, {
            __index = function(self, key) assert(false) end,
            __newindex = function(self, key, value)
                ns.keys[#ns.keys + 1] = key
                if expectedKeys and key ~= expectedKeys[#ns.keys] then
                    error(format('expected "%s" instead of "%s"', expectedKeys[#ns.keys], key))
                end
            end
        })
        return L
    end

    return ns
end

function TestLocales:LoadLocale(locale, dir, expectedKeys)
    local file = ('%s/%s.lua'):format(dir, locale)
    local namespace = self:CreateNamespace(expectedKeys)
    local module, err = loadfile(file)
    if err then print(err); os.exit() end
    module('TEST', namespace)
    return namespace
end

function TestLocales:LocalTestFactory(locale, dir)
    return function ()
        if locale == 'enUS' then
            -- Just attempt to load the file, nothing else to do
            self:LoadLocale(locale, dir)
        else
            -- Compare the locale to the declared keys in enUS
            local enUS = self:LoadLocale('enUS', dir)
            self:LoadLocale(locale, dir, enUS.keys)
        end
    end
end

for plugin, locale, dir in Locales() do
    local testName = ('testLocale-%s-%s'):format(plugin, locale)
    TestLocales[testName] = TestLocales:LocalTestFactory(locale, dir)
end

-------------------------------------------------------------------------------

os.exit(luaunit.LuaUnit.run())