vim.g.mapleader = " "

-- NeoTree
vim.keymap.set('n', '<leader>e', ':Neotree float focus<CR>')
vim.keymap.set('n', '<leader>o', ':Neotree float git_status<CR>')
vim.keymap.set('n', '<Leader>i', '<cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })
