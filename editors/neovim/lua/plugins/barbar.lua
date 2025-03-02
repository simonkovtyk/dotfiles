local options = {
  animation = false,
  tabpages = true,
  clickable = false,
  focus_on_close = "previous",
  maximum_padding = 1,
  minimum_padding = 1,
  icons = {
    buffer_index = true,
    button = ""
  }
}

return {
  "romgrk/barbar.nvim",
  opts = options,
  event = "BufReadPost"
}
