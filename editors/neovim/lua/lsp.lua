local navic = require "nvim-navic"
local cmp_lsp = require "cmp_nvim_lsp"

local on_attach = function(client, bufnr)
  local keymap = vim.api.nvim_buf_set_keymap
  local options = {
    noremap = true,
    silent = true
  }

  if client.supports_method("textDocument/documentSymbol") then
    navic.attach(client, bufnr)
  end

  keymap(bufnr, "v", "<leader>la", "<cmd>lua vim.lsp.buf.range_code_action()<CR>", options)
  keymap(bufnr, "n", "<leader>ld", "<cmd>lua vim.lsp.buf.definition()<CR>", options)
  keymap(bufnr, "n", "<leader>lz", "<cmd>lua vim.lsp.buf.declaration()<CR>", options)
  keymap(bufnr, "n", "<leader>lh", "<cmd>lua vim.lsp.buf.hover()<CR>", options)
  keymap(bufnr, "n", "<leader>ln", "<cmd>lua vim.lsp.buf.rename()<CR>", options)
  keymap(bufnr, "n", "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<CR>", options)
  keymap(bufnr, "n", "<leader>li", "<cmd>lua vim.lsp.buf.implementation()<CR>", options)
  keymap(bufnr, "n", "<leader>lr", "<cmd>lua vim.lsp.buf.references()<CR>", options)
  keymap(bufnr, "n", "<leader>ls", "<cmd>lua vim.lsp.buf.signature_help()<CR>", options)
  keymap(bufnr, "n", "<leader>lt", "<cmd>lua vim.lsp.buf.type_definition()<CR>", options)
  keymap(bufnr, "n", "<leader>lf", "<cmd>lua vim.lsp.buf.format({ async = true })<CR>", options)
  keymap(bufnr, "n", "<leader>le", "<cmd>lua vim.diagnostic.open_float()<CR>", options)
  keymap(bufnr, "n", "<leader>lo", "<cmd>lua vim.diagnostic.goto_next()<CR>", options)
  keymap(bufnr, "n", "<leader>lp", "<cmd>lua vim.diagnostic.goto_previous()<CR>", options)
  keymap(bufnr, "n", "<leader>lq", "<cmd>lua vim.diagnostic.setloclist()<CR>", options)
end

local capabilities = cmp_lsp.default_capabilities()

return {
  on_attach = on_attach,
  capabilities = capabilities
}
