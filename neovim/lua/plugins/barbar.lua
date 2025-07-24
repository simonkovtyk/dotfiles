local default_visiblity = {
  separator = {
    left = "",
    right = " "
  },
  button = "",
  filetype = {
    custom_colors = true
  }
}

return {
  "romgrk/barbar.nvim",
  opts = {
    animation = false,
    clickable = false,
    icons = {
      separator_at_end = false,
      alternate = default_visiblity,
      current = default_visiblity,
      inactive = {
        separator = {
          left = "",
          right = " "
        },
        button = "",
        filetype = {
          custom_colors = true
        }
      },
      visible = {
        separator = {
          left = "",
          right = " "
        },
        button = "",
        filetype = {
          custom_colors = true
        }
      }
    },
    maximum_padding = 1,
    minimum_padding = 1
  }
}
