vim.api.nvim_create_autocmd({ 'BufEnter', 'BufAdd', 'BufNew', 'BufNewFile', 'BufWinEnter' }, {
	group = vim.api.nvim_create_augroup('TS_FOLD_WORKAROUND', {}),
	callback = function()
		vim.opt.foldmethod = 'expr'
		vim.opt.foldexpr   = 'nvim_treesitter#foldexpr()'
	end
})

-- use clang compiler (Win10 users should install llvm first, via `choco install llvm`)
local os_name = vim.loop.os_uname().sysname
if os_name == 'Windows_NT' then
	require'nvim-treesitter.install'.compilers = {'clang'}
end

require'nvim-treesitter.configs'.setup {
	ensure_installed = { "c", "lua" },
	sync_install = false,
	auto_install = true,
	highlight = {
	  enable = true,
	  additional_vim_regex_highlighting = false
	}
  }