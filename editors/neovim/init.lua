local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end
vim.opt.rtp:prepend(lazypath)

require "mappings"
require "settings"

local plugin_plenary = require "plugins/plenary";
local plugin_icons = require "plugins/icons"
local plugin_lualine = require "plugins/lualine"
local plugin_dashboard = require "plugins/dashboard"
local plugin_barbar = require "plugins/barbar"
local plugin_tree = require "plugins/tree"
local plugin_mason = require "plugins/mason"
local plugin_mason_lspconfig = require "plugins/mason-lspconfig"
local plugin_lspconfig = require "plugins/lspconfig"
local plugin_autopairs = require "plugins/autopairs"
local plugin_autotag = require "plugins/autotag"
local plugin_treesitter = require "plugins/treesitter"
local plugin_cmp = require "plugins/cmp"
local plugin_lspkind = require "plugins/lspkind"
local plugin_indentmini = require "plugins/indentmini"
local plugin_gitsigns = require "plugins/gitsigns"
local plugin_telescope = require "plugins/telescope"
local plugin_luasnip = require "plugins/luasnip"
-- local plugin_hipatterns = require "plugins/hipatterns"
local plugin_colorizer = require "plugins/colorizer"
local plugin_diffview = require "plugins/diffview"
local plugin_window_picker = require "plugins/window-picker"
local plugin_navic = require "plugins/navic"
local plugin_barbecue = require "plugins/barbecue"
local plugin_scrollbar = require "plugins/scrollbar"
local plugin_dressing = require "plugins/dressing"
local plugin_todo = require "plugins/todo"
local theme = require "theme"

require("lazy").setup({
  theme,
  plugin_plenary,
  plugin_icons,
  plugin_lualine,
  plugin_dashboard,
  plugin_tree,
  plugin_mason,
  plugin_mason_lspconfig,
  plugin_cmp,
  plugin_lspconfig,
  plugin_autopairs,
  plugin_autotag,
  plugin_treesitter,
  plugin_lspkind,
  plugin_indentmini,
  plugin_gitsigns,
  plugin_telescope,
  plugin_luasnip,
  -- plugin_hipatterns,
  plugin_colorizer,
  plugin_window_picker,
  plugin_diffview,
  plugin_barbar,
  plugin_navic,
  plugin_barbecue,
  plugin_scrollbar,
  plugin_dressing,
  plugin_todo
})

require "lsp/angular"
require "lsp/astro"
require "lsp/bash"
require "lsp/c"
require "lsp/css"
require "lsp/emmet"
require "lsp/eslint"
require "lsp/go"
require "lsp/groovy"
require "lsp/html"
require "lsp/java"
require "lsp/json"
require "lsp/kotlin"
require "lsp/lua"
require "lsp/markdown"
require "lsp/python"
require "lsp/rust"
require "lsp/tailwind"
require "lsp/typescript"
require "lsp/vue"
require "lsp/zig"
require "lsp/stylelint"

vim.cmd.colorscheme "catppuccin"
vim.cmd.highlight("IndentLine guifg=#313244")
vim.cmd.highlight("IndentLineCurrent guifg=#585b70")
vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "#45475a" })

