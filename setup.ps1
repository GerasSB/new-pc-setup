# Essential
winget install --id=Alex313031.Thorium  -e
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
winget install --id=Rclone.Rclone  -e
winget install --id=AutoHotkey.AutoHotkey  -e
winget install --id=AcroSoftware.CutePDFWriter  -e
winget install --id=Chocolatey.Chocolatey  -e
winget install --id=AppWork.JDownloader  -e
winget install --id=TheDocumentFoundation.LibreOffice  -e
winget install --id=Mozilla.Firefox  -e
winget install --id=Telegram.TelegramDesktop  -e

# Dev
winget install --id=Microsoft.VisualStudioCode -e
winget install --id=Git.Git -e
winget install --id=Python.Python.3.12 -e
winget install --id=AntibodySoftware.WizTree -e
winget install --id=Axosoft.GitKraken -e

# Media
winget install --id=PeterPawlowski.foobar2000 -e
winget install --id=sylikc.JPEGView -e
winget install --id=Avidemux.Avidemux -e
winget install --id=DuongDieuPhap.ImageGlass -e
winget install --id=Mozilla.Thunderbird -e
winget install --id=Aegisub.Aegisub  -e
winget install --id=Stremio.Stremio  -e
winget install --id=SumatraPDF.SumatraPDF  -e
winget install --id=calibre.calibre  -e
winget install --id=ImageMagick.ImageMagick  -e
winget install --id=VideoLAN.VLC  -e

# Other
winget install --id=OBSProject.OBSStudio -e
winget install --id=GIMP.GIMP -e
winget install --id=BlenderFoundation.Blender -e
winget install --id=AirExplorer.AirExplorer  -e
winget install --id=Anki.Anki  -e
winget install --id=CPUID.HWMonitor  -e
winget install --id=DWANGO.OpenToonz.Nightly  -e
winget install --id=Proton.ProtonVPN  -e
winget install --id=Obsidian.Obsidian  -e

# Powershell / Terminal Setup
winget install --id=junegunn.fzf -e
winget install --id=sharkdp.fd -e
winget install --id=Microsoft.PowerShell
winget install JanDeDobbeleer.OhMyPosh -s winget
winget install --id=DEVCOM.JetBrainsMonoNerdFont -v "2.3.3" -e
winget install --id=Microsoft.WindowsTerminal  -e

# Reload path
function Update-Path {
    Write-Host "Reloading Path..." -ForegroundColor Green
    $env:Path = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path", "User")
}


### MPV Setup
Update-Path
choco install mpv -y
Clear-Host
Write-Host "All programs installed!"
Write-Host "Setting up MPV..." -ForegroundColor Green
Update-Path
mpv.exe
Start-Sleep -Seconds 5
Stop-Process -Name mpv
$path = "$env:APPDATA\mpv\input.conf"
$lines = "WHEEL_UP seek 10`nWHEEL_DOWN seek -10"

# Check if the file exists
if (Test-Path $path) {
    # Append lines if they are not already present
    if (-not (Select-String -Path $path -Pattern "WHEEL_UP seek 10" -SimpleMatch) -or 
        -not (Select-String -Path $path -Pattern "WHEEL_DOWN seek -10" -SimpleMatch)) {
        Add-Content -Path $path -Value "`n$lines"
    }
} else {
    # Create file and add lines
    Set-Content -Path $path -Value $lines
}

# Done
Clear-Host
Write-Host "All installs done! Make sure you set up Flow Launcher" -ForegroundColor Green
Write-Host "to use Everything for search." -ForegroundColor Green
Start-Process pwsh
Start-Sleep -Seconds 5
Stop-Process -Name pwsh
Start-Process pwsh -ArgumentList "-NoExit", "-Command irm 'https://raw.githubusercontent.com/GerasSB/new-pc-setup/refs/heads/main/terminalSetup.ps1' | iex"