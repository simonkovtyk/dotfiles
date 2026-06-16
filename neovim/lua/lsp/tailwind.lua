local M = {}

M.name = "tailwindcss"

M.get_config = function ()
  return {
    settings = {
      tailwindCSS = {
        classFunctions = { "cva", "cx" },
      }
    }
  }
end

M.config = function ()
  vim.lsp.config(M.name, M.get_config())
end

return M;
