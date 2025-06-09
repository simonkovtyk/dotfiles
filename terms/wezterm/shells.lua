local M = {}

M.default_cwd = "~"
M.default_prog = {
  "/usr/bin/fish"
}
M.launch_menu = {
  {
    label = "Arch Linux",
    args = {
      "/usr/bin/fish"
    }
  },
  {
    label = "SSH: private",
    args = {
      "wezterm",
      "ssh",
      "private"
    }
  },
  {
    label = "SSH: ogs-notebook",
    args = {
      "wezterm",
      "ssh",
      "ogs-notebook"
    }
  },
  {
    label = "SSH: home",
    args = {
      "wezterm",
      "ssh",
      "home"
    }
  }
}

return M
