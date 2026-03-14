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
					css = { "prettier" },
					html = { "prettier" },
					javascript = { "prettier" },
					typescript = { "prettier" },
					typescriptreact = { "prettier" },
					javascriptreact = { "prettier" },
					python = { "black" },
					cs = { "csharpier" },
				},
				default_format_opts = {
					lsp_format = "never",
				},
				formatters = {
					csharpier = {
						command = "csharpier",
						args = { "format", "$FILENAME"},
						stdin = false,
					},
				},
			})
		end,
	},
}
