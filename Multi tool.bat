@echo off
color 04
title Multi-Tool Batch File

:: Welcome Screen
cls
echo ====================================
echo        Welcome to 971 Multi-Tool
echo ====================================
echo Hope you enjoy using this tool!
echo.
echo Press any key to continue...
pause >nul
goto MENU

:MENU
cls
echo ====================================
echo        Multi-Tool Batch Script
echo ====================================
echo 1. Download Apps
echo 2. Advanced System Tweaks
echo 3. Remove Applications
echo 4. Exit
echo ====================================
set /p option=Choose an option (1-4): 

if "%option%"=="1" goto DownloadApps
if "%option%"=="2" goto AdvancedTweaks
if "%option%"=="3" goto RemoveApps
if "%option%"=="4" goto Exit

:DownloadApps
cls
echo ====================================
echo         App Download Options
echo ====================================
echo 1. Download Google Chrome
echo 2. Download Discord
echo 3. Download Epic Games Launcher
echo 4. Download Steam
echo 5. Download NVIDIA GeForce Experience
echo 6. Download WinRAR
echo 7. Download OBS Studio (Windows 10)
echo 8. Download Razer Synapse 4
echo 9. Download DPCLAT (Latency Checker)
echo 10. Download Sordum Defender Control
echo 11. Download Sordum Update Blocker
echo 12. Download MSI Afterburner
echo 13. Download DirectX
echo 14. Download Visual C++ Redistributables (2015-2022)
echo 15. Custom Download (URL)
echo 16. Back to Menu
echo ====================================
set /p option=Choose an option (1-16):

if "%option%"=="1" goto DownloadChrome
if "%option%"=="2" goto DownloadDiscord
if "%option%"=="3" goto DownloadEpicGames
if "%option%"=="4" goto DownloadSteam
if "%option%"=="5" goto DownloadNVIDIA
if "%option%"=="6" goto DownloadWinRAR
if "%option%"=="7" goto DownloadOBS
if "%option%"=="8" goto DownloadRazer
if "%option%"=="9" goto DownloadDPCLAT
if "%option%"=="10" goto DownloadDefenderControl
if "%option%"=="11" goto DownloadUpdateBlocker
if "%option%"=="12" goto DownloadMsiAfterburner
if "%option%"=="13" goto DownloadDirectX
if "%option%"=="14" goto DownloadVisualCpp
if "%option%"=="15" goto CustomDownload
if "%option%"=="16" goto MENU

:DownloadChrome
echo Downloading Google Chrome...
start https://dl.google.com/chrome/install/standalone/ChromeStandaloneSetup.exe
goto DownloadApps

:DownloadDiscord
echo Downloading Discord...
start https://discord.com/api/download?platform=win
goto DownloadApps

:DownloadEpicGames
echo Downloading Epic Games Launcher...
start https://download.epicgames.com/Builds/Install/InstallEpicGamesLauncher.msi
goto DownloadApps

:DownloadSteam
echo Downloading Steam...
start https://steamcdn-a.akamaihd.net/client/installer/SteamSetup.exe
goto DownloadApps

:DownloadNVIDIA
echo Downloading NVIDIA APP...
start https://uk.download.nvidia.com/nvapp/client/11.0.2.312/NVIDIA_app_v11.0.2.312.exe
goto DownloadApps

:DownloadWinRAR
echo Downloading WinRAR...
start https://www.rarlab.com/rar/winrar-x64-710b3.exe
goto DownloadApps

:DownloadOBS
echo Downloading OBS Studio for Windows 10...
start https://obsproject.com/download
goto DownloadApps

:DownloadRazer
echo Downloading Razer Synapse 4...
start https://dl.razerzone.com/drivers/Synapse4/RazerSynapseInstaller.exe?_gl=1*opelvv*_gcl_au*MTQ4OTc3MDcxLjE3MzkxMjU1MTI.
goto DownloadApps

