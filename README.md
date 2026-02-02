Initial setup for a new PC

# Usage

1. Run in an Administrator Powershell window:

    ```ps1
    irm "https://raw.githubusercontent.com/GerasSB/new-pc-setup/refs/heads/main/setup.ps1" | iex
    ```

1. Set up _Flow Launcher_ to use _Everything_ as the search (under `Plugins >
   Explorer > General Settings`).
   * You should also set both of them to hide from the tray in their respective
     settings.
1. Manually change the terminal settings to:
    * Theme to `One Half Dark`
    * Font to `JetBrains NF`
    * Acrylic `On`
    * Opacity to `75%`

# Extra features
The `terminalSetup.ps1` script adds a few more things aside from just making
the terminal prettier: 
* Adds `fzf_dir`, a command to only search directories with fzf and open them
  in Windows Explorer.
* Adds `fzf_cd`, a command to search only directories with fzf and cd into them.
* Adds `fzf_file`, a command to search only files with fzf and open them in
  their default software when selected.
* Adds `0x0_up`, a command to upload a file (first parameter) to
  [0x0.st](https://0x0.st), a free, temporary host for files up to 512MB.
    * How long files are stored for depends on file size. To see for how long
      your file will be up for, go
      [here](https://www.wolframalpha.com/input?i=30+%2B+%28-365+%2B++30%29+*+pow%28%28x%2F512+-+1%29%2C+3%29+where+x+%3D+200)
      and replace `x = 200` for the size of your file in megabytes (also set
      result to decimal). The decimal result is how many days the file will be
      up for.
* Adds `md5`, a command to get the md5 hash of any file.
* Adds `compresstga`, a command that compresses TGA files in the current directory using ImageMagick.
* Adds `twitch`, a command that opens a twitch stream with streamlink plus an adblock addon.

# Known issues
* All the custom `fzf` commands have problems dealing with paths containing
  characters like accents and `ñ`.
    * This seems to be a problem with Powershell rather than the function
    itself, as using the function's commands in `cmd` doesn't produce this
    error.
* All `fzf` commands will hang until `fd` is able to recursively index all
  directories.
    * Not really a problem unless using `fzf_cd`, where you'd have to wait
    until indexing finishes before you can continue working.