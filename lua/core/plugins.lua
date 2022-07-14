-- packer 配置
vim.cmd 'packadd packer.nvim'

return require('packer').startup(
	function()
		-- plugin installer
		use 'wbthomason/packer.nvim'
		use 'lewis6991/impatient.nvim'
		-- file tree list
		use {
			'kyazdani42/nvim-tree.lua',
			requires = {
				'kyazdani42/nvim-web-devicons',
			},
			tag = 'nightly'
		}
		-- parser highlighting
		use {
			'nvim-treesitter/nvim-treesitter',
			run = 'TSUpdate'
		}
		-- status bar
		use {
			'nvim-lualine/lualine.nvim',
			requires = {
				'kyazdani42/nvim-web-devicons',
				opt = true
			}
		}
		-- theme
		use 'joshdick/onedark.vim'
		-- ide-like tabs
		use {
			'akinsho/bufferline.nvim',
			requires = {
				'kyazdani42/nvim-web-devicons',
				opt = true
			}
		}
		-- fuzzy finder
		use {
			'nvim-telescope/telescope.nvim',
			requires = {
				'nvim-lua/plenary.nvim'
			}
		}
		-- lsp supprot
		use 'williamboman/nvim-lsp-installer'
		use 'neovim/nvim-lspconfig'
		use 'p00f/clangd_extensions.nvim'
		-- autocomplete coc
		-- use {
		-- 	'neoclide/coc.nvim',
		-- 	branch = 'release'
		-- }
		-- autocomplete 
		use 'hrsh7th/cmp-nvim-lsp'
		use 'hrsh7th/cmp-buffer'
		use 'hrsh7th/cmp-path'
		use 'hrsh7th/cmp-cmdline'
		use 'hrsh7th/nvim-cmp'
		use 'hrsh7th/cmp-vsnip'
		use 'hrsh7th/vim-vsnip'
	end
)
