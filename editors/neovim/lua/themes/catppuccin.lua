local opts = {
  flavour = "mocha",
  no_italic = true,
  no_bold = true,
  no_underline = true,
  transparent_background = true,
  show_end_of_buffer = true,
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
    telescope = {
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
  },
  custom_highlights = function(colors)
    return {
      IndentLine = { fg = colors.surface0 },
      IndentLineCurrent = { fg = colors.surface2 },
      CursorLine = {
        bg = "NONE"
      }
    }
  end
}

return {
  "catppuccin/nvim",
  priority = 1000,
  config = function ()
    require("catppuccin").setup(opts)
    vim.cmd.colorscheme "catppuccin"
  end
}
