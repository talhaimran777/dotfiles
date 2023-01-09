vim.cmd([[packadd packer.nvim]])

require("packer").startup(function()
  use("wbthomason/packer.nvim")
  use("folke/tokyonight.nvim")
  use("nvim-treesitter/nvim-treesitter", {
    run = ":TSUpdate"
  })
  use("junegunn/fzf")
  use("junegunn/fzf.vim")
  use("sbdchd/neoformat")
  use("numToStr/Comment.nvim")
  use("JoosepAlviste/nvim-ts-context-commentstring")
  use("TimUntersberger/neogit")
  use("nvim-lua/plenary.nvim")
  use('dyng/ctrlsf.vim')
  use('lukas-reineke/indent-blankline.nvim')
  use { 'romgrk/barbar.nvim', requires = { 'kyazdani42/nvim-web-devicons' } }
  use { "neoclide/coc.nvim", branch = "release" }
  use("lewis6991/gitsigns.nvim")
  use("honza/vim-snippets")
  use("mg979/vim-visual-multi")
  use("tpope/vim-fugitive")
  use { 'jiangmiao/auto-pairs' }
  use { 'tpope/vim-sleuth' }
  use { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' }
  use { 'ryanoasis/vim-devicons' }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons',
    },
    tag = 'nightly'
  }
  use { "alexghergh/nvim-tmux-navigation" }
  use {
    "rmagatti/auto-session",
    config = function()
      require("auto-session").setup {
        log_level = "error",
        auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
      }
    end
  }
  use("nvim-lualine/lualine.nvim")
end)
