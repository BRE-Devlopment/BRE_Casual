@echo off
REM Build script for BRE_Casual mod

echo Building BRE_Casual mod...

REM Check if BANNERLORD_GAME_DIR is set
if "%BANNERLORD_GAME_DIR%"=="" (
    echo Warning: BANNERLORD_GAME_DIR environment variable is not set.
    echo Please set it to your Mount ^& Blade II: Bannerlord installation directory.
    echo Example: set BANNERLORD_GAME_DIR=C:\Program Files\Steam\steamapps\common\Mount ^& Blade II Bannerlord
    echo.
    echo Continuing with build anyway...
)

REM Navigate to source directory
cd /d "%~dp0src"

REM Build the project
dotnet build -c Release

if %errorlevel% equ 0 (
    echo Build successful!
    echo Output: ..\bin\Win64_Shipping_Client\BRE_Casual.dll
) else (
    echo Build failed!
    exit /b 1
)

pause
