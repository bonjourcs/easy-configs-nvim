# 先决条件

- Git 
- NeoVim 
- Bash/PowerShell
- Nerd Font* [JetbrainsMono Nerd Font](https://www.nerdfonts.com/font-downloads)

# 使用

## 1. 下载配置文件

### Linux 

启动终端，执行如下命令：

```shell
bash -c "$(wget -O- https://raw.githubusercontent.com/bonjourcs/easy-configs-nvim/main/install.sh)"
```

### Windows

启动 PowerShell 窗口，执行如下命令：

```shell
wget -O- https://raw.githubusercontent.com/bonjourcs/easy-configs-nvim/main/install.sh | pwsh
```

## 2. 安装插件

启动 NeoVim，执行如下命令：

```shell
:PackerSync
```

安装过程，可能会有错误提示，按 Enter 跳过，待所有插件安装完成，重新打开 NeoVim 即可。