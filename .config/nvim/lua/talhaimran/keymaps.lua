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
-- nnoremap("]q", ":cnext<CR>")
-- nnoremap("[q", ":cprevious<CR>")
-- nnoremap("<leader>qo", ":copen<CR>")
-- nnoremap("<leader>qc", ":cclose<CR>")

-- Buffer Surf
nnoremap("<M-o>", ":BufSurfBack<CR>")
nnoremap("<M-i>", ":BufSurfForward<CR>")

-- Tabularize
vnoremap("<leader>t:", ":Tabularize /:<CR>")
vnoremap("<leader>t=", ":Tabularize /=")

-- Move up & down with wrapped lines
nnoremap("j", "v:lua._smart_j()", { expr = true, noremap = true })
nnoremap("k", "v:lua._smart_k()", { expr = true, noremap = true })

-- Diagnostic hide & show
nnoremap("<leader>dh", ":lua vim.diagnostic.disable()<CR>")
nnoremap("<leader>ds", ":lua vim.diagnostic.enable()<CR>")

-- Typescript OrganizeImports
vim.cmd("command! -nargs=0 OR lua OrganizeImports()")

function _smart_j()
  local count = vim.v.count
  local mode = vim.fn.mode(1)
  if count ~= 0 or mode:sub(1, 2) == "no" then
    return "j"
  else
    return "gj"
  end
end

function _smart_k()
  local count = vim.v.count
  local mode = vim.fn.mode(1)
  if count ~= 0 or mode:sub(1, 2) == "no" then
    return "k"
  else
    return "gk"
  end
end

function OrganizeImports()
    vim.lsp.buf.execute_command({command = "_typescript.organizeImports", arguments = {vim.fn.expand("%:p")}})
end
