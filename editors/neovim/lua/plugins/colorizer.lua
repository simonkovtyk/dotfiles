local options = {
  filetypes = {
    "*"
  },
  user_default_options = {
    RGB = true,
    RRGGBB = true,
    names = true,
    RRGGBBAA = true,
    AARRGGBB = true,
    rgb_fn = true,
    hsl_fn = true,
    css = true,
    css_fn = true,
    tailwind = true,
    mode = "background",
    sass = {
      enabled = true,
      parsers = {
        "css"
      }
    }
  }
} 

return {
  "NvChad/nvim-colorizer.lua",
  opts = options
}
