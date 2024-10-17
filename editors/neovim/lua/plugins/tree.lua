local options = {
  window = {
    position = "right"
  },
  modified = {
    symbol = "[+]",
    highlight = "NeoTreeModified",
  },
  filesystem = {
    filtered_items = {
      visible = true,
      hide_dotfiles = false,
      hide_gitignored = false
    }
  }
}

return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim"
  },
  branch = "v3.x",
  opts = options
}
