local M = {}

M.name = "ts_ls"

M.get_config = function()
  return {
    init_options = {
      disableAutomaticTypingAcquisition = true,
      completionDisableFilterText = true,
      supportsMoveToFileCodeAction = false,
      tsserver = {
        useSyntaxServer = true
      },
      preferences = {
        quotePreference = "double",
        jsxAttributeCompletionStyle = "none",
        interactiveInlayHints = false,
        includeCompletionsWithSnippetText = false,
        useLabelDetailsInCompletionEntries = false,
        includeInlayParameterNameHints = "none",
        includeInlayParameterNameHintsWhenArgumentMatchesName = false,
        includeInlayFunctionParameterTypeHints = false,
        includeInlayVariableTypeHints = false,
        includeInlayVariableTypeHintsWhenTypeMatchesName = false,
        includeInlayPropertyDeclarationTypeHints = false,
        includeInlayFunctionLikeReturnTypeHints = false,
        includeInlayEnumMemberValueHints = false
      }
    }
  }
end

M.config = function ()
  vim.lsp.config(M.name, M.get_config())
end

return M
