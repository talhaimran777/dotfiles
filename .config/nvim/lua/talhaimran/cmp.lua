local cmp = require 'cmp'
local cmp_action = require('lsp-zero').cmp_action()
require('luasnip.loaders.from_vscode').lazy_load()

cmp.setup {
  mapping = cmp.mapping.preset.insert {
    ['<Tab>'] = cmp_action.tab_complete(),
    ['<S-Tab>'] = cmp_action.select_prev_or_fallback(),
    -- ['<C-j>'] = cmp.mapping.select_next_item(),
    -- ['<C-k>'] = cmp.mapping.select_prev_item(),
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
