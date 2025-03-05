-- vim.loader.enable()

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end
vim.opt.rtp:prepend(lazypath)

require "mappings"
require "settings"

require("lazy").setup({
  spec = {
    {
      import = "plugins"
    },
    {
      import = "themes"
    }
  },
  defaults = {
    version = false
  },
  performance = {
    cache = {
      enabled = true
    },
    reset_packpath = true
  },
  install = {
    colorscheme = { "catppuccin" }
  },
  rtp = {
    disabled_plugins = {
      "gzip",
      "matchit",
      "matchparen",
      "netrwPlugin",
      "rplugin",
      "tarPlugin",
      "tohtml",
      "tutor",
      "zipPlugin",
    },
  },
  change_detection = {
    enabled = false
  },
  readme = {
    enabled = false
  }
})

