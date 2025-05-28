return {
	{
		"sainnhe/gruvbox-material",
		opts = {
			transparent_mode = true,
		},
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			-- load the colorscheme here
			vim.cmd([[colorscheme gruvbox-material]])
			-- set preferred colors
			vim.api.nvim_set_hl(0, "Normal", { bg = "NONE", fg = "NONE" })
			vim.api.nvim_set_hl(0, "NormalNC", { bg = "NONE", fg = "NONE" })
			vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE", fg = "NONE" })
			vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE", fg = "NONE" })
			-- Enable true color support
			vim.opt.termguicolors = true
			-- Cursor block style
			vim.cmd([[ set guicursor=n-v-c-i:block ]])
		end,
	},
}
