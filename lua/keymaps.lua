vim.g.mapleader = " "
--copy to sys clipboard
vim.keymap.set("v", "<leader>y", '"+y', {})
vim.keymap.set("n", "<leader>p", '"+p', {})
--Telescope
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", {})
vim.keymap.set("n", "<leader>fw", "<cmd>Telescope live_grep<cr>", {})
--Splits
vim.keymap.set("n", "<leader>v", "<cmd>vs<cr>", {})
vim.keymap.set("n", "<leader>s", "<cmd>split<cr>", {})
vim.keymap.set("n", "+", "5<C-w>>", {})
vim.keymap.set("n", "-", "5<C-w><", {})
vim.keymap.set("i", "jk", "<Esc>", {})
vim.keymap.set("v", "jk", "<Esc>", {})
vim.keymap.set("t", "jk", "<Esc>", {})
-- LSP
vim.keymap.set("n", "<leader>a", function()
	vim.lsp.buf.code_action()
end)
vim.keymap.set("n", "<leader>r", function()
	vim.lsp.buf.rename()
end)

-- Oil vim
vim.keymap.set("n", "<leader>e", "<cmd>Oil<cr>", { desc = "Open Oil file explorer" })
vim.keymap.set("n", "<C-h>", "<cmd>Oil<cr>", { desc = "Open Oil file explorer" })

-- Toggleable terminal
vim.api.nvim_set_keymap(
	"n",
	"<leader>tt",
	"<cmd>Floaterminal<cr><cmd>startinsert<cr>",
	{ noremap = true, silent = true }
)

-- Floating terminal
vim.api.nvim_set_keymap("t", "<leader>tt", "<cmd>Floaterminal<cr>", { noremap = true, silent = true })

-- Formatting
vim.keymap.set({ "n", "v" }, "<leader>fm", function()
	local conform = require("conform")
	conform.format({
		lsp_fallback = false,
		async = false,
		timeout_ms = 1000,
	})
end, { desc = "Format file or range (in visual mode)" })

-- Harpoon
vim.keymap.set("n", "<leader>ha", function()
	require("harpoon.mark").add_file()
end, { desc = "add file to harpoon" })

vim.keymap.set("n", "<leader>l", function()
	require("harpoon.ui").toggle_quick_menu()
end, { desc = "add file to harpoon" })

vim.keymap.set("n", "<leader>l", function()
	require("harpoon.ui").toggle_quick_menu()
end, { desc = "add file to harpoon" })

vim.keymap.set("n", "<leader>1", function()
	require("harpoon.ui").nav_file(1)
end, { desc = "add file to harpoon" })

vim.keymap.set("n", "<leader>2", function()
	require("harpoon.ui").nav_file(2)
end, { desc = "add file to harpoon" })

vim.keymap.set("n", "<leader>3", function()
	require("harpoon.ui").nav_file(3)
end, { desc = "add file to harpoon" })

vim.keymap.set("n", "<leader>4", function()
	require("harpoon.ui").nav_file(4)
end, { desc = "add file to harpoon" })
