return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason-lspconfig.nvim"
  },
  event = "BufReadPost",
  config = function()
    vim.diagnostic.config({
      virtual_text = true,
      update_in_insert = true,
      severity_sort = true,
      float = true,
      signs = {
        text = {
          [vim.diagnostic.severity.ERROR] = "",
          [vim.diagnostic.severity.WARN] = "",
          [vim.diagnostic.severity.INFO] = "",
          [vim.diagnostic.severity.HINT] = "",
        },
        numhl = {
          [vim.diagnostic.severity.ERROR] = "DiagnosticErrorNum",
          [vim.diagnostic.severity.WARN] = "DiagnosticWarnNum",
          [vim.diagnostic.severity.INFO] = "DiagnosticInfoNum",
          [vim.diagnostic.severity.HINT] = "DiagnosticHintNum",
        },
        linehl = {
          [vim.diagnostic.severity.ERROR] = "DiagnosticErrorLine",
          [vim.diagnostic.severity.WARN] = "DiagnosticWarnLine",
          [vim.diagnostic.severity.INFO] = "DiagnosticInfoLine",
          [vim.diagnostic.severity.HINT] = "DiagnosticHintLine",
        }
      }
    })

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
