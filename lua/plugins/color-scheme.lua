return {
	{
		"folke/tokyonight.nvim",
		opts = {
			style = "night", -- opciones: "storm", "night", "moon", "day"
			transparent = true, -- fondo transparente
			terminal_colors = true,
			styles = {
				comments = { italic = true },
				keywords = { italic = true },
				functions = { bold = true },
				variables = {},
			},
		},
		lazy = false, -- cargar en el arranque
		priority = 1000, -- antes que otros plugins de colores
		config = function(_, opts)
			require("tokyonight").setup(opts)
			vim.cmd([[colorscheme tokyonight]])
			-- Opciones personalizadas
			vim.api.nvim_set_hl(0, "Normal", { bg = "NONE", fg = "NONE" })
			vim.api.nvim_set_hl(0, "NormalNC", { bg = "NONE", fg = "NONE" })
			vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE", fg = "NONE" })
			vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE", fg = "NONE" })
			-- True color support
			vim.opt.termguicolors = true
			-- Cursor estilo bloque
			vim.cmd([[ set guicursor=n-v-c-i:block ]])
		end,
	},
}
