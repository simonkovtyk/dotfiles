local options = {
  window = {
    margin = {
      horizontal = 0,
      vertical = 0
    }
  },
  render = function(props)
    if not props.focused then
        return
    end
 
    local navic = require "nvim-navic"
    local data = navic.get_data(props.buf) or {}
    local content = {}

    for index, item in ipairs(data) do
      if index ~= 1 then
        table.insert(content, {
          { " > ", group = "NavicSeparator" }
        })
      end

      table.insert(content, {
        { item.icon, group = "NavicIcons" .. item.type },
        { item.name, group = "NavicText" }
      })
    end

    return content
  end
}

return {
  "b0o/incline.nvim",
  event = "VeryLazy",
  opts = options
}
