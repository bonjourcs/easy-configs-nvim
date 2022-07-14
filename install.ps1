$NVIM_GIT_REPOSITORY = "https://github.com/bonjourcs/easy-configs-nvim.git"
$PACKER_GIT_REPOSITORY = "https://github.com/wbthomason/packer.nvim"
$PCAKER_DIR = "$env:localappdata\nvim-data\site\pack\packer\start\packer.nvim"

$date = "{0:yyyyMMddHHmmss}" -f (Get-Date)

if (Test-Path "$env:localappdata\nvim") {
	Rename-Item "$env:localappdata\nvim" "$env:localappdata\nvim.$date"
}

git clone "$NVIM_GIT_REPOSITORY" "$env:localappdata\nvim"

git clone "$PACKER_GIT_REPOSITORY" "$PACKER_GIT_REPOSITORY"

echo "DONE! Enjoy your nvim!"
