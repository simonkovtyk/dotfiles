local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end
vim.opt.rtp:prepend(lazypath)

require "mappings"
require "settings"

require("lazy").setup({
  ui = {
    border = "rounded"
  },
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
  concurrency = 20,
  performance = {
    cache = {
      enabled = true
    },
    reset_packpath = true
  },
  install = {
    colorscheme = { "dark-orchid" }
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
    }
  },
  change_detection = {
    enabled = false,
    notify = false
  },
  readme = {
    enabled = false
  }
})

