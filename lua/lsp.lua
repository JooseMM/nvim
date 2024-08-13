local Main = {}

function Main.setup()
local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {},
  handlers = {
    lsp_zero.default_setup,
  },
})

local cmp = require('cmp')
cmp.setup({
	mapping = {
		['<C-y>'] = cmp.mapping.confirm({select = true}),
	}
})
end

return Main
