vim.cmd 'syntax on'
vim.cmd 'filetype plugin indent on'
-- 不显示欢迎界面
vim.opt.shortmess = 'atI'
-- 终端颜色
vim.opt.termguicolors = true
-- 显示行号
vim.opt.number = true
-- 显示光标所在行
vim.opt.cursorline = true
-- 显示标尺
vim.opt.ruler = true
-- 禁用兼容模式
vim.opt.compatible = false
-- 自动保存
vim.opt.autowrite = true
-- 不生成备份文件
vim.opt.backup = false
vim.opt.writebackup = false
-- 不生成交换文件
vim.opt.swapfile = false
-- 共享系统剪切板
vim.opt.clipboard:append({'unnamed'})
-- 缩进相关
vim.opt.shiftround = true
vim.opt.autoindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
-- 搜索动态高亮
vim.opt.incsearch = true
vim.opt.ignorecase = true
-- 字体
vim.opt.guifont='JetBrainsMono Nerd Font Mono:h14'