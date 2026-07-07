local logo = [[
███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓
 ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒
▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░
▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██ 
▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒
░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░
░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░
   ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░   
         ░    ░  ░    ░ ░        ░   ░         ░   
                                ░                  
]]
logo = logo .. string.rep("\n", 2)

local version_info = vim.version()

logo = logo .. version_info.major .. "." .. version_info.minor .. "." .. version_info.patch

logo = logo .. string.rep("\n", 2)
logo = vim.split(logo, "\n")

local dashboard = require("dashboard")

dashboard.setup({
  theme = "doom",
  disable_move = true,
  shortcut_type = "letter",
  hide = {
    statusline = true,
    tabline = true,
    winbar = true
  },
  config = {
    vertical_center = true,
    header = logo,
    center = {
      {
        icon = " ",
        desc = "New file",
        action = "enew",
        key = "n",
        key_format = "[%s]"
      },
      {
        icon = " ",
        desc = "Explore files",
        action = "Neotree current",
        key = "e",
        key_format = "[%s]"
      },
      {
        icon = " ",
        desc = "Search files",
        action = "Telescope",
        key = "t",
        key_format = "[%s]"
      },
      {
        icon = " ",
        desc = "Quit",
        action = "qa",
        key = "q",
        key_format = "[%s]"
      },
      {
        icon = "󱝀 ",
        desc = "Check health",
        action = "checkhealth",
        key = "h",
        key_format = "[%s]"
      },
      {
        icon = " ",
        desc = "View GitHub",
        action = "silent exec '!firefox -new-tab https://github.com/simonkovtyk > /dev/null 2>&1'",
        key = "g",
        key_format = "[%s]"
      }
    }
  }
})
