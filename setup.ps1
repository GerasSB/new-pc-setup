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
Invoke-Command { & "powershell.exe" } -NoNewScope # PowerShell 5 refresh
Start-Process pwsh -ArgumentList "-NoExit", "-Command irm 'https://raw.githubusercontent.com/GerasSB/new-pc-setup/refs/heads/main/terminalSetup.ps1' | iex"