local Main = {}
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.shiftwidth = 1
vim.o.laststatus = 3
vim.api.nvim_set_hl(0, "Normal", { bg = "NONE", fg = "#d5c4a1" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "NONE", fg = "NONE" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE", fg = "NONE" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE", fg = "NONE" })
function Main.setup()
	vim.cmd([[ set guicursor=n-v-c-i:block ]])
end

return Main
