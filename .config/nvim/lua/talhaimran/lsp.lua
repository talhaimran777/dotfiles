local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
	lsp.default_keymaps({ buffer = bufnr })

	local opts = { buffer = bufnr }
	-- Type definition
	vim.keymap.set('n', 'gt', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)

	-- Signature help
	vim.keymap.set('n', 'sh', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)

	-- Go to diagnostics
	vim.keymap.set('n', '[g', '<cmd>lua vim.diagnostic.goto_prev()<cr>', opts)
	vim.keymap.set('n', ']g', '<cmd>lua vim.diagnostic.goto_next()<cr>', opts)

	-- Buffer Formatting
	vim.keymap.set({ 'n', 'x' }, '<A-y>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)

	-- Code Actions
	vim.keymap.set('n', '<leader>ac', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
end)

lsp.skip_server_setup({ 'jdtls' })

lsp.ensure_installed({
	'tsserver',
	'lua_ls',
})

require('lspconfig').tsserver.setup({})
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.set_server_config({
	capabilities = {
		textDocument = {
			foldingRange = {
				dynamicRegistration = false,
				lineFoldingOnly = true
			}
		}
	}
})

lsp.setup()
