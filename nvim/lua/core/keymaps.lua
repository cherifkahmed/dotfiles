vim.g.mapleader = " "

local map = vim.keymap.set

map("n", "<leader>e", ":Ex<CR>")
map("n", "<leader>,", ":lua vim.lsp.buf.format()<CR>")
map("n", "<leader>d", vim.diagnostic.open_float)
