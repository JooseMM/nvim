return {
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		config = function()
			local lsp_zero = require("lsp-zero")
			local lsp_config = require("lspconfig")

			lsp_zero.extend_lspconfig()
			lsp_config.lua_ls.setup({})

			lsp_zero.on_attach(function(client, bufnr)
				lsp_zero.default_keymaps({ buffer = bufnr })
			end)
		end,
	},
	{ "neovim/nvim-lspconfig" },
	{ "L3MON4D3/LuaSnip" },
}
