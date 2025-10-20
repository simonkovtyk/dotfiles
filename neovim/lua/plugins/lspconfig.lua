return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason-lspconfig.nvim"
  },
  event = "BufReadPost",
  config = function()
    local lsp_settings = require("lsp_settings")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    for _, value in ipairs(lsp_settings.lsps) do
      vim.lsp.config(value, {
        capabilities = capabilities,
        on_attach = lsp_settings.on_attach
      })
      vim.lsp.enable(value)
    end
  end
}
