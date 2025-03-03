vim.loader.enable()

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end
vim.opt.rtp:prepend(lazypath)

require "mappings"
require "settings"
require "bypass"

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
    -- lazy = true,
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
    -- disable some rtp plugins
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

-- require "lsp/angular"
-- require "lsp/astro"
-- require "lsp/bash"
-- require "lsp/c"
-- require "lsp/css"
-- require "lsp/emmet"
-- require "lsp/eslint"
-- require "lsp/go"
-- require "lsp/groovy"
-- require "lsp/html"
-- require "lsp/java"
-- require "lsp/json"
-- require "lsp/kotlin"
-- require "lsp/lua"
-- require "lsp/markdown"
-- require "lsp/python"
-- require "lsp/rust"
-- require "lsp/tailwind"
-- require "lsp/typescript"
-- require "lsp/vue"
-- require "lsp/zig"
-- require "lsp/stylelint"
