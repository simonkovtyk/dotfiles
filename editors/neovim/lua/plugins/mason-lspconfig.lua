local options = {
  ensure_installed = {
    "ts_ls",
    "angularls",
    "astro",
    "bashls",
    "clangd",
    "cssls",
    "tailwindcss",
    "emmet_language_server",
    "html",
    "jsonls",
    "eslint",
    "lua_ls",
    "rust_analyzer",
    "marksman",
    "zls",
    "pyright",
    "gopls",
    "kotlin_language_server",
    "jdtls",
    "vuels",
    "groovyls",
    "stylelint_lsp"
  }
}

return {
  "williamboman/mason-lspconfig.nvim",
  opts = options,
  lazy = true
}
