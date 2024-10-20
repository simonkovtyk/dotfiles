local options = function()
  local cmp = require "cmp"
  local lspkind = require "lspkind"

  return {
    mapping = cmp.mapping.preset.insert({
      ["<C-b>"] = cmp.mapping.scroll_docs(-4),
      ["<C-f>"] = cmp.mapping.scroll_docs(4),
      ["<C-Space>"] = cmp.mapping.complete(),
      ["<C-e>"] = cmp.mapping.abort(),
      ["<CR>"] = cmp.mapping.confirm({ select = true })
    }),
    snippet = {
      scrollbar = false,
      expand = function(args)
        vim.snippet.expand(args.body)
      end
    },
    performance = {
      max_view_entries = 10
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
        }
      }
    ),
    formatting = {
      --[[format = function(entry, vim_item)
        vim_item.kind = string.format('%s %s', devicons.get_icon(vim_item.kind), vim_item.kind)
        return vim_item
      end]]--
      format = lspkind.cmp_format({
        mode = "symbol",
        maxwidth = 50,
        ellipsis_char = '...',
        show_labelDetails = true,
        before = function (entry, vim_item)
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
    "hrsh7th/cmp-nvim-lsp"
  },
  event = "InsertEnter",
  opts = options
}
