# Local lint runner for handynotes-plugins
# Requires Lua and lua-format to be installed

$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$f = "$env:APPDATA\npm\node_modules\lua-format\src\index.js"
$lua = (where.exe lua 2>$null) | Select-Object -First 1

if (-not $lua) {
    Write-Error "Lua not found. Install: winget install DEVCOM.Lua"
    exit 1
}
if (-not (Test-Path $f)) {
    Write-Error "lua-format not found. Install: npm install -g lua-format"
    exit 1
}

Write-Host "=== Luacheck ==="
luacheck core plugins tests/test_*.lua -q --no-color 2>&1 | ForEach-Object { Write-Host $_ }
if ($LASTEXITCODE -ne 0) { Write-Host "luacheck FAILED" -ForegroundColor Red; $failed = $true }

Write-Host "`n=== Lua Format Check ==="
node $f -c "$root\.lua-format" --check "$root\core" "$root\plugins" "$root\tests" 2>&1 | ForEach-Object { Write-Host $_ }
if ($LASTEXITCODE -ne 0) { Write-Host "format FAILED" -ForegroundColor Red; $failed = $true }

Write-Host "`n=== Unit Tests ==="
Push-Location "$root\tests"
& $lua test_class.lua 2>&1 | ForEach-Object { Write-Host $_ }
& $lua test_locales.lua 2>&1 | ForEach-Object { Write-Host $_ }
& $lua test_headers.lua 2>&1 | ForEach-Object { Write-Host $_ }
Pop-Location

if ($failed) { Write-Host "`nFAILED" -ForegroundColor Red; exit 1 }
else { Write-Host "`nALL PASSED" -ForegroundColor Green }
