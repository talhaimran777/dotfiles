-- Globals
vim.g.mapleader = " "
vim.g.ctrlsf_position = "bottom"
vim.g.AutoPairsShortcutToggle = '<C-p>'
vim.g.ctrlsf_auto_focus = {
  at = "start"
}

-- Options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.list = true
vim.opt.listchars:append("tab:> ")
vim.opt.swapfile = false
vim.opt.wrap = false

vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.updatetime = 0
vim.opt.colorcolumn = "80"

vim.opt.clipboard = "unnamedplus"
vim.opt.mouse = "a"

vim.opt.backup = false
vim.opt.writebackup = false

vim.opt.signcolumn = "yes"

vim.opt.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.opt.foldlevelstart = 99
vim.opt.foldenable = true
vim.opt.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
vim.opt.foldcolumn  = "1"
