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
  dir = "~/projects/private/dark-orchid-neovim",
  priority = 1000,
  lazy = false,
  config = function ()
    require("dark-orchid").setup(options);
    vim.cmd.colorscheme("dark-orchid");
  end
}
