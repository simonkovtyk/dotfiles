local options = {
  attach_navic = false,
  theme = "catppuccin-mocha"
}

return {
  "utilyre/barbecue.nvim",
  opts = options,
  event = "BufReadPost"
}
