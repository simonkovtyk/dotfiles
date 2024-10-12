local logo = [[
  ██████  ██▓ ███▄ ▄███▓ ▒█████   ███▄    █  ██ ▄█▀ ▒█████   ██▒   █▓
▒██    ▒ ▓██▒▓██▒▀█▀ ██▒▒██▒  ██▒ ██ ▀█   █  ██▄█▒ ▒██▒  ██▒▓██░   █▒
░ ▓██▄   ▒██▒▓██    ▓██░▒██░  ██▒▓██  ▀█ ██▒▓███▄░ ▒██░  ██▒ ▓██  █▒░
  ▒   ██▒░██░▒██    ▒██ ▒██   ██░▓██▒  ▐▌██▒▓██ █▄ ▒██   ██░  ▒██ █░░
▒██████▒▒░██░▒██▒   ░██▒░ ████▓▒░▒██░   ▓██░▒██▒ █▄░ ████▓▒░   ▒▀█░  
▒ ▒▓▒ ▒ ░░▓  ░ ▒░   ░  ░░ ▒░▒░▒░ ░ ▒░   ▒ ▒ ▒ ▒▒ ▓▒░ ▒░▒░▒░    ░ ▐░  
░ ░▒  ░ ░ ▒ ░░  ░      ░  ░ ▒ ▒░ ░ ░░   ░ ▒░░ ░▒ ▒░  ░ ▒ ▒░    ░ ░░  
░  ░  ░   ▒ ░░      ░   ░ ░ ░ ▒     ░   ░ ░ ░ ░░ ░ ░ ░ ░ ▒       ░░  
      ░   ░         ░       ░ ░           ░ ░  ░       ░ ░        ░  
                                                                 ░   
]]

logo = string.rep("\n", 8) .. logo .. "\n\n"

local version_info = vim.version()

local options = {
  theme = "doom",
  disable_move = true,
  shortcut_type = "letter",
  hide = {
    statusline = true,    -- hide statusline default is true
    tabline = true,       -- hide the tabline
    winbar = true        -- hide winbar
  },
  config = {
    header = vim.split(logo, "\n"),
    center = {
      {
        desc = "NeoVim Custom " .. version_info.major .. "." .. version_info.minor .. "." .. version_info.patch,
      }
    }
  }
}

return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  opts = options,
  dependencies = {
    {
      "nvim-tree/nvim-web-devicons"
    }
  }
}