:DownloadDPCLAT
echo Downloading DPCLAT (Latency Checker)...
start https://softpedia-secure-download.com/dl/41d3df4f623533512dc8b1eb23704814/67a8f39b/100118586/software/system/info/dpclat.exe
goto DownloadApps

:DownloadDefenderControl
echo Downloading Sordum Defender Control...
start https://drive.usercontent.google.com/download?id=1jxmKjN820qP_cLZLgbeBi-aP5DUbROle&export=download&authuser=0&confirm=t&uuid=fdb7e410-1f6b-4bea-89da-ee8ebf37673b&at=AIrpjvPNIIy9c0ct0htQM15SfNwA%3A1739125693913
goto DownloadApps

:DownloadUpdateBlocker
echo Downloading Sordum Update Blocker...
start https://drive.usercontent.google.com/download?id=1N_XtcQHA6iSMC8YvL0_WIJ6n2AH0wePf&export=download&authuser=0
goto DownloadApps

:DownloadMsiAfterburner
echo Downloading MSI Afterburner...
start https://download.msi.com/uti_exe/vga/MSIAfterburnerSetup.zip
goto DownloadApps

:DownloadDirectX
echo Downloading DirectX...
start https://download.microsoft.com/download/1/7/1/1718CCC4-6315-4D8E-9543-8E28A4E18C4C/dxwebsetup.exe
goto DownloadApps

:DownloadVisualCpp
echo Downloading Visual C++ Redistributables (2015-2022)...
start https://aka.ms/vs/17/release/vc_redist.x64.exe
goto DownloadApps

:CustomDownload
cls
echo ====================================
echo        Custom Download
echo ====================================
set /p url=Enter the direct URL to download: 
echo Downloading from %url%...
start %url%
goto DownloadApps

:AdvancedTweaks
cls
echo ====================================
echo         Advanced System Tweaks
echo ====================================
echo 1. Reduce Keyboard Delay
echo 2. Mouse Tweaks
echo 3. Internet Tweaks
echo 4. Ping Tweaks
echo 5. GPU, CPU, and RAM Tweaks
echo 6. Create Quick Shortcut
echo 7. Clean Cache, Temp, and Prefetch Files
echo 8. Back to Menu
echo ====================================
set /p option=Choose an option (1-8):

if "%option%"=="1" goto KeyboardDelay
if "%option%"=="2" goto MouseTweaks
if "%option%"=="3" goto InternetTweaks
if "%option%"=="4" goto PingTweaks
if "%option%"=="5" goto GPUPCPUandRAM
if "%option%"=="6" goto CreateShortcut
if "%option%"=="7" goto CleanCacheTempPrefetch
if "%option%"=="8" goto MENU

:KeyboardDelay
cls
echo Reducing Keyboard Delay...
reg add "HKCU\Control Panel\Keyboard" /v "InitialKeyboardIndicators" /t REG_SZ /d "2" /f
goto AdvancedTweaks

:MouseTweaks
cls
echo Applying Mouse Tweaks...
reg add "HKCU\Control Panel\Mouse" /v "MouseSpeed" /t REG_SZ /d "2" /f
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold1" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold2" /t REG_SZ /d "0" /f
goto AdvancedTweaks

:InternetTweaks
cls
echo Applying Internet Tweaks...
netsh interface tcp set global autotuninglevel=normal
netsh interface tcp set global congestionprovider=ctcp
goto AdvancedTweaks

:PingTweaks
cls
echo Applying Ping Tweaks...
reg add "HKCU\Control Panel\Desktop" /v "TcpAckFrequency" /t REG_DWORD /d "1" /f
reg add "HKCU\Control Panel\Desktop" /v "TCPNoDelay" /t REG_DWORD /d "1" /f
goto AdvancedTweaks

:GPUPCPUandRAM
cls
echo Applying GPU, CPU, and RAM Tweaks...
start /min msconfig
echo For GPU and CPU settings, please manually adjust in Task Manager and BIOS.
goto AdvancedTweaks

