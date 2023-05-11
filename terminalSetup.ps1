New-Item -Path $PROFILE -Type File -Force
"oh-my-posh init pwsh | Invoke-Expression" | Out-File $PROFILE
. $PROFILE
Get-PoshThemes
'oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\amro.omp.json" | Invoke-Expression' | Out-File $PROFILE
. $PROFILE
Install-Module -Name Terminal-Icons -Repository PSGallery -Force
PowerShellGet\Install-Module posh-git -Scope CurrentUser -Force
Add-Content $PROFILE "Import-Module -Name Terminal-Icons"
Add-Content $PROFILE "Import-Module posh-git"
clear
Write-Host "Creating 0x0_up alias..." -ForegroundColor Green
Add-Content $PROFILE 'function 0x0_up { Param($f) curl -F "file=@$f" https://0x0.st }'
Write-Host "Creating fzf_dir alias..." -ForegroundColor Green
Add-Content $PROFILE 'function fzf_dir { Param($dir=".") fd $dir -t d -H -I| fzf | ii }'
Write-Host "Creating fzf_cd alias..." -ForegroundColor Green
Add-Content $PROFILE 'function fzf_cd { Param($dir=".") fd $dir -t d -H -I| fzf | cd }'
Write-Host "Creating fzf_file alias..." -ForegroundColor Green
Add-Content $PROFILE 'function fzf_file { Param($dir=".") fd $dir -t f -H -I| fzf | ii }'
. $PROFILE
echo "`n"
echo "Done! All that's left is setting up the JetBrains font in the Windows"
echo "Terminal, changing the theme to One Half Dark, and adjusting opacity to 75"
cmd /c 'pause'
wt