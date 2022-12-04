--[[
Auto populate missing locale entries based on the provided source locale
(default enUS). For each entry missing in other locales, a nil entry is
automatically added. Run this one time after you add a bunch of new notes
to quickly fixup all the other locale files.

XXX: DO NOT USE THIS BLINDLY. DOUBLE-CHECK ITS WORK BEFORE COMMITTING
BECAUSE I WROTE IT AT 2AM AND IT SHOULD NOT BE TRUSTED (>^.(>O.o)>

Usage: lua fixup_locales.lua [locale]
]] --
SOURCE_LOCALE = arg[1] or 'enUS'

local utils = require('utils')

local function FixupEntries(dir, locale)
    local spath = ('%s/%s.lua'):format(dir, SOURCE_LOCALE)
    local dpath = ('%s/%s.lua'):format(dir, locale)

    if not utils.FileExists(spath) then return end

    local sfile = io.open(spath)
    local dfile = io.open(dpath)

    local slines = {}
    local dlines = {}

    for line in sfile:lines() do slines[#slines + 1] = line end
    for line in dfile:lines() do dlines[#dlines + 1] = line end

    io.close(sfile)
    io.close(dfile)

    local tmp = io.open(dpath .. '.tmp', 'w')

    local didx = 1
    local intrans = false

    for sidx = 1, #slines do
        -- Write-through all non-empty lines which do not start a new translation string
        while dlines[didx] and (dlines[didx] ~= '' or intrans) and
            not dlines[didx]:find('L[\'', 1, true) do
            tmp:write(dlines[didx] .. '\n')
            if dlines[didx] == ']]' then intrans = false end
            didx = didx + 1
        end

        -- Handle source lines that start a new translation string
        if slines[sidx]:find('L[\'', 1, true) then
            local sname = slines[sidx]:match('L%[["\']([%w_]+)["\']%]')

            -- If we're out of destination lines, or the destination file thinks this
            -- is the end of this section, write the remaining source lines
            if not dlines[didx] or dlines[didx] == '' then
                tmp:write(('L[\'%s\'] = nil\n'):format(sname))
            else
                local dname = dlines[didx]:match('L%[["\']([%w_]+)["\']%]')

                -- If the source name matches the dest name, the files are in sync
                if sname == dname then
                    tmp:write(dlines[didx] .. '\n')
                    if dlines[didx]:sub(-2, -1) == '[[' then
                        intrans = true -- so we can pass-through spaces inside a multi-line string
                    end
                    didx = didx + 1
                else
                    -- The source and dest files disagree on which translation should
                    -- come next. Assume this is a translation in the source that needs
                    -- to get added to the destination locale.
                    tmp:write(('L[\'%s\'] = nil\n'):format(sname))
                end
            end

        elseif slines[sidx] == '' and dlines[didx] == '' then
            -- If both source and dest agree there should be a space, output it
            tmp:write('\n')
            didx = didx + 1
        end
    end

    io.close(tmp)
    os.remove(dpath)
    os.rename(dpath .. '.tmp', dpath)
end

for plugin, locale, dir in utils.Locales() do
    if locale ~= SOURCE_LOCALE then FixupEntries(dir, locale) end
end
