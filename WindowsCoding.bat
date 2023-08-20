@echo off
if not "%1"=="am_admin" (
    powershell -Command "Start-Process -Verb RunAs -FilePath '%0' -ArgumentList 'am_admin'"
    exit /b)
winget install Mozilla.Firefox 
winget install spotify.spotify 
winget install discord.discord 
winget install JetBrains.Toolbox 
winget install jetbrains.pycharm.professional 
winget install Google.AndroidStudio 
winget install JetBrains.Rider 
winget install JetBrains.WebStorm 
winget install git.git 
winget install Chocolatey.Chocolatey 
winget install Oracle.VirtualBox 
winget install JetBrains.IntelliJIDEA.Ultimate
winget install Python.Python.3.11
winget install REALiX.HWiNFO
echo Anihilating Edge
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\EdgeUpdate" /v "DoNotUpdateToEdgeWithChromium" /d "0x0001" /f >nul 2>&1
taskkill /f /im Widgets.exe
rmdir /s /q C:\"Program Files (x86)"\Microsoft\EdgeCore
echo Deleting Edgefiles pt1 
rmdir /s /q C:\"Program Files (x86)"\Microsoft\EdgeWebView
echo Deleting Edgefiles pt2
echo Returning Win10 right click menu (a useful right click menu, this will request a restart on completion)
reg add "HKEY_CURRENT_USER\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f >nul 2>&1

echo Restarting
pause
shutdown.exe /r /t 00
