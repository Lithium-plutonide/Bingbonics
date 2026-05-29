@echo off
title Updating Bingbonics Server...

:: Search for any file starting with "Bingbonics" and ending in ".mrpack"
:: %%f will hold the actual full filename found
for %%f in ("Bingbonics (webserver)*.mrpack") do (
    set "MODPACK_FILE=%%f"
)

:: Check if a file was actually found
if "%MODPACK_FILE%"=="" (
    echo [!] Error: No file matching "Bingbonics (webserver)*.mrpack" found.
    pause
    exit /b
)

echo Found pack: %MODPACK_FILE%
call packwiz modrinth import "%MODPACK_FILE%"

call packwiz refresh

echo.
echo Done!
pause