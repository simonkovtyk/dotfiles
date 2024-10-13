local lspconfig = require "lspconfig"
local lsp = lspconfig["ts_ls"]

local on_attach = function()
end

lsp.setup({
  on_attach = on_attach,
  cmd = {
    "typescript-language-server",
    "--stdio"
  }
})
