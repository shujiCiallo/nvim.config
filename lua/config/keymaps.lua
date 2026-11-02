vim.g.mapleader = " "

local map = vim.keymap.set

map("n", "<leader>w", ":w<CR>", { desc = "save" })
map("n", "<leader>q", ":q<CR>", { desc = "quit" })

map("n", "<C-h>", "<C-w>h", { desc = "left windown" })
map("n", "<C-j>", "<C-w>j", { desc = "down windown" })
map("n", "<C-k>", "<C-w>k", { desc = "up windown" })
map("n", "<C-l>", "<C-w>w", { desc = "right windown" })
