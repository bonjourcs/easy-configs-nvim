require('clangd_extensions').setup({
	extensions = {
		autoSetHints = true,
		inlay_hints = {
			only_current_line = false,
			only_current_line_autocmd = 'CursorHold',
			show_parameter_hint = true,
			parameter_hints_prefix = '<- ',
			other_hints_prefix = '=> ',
			max_len_align = false,
			right_align_padding = 7,
			highlight = 'Comment',
			priority = 100
		}
	}
})