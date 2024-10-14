local options = function()
  local cmp = require "cmp"

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
    })
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
