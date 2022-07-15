$NVIM_GIT_REPOSITORY = "https://github.com/bonjourcs/easy-configs-nvim.git"
$PACKER_GIT_REPOSITORY = "https://github.com/wbthomason/packer.nvim"
$PACKER_DIR = "$env:localappdata\nvim-data\site\pack\packer\start\packer.nvim"

$date = "{0:yyyyMMddHHmmss}" -f (Get-Date)

if (Test-Path "$env:localappdata\nvim") {
	Rename-Item "$env:localappdata\nvim" "$env:localappdata\nvim.$date"
}

git clone "$NVIM_GIT_REPOSITORY" "$env:localappdata\nvim"

# 只有packer文件夹不存在的时候才需要下载
if (-not (Test-Path "$PACKER_DIR")) {
	git clone "$PACKER_GIT_REPOSITORY" "$PACKER_DIR"
}

echo "DONE! Enjoy your nvim!"