local options = {
  indent = {
    char = "│"
  },
  scope = {
    show_start = false,
    show_end = false
  },
  exclude = {
    filetypes = {
      "dashboard",
      "neo-tree"
    }
  }
}

return {
  "lukas-reineke/indent-blankline.nvim",
  event = "VimEnter",
  main = "ibl",
  opts = options
}
