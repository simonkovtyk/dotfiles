local lspconfig = require "lspconfig"
local lsp = lspconfig["lua_ls"]

local on_attach = function()
end

lsp.setup({
  on_attach = on_attach
})
