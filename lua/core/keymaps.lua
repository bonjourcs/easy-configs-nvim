-- 设置leader键
vim.g.mapleader = ';'
vim.g.maplocalleader = ';'
-- 设置快捷键
local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}
-- NvimTree
map('n', '<A-1>', ':NvimTreeToggle<CR>', opts)
map('n', '<leader>tt', ':NvimTreeToggle<CR>', opts)
map('n', '<A-t>', ':NvimTreeFocus<CR>', opts)