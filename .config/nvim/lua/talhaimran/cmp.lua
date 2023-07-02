local cmp = require 'cmp'
local cmp_action = require('lsp-zero').cmp_action()
require('luasnip.loaders.from_vscode').lazy_load()

cmp.setup {
  mapping = cmp.mapping.preset.insert {
    ['<S-j>'] = cmp.mapping.select_next_item(),
    ['<S-k>'] = cmp.mapping.select_prev_item(),
    ['<S-d>'] = cmp.mapping.scroll_docs(-4),
    ['<S-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete {},
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    ['<C-b>'] = cmp_action.luasnip_jump_backward()
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'buffer' },
    { name = 'path' },
  },
}
