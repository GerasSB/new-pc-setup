Initial setup for a new PC

# Usage

1. Run `1-winstallALL.bat` to install all software found inside the file.
1. Run `2-runPowershell.bat` to setup the Windows Terminal.
1. Manually change the terminal settings to:
    * Theme to `One Half Dark`
    * Font to `JetBrains NF`
    * Acrylic `On`
    * Opacity to `75%`

# Extra features
* Adds `fzf_dir`, a command to only search directories with fzf and open them
when selected.
* Adds `0x0_up`, a command to upload a file (first parameter) to [0x0.st](https://0x0.st), a free, temporary host for files up to 512 MB.
    * How long files are stored for depends on file size. To see for how long
      the files will be up for, go
      [here](https://www.wolframalpha.com/input?i=30+%2B+%28-365+%2B+30%29+*+pow%28%28x%2F512+-+1%29%2C+3%29+where+x+%3D+30)
      and replace `x = 30` for the size of your file in megabytes (also set
      result to decimal).