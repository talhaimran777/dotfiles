local status_ok, neogit = pcall(require, "neogit")
if not status_ok then
  return
end

local nnoremap = require('talhaimran.keymap').nnoremap

neogit.setup {}

nnoremap("<leader>gs", function()
    neogit.open({ })
end);
