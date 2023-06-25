-- sumneko_lua config
require('lspconfig')['lua_ls'].setup({
	settings = {
		runtime = {
			version = 'LuaJIT'
		},
		diagnositics = {
			globals = { 'vim' }
		},
		worksapce = {
			library = vim.api.nvim_get_runtime_file('', true)
		},
		telemetry = {
			enable = false
		}
	}
})