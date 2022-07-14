# 先决条件

- Git 
- NeoVim 
- Shell/PowerShell
- Nerd Font* [JetbrainsMono Nerd Font](https://www.nerdfonts.com/font-downloads)

# 使用

## 1. 克隆项目

- Linux 系统：

```shell
git clone https://github.com/bonjourcs/easy-configs-nvim.git nvim && mv nvim ~/.config/
```
- Windows 系统（使用 PowerShell）:

```shell
git clone https://github.com/bonjourcs/easy-configs-nvim.git && mv nvim "$env:LOCALAPPDATA\"
```

## 2. 安装 Packer

- Linux 系统：

```shell
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

- Windows 系统（使用 PowerShell）:

```shell
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
```

## 3. 安装插件

打开 NeoVim，在 Normal 模式下输入:

```shell
:PackerSync
```

Enjoy it!

# 问题列表

## Nvim-Treesitter 提示 `*.so is not valid WIN32 application`

1. 安装 LLVM

以 Chocolatey 为例：

```shell
choco install llvm
```
2. 指定 clang 为 Nvim-Treesitter 的编译器

在配置文件里加上如下配置：
```lua
require'nvim-tresitter.install'.compilers = {'clang'}
```