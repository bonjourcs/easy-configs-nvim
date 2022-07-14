require('lualine').setup({
	options = {
		icon_enabled = true,
		theme = 'auto',
		section_separators = '',
		component_separators = ''
	},
	sections = {
		lualine_a = {'mode'},
		lualine_b = {'branch', 'diff', 'diagnostics'},
		lualine_c = {'file'},
		lualine_x = {'encoding', 'fileformat', 'filetype'},
		lualine_y = {'progress'},
		lualine_z = {'location'}
	}
})