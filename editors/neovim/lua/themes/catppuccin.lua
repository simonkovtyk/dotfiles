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
  priority = 1000,
  config = function()
    require("catppuccin").setup(options)
    vim.cmd.colorscheme "catppuccin"

    vim.cmd.highlight("IndentLine guifg=#313244")
    vim.cmd.highlight("IndentLineCurrent guifg=#585b70")
    vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "#45475a" })
  end
}
