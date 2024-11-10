local lspconfig = require "lspconfig"
local lsp = lspconfig["cssls"]
local lsp_settings = require "lsp"

lsp.setup({
  on_attach = lsp_settings.on_attach,
  capabilities = lsp_settings.capabilities
})
