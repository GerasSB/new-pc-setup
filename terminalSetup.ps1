New-Item -Path $PROFILE -Type File -Force
"oh-my-posh init pwsh | Invoke-Expression" | Out-File $PROFILE
. $PROFILE
Get-PoshThemes
'oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\amro.omp.json" | Invoke-Expression' | Out-File $PROFILE
. $PROFILE
Install-Module -Name Terminal-Icons -Repository PSGallery -Force
PowerShellGet\Install-Module posh-git -Scope CurrentUser -Force
Add-Content $PROFILE "Import-Module -Name Terminal-Icons"
echo Creating 0x0_up alias...
Add-Content $PROFILE "Import-Module posh-git"
Add-Content $PROFILE 'function 0x0_up { Param($f) curl -F "file=@$f" https://0x0.st }'
echo Creating fzf_dir alias...
Add-Content $PROFILE 'function fzf_dir { Param($dir=".") fd $dir -t d -H -I| fzf | ii }'
. $PROFILE
clear
echo "All that's left is setting up the JetBrains font in the Windows Terminal,"
echo "changing the theme to One Half Dark, and adjusting opacity"
cmd /c 'pause'
wt