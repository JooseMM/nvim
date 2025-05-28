return {
	{
		"hrsh7th/nvim-cmp",
		config = function()
			local cmp = require("cmp")
			cmp.setup({
				mapping = {
					["<C-y>"] = cmp.mapping.confirm({ select = true }),
				},
			})
		end,
	},
	{ "hrsh7th/cmp-nvim-lsp" },
}
