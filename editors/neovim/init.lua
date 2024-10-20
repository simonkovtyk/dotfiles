local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end
vim.opt.rtp:prepend(lazypath)

require "mappings"
require "settings"

local plugin_icons = require "plugins/icons"
local plugin_lualine = require "plugins/lualine"
local plugin_dashboard = require "plugins/dashboard"
local plugin_bufferline = require "plugins/bufferline"
local plugin_tree = require "plugins/tree"
local plugin_mason = require "plugins/mason"
local plugin_mason_lspconfig = require "plugins/mason-lspconfig"
local plugin_lspconfig = require "plugins/lspconfig"
local plugin_autopairs = require "plugins/autopairs"
local plugin_autotag = require "plugins/autotag"
local plugin_treesitter = require "plugins/treesitter"
local plugin_cmp = require "plugins/cmp"
local plugin_lspkind = require "plugins/lspkind"
local plugin_indent_blankline = require "plugins/indent-blankline"
local plugin_gitsigns = require "plugins/gitsigns"
local plugin_telescope = require "plugins/telescope"
local plugin_luasnip = require "plugins/luasnip"
local plugin_hipatterns = require "plugins/hipatterns"
local plugin_colorizer = require "plugins/colorizer"
local theme = require "theme"

require("lazy").setup({
  theme,
  plugin_icons,
  plugin_lualine,
  plugin_dashboard,
  plugin_bufferline,
  plugin_tree,
  plugin_mason,
  plugin_mason_lspconfig,
  plugin_cmp,
  plugin_lspconfig,
  plugin_autopairs,
  plugin_autotag,
  plugin_treesitter,
  plugin_lspkind,
  plugin_indent_blankline,
  plugin_gitsigns,
  plugin_telescope,
  plugin_luasnip,
  plugin_hipatterns,
  plugin_colorizer
})

require "lsp/angular"
require "lsp/astro"
require "lsp/bash"
require "lsp/c"
require "lsp/css"
require "lsp/emmet"
require "lsp/eslint"
require "lsp/go"
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

vim.cmd.colorscheme "catppuccin"
vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "#414355" })
