local on_attach = function(client, bufnr)
  local keymap = vim.api.nvim_buf_set_keymap
  local options = {
    noremap = true,
    silent = true
  }

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

local cmp_lsp = require "cmp_nvim_lsp"
local capabilities = cmp_lsp.default_capabilities()

local is_lsp_active = function(name)
  local bufnr = vim.api.nvim_get_current_buf()
  local clients = vim.lsp.get_active_clients({ bufnr = bufnr })
    for _, client in ipairs(clients) do
      if client.name == name then
        return true
    end
  end

  return false
end

local filetypes_with_lsp_mappings = {
  javascript = {
    "ts_ls",
    "eslint"
  },
  typescript = {
    "ts_ls",
    "angularls",
    "eslint"
  },
  html = {
    "angularls",
    "emmet_language_server",
    "eslint",
    "html"
  },
  css = {
    "cssls",
    "stylelint_lsp"
  },
  scss = {
    "eslint",
    "stylelint_lsp"
  },
  json = {
    "eslint",
    "jsonls"
  },
  markdown = {
    "eslint",
    "marksman"
  },
  lua = {
    "lua_ls"
  },
  bash = {
    "bashls"
  },
  c = {
    "clangd"
  },
  cpp = {
    "clangd"
  },
  go = {
    "gopls"
  },
  groovy = {
    "groovyls"
  },
  java = {
    "jdtls"
  },
  kotlin = {
    "kotlin_lanuage_server"
  },
  python = {
    "pyright"
  },
  rust = {
    "rust_analyzer"
  },
  zig = {
    "zls"
  }
}

return {
  on_attach = on_attach,
  capabilities = capabilities,
  is_lsp_active = is_lsp_active,
  filetypes_with_lsp_mappings = filetypes_with_lsp_mappings
}
