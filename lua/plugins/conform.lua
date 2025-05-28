return {
	{
		"stevearc/conform.nvim",
		vent = { "BufReadPre", "BufNewFile" },
		config = function()
			local conform = require("conform")
			conform.setup({
				formatters_by_ft = {
					lua = { "stylua" },
					javascript = { "prettier" },
					typescript = { "prettier" },
					go = { "golines" },
				},
				default_format_opts = {
					lsp_format = "never",
				},
			})
		end,
	},
}
