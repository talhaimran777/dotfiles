local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end

vim.opt.rtp:prepend(lazypath)

-- example using a list of specs with the default options
vim.g.mapleader = ' ' -- make sure to set `mapleader` before lazy so your mappings are correct

require('lazy').setup({
  'github/copilot.vim',
  'jiangmiao/auto-pairs',
  'ton/vim-bufsurf',
  'kyazdani42/nvim-web-devicons',
  'folke/tokyonight.nvim',
  'junegunn/fzf',
  'junegunn/fzf.vim',
  'numToStr/Comment.nvim',
  'JoosepAlviste/nvim-ts-context-commentstring',
  'TimUntersberger/neogit',
  'nvim-lua/plenary.nvim',
  'ThePrimeagen/harpoon',
  'dyng/ctrlsf.vim',
  'lukas-reineke/indent-blankline.nvim',
  'lewis6991/gitsigns.nvim',
  'honza/vim-snippets',
  'mg979/vim-visual-multi',
  'tpope/vim-fugitive',
  'tpope/vim-surround',
  'tpope/vim-sleuth',
  'ryanoasis/vim-devicons',
  'alexghergh/nvim-tmux-navigation',
  {
    'nvim-treesitter/nvim-treesitter',
    build = function()
      pcall(require('nvim-treesitter.install').update { with_sync = true })
    end
  },
  {
    'nvim-treesitter/nvim-treesitter-textobjects',
    dependecies = {
      'nvim-treesitter'
    },
  },
  {
    'kyazdani42/nvim-tree.lua',
    dependecies = {
      'kyazdani42/nvim-web-devicons',
    },
    version = 'nightly'
  },
  {
    'kevinhwang91/nvim-ufo',
    dependencies = {
      'kevinhwang91/promise-async'
    }
  },
  -- NOTE: This is where your plugins related to LSP can be installed.
  --  The configuration is done below. Search for lspconfig to find it below.
  {
    -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
    dependencies = {
      -- Automatically install LSPs to stdpath for neovim
      { 'williamboman/mason.nvim', config = true },
      'williamboman/mason-lspconfig.nvim',

      -- Useful status updates for LSP
      -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
      { 'j-hui/fidget.nvim', tag = 'legacy', opts = {} },

      -- Additional lua configuration, makes nvim stuff amazing!
      'folke/neodev.nvim',
    },
  },

  {
    -- Autocompletion
    'hrsh7th/nvim-cmp',
    dependencies = {
      -- Snippet Engine & its associated nvim-cmp source
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',

      -- Adds LSP completion capabilities
      'hrsh7th/cmp-nvim-lsp',

      -- Adds a number of user-friendly snippets
      'rafamadriz/friendly-snippets',
    },
  },
  {
    'rmagatti/auto-session',
    config = function()
      require('auto-session').setup {
        log_level = 'error',
        auto_session_suppress_dirs = { '~/', '~/Projects', '~/Downloads', '/' },
      }
    end
  },
  { 'akinsho/toggleterm.nvim', version = "*",     config = true },
  'folke/neodev.nvim',
})
