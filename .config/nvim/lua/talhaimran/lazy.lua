local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

-- example using a list of specs with the default options
vim.g.mapleader = ' ' -- make sure to set `mapleader` before lazy so your mappings are correct

require('lazy').setup({
  'ton/vim-bufsurf',
  'godlygeek/tabular',
  'Mofiqul/vscode.nvim',
  'ellisonleao/gruvbox.nvim',
  'kyazdani42/nvim-web-devicons',
  'folke/tokyonight.nvim',
  'junegunn/fzf',
  'junegunn/fzf.vim',
  'numToStr/Comment.nvim',
  'JoosepAlviste/nvim-ts-context-commentstring',
  'TimUntersberger/neogit',
  'nvim-lua/plenary.nvim',
  'dyng/ctrlsf.vim',
  'lukas-reineke/indent-blankline.nvim',
  'lewis6991/gitsigns.nvim',
  'honza/vim-snippets',
  'mg979/vim-visual-multi',
  'tpope/vim-fugitive',
  'jiangmiao/auto-pairs',
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
  { 'neoclide/coc.nvim',       branch = 'release' },
  {
    'rmagatti/auto-session',
    config = function()
      require('auto-session').setup {
        log_level = 'error',
        auto_session_suppress_dirs = { '~/', '~/Projects', '~/Downloads', '/' },
      }
    end
  },
  { 'akinsho/toggleterm.nvim', version = "*",     config = true }
})
