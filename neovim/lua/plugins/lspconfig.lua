return {
  "neovim/nvim-lspconfig",
  dependencies = {
    {
      "williamboman/mason-lspconfig.nvim",
      lazy = true,
      opts = {
        automatic_enable = false
      }
    }
  },
  config = function()
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    vim.lsp.config("*", {
      capabilities = capabilities,
    })

    local css_variables = require("lsp.css_variables")
    local cssls = require("lsp.cssls")
    local rust_analyzer = require("lsp.rust_analyzer")
    local typescript_language_server = require("lsp.typescript-language-server")
    local vtsls = require("lsp.vtsls")

    typescript_language_server.config()

    vim.lsp.enable({ css_variables.name, cssls.name, rust_analyzer.name, vtsls.name })
  end
}
