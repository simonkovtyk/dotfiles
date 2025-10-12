local options = {
  options = {
    theme = "dark-orchid",
    section_separators = { left = "", right = "" },
    component_separators = "",
    refresh = {
      statusline = 100,
      tabline = 200,
      winbar = 200,
    }
  },
  sections = {
    lualine_a = {
      {
        function ()
          return " │"
        end,
        separator = { left = "", right = "" },
        padding = 0
      }
    },
    lualine_b = {
      {
        "mode",
        separator = { left = "", right = "" },
        padding = 1
      }
    },
    lualine_c = {
      {
        "filetype",
        separator = { left = "", right = "" },
        colored = false,
        padding = {
          left = 3
        },
        icon_only = true,
        fmt = function (value)
          if value == nil or value == "" then
            return ""
          end

          return value .. "  "
        end
      },
      {
        "branch",
        icon = "",
        padding = {
          left = 3
        },
        fmt = function (value)
          if value == nil or value == "" then
            return ""
          end

          return value
        end
      }
    },
    lualine_x = {
      {
        "tabnine",
        padding = {
          right = 3
        }
      },
      {
        "filesize",
        icon = "",
        padding = {
          right = 3
        },
        fmt = function (value)
          if value == nil or value == "" then
            return ""
          end

          return string.upper(value)
        end
      }
    },
    lualine_y = {
      {
        "encoding",
        icon = "",
        padding = {
          right = 3
        },
        fmt = function (value)
          if value == nil or value == "" then
            return ""
          end

          return string.upper(value)
        end
      }
    },
    lualine_z = {
      {
        "location",
        icon = "󰦨",
        padding = 0,
        separator = { left = "", right = "" },
        fmt = function (value)
          return "│ " .. value;
        end
      }
    }
  }
}

return {
  "nvim-lualine/lualine.nvim",
  lazy = true,
  init = function ()
    local group_id = vim.api.nvim_create_augroup("Lualine Attach Group", {
      clear = true
    })

    local utils = require("utils")
    local disallowed_filetypes = { "dashboard", "lazy", "lazy_backdrop", "mason", "mason_backdrop" }

    local load_plugin = function ()
      local includes_disallowed_filetype = utils.array_includes(disallowed_filetypes, vim.bo.filetype)

      if includes_disallowed_filetype then
        return
      end

      require "lualine".setup(options)
      vim.api.nvim_del_augroup_by_id(group_id)
    end

    vim.api.nvim_create_autocmd({ "BufReadPost", "FileType" }, {
      group = group_id,
      callback = load_plugin
    })
  end
}
