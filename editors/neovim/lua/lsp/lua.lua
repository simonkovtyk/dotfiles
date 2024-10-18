local lspconfig = require "lspconfig"
local lsp = lspconfig["lua_ls"]

local on_attach = function(client, bufnr)
  local lsp_mappings = require "lsp-mappings"

  lsp_mappings(client, bufnr)
end

lsp.setup({
  on_attach = on_attach
})
