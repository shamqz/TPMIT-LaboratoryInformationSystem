@echo off
REM Go to the directory where this .bat file is located
cd /d "%~dp0"

echo Starting Inventory System...

start "" pythonw app.py

timeout /t 3 /nobreak >nul

start http://10.0.1.10:5000/

echo System opened