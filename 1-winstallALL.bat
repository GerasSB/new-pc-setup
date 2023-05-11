@echo off
:: Essential
winget install --id=eloston.ungoogled-chromium -e
winget install --id=7zip.7zip -e
winget install --id=Notepad++.Notepad++ -e
winget install --id=File-New-Project.EarTrumpet -e
winget install --id=Discord.Discord -e
winget install --id=Audacity.Audacity -e
winget install --id=gerardog.gsudo -e
winget install --id=yt-dlp.yt-dlp -e
winget install --id=Syncplay.Syncplay -e
winget install --id=VentisMedia.MediaMonkey -e
winget install --id=qBittorrent.qBittorrent -e
winget install --id=Valve.Steam -e
winget install --id=Soulseek.SoulseekQt -e
winget install --id=voidtools.Everything -e
winget install --id=Flow-Launcher.Flow-Launcher -e

:: Dev
winget install --id=Microsoft.VisualStudioCode -e
winget install --id=Git.Git -e
winget install --id=GitHub.GitLFS -e
winget install --id=Python.Python.3.12 -e
winget install --id=AntibodySoftware.WizTree -e
winget install --id=Axosoft.GitKraken -e

:: Media
winget install --id=PeterPawlowski.foobar2000 -e
winget install --id=sylikc.JPEGView -e
winget install --id=Avidemux.Avidemux -e
winget install --id=DuongDieuPhap.ImageGlass -e
winget install --id=Mozilla.Thunderbird -e

:: Other
winget install --id=OBSProject.OBSStudio -e
winget install --id=GIMP.GIMP -e
winget install --id=BlenderFoundation.Blender -e

:: Powershell / Terminal Setup
winget install --id=junegunn.fzf -e
winget install --id=sharkdp.fd -e
winget install --id=Microsoft.PowerShell
winget install JanDeDobbeleer.OhMyPosh -s winget
winget install --id=DEVCOM.JetBrainsMonoNerdFont -v "2.3.3" -e
winget install --id=Microsoft.WindowsTerminal  -e
echo.
echo Done installing all programs. Make sure you set up Flow Launcher
echo to use Everything for search, then run "2-runPowerShell.bat"
pause