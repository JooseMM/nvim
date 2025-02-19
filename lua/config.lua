local Main = {}
--vim enable/disable options
vim.o.relativenumber 	= true
vim.o.wrap		= false
vim.o.shiftwidth	= 4
vim.o.laststatus 	= 3
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE", fg = "NONE" })
vim.api.nvim_set_hl(0, "FloatBoder", { bg = "NONE", fg = "NONE" })
function Main.setup()
vim.cmd [[ hi Normal guibg=NONE ctermbg=NONE ]]
vim.cmd [[ hi NonText guibg=NONE ctermbg=NONE ]]
vim.cmd [[ hi LineNr guibg=NONE ctermbg=NONE ]]
vim.cmd [[ set guicursor=n-v-c-i:block ]]
end

return Main
--add lazy.nvim package manager 
