local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("python", {
  s("main", {
    t {
      "def main():",
      "    pass",
      "",
      "",
    },
    t {
      'if __name__ == "__main__":',
      "    pass",
    },
    i(0),
  }),
})

-- -- })
-- return {
--     {
--         'python',
--         {
--             s(
--                 'main',
--                 {
--                     t({
--                         'def main():',
--                         '    pass', '', ''
--                     }),
--                     i(0),
--                 }
--             ),
--         }
--     },
-- }
