local options = function()
  local cmp = require "cmp"
  local lspkind = require "lspkind"
  local devicons = require "nvim-web-devicons"

  return {
    snippet = {
      expand = function(args)
        vim.snippet.expand(args.body)
      end
    },
    window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered()
    },
    sources = cmp.config.sources({
      {
        name = "nvim_lsp"
      }
    }, {
      {
        name = "buffer"
      }
    }),
    formatting = {
      format = function(entry, vim_item)
        vim_item.kind = string.format('%s %s', devicons.get_icon(vim_item.kind), vim_item.kind)
        return vim_item
      end
      --[[format = lspkind.cmp_format({
        mode = "symbol",
        maxwidth = 50,
        ellipsis_char = '...',
        show_labelDetails = true,
        before = function (entry, vim_item)
          return vim_item
        end
      })]]--
    }
  }
end

return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path"
  },
  event = "InsertEnter",
  opts = options
}
