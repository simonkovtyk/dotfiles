local options = function()
  local cmp = require "cmp"
  local lspkind = require "lspkind"

  return {
    mapping = {
      ["<CR>"] = cmp.mapping.confirm({ select = false }),
      ["<Down>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
      ["<Up>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select })
    },
    snippet = {
      scrollbar = false,
      expand = function(args)
        local luasnip = require "luasnip"

        luasnip.lsp_expand(args.body)
      end
    },
    view = {
      entries = {
        follow_cursor = false
      },
      docs = {
        auto_open = true
      }
    },
    performance = {
      max_view_entries = 20,
      debounce = 200,
      throttle = 200
    },
    sources = cmp.config.sources({
        {
          name = "nvim_lsp"
        },
        {
          name = "luasnip"
        }
      }, {
        {
          name = "buffer"
        },
        {
          name = "cmdline"
        }
      }
    ),
    formatting = {
      format = lspkind.cmp_format({
        maxwidth = 50,
        ellipsis_char = "…",
        show_labelDetails = true,
        before = function (_, vim_item)
          return vim_item
        end
      })
    }
  }
end

return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-nvim-lsp",
    "saadparwaiz1/cmp_luasnip"
  },
  event = "InsertEnter",
  opts = options,
  cond = function ()
    local utils = require("utils")
    local disallowed_filetypes = { "TelescopePrompt" }

    return not utils.array_includes(disallowed_filetypes, vim.bo.filetype)
  end
}
