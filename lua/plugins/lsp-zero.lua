return {
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		dependencies = {
			"neovim/nvim-lspconfig",
			"hrsh7th/cmp-nvim-lsp",
		},
		config = function()
			local lsp_zero = require("lsp-zero")
			local lspconfig = require("lspconfig")
			local cmp_nvim_lsp = require("cmp_nvim_lsp")

			lsp_zero.extend_lspconfig()

			-- Add cmp capabilities to all servers
			local capabilities = cmp_nvim_lsp.default_capabilities()

			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})

			lspconfig.angularls.setup({
				filetypes = { "html", "angular" },
				capabilities = capabilities,
			})

			lsp_zero.on_attach(function(client, bufnr)
				lsp_zero.default_keymaps({ buffer = bufnr })
			end)
		end,
	},
}
