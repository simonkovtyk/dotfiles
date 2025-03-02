return {
  "L3MON4D3/LuaSnip",
  version = "v2.*",
  config = function()
    local luasnip = require("luasnip")

    luasnip.setup();

    local snipmate_engine = require("luasnip.loaders.from_snipmate")

    snipmate_engine.lazy_load();
  end,
  event = "InsertEnter"
}

