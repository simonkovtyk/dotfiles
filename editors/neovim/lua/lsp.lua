local navic = require "nvim-navic"
local cmp_lsp = require "cmp_nvim_lsp"

local on_attach = function(client, bufnr)
  -- TODO(simonkov): figure out best fitting keymaps 🚀
  -- local keymap = vim.api.nvim_buf_set_keymap
  -- local keymap_options = { noremap = true, silent = true }

  if client.supports_method("textDocument/documentSymbol") then
    navic.attach(client, bufnr)
  end
end

local capabilities = cmp_lsp.default_capabilities()

return {
  on_attach = on_attach,
  capabilities = capabilities
}
