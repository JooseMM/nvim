require('plugins')

--sets the leader key
vim.g.mapleader = ' '
--copy to sys clipboard
vim.keymap.set('v', '<C-c>', '"+y', {})
--Telescope
vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>', {})
vim.keymap.set('n', '<leader>fw', '<cmd>Telescope live_grep<cr>', {})
vim.keymap.set('n', '<leader>ls', '<cmd>Telescope buffers<cr>', {})
--List buffers
vim.keymap.set('n', '<leader>l', '<cmd>ls<cr>', {})
--Splits
vim.keymap.set('n', '<leader>v', '<cmd>vs<cr>', {})
vim.keymap.set('n', '<leader>s', '<cmd>split<cr>', {})
vim.keymap.set('n', '+', '5<C-w>>', {})
vim.keymap.set('n', '-', '5<C-w><', {})
vim.keymap.set('n', '<leader>w', '<C-W>W', {})
vim.keymap.set('i', 'jk', '<Esc>', {})
vim.keymap.set('v', 'jk', '<Esc>', {})
-- LSP
vim.keymap.set('n', '<leader>a', function() vim.lsp.buf.code_action() end)
vim.keymap.set('n', '<leader>r', function() vim.lsp.buf.rename() end)
-- Oil vim
vim.keymap.set('n', '<leader>e', '<cmd>Oil<cr>', { desc = 'Open Oil file explorer' })
vim.keymap.set('n', '<C-h>', '<cmd>Oil<cr>', { desc = 'Open Oil file explorer' })


