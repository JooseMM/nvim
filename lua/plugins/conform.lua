return {
	{
		"stevearc/conform.nvim",
		vent = { "BufReadPre", "BufNewFile" },
		config = function()
			local conform = require("conform")
			conform.setup({
				formatters_by_ft = {
					go = { "golines" },
					lua = { "stylua" },
					html = { "prettier" },
					javascript = { "prettier" },
					typescript = { "prettier" },
					typescriptreact = { "prettier" },
					javascriptreact = { "prettier" },
				},
				default_format_opts = {
					lsp_format = "never",
				},
			})
		end,
	},
}
