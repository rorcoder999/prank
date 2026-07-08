@echo off
REM STREAMING_CHUNK:Setting up server configuration...
title PrankLab Localhost Server
color 0A

echo ===================================================
echo   PrankLab 🧪 - Starting Local Server Engine
echo ===================================================
echo.

REM STREAMING_CHUNK:Navigating to target folder...
:: Navigate directly to your prank-host project directory
cd /d "C:\Users\Rizwan Nizar\Documents\prank-host"

echo [1/2] Opening default web browser pointing to http://localhost:8000...
:: Open browser pointing to local host port 8000
start "" "http://localhost:8000"

echo [2/2] Starting local Python web server...
echo.
echo Press Ctrl+C in this terminal window to stop the server anytime.
echo ===================================================
echo.

REM STREAMING_CHUNK:Executing python HTTP server...
:: Run Python's built-in lightweight HTTP server
python -m http.server 8000

if %ERRORLEVEL% NEQ 0 (
echo.
echo [ERROR] Python was not found in your system PATH!
echo.
echo Alternately, if you have Node.js installed, trying "npx serve"...
echo.
npx serve -l 8000
)

pause
