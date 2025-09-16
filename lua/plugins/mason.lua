return {
	{
		"williamboman/mason.nvim",
		config = function()
			local mason = require("mason")
			mason.setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			local lsp_zero = require("lsp-zero")
			require("mason-lspconfig").setup({
				ensure_installed = { "ts_ls", "html", "cssls", "lua_ls" },
				handlers = {
					lsp_zero.default_setup,
				},
			})
		end,
	},
}
