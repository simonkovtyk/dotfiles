local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end
vim.opt.rtp:prepend(lazypath)

require "mappings"
require "settings"

local theme = require "theme"
local plugin_lualine = require "plugins/lualine"
local plugin_dashboard = require "plugins/dashboard"
local plugin_bufferline = require "plugins/bufferline"
local plugin_tree = require "plugins/tree"
local plugin_mason = require "plugins/mason"
local plugin_mason_lspconfig = require "plugins/mason-lspconfig"

require("lazy").setup({
  theme,
  plugin_lualine,
  plugin_dashboard,
  plugin_bufferline,
  plugin_tree,
  plugin_mason,
  plugin_mason_lspconfig
})

vim.cmd.colorscheme "catppuccin"
