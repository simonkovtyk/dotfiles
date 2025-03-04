return {
  "neovim/nvim-lspconfig",
  ft = {
    "javascript",
    "typescript",
    "html",
    "css",
    "scss",
    "json",
    "markdown",
    "lua",
    "bash",
    "c",
    "cpp",
    "go",
    "groovy",
    "java",
    "kotlin",
    "python",
    "rust",
    "zig"
  },
  config = function()
    vim.diagnostic.config({
      virtual_text = false,
      update_in_insert = true,
      severity_sort = true,
      float = true
    })

    local init_lsp = function()
      local lsp_settings = require "lsp"
      local current_buffer_filetype = vim.bo.filetype
      local matching_lsps = lsp_settings.filetypes_with_lsp_mappings[current_buffer_filetype];

      if matching_lsps == nil then
        return
      end

      local lspconfig = require "lspconfig"

      for _, value in ipairs(matching_lsps) do
        local is_lsp_active = lsp_settings.is_lsp_active(value)

        if is_lsp_active then
          goto continue
        end

        local found_lsp = lspconfig[value]

        found_lsp.setup({
          on_attach = lsp_settings.on_attach,
          capabilities = lsp_settings.capabilities
        })

        ::continue::
      end
    end

    init_lsp()

    vim.api.nvim_create_autocmd("BufReadPost", {
      desc = "LSP Attach",
      callback = function()
        init_lsp()
      end
    })
  end
}
