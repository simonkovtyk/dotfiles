local options = {
  flavour = "mocha",
  no_italic = true,
  no_bold = true,
  no_underline = true,
  integrations = {
    barbar = true,
    barbecue = {
      dim_context = true
    },
    cmp = true,
    neotree = true,
    treesitter = true,
    dashboard = true,
    mason = true,
    indent_blankline = {
      enabled = false
    },
    diffview = {
      enabled = true
    },
    telescope = {
      enabled = true
    },
    window_picker = {
      enabled = true
    },
    native_lsp = {
      enabled = true,
      underlines = {
        errors = {
          "undercurl"
        },
        hints = {
          "undercurl"
        },
        warnings = {
          "undercurl"
        },
        information = {
          "undercurl"
        },
        ok = {
          "undercurl"
        }
      },
      inlay_hints = {
        background = false
      }
    }
  }
}

return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  opts = options
}
