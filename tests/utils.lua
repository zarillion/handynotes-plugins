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

return {FileExists = FileExists, Code = Code, Locales = Locales}
