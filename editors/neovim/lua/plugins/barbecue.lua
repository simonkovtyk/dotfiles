local options = {
  attach_navic = false,
  theme = "catppuccin-mocha"
}

return {
  "utilyre/barbecue.nvim",
  name = "barbecue",
  opts = options,
  event = "BufReadPost"
}
