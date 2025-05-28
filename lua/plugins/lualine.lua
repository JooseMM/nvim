return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		options = { theme = "gruvbox-material" },
		config = function()
			require("lualine").setup()
		end,
	},
}
