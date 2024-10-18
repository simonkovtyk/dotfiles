local options = function(bufferline)
  return {
    options = {
      themable = false,
      close_icon = "",
      buffer_close_icon = "",
      show_buffer_icons = false,
      show_buffer_close_icons = false,
      show_close_icon = false,
      separator_style = "thick",
      style_preset = {
        bufferline.style_preset.no_italic,
        bufferline.style_preset.no_bold
      },
      numbers = function(opts)
        return string.format("%s", opts.raise(opts.id))
      end
    }
  }
end

return {
  "akinsho/bufferline.nvim",
  config = function()
    local bufferline = require "bufferline"
    bufferline.setup(
      options(bufferline)
    )
  end
}
