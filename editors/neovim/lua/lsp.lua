local navic = require "nvim-navic"
local cmp_lsp = require "cmp_nvim_lsp"

local on_attach = function(client, bufnr)
  local keymap = vim.api.nvim_buf_set_keymap
  local keymap_options = { noremap = true, silent = true }

  if client.supports_method("textDocument/documentSymbol") then
    navic.attach(client, bufnr)
  end

  if client.supports_method("textDocument/declaration") then
    keymap(bufnr, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", keymap_options)
  end

  if client.supports_method("textDocument/definition") then
    keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", keymap_options)
  end

  if client.supports_method("textDocument/implementation") then
    keymap(bufnr, "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", keymap_options)
  end

  if client.supports_method("textDocument/references") then
    keymap(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", keymap_options)
  end

  if client.supports_method("textDocument/hover") then
    keymap(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", keymap_options)
  end

  if client.supports_method("textDocument/rename") then
    keymap(bufnr, "n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", keymap_options)
  end

  if client.supports_method("textDocument/codeAction") then
    keymap(bufnr, "n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", keymap_options)
  end
  
  if client.supports_method("textDocument/diagnostic") then
    keymap(bufnr, "n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>", keymap_options)
    keymap(bufnr, "n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>", keymap_options)
    keymap(bufnr, "n", "<leader>e", "<cmd>lua vim.diagnostic.open_float()<CR>", keymap_options)
    keymap(bufnr, "n", "<leader>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", keymap_options)
  end
end

local capabilities = cmp_lsp.default_capabilities()

return {
  on_attach = on_attach,
  capabilities = capabilities
}
