local image = require("image");

image.setup({
  backend = "kitty",
  integrations = {
    markdown = {
      enabled = false
    },
    neorg = {
      enabled = false
    },
    typst = {
      enabled = false
    },
    html = {
      enabled = false
    },
    css = {
      enabled = false
    }
  },
  hijack_file_patterns = { "*.png", "*.jpg", "*.jpeg", "*.gif", "*.webp", "*.avif" }
})
