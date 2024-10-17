local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end
vim.opt.rtp:prepend(lazypath)

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
local theme = require "theme"

require("lazy").setup({
  plugin_lualine,
  plugin_dashboard,
  plugin_bufferline,
  plugin_tree,
  plugin_mason,
  plugin_mason_lspconfig,
  plugin_lspconfig,
  plugin_autopairs,
  plugin_autotag,
  plugin_treesitter,
  plugin_cmp,
  plugin_lspkind,
  plugin_indent_blankline,
  theme
})

require "lsp/typescript-language-server"
require "lsp/lua-language-server"

require "mappings"
require "settings"

vim.cmd.colorscheme "catppuccin"
vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "#414355" })
