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
  'kyazdani42/nvim-web-devicons',
  'folke/tokyonight.nvim',
  'junegunn/fzf',
  'junegunn/fzf.vim',
  'sbdchd/neoformat',
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
  'nvim-lualine/lualine.nvim',
  {
    'abecodes/tabout.nvim',
    after = {
      'coc'
    },
    dependecies = {
      'nvim-treesitter'
    },
    config = function()
      require('tabout').setup {
        tabkey = '<A-o>', -- key to trigger tabout, set to an empty string to disable
        backwards_tabkey = '<A-i>', -- key to trigger backwards tabout, set to an empty string to disable
        act_as_tab = true, -- shift content if tab out is not possible
        act_as_shift_tab = false, -- reverse shift content if tab out is not possible (if your keyboard/terminal supports <S-Tab>)
        default_tab = '<C-t>', -- shift default action (only at the beginning of a line, otherwise <TAB> is used)
        default_shift_tab = '<C-d>', -- reverse shift default action,
        enable_backwards = true, -- well ...
        completion = true, -- if the tabkey is used in a completion pum
        tabouts = {
          { open = "'", close = "'" },
          { open = '"', close = '"' },
          { open = '`', close = '`' },
          { open = '(', close = ')' },
          { open = '[', close = ']' },
          { open = '{', close = '}' },
          { open = '<', close = '>' }
        },
        ignore_beginning = true, --[[ if the cursor is at the beginning of a filled element it will rather tab out than shift the content ]]
        exclude = {} -- tabout will ignore these filetypes
      }
    end
  },
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
    'romgrk/barbar.nvim',
    dependecies = {
      'kyazdani42/nvim-web-devicons',
    }
  },
  {
    'kevinhwang91/nvim-ufo',
    dependencies = {
      'kevinhwang91/promise-async'
    }
  },
  { 'neoclide/coc.nvim', branch = 'release' },
  {
    'rmagatti/auto-session',
    config = function()
      require('auto-session').setup {
        log_level = 'error',
        auto_session_suppress_dirs = { '~/', '~/Projects', '~/Downloads', '/' },
      }
    end
  }
})
