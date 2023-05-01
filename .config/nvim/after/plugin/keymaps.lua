local Remap = require("talhaimran.keymap")
local nnoremap = Remap.nnoremap
local xnoremap = Remap.xnoremap
local vnoremap = Remap.vnoremap

-- Close Neovim
nnoremap("<A-w>", ":q!<CR>")

-- Close buffer
nnoremap("<A-c>", ":bdelete<CR>")

-- Resize buffers
nnoremap("<C-Left>", ":vertical resize -5<CR>")
nnoremap("<C-Right>", ":vertical resize +5<CR>")

-- Horizontal navigation
nnoremap("<C-]>", "zL")
nnoremap("<C-[>", "zH")

-- Remove & paste but still in register
xnoremap("<leader>p", "\"_dP")

-- Window navigation
nnoremap("<A-j>", "<C-w>j")
nnoremap("<A-k>", "<C-w>k")
nnoremap("<A-h>", "<C-w>h")
nnoremap("<A-l>", "<C-w>l")

-- FZF
nnoremap("<leader>fr", ":History<CR>")
nnoremap("<leader>ff", ":e %:h/<C-d>")
nnoremap("<A-p>", ":GFiles<CR>")
nnoremap("<A-g>", ":FZF<CR>")

-- Move text
vnoremap("<", "<gv")
vnoremap(">", ">gv")
xnoremap("J", ":move '>+1<CR>gv-gv")
xnoremap("K", ":move '<-2<CR>gv-gv")

-- Comments
nnoremap("gcc", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>")
xnoremap("gc", '<ESC><CMD>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>')

-- COC
nnoremap("<leader>t", ":call CocAction('diagnosticToggle')<CR>")
nnoremap("gr", ":call CocAction('jumpReferences')<CR>")

-- Ctrlsf
nnoremap("<A-s>", ":CtrlSFToggle <CR>")
nnoremap("<leader>ps", ":CtrlSF -S -- ''<Left>")
nnoremap("<leader>pi", ":CtrlSF -I -- ''<Left>")
nnoremap("<leader>pd", ":CtrlSF -S 'def '<Left>")
nnoremap("<leader>w", ":CtrlSF <CR>")
nnoremap("<leader>s", ":CtrlSFFocus <CR>")

-- Nvim Tree
nnoremap("<A-x>", ":NvimTreeToggle<CR>")
nnoremap("<A-f>", ":NvimTreeFindFileToggle<CR>")
nnoremap("<A-r>", ":NvimTreeFocus<cr>R<c-w><c-p>:CtrlPClearCache<CR>")

-- Vim Fugitive
nnoremap("<leader>fh", ":0GcLog<CR>")

-- Remaping vim motions
nnoremap("yyp", ":co.<CR>")

-- Better Vertical Motion
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")
nnoremap("{", "zz{")
nnoremap("}", "zz}")

-- Search repeat
nnoremap("n", "nzzzv")
nnoremap("N", "Nzzzv")

-- Remap for reset buffer
nnoremap("<leader>rr", ":e!<CR>")

-- Keybindings Quick Fix List
nnoremap("]q", ":cnext<CR>")
nnoremap("[q", ":cprevious<CR>")
nnoremap("<leader>qo", ":copen<CR>")
nnoremap("<leader>qc", ":cclose<CR>")

-- Toggle to last buffer
nnoremap("<M-6>", ":b#<Bar>bd#<CR>")

-- Buffer Surf
nnoremap("<M-o>", ":BufSurfBack<CR>")
nnoremap("<M-i>", ":BufSurfForward<CR>")

-- Tabularize
vnoremap("<leader>t:", ":Tabularize /:<CR>")
vnoremap("<leader>t=", ":Tabularize /=")

-- Format
nnoremap("<M-y>", ":Format<CR>")

-- Duplicate line & put cursor at the beginning of the line
nnoremap("yyp", "yyp0w")
