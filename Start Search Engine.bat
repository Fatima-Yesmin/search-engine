@echo off
cd /d "%~dp0"

start "" "%~dp0runtime\bin\java.exe" -cp "%~dp0spotlight-engine-0.0.1-SNAPSHOT.jar;%~dp0lib\*" com.spotlight.engine.SpotlightEngineApplication

timeout /t 15 /nobreak >nul

start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" "http://localhost:8080"

exit