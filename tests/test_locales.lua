-------------------------------------------------------------------------------
--------------------------------- LOAD MODULE ---------------------------------
-------------------------------------------------------------------------------

local luaunit = require('luaunit')

-------------------------------------------------------------------------------

function GetCurrentRegion() return 1 end
function UnitFactionGroup() return 'Horde' end
format = string.format -- doesn't support %1$s syntax!

local ColorModule, err = loadfile('../core/colors.lua')
if err then print(err); os.exit() end

-------------------------------------------------------------------------------
------------------------------- HELPER FUNCTIONS ------------------------------
-------------------------------------------------------------------------------

local function Locales()
    local cmd = 'find ../core/localization ../plugins/*/localization -name "*.lua"'
    local iter = io.popen(cmd):lines()
    return function ()
        local file = iter()
        if not file then return end
        local plugin = file:find('/core/') and 'Core' or file:sub(file:find('%d%d_%a+')):sub(4)
        return plugin, file:sub(-8, -5), file:sub(0, -10)
    end
end

local function Code()
    local cmd = 'find ../core ../plugins -name "*.lua" | grep -v localization'
    return io.popen(cmd):lines()
end

-------------------------------------------------------------------------------
------------------------- SCAN CODE FOR LOCALE STRINGS ------------------------
-------------------------------------------------------------------------------

-- Localization strings used in the code. Temporarily used strings should be
-- placed here so that the test does not fail.
local USED_STRINGS = {
    activation_unknown = true,
    requirement_not_found = true,
    daily = true -- remove me once used
}

for file in Code() do
    local code = io.open(file):read('*a')
    for key in string.gmatch(code, 'L%[["\']([%w_]+)["\']%]') do
        USED_STRINGS[key] = true
    end
    for group in string.gmatch(code, 'Group%(["\']([%w_]+)["\']') do
        USED_STRINGS[('options_icons_%s'):format(group)] = true
        USED_STRINGS[('options_icons_%s_desc'):format(group)] = true
    end
end

-------------------------------------------------------------------------------
------------------------------ TEST LOCALE FILES ------------------------------
-------------------------------------------------------------------------------

TestLocales = {}

function TestLocales:CreateNamespace(expectedKeys)
    local ns = { keys = {}, seen = {}, expectedKeys = expectedKeys }
    ColorModule('TEST', ns)

    function ns.NewLocale(locale)
        local L = {}
        setmetatable(L, {
            __index = function(self, key)
                error(format('string "%s" cannot be accessed', key))
            end,
            __newindex = function(self, key, value)
                if ns.seen[key] then
                    error(format('string "%s" assigned twice', key))
                end
                if not USED_STRINGS[key] then
                    error(format('string "%s" is never used in the code', key))
                end
                ns.seen[key] = true
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
            local rrCC = self:LoadLocale(locale, dir, enUS.keys)

            if #rrCC.keys < #enUS.keys then
                error(format('missing %d strings at eof', #enUS.keys - #rrCC.keys))
            end
        end
    end
end

for plugin, locale, dir in Locales() do
    local testName = ('testLocale-%s-%s'):format(plugin, locale)
    TestLocales[testName] = TestLocales:LocalTestFactory(locale, dir)
end

-------------------------------------------------------------------------------

os.exit(luaunit.LuaUnit.run())