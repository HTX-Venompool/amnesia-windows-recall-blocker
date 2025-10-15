@echo off
setlocal enableextensions
title Amnesia Installation Manager

:mainmenu
cls
echo.
echo Welcome to HTX Venom's Amnesia, Windows Recall Disabler Tool
echo.
echo What would you like to do?
echo.
echo Install\Run Amnesia (A)
echo.
echo Make Amnesia Run on Startup (B)
echo.
echo Exit (X)
echo.
choice /c ABX
echo.
if errorlevel == 3 (goto :eof)
if errorlevel == 2 (goto :setstartup)
if errorlevel == 1 (goto :runamnesia)

:installamnesia
echo.
echo Installing Amnesia...
echo.
echo @echo off > "%installpath%Amnesia.bat"
echo setlocal enableextensions >> "%installpath%Amnesia.bat"
echo title Windows Recall Wiper Tool >> "%installpath%Amnesia.bat"
echo :loopwipe >> "%installpath%Amnesia.bat"
echo cls >> "%installpath%Amnesia.bat"
echo echo. >> "%installpath%Amnesia.bat"
echo echo Erasing Windows Recall Database... >> "%installpath%Amnesia.bat"
echo echo. >> "%installpath%Amnesia.bat"
echo FOR /d /r "%%localappdata%%" %%%%d IN (UKP\{*}) DO (>> "%installpath%Amnesia.bat"
echo if exist "%%%%d\ImageStore" (>> "%installpath%Amnesia.bat"
echo FOR %%%%e IN ("%%%%d\ImageStore\*") DO (>> "%installpath%Amnesia.bat"
echo echo DATA EXPUNGED^> "%%%%e" >> "%installpath%Amnesia.bat"
echo del /f /q "%%%%e" ^> nul) >> "%installpath%Amnesia.bat"
echo FOR /f %%%%e IN ('dir /b /s /a:d "%%%%d\ImageStore\"') DO (>> "%installpath%Amnesia.bat"
echo FOR %%%%f IN ("%%%%e\*") DO (>> "%installpath%Amnesia.bat"
echo echo DATA EXPUNGED^> "%%%%f" >> "%installpath%Amnesia.bat"
echo del /f /q "%%%%f" ^> nul) >> "%installpath%Amnesia.bat"
echo ) >> "%installpath%Amnesia.bat"
echo ) >> "%installpath%Amnesia.bat"
echo if exist "%%%%d\ukg.db" (echo DATA EXPUNGED^> "%%%%d\ukg.db" >> "%installpath%Amnesia.bat"
echo del /s /f /q "%%%%d\ukg.db" ^> nul) >> "%installpath%Amnesia.bat"
echo if exist "%%%%d\ukg.db-shm" (echo DATA EXPUNGED^> "%%%%d\ukg.db-shm" >> "%installpath%Amnesia.bat"
echo del /s /f /q "%%%%d\ukg.db-shm" ^> nul) >> "%installpath%Amnesia.bat"
echo if exist "%%%%d\ukg.db-wal" (echo DATA EXPUNGED^> "%%%%d\ukg.db-wal" >> "%installpath%Amnesia.bat"
echo del /s /f /q "%%%%d\ukg.db-wal" ^> nul) >> "%installpath%Amnesia.bat"
echo if exist "%%%%d\SemanticImageStore.sidb" (echo DATA EXPUNGED^> "%%%%d\SemanticImageStore.sidb" >> "%installpath%Amnesia.bat"
echo del /s /f /q "%%%%d\SemanticImageStore.sidb" ^> nul) >> "%installpath%Amnesia.bat"
echo if exist "%%%%d\SemanticImageStore.sidb.lock" (echo DATA EXPUNGED^> "%%%%d\SemanticImageStore.sidb.lock" >> "%installpath%Amnesia.bat"
echo del /s /f /q "%%%%d\SemanticImageStore.sidb.lock" ^> nul) >> "%installpath%Amnesia.bat"
echo if exist "%%%%d\SemanticImageStore.sidb-shm" (echo DATA EXPUNGED^> "%%%%d\SemanticImageStore.sidb-shm" >> "%installpath%Amnesia.bat"
echo del /s /f /q "%%%%d\SemanticImageStore.sidb-shm" ^> nul) >> "%installpath%Amnesia.bat"
echo if exist "%%%%d\SemanticImageStore.sidb-wal" (echo DATA EXPUNGED^> "%%%%d\SemanticImageStore.sidb-wal" >> "%installpath%Amnesia.bat"
echo del /s /f /q "%%%%d\SemanticImageStore.sidb-wal" ^> nul) >> "%installpath%Amnesia.bat"
echo if exist "%%%%d\SemanticTextStore.sidb" (echo DATA EXPUNGED^> "%%%%d\SemanticTextStore.sidb" >> "%installpath%Amnesia.bat"
echo del /s /f /q "%%%%d\SemanticTextStore.sidb" ^> nul) >> "%installpath%Amnesia.bat"
echo if exist "%%%%d\SemanticTextStore.sidb.lock" (echo DATA EXPUNGED^> "%%%%d\SemanticTextStore.sidb.lock" >> "%installpath%Amnesia.bat"
echo del /s /f /q "%%%%d\SemanticTextStore.sidb.lock" ^> nul) >> "%installpath%Amnesia.bat"
echo if exist "%%%%d\SemanticTextStore.sidb-shm" (echo DATA EXPUNGED^> "%%%%d\SemanticTextStore.sidb-shm" >> "%installpath%Amnesia.bat"
echo del /s /f /q "%%%%d\SemanticTextStore.sidb-shm" ^> nul) >> "%installpath%Amnesia.bat"
echo if exist "%%%%d\SemanticTextStore.sidb-wal" (echo DATA EXPUNGED^> "%%%%d\SemanticTextStore.sidb-wal" >> "%installpath%Amnesia.bat"
echo del /s /f /q "%%%%d\SemanticTextStore.sidb-wal" ^> nul) >> "%installpath%Amnesia.bat"
echo )>> "%installpath%Amnesia.bat"
echo FOR /d /r "%%appdata%%" %%%%d IN (UKP\{*}) DO (>> "%installpath%Amnesia.bat"
echo if exist "%%%%d\ImageStore" (>> "%installpath%Amnesia.bat"
echo FOR %%%%e IN ("%%%%d\ImageStore\*") DO (>> "%installpath%Amnesia.bat"
echo echo DATA EXPUNGED^> "%%%%e" >> "%installpath%Amnesia.bat"
echo del /f /q "%%%%e" ^> nul) >> "%installpath%Amnesia.bat"
echo FOR /f %%%%e IN ('dir /b /s /a:d "%%%%d\ImageStore\"') DO (>> "%installpath%Amnesia.bat"
echo FOR %%%%f IN ("%%%%e\*") DO (>> "%installpath%Amnesia.bat"
echo echo DATA EXPUNGED^> "%%%%f" >> "%installpath%Amnesia.bat"
echo del /f /q "%%%%f" ^> nul) >> "%installpath%Amnesia.bat"
echo ) >> "%installpath%Amnesia.bat"
echo ) >> "%installpath%Amnesia.bat"
echo if exist "%%%%d\ukg.db" (echo DATA EXPUNGED^> "%%%%d\ukg.db" >> "%installpath%Amnesia.bat"
echo del /s /f /q "%%%%d\ukg.db" ^> nul) >> "%installpath%Amnesia.bat"
echo if exist "%%%%d\ukg.db-shm" (echo DATA EXPUNGED^> "%%%%d\ukg.db-shm" >> "%installpath%Amnesia.bat"
echo del /s /f /q "%%%%d\ukg.db-shm" ^> nul) >> "%installpath%Amnesia.bat"
echo if exist "%%%%d\ukg.db-wal" (echo DATA EXPUNGED^> "%%%%d\ukg.db-wal" >> "%installpath%Amnesia.bat"
echo del /s /f /q "%%%%d\ukg.db-wal" ^> nul) >> "%installpath%Amnesia.bat"
echo if exist "%%%%d\SemanticImageStore.sidb" (echo DATA EXPUNGED^> "%%%%d\SemanticImageStore.sidb" >> "%installpath%Amnesia.bat"
echo del /s /f /q "%%%%d\SemanticImageStore.sidb" ^> nul) >> "%installpath%Amnesia.bat"
echo if exist "%%%%d\SemanticImageStore.sidb.lock" (echo DATA EXPUNGED^> "%%%%d\SemanticImageStore.sidb.lock" >> "%installpath%Amnesia.bat"
echo del /s /f /q "%%%%d\SemanticImageStore.sidb.lock" ^> nul) >> "%installpath%Amnesia.bat"
echo if exist "%%%%d\SemanticImageStore.sidb-shm" (echo DATA EXPUNGED^> "%%%%d\SemanticImageStore.sidb-shm" >> "%installpath%Amnesia.bat"
echo del /s /f /q "%%%%d\SemanticImageStore.sidb-shm" ^> nul) >> "%installpath%Amnesia.bat"
echo if exist "%%%%d\SemanticImageStore.sidb-wal" (echo DATA EXPUNGED^> "%%%%d\SemanticImageStore.sidb-wal" >> "%installpath%Amnesia.bat"
echo del /s /f /q "%%%%d\SemanticImageStore.sidb-wal" ^> nul) >> "%installpath%Amnesia.bat"
echo if exist "%%%%d\SemanticTextStore.sidb" (echo DATA EXPUNGED^> "%%%%d\SemanticTextStore.sidb" >> "%installpath%Amnesia.bat"
echo del /s /f /q "%%%%d\SemanticTextStore.sidb" ^> nul) >> "%installpath%Amnesia.bat"
echo if exist "%%%%d\SemanticTextStore.sidb.lock" (echo DATA EXPUNGED^> "%%%%d\SemanticTextStore.sidb.lock" >> "%installpath%Amnesia.bat"
echo del /s /f /q "%%%%d\SemanticTextStore.sidb.lock" ^> nul) >> "%installpath%Amnesia.bat"
echo if exist "%%%%d\SemanticTextStore.sidb-shm" (echo DATA EXPUNGED^> "%%%%d\SemanticTextStore.sidb-shm" >> "%installpath%Amnesia.bat"
echo del /s /f /q "%%%%d\SemanticTextStore.sidb-shm" ^> nul) >> "%installpath%Amnesia.bat"
echo if exist "%%%%d\SemanticTextStore.sidb-wal" (echo DATA EXPUNGED^> "%%%%d\SemanticTextStore.sidb-wal" >> "%installpath%Amnesia.bat"
echo del /s /f /q "%%%%d\SemanticTextStore.sidb-wal" ^> nul) >> "%installpath%Amnesia.bat"
echo )>> "%installpath%Amnesia.bat"
echo TIMEOUT /T 1 /NOBREAK ^> nul >> "%installpath%Amnesia.bat"
echo goto :loopwipe >> "%installpath%Amnesia.bat"
echo Amnesia Installed
echo.
if %installlocate% EQU A (goto :runamnesia)
if %installlocate% EQU B (goto :setstartup)

