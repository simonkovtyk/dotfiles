--[[
local options = {
  disable_auto_comment=true,
  accept_keymap="<Tab>",
  dismiss_keymap = "<C-]>",
  debounce_ms = 800,
  suggestion_color = {gui = "#808080", cterm = 244},
  exclude_filetypes = {"TelescopePrompt", "NvimTree"},
  log_file_path = "/home/simonkov/tabnine.log", -- absolute path to Tabnine log file
  ignore_certificate_errors = false
}

return {
  "codota/tabnine-nvim",
  build = "/home/simonkov/.local/share/nvim/lazy/tabnine-nvim/dl_binaries.sh",
  config = function()
    require("tabnine").setup(options)
  end
}
]]--

local options = {}

return {
  "tzachar/cmp-tabnine",
  build = "./install.sh",
  opts = options
}
