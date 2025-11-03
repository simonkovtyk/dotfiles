local lsps = {
  "ts_ls", "angularls",
  "eslint", "tailwindcss",
  "emmet_language_server", "html",
  "cssls", "css_variables", "stylelint_lsp",
  "jsonls", "marksman",
  "lua_ls", "bashls", "clangd",
  "gopls", "groovyls", "jdtls", "kotlin_lanuage_server",
  "pyright", "rust_analyzer", "zls", "bufls",
  "mdx_analyzer"
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
  lsps = lsps
}
