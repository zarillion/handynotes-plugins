-------------------------------------------------------------------------------
--------------------------------- LOAD MODULE ---------------------------------
-------------------------------------------------------------------------------
local luaunit = require('luaunit')
local utils = require('utils')

-- Header format constants
local LINE_LEN = 79
local BODY_LEN = LINE_LEN - 2 -- 77 chars after "--"
local SEP = '--' .. string.rep('-', BODY_LEN)

-------------------------------------------------------------------------------
-------------------------- FUNCTIONS TO VERIFY HEADERS ------------------------
-------------------------------------------------------------------------------

local function CheckSeparator(line, lineNum, file)
    if #line ~= LINE_LEN then
        error(string.format('%s:%d: separator len=%d, expected %d', file,
            lineNum, #line, LINE_LEN))
    end
    if line ~= SEP then
        for i = 1, LINE_LEN do
            if line:sub(i, i) ~= SEP:sub(i, i) then
                error(string.format(
                    '%s:%d: separator mismatch at pos %d', file, lineNum, i))
            end
        end
    end
end

local function CheckHeaderText(line, lineNum, file)
    if #line ~= LINE_LEN then
        error(string.format('%s:%d: header len=%d, expected %d', file,
            lineNum, #line, LINE_LEN))
    end

    local _, _, text = line:find('^--%-+ (.+) %-+$')
    if not text then
        error(string.format('%s:%d: malformed header: %s', file, lineNum,
            line))
    end

    local textLen = #text + 2 -- spaces around text
    local dashCount = BODY_LEN - textLen

    if dashCount <= 0 then
        error(string.format('%s:%d: header text too long (%d chars)', file,
            lineNum, #text))
    end

    -- Count actual dashes after "--"
    local leftDashes = 0
    for i = 3, #line do
        if line:sub(i, i) == '-' then
            leftDashes = leftDashes + 1
        else
            break
        end
    end

    local rightDashes = 0
    for i = #line, 3, -1 do
        if line:sub(i, i) == '-' then
            rightDashes = rightDashes + 1
        else
            break
        end
    end

    if leftDashes + textLen + rightDashes ~= BODY_LEN then
        error(string.format(
            '%s:%d: dash mismatch L=%d R=%d text=%d total=%d expected=%d',
            file, lineNum, leftDashes, rightDashes, textLen,
            leftDashes + textLen + rightDashes, BODY_LEN))
    end

    -- Visual balance: 2 + leftDashes should be close to rightDashes
    -- Right gets fewer on odd (so 2 + leftDashes > rightDashes)
    local visualDiff = (2 + leftDashes) - rightDashes
    if visualDiff < 0 or visualDiff > 1 then
        error(string.format(
            '%s:%d: visual imbalance %s L=%d R=%d (visL=%d visR=%d diff=%d, expected 0 or 1)',
            file, lineNum, text, leftDashes, rightDashes, 2 + leftDashes,
            rightDashes, visualDiff))
    end
end

-------------------------------------------------------------------------------
----------------------------- HEADER PATTERN TEST -----------------------------
-------------------------------------------------------------------------------

TestHeaders = {}

function TestHeaders:testAllHeaders()
    local errors = {}
    for file in utils.Code() do
        local f = io.open(file, 'r')
        if not f then
            errors[#errors + 1] = ('cannot open: %s'):format(file)
        else
            local lineNum = 0
            for line in f:lines() do
                lineNum = lineNum + 1
                if line:match('^--%-{10,}$') then
                    local ok, err = pcall(CheckSeparator, line, lineNum,
                        file)
                    if not ok then errors[#errors + 1] = err end
                elseif #line >= 20 and
                    line:match('^--%-{10,} .+ %-{10,}$') then
                    local ok, err = pcall(CheckHeaderText, line, lineNum,
                        file)
                    if not ok then errors[#errors + 1] = err end
                end
            end
            f:close()
        end
    end

    if #errors > 0 then
        local msg = table.concat(errors, '\n')
        error(msg, 0)
    end
end

-------------------------------------------------------------------------------

os.exit(luaunit.LuaUnit.run())
