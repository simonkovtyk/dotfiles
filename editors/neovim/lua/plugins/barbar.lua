local options = {
  animation = false,
  tabpages = true,
  clickable = false,
  focus_on_close = "previous",
  maximum_padding = 1,
  minimum_padding = 1,
  icons = {
    buffer_index = true,
    button = "",
    separator_at_end = false,
    pinned = {
      button = "󰐃",
      filename = true
    },
    filetype = {
      custom_colors = true
    }
  },
  letters = "1234567890qwertzuiopasdfghjklyxcvbnm"
}

vim.g.barbar_auto_setup = false

return {
  "romgrk/barbar.nvim",
  opts = options,
  event = "BufReadPost"
}
