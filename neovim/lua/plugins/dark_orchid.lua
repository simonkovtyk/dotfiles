local dark_orchid = require("dark-orchid")

dark_orchid.setup({
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
})

dark_orchid.load()
