local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
	lsp_zero.default_keymaps({ buffer = bufnr, omit = { '[d', ']d' } })

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

	-- Rename
	vim.keymap.set('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
end)

require('lspconfig').tsserver.setup({})
require('lspconfig').lua_ls.setup(lsp_zero.nvim_lua_ls())
require('lspconfig').bufls.setup {}
require('lspconfig').html.setup {}
require('lspconfig').cssls.setup {}
require('lspconfig').tailwindcss.setup {}
require('lspconfig').jsonls.setup {}
require('lspconfig').prismals.setup {}
require('lspconfig').yamlls.setup {}
require('lspconfig').dockerls.setup {}
require('lspconfig').docker_compose_language_service.setup {}
require('lspconfig').emmet_language_server.setup {
	filetypes = { "css", "eruby", "html", "javascript", "javascriptreact", "less", "sass", "scss", "svelte", "pug",
		"typescriptreact", "vue" },
	init_options = {
		excludeLanguages = {},
		preferences = {},
		showAbbreviationSuggestions = true,
		showExpandedAbbreviation = "always",
		showSuggestionsAsSnippets = false,
		syntaxProfiles = {},
		variables = {},
	},
}


lsp_zero.format_mapping('<A-y>', {
	format_opts = {
		async = false,
		timeout_ms = 10000,
	}
})

require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = { 'tsserver', 'lua_ls', 'emmet_language_server', 'docker_compose_language_service',
		'dockerls',
		'yamlls', 'prismals', 'jsonls', 'tailwindcss', 'cssls', 'html', 'lua_ls',
	},
	handlers = {
		lsp_zero.default_setup,
	}
})