:CreateShortcut
cls
echo ====================================
echo        Create Quick Shortcut
echo ====================================
set /p shortcutName=Enter the name of the shortcut: 
set /p targetPath=Enter the target path (e.g., C:\Path\To\Program.exe): 
set /p saveLocation=Enter the save location (e.g., C:\Path\To\Save\Shortcut): 

echo Creating shortcut...
powershell -Command "$WshShell = New-Object -ComObject WScript.Shell; $Shortcut = $WshShell.CreateShortcut('%saveLocation%\%shortcutName%.lnk'); $Shortcut.TargetPath = '%targetPath%'; $Shortcut.Save()"

echo Shortcut created successfully!
pause
goto AdvancedTweaks

:CleanCacheTempPrefetch
cls
echo ====================================
echo        Cleaning Cache, Temp, and Prefetch Files
echo ====================================
echo Cleaning temporary files...
rd /s /q %SystemRoot%\Temp
md %SystemRoot%\Temp

echo Cleaning cache files...
rd /s /q %LocalAppData%\Temp
md %LocalAppData%\Temp

echo Cleaning prefetch files...
del /q /f %SystemRoot%\Prefetch\*.*

echo Cleaning completed successfully!
pause
goto AdvancedTweaks

:RemoveApps
cls
echo ====================================
echo        Remove Built-In Windows Apps
echo ====================================
echo 1. Remove Microsoft Edge
echo 2. Remove Xbox
echo 3. Remove Mail & Calendar
echo 4. Remove OneNote
echo 5. Remove Groove Music
echo 6. Remove Calculator
echo 7. Remove Store
echo 8. Remove All Built-in Apps (Advanced)
echo 9. Back to Menu
echo ====================================
set /p option=Choose an option (1-9):

if "%option%"=="1" goto RemoveEdge
if "%option%"=="2" goto RemoveXbox
if "%option%"=="3" goto RemoveMail
if "%option%"=="4" goto RemoveOneNote
if "%option%"=="5" goto RemoveGrooveMusic
if "%option%"=="6" goto RemoveCalculator
if "%option%"=="7" goto RemoveStore
if "%option%"=="8" goto RemoveAllApps
if "%option%"=="9" goto MENU

:RemoveEdge
cls
echo Removing Microsoft Edge...
powershell -Command "Get-AppxPackage *Microsoft.MicrosoftEdge* | Remove-AppxPackage"
goto RemoveApps

:RemoveXbox
cls
echo Removing Xbox...
powershell -Command "Get-AppxPackage *Microsoft.XboxApp* | Remove-AppxPackage"
goto RemoveApps

:RemoveMail
cls
echo Removing Mail & Calendar...
powershell -Command "Get-AppxPackage *microsoft.windowscommunicationsapps* | Remove-AppxPackage"
goto RemoveApps

:RemoveOneNote
cls
echo Removing OneNote...
powershell -Command "Get-AppxPackage *Microsoft.OneNote* | Remove-AppxPackage"
goto RemoveApps

:RemoveGrooveMusic
cls
echo Removing Groove Music...
powershell -Command "Get-AppxPackage *Microsoft.ZuneMusic* | Remove-AppxPackage"
goto RemoveApps

:RemoveCalculator
cls
echo Removing Calculator...
powershell -Command "Get-AppxPackage *Microsoft.WindowsCalculator* | Remove-AppxPackage"
goto RemoveApps

:RemoveStore
cls
echo Removing Microsoft Store...
powershell -Command "Get-AppxPackage *Microsoft.WindowsStore* | Remove-AppxPackage"
goto RemoveApps

:RemoveAllApps
cls
echo Removing All Built-in Windows Apps...
echo This may take a few moments...
powershell -Command "Get-AppxPackage | Remove-AppxPackage"
goto RemoveApps

:Exit
cls
echo Exiting...
exit