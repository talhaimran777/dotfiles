local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
	use { 'wbthomason/packer.nvim' }
	use { 'mfussenegger/nvim-jdtls' }
	-- use { 'github/copilot.vim' }
	use { 'jiangmiao/auto-pairs' }
	use { 'ton/vim-bufsurf' }
	use { 'kyazdani42/nvim-web-devicons' }
	use { 'folke/tokyonight.nvim' }
	use { 'junegunn/fzf' }
	use { 'junegunn/fzf.vim' }
	use { 'NeogitOrg/neogit' }
	use { 'nvim-lua/plenary.nvim' }
	use { 'ThePrimeagen/harpoon' }
	use { 'dyng/ctrlsf.vim' }
	use { 'lukas-reineke/indent-blankline.nvim' }
	use { 'lewis6991/gitsigns.nvim' }
	use { 'honza/vim-snippets' }
	use { 'mg979/vim-visual-multi' }
	use { 'tpope/vim-fugitive' }
	use { 'tpope/vim-surround' }
	use { 'tpope/vim-sleuth' }
	use { 'ryanoasis/vim-devicons' }
	use { 'alexghergh/nvim-tmux-navigation' }
	use { 'rmagatti/auto-session' }
	use { 'numToStr/Comment.nvim' }
	use {
		"williamboman/mason.nvim",
		run = ":MasonUpdate"
	}

	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons',
		},
	}

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			{ 'neovim/nvim-lspconfig' },
			{ 'williamboman/mason.nvim' },
			{'williamboman/mason-lspconfig.nvim'},
			{ 'hrsh7th/nvim-cmp' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'L3MON4D3/LuaSnip' },
			{ 'hrsh7th/cmp-buffer' },
			{ 'hrsh7th/cmp-path' },
			{ 'saadparwaiz1/cmp_luasnip' },
			{ 'rafamadriz/friendly-snippets' },
		}
	}

	use {
		'nvim-treesitter/nvim-treesitter',
		run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
			ts_update()
		end,
		requires = {
			{ 'JoosepAlviste/nvim-ts-context-commentstring' }
		}
	}

	use {
		'nvim-treesitter/nvim-treesitter-textobjects',
		requires = {
			{ 'nvim-treesitter/nvim-treesitter' }
		}
	}

	use { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' }

	if packer_bootstrap then
		require('packer').sync()
	end
end)
