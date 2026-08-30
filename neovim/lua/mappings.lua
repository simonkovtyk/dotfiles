vim.g.mapleader = " "
vim.g.maplocalleader = " "

local options = {
  noremap = true,
  silent = true
}

local keymap = vim.api.nvim_set_keymap

--[[ Preserve cursor position after yank
keymap("v", "y", "y`>", options);

keymap("n", "d", "\"1d", options);
keymap("n", "dd", "\"1dd", options);
keymap("x", "d", "\"1d", options);

keymap("n", "p", "\"0p", options);
keymap("n", "P", "\"0P", options);
keymap("x", "p", "\"0p", options);
keymap("x", "P", "\"0P", options);
]]--

-- Prevent inserting unwanted key sequences
keymap("i", "<F1>", "<Nop>", options);
keymap("i", "<F2>", "<Nop>", options);
keymap("i", "<F3>", "<Nop>", options);
keymap("i", "<F4>", "<Nop>", options);
keymap("i", "<F5>", "<Nop>", options);
keymap("i", "<F6>", "<Nop>", options);
keymap("i", "<F7>", "<Nop>", options);
keymap("i", "<F8>", "<Nop>", options);
keymap("i", "<F9>", "<Nop>", options);
keymap("i", "<F10>", "<Nop>", options);
keymap("i", "<F11>", "<Nop>", options);
keymap("i", "<F12>", "<Nop>", options);

-- Window
keymap("n", "<leader>w<Right>", "<cmd>vert res -10<CR>", options)
keymap("n", "<leader>w<Left>", "<cmd>vert res +10<CR>", options)
keymap("n", "<leader>w<Up>", "<cmd>res +5<CR>", options)
keymap("n", "<leader>w<Down>", "<cmd>res -5<CR>", options)
keymap("n", "<leader>wl", "<cmd>vert res -10<CR>", options)
keymap("n", "<leader>wh", "<cmd>vert res +10<CR>", options)
keymap("n", "<leader>wk", "<cmd>res +5<CR>", options)
keymap("n", "<leader>wj", "<cmd>res -5<CR>", options)

-- Neotree
keymap("n", "<leader>e", "<cmd>Neotree<CR>", options)

-- Gitsigns
keymap("n", "<leader>gb", "<cmd>Gitsigns blame_line<CR>", options)
keymap("n", "<leader>gt", "<cmd>Gitsigns toggle_current_line_blame<CR>", options)

-- Telescope
keymap("n", "<leader>T", "<cmd>Telescope<CR>", options)
keymap("n", "<leader>f", "<cmd>Telescope find_files<CR>", options)
keymap("n", "<leader>l", "<cmd>Telescope live_grep<CR>", options)
keymap("n", "<leader>o", "<cmd>Telescope buffers<CR>", options)
keymap("n", "<leader>d", "<cmd>Telescope diagnostics<CR>", options)

keymap("v", "<leader>a", "<cmd>lua vim.lsp.buf.range_code_action()<CR>", options)
keymap("n", "<leader>d", "<cmd>lua vim.lsp.buf.definition()<CR>", options)
keymap("n", "<leader>h", "<cmd>lua vim.lsp.buf.hover()<CR>", options)
keymap("n", "<leader>r", "<cmd>lua vim.lsp.buf.rename()<CR>", options)
keymap("n", "<leader>a", "<cmd>lua vim.lsp.buf.code_action()<CR>", options)
keymap("n", "<leader>i", "<cmd>lua vim.lsp.buf.implementation()<CR>", options)
keymap("n", "<leader>k", "<cmd>lua vim.lsp.buf.references()<CR>", options)
keymap("n", "<leader>s", "<cmd>lua vim.lsp.buf.signature_help()<CR>", options)
keymap("n", "<leader>t", "<cmd>lua vim.lsp.buf.type_definition()<CR>", options)
keymap("n", "<leader>z", "<cmd>lua vim.lsp.buf.format({ async = true })<CR>", options)
keymap("n", "<leader>j", "<cmd>lua vim.diagnostic.open_float()<CR>", options)

