local options = {
  opts = {
    enable_close_on_slash = true
  }
}

return {
  "windwp/nvim-ts-autotag",
  event = "InsertEnter",
  opts = options
}
