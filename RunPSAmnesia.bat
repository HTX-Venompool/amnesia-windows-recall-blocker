@echo off
if exist "%~dp0AmnesiaManager.ps1" (powershell.exe -ExecutionPolicy Bypass -file "%~dp0AmnesiaManager.ps1") else (echo. && echo ERROR: AmnesiaManager.ps1 Not Found && echo. && pause)
exit