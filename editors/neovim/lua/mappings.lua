vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

keymap("n", "<leader>w", "<cmd>Neotree<CR>", opts)
keymap("n", "<leader>b", "<cmd>Telescope buffers<CR>", opts)
keymap("n", "<leader>s", "<cmd>Telescope live_grep<CR>", opts)

