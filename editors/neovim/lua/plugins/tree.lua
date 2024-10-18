local options = {
  window = {
    position = "right",
    popup = {
      border = "single"
    }
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
    "MunifTanjim/nui.nvim"
  },
  branch = "v3.x",
  opts = options
}
