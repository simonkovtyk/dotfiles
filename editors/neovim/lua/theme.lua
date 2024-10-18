local options = {
  no_italic = true,
  no_bold = true,
  no_underline = true,
  integrations = {
    cmp = true,
    neotree = true,
    treesitter = true,
    dashboard = true,
    mason = true,
    indent_blankline = {
      enabled = false,
      --colored_indent_levels = true
    },
    telescope = {
      enabled = true
    },
    native_lsp = {
      enabled = true,
      virtual_text = {
        errors = {},
        hints = {},
        warnings = {},
        information = {},
        ok = {}
      },
      underlines = {
        errors = {
          "underline"
        },
        hints = {
          "undercurl"
        },
        warnings = {
          "underline"
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
