local on_attach = function(_, bufnr)
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

local lsps = {
  "ts_ls", "eslint", "ts_ls", "angularls",
  "eslint", "ts_ls", "eslint", "tailwindcss",
  "angularls", "emmet_language_server", "eslint", "html",
  "cssls", "css_variables", "eslint", "stylelint_lsp",
  "cssls", "css_variables", "eslint", "stylelint_lsp",
  "eslint", "jsonls", "eslint", "marksman",
  "lua_ls", "bashls", "clangd", "clangd",
  "gopls", "groovyls", "jdtls", "kotlin_lanuage_server",
  "pyright", "rust_analyzer", "zls", "bufls"
}

--[[
local utils = require("utils")

Maybe I need this function some day to pass custom params to some specific lsp.
local get_lsp_config = function (lsp_name)
  return {}
end

local is_lsp_active = function(name)
  if name == nil then
    return false
  end

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
  typescriptreact = {
    "ts_ls",
    "eslint",
    "tailwindcss"
  },
  html = {
    "angularls",
    "emmet_language_server",
    "eslint",
    "html"
  },
  css = {
    "cssls",
    "css_variables",
    "eslint",
    "stylelint_lsp"
  },
  scss = {
    "cssls",
    "css_variables",
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

local filetypes = utils.array_from_table_keys(filetypes_with_lsp_mappings)
]]--

return {
  --[[
    get_lsp_config = get_lsp_config,
    is_lsp_active = is_lsp_active,
    filetypes_with_lsp_mappings = filetypes_with_lsp_mappings,
    filetypes = filetypes
  ]]--
  on_attach = on_attach,
  lsps = lsps
}
