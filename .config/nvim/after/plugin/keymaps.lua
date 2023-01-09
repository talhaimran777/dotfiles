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

-- Switch to last buffer
nnoremap("<leader>`", "<C-6>")

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
nnoremap("<A-p>", ":FZF<CR>")

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
nnoremap("<leader>ps", ":CtrlSF -S ''<Left>")
nnoremap("<leader>pi", ":CtrlSF -I ''<Left>")
nnoremap("<leader>s", ":CtrlSFFocus <CR>")

-- Barbar
nnoremap ("<S-Tab>", ":BufferNext<CR>")
nnoremap ("<A-.>", ":BufferNext<CR>")
nnoremap ("<A-,>", ":BufferPrevious<CR>")

nnoremap ("<A-<>", ":BufferMovePrevious<CR>")
nnoremap ("<A->>", ":BufferMoveNext<CR>")

nnoremap ("<leader>1", ":BufferGoto 1<CR>")
nnoremap ("<leader>2", ":BufferGoto 2<CR>")
nnoremap ("<leader>3", ":BufferGoto 3<CR>")
nnoremap ("<leader>4", ":BufferGoto 4<CR>")
nnoremap ("<leader>5", ":BufferGoto 5<CR>")
nnoremap ("<leader>6", ":BufferGoto 6<CR>")
nnoremap ("<leader>7", ":BufferGoto 7<CR>")
nnoremap ("<leader>8", ":BufferGoto 8<CR>")
nnoremap ("<leader>9", ":BufferGoto 9<CR>")
nnoremap ("<leader>0", ":BufferLast<CR>")
nnoremap ("<A-o>", ":BufferPick<CR>")

-- Nvim Tree
nnoremap("<A-x>", ":NvimTreeToggle<CR>")
nnoremap("<A-f>", ":NvimTreeFindFile<CR>")
nnoremap("<A-r>", ":NvimTreeFocus<cr>R<c-w><c-p>:CtrlPClearCache<CR>")

-- Vim Fugitive
nnoremap("<leader>fh", ":0GcLog<CR>")

-- Remaping vim motions
nnoremap("<leader>w", "yaw")
nnoremap("<leader>v", "vi\"")
nnoremap("<leader>d", "daw")
nnoremap("<leader>D", "daW")
nnoremap("yyp", ":co.<CR>")

-- Better Vertical Motion
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")

-- Search repeat
nnoremap("n", "nzzzv")
nnoremap("N", "Nzzzv")


-- Remap for reset buffer
nnoremap("<leader>rr", ":e!<CR>")
