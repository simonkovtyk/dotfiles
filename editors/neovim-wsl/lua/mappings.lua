vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.api.nvim_set_keymap
local mappings_settings = require("mappings_settings")

-- General
keymap("n", "<leader>M", "<cmd>Mason<CR>", mappings_settings.options)
keymap("n", "<leader>L", "<cmd>Lazy<CR>", mappings_settings.options)
keymap("n", "<leader>I", "<cmd>LspInfo<CR>", mappings_settings.options)

-- Barbar
keymap("n", "<leader>1", "<cmd>BufferGoto 1<CR>", mappings_settings.options)
keymap("n", "<leader>2", "<cmd>BufferGoto 2<CR>", mappings_settings.options)
keymap("n", "<leader>3", "<cmd>BufferGoto 3<CR>", mappings_settings.options)
keymap("n", "<leader>4", "<cmd>BufferGoto 4<CR>", mappings_settings.options)
keymap("n", "<leader>5", "<cmd>BufferGoto 5<CR>", mappings_settings.options)
keymap("n", "<leader>6", "<cmd>BufferGoto 6<CR>", mappings_settings.options)
keymap("n", "<leader>7", "<cmd>BufferGoto 7<CR>", mappings_settings.options)
keymap("n", "<leader>8", "<cmd>BufferGoto 8<CR>", mappings_settings.options)
keymap("n", "<leader>9", "<cmd>BufferGoto 9<CR>", mappings_settings.options)
keymap("n", "<leader><C-Right>", "<cmd>BufferMoveNext<CR>", mappings_settings.options)
keymap("n", "<leader><C-Left>", "<cmd>BufferMovePrevious<CR>", mappings_settings.options)
keymap("n", "<leader><Left>", "<cmd>BufferPrevious<CR>", mappings_settings.options)
keymap("n", "<leader><Right>", "<cmd>BufferNext<CR>", mappings_settings.options)
keymap("n", "<leader>bp", "<cmd>BufferPick<CR>", mappings_settings.options)
keymap("n", "<leader>bc", "<cmd>BufferClose<CR>", mappings_settings.options)
keymap("n", "<leader>bp", "<cmd>BufferPin<CR>", mappings_settings.options)
keymap("n", "<leader>bd", "<cmd>BufferPickDelete<CR>", mappings_settings.options)
keymap("n", "<leader>bw", "<cmd>BufferWipeout<CR>", mappings_settings.options)
keymap("n", "<leader>br", "<cmd>BufferRestore<CR>", mappings_settings.options)
keymap("n", "<leader>bh", "<cmd>BufferCloseBuffersLeft<CR>", mappings_settings.options)
keymap("n", "<leader>bl", "<cmd>BufferCloseBuffersRight<CR>", mappings_settings.options)
keymap("n", "<leader>bq", "<cmd>BufferCloseAllButCurrent<CR>", mappings_settings.options)
keymap("n", "<leader>ba", "<cmd>BufferCloseAllButPinned<CR>", mappings_settings.options)
keymap("n", "<leader>bb", "<cmd>BufferOrderByDirectory<CR>", mappings_settings.options)
keymap("n", "<leader>bn", "<cmd>BufferOrderByWindowNumber<CR>", mappings_settings.options)

-- Window
keymap("n", "<leader>w<Right>", "<cmd>vert res -10<CR>", mappings_settings.options)
keymap("n", "<leader>w<Left>", "<cmd>vert res +10<CR>", mappings_settings.options)
keymap("n", "<leader>w<Up>", "<cmd>res +5<CR>", mappings_settings.options)
keymap("n", "<leader>w<Down>", "<cmd>res -5<CR>", mappings_settings.options)
keymap("n", "<leader>wl", "<cmd>vert res -10<CR>", mappings_settings.options)
keymap("n", "<leader>wh", "<cmd>vert res +10<CR>", mappings_settings.options)
keymap("n", "<leader>wk", "<cmd>res +5<CR>", mappings_settings.options)
keymap("n", "<leader>wj", "<cmd>res -5<CR>", mappings_settings.options)

