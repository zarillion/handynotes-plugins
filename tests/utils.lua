-------------------------------------------------------------------------------
------------------------------- HELPER FUNCTIONS ------------------------------
-------------------------------------------------------------------------------
local function FileExists(path)
    local file = io.open(path, 'r')
    if file ~= nil then
        io.close(file)
        return true
    end
    return false
end

local function Locales()
    local cmd =
        'find ../core/localization ../plugins/*/localization -name "*.lua"'
    local iter = io.popen(cmd):lines()
    return function()
        local file = iter()
        if not file then return end
        local plugin = file:find('/core/') and 'Core' or
                           file:sub(file:find('%d%d_%a+')):sub(4)
        return plugin, file:sub(-8, -5), file:sub(0, -10)
    end
end

local function Code()
    local cmd = 'find ../core ../plugins -name "*.lua" | grep -v localization'
    return io.popen(cmd):lines()
end

local function AllLuaFiles()
    local cmd = 'find ../core ../plugins -name "*.lua"'
    return io.popen(cmd):lines()
end

local function FileLines(file)
    local f = io.open(file, 'r')
    if not f then return function() end end
    local lines = {}
    for line in f:lines() do lines[#lines + 1] = line end
    f:close()
    local i = 0
    return function()
        i = i + 1
        if lines[i] then return i, lines[i] end
    end
end

return {FileExists = FileExists, Code = Code, Locales = Locales,
    AllLuaFiles = AllLuaFiles, FileLines = FileLines}
