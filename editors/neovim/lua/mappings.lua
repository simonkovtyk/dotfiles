vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.api.nvim_set_keymap
local options = {
  noremap = true,
  silent = true
}

-- General
keymap("n", "<leader>M", "<cmd>Mason<CR>", options)
keymap("n", "<leader>L", "<cmd>Lazy<CR>", options)
keymap("n", "<leader>I", "<cmd>LspInfo<CR>", options)

-- Buffer
keymap("n", "<leader>bd", "<cmd>bd<CR>", options)
keymap("n", "<leader>b<Right>", "<cmd>bn<CR>", options)
keymap("n", "<leader>b<Left>", "<cmd>bp<CR>", options)
keymap("n", "<leader>bh", "<cmd>bn<CR>", options)
keymap("n", "<leader>bl", "<cmd>bp<CR>", options)
keymap("n", "<leader>bs", "<cmd>w<CR>", options)
keymap("n", "<leader>bq", "<cmd>q<CR>", options)

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
keymap("n", "<leader>E", "<cmd>Neotree<CR>", options)
keymap("n", "<leader>eb", "<cmd>Neotree buffers<CR>", options)
keymap("n", "<leader>ee", "<cmd>Neotree focus<CR>", options)
keymap("n", "<leader>eq", "<cmd>Neotree close<CR>", options)
keymap("n", "<leader>ef", "<cmd>Neotree float<CR>", options)
keymap("n", "<leader>eg", "<cmd>Neotree git_status<CR>", options)
keymap("n", "<leader>ec", "<cmd>Neotree current<CR>", options)
keymap("n", "<leader>e<Up>", "<cmd>Neotree top<CR>", options)
keymap("n", "<leader>e<Right>", "<cmd>Neotree right<CR>", options)
keymap("n", "<leader>e<Down>", "<cmd>Neotree bottom<CR>", options)
keymap("n", "<leader>e<Left>", "<cmd>Neotree left<CR>", options)
keymap("n", "<leader>ek", "<cmd>Neotree top<CR>", options)
keymap("n", "<leader>el", "<cmd>Neotree right<CR>", options)
keymap("n", "<leader>ej", "<cmd>Neotree down<CR>", options)
keymap("n", "<leader>eh", "<cmd>Neotree left<CR>", options)

-- Diffview
keymap("n", "<leader>do", "<cmd>DiffviewOpen<CR>", options)
keymap("n", "<leader>dc", "<cmd>DiffviewClose<CR>", options)
keymap("n", "<leader>df", "<cmd>DiffviewFocusFiles<CR>", options)
keymap("n", "<leader>dh", "<cmd>DiffviewFileHistory<CR>", options)
keymap("n", "<leader>dt", "<cmd>DiffviewToggleFiles<CR>", options)
keymap("n", "<leader>dr", "<cmd>DiffviewRefresh<CR>", options)

-- Gitsigns
keymap("n", "<leader>gb", "<cmd>Gitsigns blame_line<CR>", options)
keymap("n", "<leader>gt", "<cmd>Gitsigns toggle_current_line_blame<CR>", options)
keymap("n", "<leader>gh", "<cmd>Gitsigns preview_hunk_inline<CR>", options)
keymap("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<CR>", options)
keymap("n", "<leader>gd", "<cmd>Gitsigns diffthis<CR>", options)

-- Telescope
keymap("n", "<leader>T", "<cmd>Telescope<CR>", options)
keymap("n", "<leader>tf", "<cmd>Telescope find_files<CR>", options)
keymap("n", "<leader>tg", "<cmd>Telescope git_files<CR>", options)
keymap("n", "<leader>ts", "<cmd>Telescope grep_string<CR>", options)
keymap("n", "<leader>tl", "<cmd>Telescope live_grep<CR>", options)
keymap("n", "<leader>tb", "<cmd>Telescope buffers<CR>", options)
keymap("n", "<leader>tu", "<cmd>Telescope oldfiles<CR>", options)
keymap("n", "<leader>tc", "<cmd>Telescope commands<CR>", options)
keymap("n", "<leader>th", "<cmd>Telescope command_history<CR>", options)
keymap("n", "<leader>tp", "<cmd>Telescope quickfix<CR>", options)
keymap("n", "<leader>tq", "<cmd>Telescope loclist<CR>", options)
keymap("n", "<leader>tj", "<cmd>Telescope jumplist<CR>", options)
keymap("n", "<leader>ta", "<cmd>Telescope current_buffer_fuzzy_find<CR>", options)

keymap("n", "<leader>tr", "<cmd>Telescope lsp_references<CR>", options)
keymap("n", "<leader>tz", "<cmd>Telescope lsp_incoming_calls<CR>", options)
keymap("n", "<leader>to", "<cmd>Telescope lsp_outgoing_calls<CR>", options)
keymap("n", "<leader>tw", "<cmd>Telescope lsp_document_symbols<CR>", options)
keymap("n", "<leader>te", "<cmd>Telescope diagnostics<CR>", options)
keymap("n", "<leader>ti", "<cmd>Telescope lsp_implementations<CR>", options)
keymap("n", "<leader>td", "<cmd>Telescope lsp_definitions<CR>", options)
keymap("n", "<leader>tt", "<cmd>Telescope lsp_type_definitions<CR>", options)

