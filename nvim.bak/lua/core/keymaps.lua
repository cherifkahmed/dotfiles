vim.g.mapleader = " "

local map = vim.keymap.set

map("n", "<leader>e", ":Ex<CR>")
map("n", "<leader>,", ":lua vim.lsp.buf.format()<CR>")
map("n", "<leader>d", vim.diagnostic.open_float)

--vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>")
--vim.keymap.set("n", "gr", "<cmd>Telescope lsp_references<CR>")
--vim.keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>")
vim.keymap.set("n", "<leader>k", ":lua vim.lsp.buf.hover()<CR>", { desc = "Hover docs" })