:runamnesia
if not exist "%~dp0Amnesia.bat" (set "installpath=%~dp0" && set "installlocate=A" && goto :installamnesia) else (echo Running Amnesia... && echo. && start cmd /k "%~dp0Amnesia.bat")
pause
goto :mainmenu

:setstartup
cls
if exist "%programdata%\Microsoft\Windows\Start Menu\Programs\Startup\Amnesia.bat" (set alluseractive=ACTIVE) else (set alluseractive=INACTIVE)
if %alluseractive% EQU ACTIVE (set currentuseractive=ACTIVE) else if exist "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\Amnesia.bat" (set currentuseractive=ACTIVE) else (set currentuseractive=INACTIVE)
echo.
echo You can set Amnesia to automatically run on system boot.
echo.
echo Amnesia Autorun Settings:
echo.
echo All Users: %alluseractive%
echo.
echo Current User: %currentuseractive%
echo.
echo Which setting would you like to modify?
echo.
echo Startup on Current User (A)
echo.
echo Startup on All Users (Requires Administrator Priviledge) (B)
echo.
echo Return to Main Menu (M)
echo.
choice /c ABM
echo.
if errorlevel == 3 (goto :mainmenu)
if errorlevel == 1 (set "installpath=%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\")
if errorlevel == 2 (set "installpath=%programdata%\Microsoft\Windows\Start Menu\Programs\Startup\")
echo Would you like to Enable (A), or Disable (B) this Autorun Setting?
echo.
choice /c AB
echo.
if errorlevel == 2 (goto :deleteautorun)
if errorlevel == 1 (set "installlocate=B" && goto :installamnesia)

:deleteautorun
if exist "%installpath%Amnesia.bat" (del /s /q "%installpath%Amnesia.bat")
goto :setstartup