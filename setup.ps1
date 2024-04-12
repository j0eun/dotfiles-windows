if (!Test-Path -PathType Container $neovimPath) {
    New-Item -Path $env:localappdata -Name "nvim" -ItemType "directory"
}
Copy-Item -Recurse -Force nvim "$env:localappdata\nvim"