-- Neotree
keymap("n", "<leader>E", "<cmd>Neotree<CR>", mappings_settings.options)
keymap("n", "<leader>eb", "<cmd>Neotree buffers<CR>", mappings_settings.options)
keymap("n", "<leader>ee", "<cmd>Neotree focus<CR>", mappings_settings.options)
keymap("n", "<leader>eq", "<cmd>Neotree close<CR>", mappings_settings.options)
keymap("n", "<leader>ef", "<cmd>Neotree float<CR>", mappings_settings.options)
keymap("n", "<leader>eg", "<cmd>Neotree git_status<CR>", mappings_settings.options)
keymap("n", "<leader>ec", "<cmd>Neotree current<CR>", mappings_settings.options)
keymap("n", "<leader>e<Right>", "<cmd>Neotree right<CR>", mappings_settings.options)
keymap("n", "<leader>e<Left>", "<cmd>Neotree left<CR>", mappings_settings.options)
keymap("n", "<leader>el", "<cmd>Neotree right<CR>", mappings_settings.options)
keymap("n", "<leader>eh", "<cmd>Neotree left<CR>", mappings_settings.options)

-- Gitsigns
keymap("n", "<leader>gb", "<cmd>Gitsigns blame_line<CR>", mappings_settings.options)
keymap("n", "<leader>gt", "<cmd>Gitsigns toggle_current_line_blame<CR>", mappings_settings.options)
keymap("n", "<leader>gh", "<cmd>Gitsigns preview_hunk_inline<CR>", mappings_settings.options)
keymap("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<CR>", mappings_settings.options)
keymap("n", "<leader>gd", "<cmd>Gitsigns diffthis<CR>", mappings_settings.options)

-- Telescope
keymap("n", "<leader>T", "<cmd>Telescope<CR>", mappings_settings.options)
keymap("n", "<leader>tf", "<cmd>Telescope find_files<CR>", mappings_settings.options)
keymap("n", "<leader>tg", "<cmd>Telescope git_files<CR>", mappings_settings.options)
keymap("n", "<leader>ts", "<cmd>Telescope grep_string<CR>", mappings_settings.options)
keymap("n", "<leader>tl", "<cmd>Telescope live_grep<CR>", mappings_settings.options)
keymap("n", "<leader>tb", "<cmd>Telescope buffers<CR>", mappings_settings.options)
keymap("n", "<leader>tu", "<cmd>Telescope oldfiles<CR>", mappings_settings.options)
keymap("n", "<leader>tc", "<cmd>Telescope commands<CR>", mappings_settings.options)
keymap("n", "<leader>th", "<cmd>Telescope command_history<CR>", mappings_settings.options)
keymap("n", "<leader>tp", "<cmd>Telescope quickfix<CR>", mappings_settings.options)
keymap("n", "<leader>tq", "<cmd>Telescope loclist<CR>", mappings_settings.options)
keymap("n", "<leader>tj", "<cmd>Telescope jumplist<CR>", mappings_settings.options)
keymap("n", "<leader>ta", "<cmd>Telescope current_buffer_fuzzy_find<CR>", mappings_settings.options)

keymap("n", "<leader>tr", "<cmd>Telescope lsp_references<CR>", mappings_settings.options)
keymap("n", "<leader>tz", "<cmd>Telescope lsp_incoming_calls<CR>", mappings_settings.options)
keymap("n", "<leader>to", "<cmd>Telescope lsp_outgoing_calls<CR>", mappings_settings.options)
keymap("n", "<leader>tw", "<cmd>Telescope lsp_document_symbols<CR>", mappings_settings.options)
keymap("n", "<leader>te", "<cmd>Telescope diagnostics<CR>", mappings_settings.options)
keymap("n", "<leader>ti", "<cmd>Telescope lsp_implementations<CR>", mappings_settings.options)
keymap("n", "<leader>td", "<cmd>Telescope lsp_definitions<CR>", mappings_settings.options)
keymap("n", "<leader>tt", "<cmd>Telescope lsp_type_definitions<CR>", mappings_settings.options)

