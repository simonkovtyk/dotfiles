return {
  "neovim/nvim-lspconfig",
  dependencies = {
    {
      "williamboman/mason-lspconfig.nvim",
      lazy = true,
      opts = {
        automatic_enable = true
      }
    }
  },
  config = function()
    local lsp_settings = require("lsp_settings")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    vim.lsp.config("*", {
      capabilities = capabilities,
      on_attach = lsp_settings.on_attach
    })
  end
}
