vim.g.mapleader = " "
vim.g.AutoPairsShortcutToggle = '<C-p>'
vim.g.ctrlsf_position = "bottom"
vim.g.ctrlsf_auto_focus = {
  at = "start"
}
vim.g.ctrlsf_case_sensitive = 'yes'
-- vim.g.ctrlsf_populate_qflist = 1

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.clipboard = "unnamedplus"
vim.opt.mouse = "a"

vim.opt.updatetime = 0
vim.opt.signcolumn = "yes"
vim.opt.statusline = " %t - %y %= %l / %L"

vim.o.foldcolumn = '1'
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true
vim.opt.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]

vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
