local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = {
		{ import = "plugins.gruvbox-material" },
		{ import = "plugins.autopairs" },
		{ import = "plugins.cmp" },
		{ import = "plugins.colorizer" },
		{ import = "plugins.conform" },
		{ import = "plugins.harpoon" },
		{ import = "plugins.lint" },
		{ import = "plugins.lsp-zero" },
		{ import = "plugins.mason" },
		{ import = "plugins.lualine" },
		{ import = "plugins.noice" },
		{ import = "plugins.oil" },
		{ import = "plugins.plenary" },
		{ import = "plugins.telescope" },
		{ import = "plugins.treesitter" },
	},
})
