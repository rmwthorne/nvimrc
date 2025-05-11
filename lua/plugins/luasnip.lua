return {
  "L3MON4D3/LuaSnip",
  version = "v2.3.0",
  pin = true,
  build = "make install_jsregexp",
  config = function()
    require("luasnip.loaders.from_lua").lazy_load { paths = "./lua/custom/snippets" }
    require("luasnip").filetype_extend("lua", { "all" })
    require("luasnip").filetype_extend("python", { "all" })
  end,
}
