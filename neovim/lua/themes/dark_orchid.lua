local options = {
  integrations = {
    barbar = {
      enabled = true
    },
    cmp = {
      enabled = true
    },
    dashboard = {
      enabled = true
    },
    gitsigns = {
      enabled = true
    },
    hipatterns = {
      enabled = true
    },
    indentmini = {
      enabled = true
    },
    lazy = {
      enabled = true
    },
    mason = {
      enabled = true
    },
    neotree = {
      enabled = true
    },
    nvim = {
      enabled = true
    },
    telescope = {
      enabled = true
    }
  }
}

return {
  "dark-orchid/neovim",
  main = "dark-orchid",
  priority = 1000,
  lazy = false,
  opts = options,
  init = function()
    vim.cmd.colorscheme("dark-orchid")
  end
}
