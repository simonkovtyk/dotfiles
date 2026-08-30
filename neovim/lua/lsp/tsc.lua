local M = {}

M.name = "tsgo"

M.get_config = function ()
  return {
    cmd = function(dispatchers, config)
      return vim.lsp.rpc.start({ 'tsc', '--lsp', '--stdio' }, dispatchers)
    end
  }
end

M.config = function ()
  vim.lsp.config(M.name, M.get_config())
end

return M
