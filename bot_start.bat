@echo off
REM Discord Music Bot Starter
REM ====================================

setlocal enabledelayedexpansion

echo.
echo ======================================
echo   Discord Music Bot Starting...
echo ======================================
echo.

REM Check if node_modules exists
if not exist "node_modules\" (
    echo [*] Installing dependencies...
    call npm install
    if !errorlevel! neq 0 (
        echo [X] Failed to install dependencies
        pause
        exit /b 1
    )
    echo [+] Dependencies installed successfully
    echo.
)

REM Check if .env file exists
if not exist ".env" (
    echo [!] WARNING: .env file not found
    echo [!] Please create .env file with your DISCORD_TOKEN
    echo.
    pause
    exit /b 1
)

REM Start the bot
echo [*] Starting bot with npm start...
echo.
call npm start

REM If npm start exits, pause to see any error messages
pause

