local utils = require "utils"

return {
  "andweeb/presence.nvim",
  opts = {
    neovim_image_text = "NeoVim " .. utils.get_nvim_semver()
  }
}
