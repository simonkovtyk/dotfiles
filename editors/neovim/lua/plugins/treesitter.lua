local options = {
  ensure_installed = {
    "typescript",
    "html",
    "astro",
    "bash",
    "c",
    "css",
    "jsdoc",
    "json",
    "json5",
    "lua",
    "luadoc",
    "nginx",
    "rust",
    "svelte",
    "zig"
  },
  auto_install = true
}

return {
  "nvim-treesitter/nvim-treesitter",
  opts = options
}
