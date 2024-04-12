$neovimFolder = "$env:localappdata\nvim"

if (!Test-Path -PathType Container $neovimFolder) {
    New-Item $neovimFolder -ItemType "directory"
}
Copy-Item -Recurse -Force nvim $neovimFolder
