$host.ui.RawUI.WindowTitle="Amnesia Installation Manager"
for ($mainmenuloop="null"; $mainmenuloop -ne "yes") {
$wrapperop=$null;
$writescript=$false;
cls;
write-host "`n";
write-host "Welcome to HTX Venom's Amnesia, Windows Recall Disabler Tool";
write-host "`n";
write-host "What would you like to do?";
write-host "`n";
write-host "Install\Run Amnesia (A)";
write-host "`n";
write-host "Make Amnesia Run on Startup (B)";
write-host "`n";
write-host "Exit (X)";
write-host "`n";
for ($successfulexecute="null"; $successfulexecute -ne "yes") {$mainmenuop=read-host "A/B/X"; if ($mainmenuop -eq "A" -or $mainmenuop -eq "B" -or $mainmenuop -eq "X") {$successfulexecute="yes";};};
if ($mainmenuop -eq "X") {exit}
elseif ($mainmenuop -eq "A") {$wrapperop="WRITE"; $writescript=$true;}
elseif ($mainmenuop -eq "B") {
cls;
if (test-path -Path "$($Env:programdata)\Microsoft\Windows\Start Menu\Programs\Startup\StartAmnesiaPS.bat") {$alluseractive="ACTIVE";} else {$alluseractive="INACTIVE";};
if ($alluseractive -eq "ACTIVE") {$currentuseractive="ACTIVE";} elseif (test-path -Path "$($Env:appdata)\Microsoft\Windows\Start Menu\Programs\Startup\StartAmnesiaPS.bat") {$currentuseractive="ACTIVE";} else {$currentuseractive="INACTIVE";};
write-host "`n";
write-host "You can set Amnesia to automatically run on system boot.";
write-host "`n";
write-host "Amnesia Autorun Settings:";
write-host "";
write-host "All Users: $($alluseractive)";
write-host "";
write-host "Current User: $($currentuseractive)";
write-host "`n";
write-host "Which setting would you like to modify?";
write-host "`n";
write-host "Startup on Current User (A)";
write-host "`n";
write-host "Startup on All Users (Requires Administrator Priviledge) (B)";
write-host "`n";
write-host "Return to Main Menu (M)";
write-host "`n";
for ($successfulexecute="null"; $successfulexecute -ne "yes") {$autorunop=read-host "A/B/M"; if ($autorunop -eq "A" -or $autorunop -eq "B" -or $autorunop -eq "M") {$successfulexecute="yes";};};
if ($autorunop -eq "M") {$wrapperop=$null; $writescript=$false;}
elseif ($autorunop -eq "A" -or $autorunop -eq "B") {
write-host "`n";
write-host "Would you like to Enable (A), or Disable (B) this Autorun Setting?";
write-host "`n";
for ($successfulexecute="null"; $successfulexecute -ne "yes") {$wrapperop=read-host "A/B"; if ($wrapperop -eq "A" -or $wrapperop -eq "B") {$successfulexecute="yes";};};
if ($wrapperop -eq "A") {$wrapperop="WRITE"; $writescript=$true;}
elseif ($wrapperop -eq "B") {$wrapperop="DELETE";};
};};
if ($writescript) {
write-host "`n";
write-host "Installing Amnesia...";
write-host "`n";
write "`$host.ui.RawUI.WindowTitle=`"Windows Recall Wiper Tool`"`nwhile (`$true) {`nif (get-childitem `"`$(`$Env:localappdata)\*\UKP\{*}`" -directory) {`$localappukp = get-childitem `"`$(`$Env:localappdata)\*\UKP\{*}`" -directory;};`nif (get-childitem `"`$(`$Env:appdata)\*\UKP\{*}`" -directory) {`$roamappukp = get-childitem `"`$(`$Env:appdata)\*\UKP\{*}`" -directory;};`n`$localappukp | ForEach-Object {`nif (test-path -path `"`$(`$_)\ImageStore`") {del `"`$(`$_)\ImageStore`" -Recurse -Force | out-null;};`nif (test-path -path `"`$(`$_)\ukg.db`") {del `"`$(`$_)\ukg.db`" -Recurse -Force | out-null;};`nif (test-path -path `"`$(`$_)\ukg.db-shm`") {del `"`$(`$_)\ukg.db-shm`" -Recurse -Force | out-null;};`nif (test-path -path `"`$(`$_)\ukg.db-wal`") {del `"`$(`$_)\ukg.db-wal`" -Recurse -Force | out-null;};`nif (test-path -path `"`$(`$_)\SemanticImageStore.sidb`") {del `"`$(`$_)\SemanticImageStore.sidb`" -Recurse -Force | out-null;};`nif (test-path -path `"`$(`$_)\SemanticImageStore.sidb.lock`") {del `"`$(`$_)\SemanticImageStore.sidb.lock`" -Recurse -Force | out-null;};`nif (test-path -path `"`$(`$_)\SemanticImageStore.sidb-shm`") {del `"`$(`$_)\SemanticImageStore.sidb-shm`" -Recurse -Force | out-null;};`nif (test-path -path `"`$(`$_)\SemanticImageStore.sidb-wal`") {del `"`$(`$_)\SemanticImageStore.sidb-wal`" -Recurse -Force | out-null;};`nif (test-path -path `"`$(`$_)\SemanticTextStore.sidb`") {del `"`$(`$_)\SemanticTextStore.sidb`" -Recurse -Force | out-null;};`nif (test-path -path `"`$(`$_)\SemanticTextStore.sidb.lock`") {del `"`$(`$_)\SemanticTextStore.sidb.lock`" -Recurse -Force | out-null;};`nif (test-path -path `"`$(`$_)\SemanticTextStore.sidb-shm`") {del `"`$(`$_)\SemanticTextStore.sidb-shm`" -Recurse -Force | out-null;};`nif (test-path -path `"`$(`$_)\SemanticTextStore.sidb-wal`") {del `"`$(`$_)\SemanticTextStore.sidb-wal`" -Recurse -Force | out-null;};`n};`n`$roamappukp | ForEach-Object {`nif (test-path -path `"`$(`$_)\ImageStore`") {del `"`$(`$_)\ImageStore`" -Recurse -Force | out-null;};`nif (test-path -path `"`$(`$_)\ukg.db`") {del `"`$(`$_)\ukg.db`" -Recurse -Force | out-null;};`nif (test-path -path `"`$(`$_)\ukg.db-shm`") {del `"`$(`$_)\ukg.db-shm`" -Recurse -Force | out-null;};`nif (test-path -path `"`$(`$_)\ukg.db-wal`") {del `"`$(`$_)\ukg.db-wal`" -Recurse -Force | out-null;};`nif (test-path -path `"`$(`$_)\SemanticImageStore.sidb`") {del `"`$(`$_)\SemanticImageStore.sidb`" -Recurse -Force | out-null;};`nif (test-path -path `"`$(`$_)\SemanticImageStore.sidb.lock`") {del `"`$(`$_)\SemanticImageStore.sidb.lock`" -Recurse -Force | out-null;};`nif (test-path -path `"`$(`$_)\SemanticImageStore.sidb-shm`") {del `"`$(`$_)\SemanticImageStore.sidb-shm`" -Recurse -Force | out-null;};`nif (test-path -path `"`$(`$_)\SemanticImageStore.sidb-wal`") {del `"`$(`$_)\SemanticImageStore.sidb-wal`" -Recurse -Force | out-null;};`nif (test-path -path `"`$(`$_)\SemanticTextStore.sidb`") {del `"`$(`$_)\SemanticTextStore.sidb`" -Recurse -Force | out-null;};`nif (test-path -path `"`$(`$_)\SemanticTextStore.sidb.lock`") {del `"`$(`$_)\SemanticTextStore.sidb.lock`" -Recurse -Force | out-null;};`nif (test-path -path `"`$(`$_)\SemanticTextStore.sidb-shm`") {del `"`$(`$_)\SemanticTextStore.sidb-shm`" -Recurse -Force | out-null;};`nif (test-path -path `"`$(`$_)\SemanticTextStore.sidb-wal`") {del `"`$(`$_)\SemanticTextStore.sidb-wal`" -Recurse -Force | out-null;};`n};`nSleep -Seconds 1;`n}" | out-file -FilePath "$($PSScriptRoot)\Amnesia.ps1" -Encoding utf8 -Force;
write-host "Amnesia Installed";
write-host "`n";
};
if ($wrapperop -eq "WRITE") {
if ($mainmenuop -eq "A") {$wrapwritepath="$($PSScriptRoot)\StartAmnesiaPS.bat";}
elseif ($mainmenuop -eq "B" -and $autorunop -eq "A") {$wrapwritepath="$($Env:appdata)\Microsoft\Windows\Start Menu\Programs\Startup\StartAmnesiaPS.bat";}
elseif ($mainmenuop -eq "B" -and $autorunop -eq "B") {$wrapwritepath="$($Env:programdata)\Microsoft\Windows\Start Menu\Programs\Startup\StartAmnesiaPS.bat";};
write "`n@echo off`nif exist `"$($PSScriptRoot)\Amnesia.ps1`" (powershell.exe -WindowStyle Hidden -ExecutionPolicy Bypass -File `"$($PSScriptRoot)\Amnesia.ps1`") else (echo. && echo ERROR: $($PSScriptRoot)\Amnesia.ps1 Not Found && echo. && pause)`nexit" | Out-File -FilePath $wrapwritepath -Encoding utf8 -Force;
write-host "`n";
write-host "Running Amnesia...";
write-host "`n";
start "$($wrapwritepath)";
pause;
}
elseif ($wrapperop -eq "DELETE") {
if ($autorunop -eq "A") {$wrapwritepath="$($Env:appdata)\Microsoft\Windows\Start Menu\Programs\Startup\StartAmnesiaPS.bat";}
elseif ($autorunop -eq "B") {$wrapwritepath="$($Env:programdata)\Microsoft\Windows\Start Menu\Programs\Startup\StartAmnesiaPS.bat";};
if (test-path -Path $wrapwritepath) {del "$($wrapwritepath)" -Force;};};
}
exit