local opts = {
  ui = {
    border = "rounded",
    icons = {
      package_installed = "●",
      package_pending = "○",
      package_uninstalled = "○"
    }
  }
}

return {
  "williamboman/mason.nvim",
  opts = opts,
  cmd = { "Mason", "MasonUpdate", "MasonInstall", "MasonUninstall", "MasonUninstallAll", "MasonLog" }
}
