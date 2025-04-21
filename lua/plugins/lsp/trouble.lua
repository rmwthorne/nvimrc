local as_cmd = require('custom.utils').as_cmd
return {
  "folke/trouble.nvim",
  opts = {},
  cmd = "Trouble",
  keys = {
    {
      "<leader>xx",
      as_cmd("Trouble diagnostics toggle"),
      desc = "Diagnostics (Trouble)",
    },
    {
      "<leader>xX",
      as_cmd("Trouble diagnostics toggle filter.buf=0"),
      desc = "Buffer Diagnostics (Trouble)",
    },
    {
      "<leader>cs",
      as_cmd("Trouble symbols toggle focus=false"),
      desc = "Symbols (Trouble)",
    },
    {
      "<leader>cl",
      as_cmd("Trouble lsp toggle focus=false win.position=right"),
      desc = "LSP Definitions / references / ... (Trouble)",
    },
    {
      "<leader>xL",
      as_cmd("Trouble loclist toggle"),
      desc = "Location List (Trouble)",
    },
    {
      "<leader>xQ",
      as_cmd("Trouble qflist toggle"),
      desc = "Quickfix List (Trouble)",
    },
  },
}
