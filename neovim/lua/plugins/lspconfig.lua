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
    local css_variables = require("lsp.css_variables")
    local cssls = require("lsp.cssls")
    local rust_analyzer = require("lsp.rust_analyzer")
    local typescript_language_server = require("lsp.typescript-language-server")
    local vtsls = require("lsp.vtsls")
    local clangd = require("lsp.clangd")
    local oxlint = require("lsp.oxlint")
    local tailwind = require("lsp.tailwind");

    typescript_language_server.config()
    tailwind.config()

    vim.lsp.enable({ css_variables.name, cssls.name, rust_analyzer.name, vtsls.name, clangd.name, oxlint.name, tailwind.name })


    vim.api.nvim_create_autocmd(
      "LspAttach",
      {
        callback = function (event)
          local client = assert(vim.lsp.get_client_by_id(event.data.client_id));

          if client:supports_method("textDocument/completion") then
            vim.lsp.completion.enable(
              true,
              client.id,
              event.buf,
              {
                autotrigger = true
              }
            );

            vim.keymap.set(
              "i",
              "<C-Space>",
              function()
                vim.lsp.completion.get()
              end
            )
          end

          if not client:supports_method("textDocument/willSaveWaitUntil")
            and client:supports_method("textDocument/formatting") then
            vim.api.nvim_create_autocmd(
              "BufWritePre",
              {
                buffer = event.buf,
                callback = function()
                  vim.lsp.buf.format({ bufnr = event.buf, id = client.id, timeout_ms = 1000 })
                end,
              }
            )
          end
        end
      }
    );
  end
}
