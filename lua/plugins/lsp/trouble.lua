local cmd = require('custom.utils').vim_command
return {
  "folke/trouble.nvim",
  opts = {},
  cmd = "Trouble",
  keys = {
    {
      "<leader>xx",
      cmd("Trouble diagnostics toggle"),
      desc = "Diagnostics (Trouble)",
    },
    {
      "<leader>xX",
      cmd("Trouble diagnostics toggle filter.buf=0"),
      desc = "Buffer Diagnostics (Trouble)",
    },
    {
      "<leader>cs",
      cmd("Trouble symbols toggle focus=false"),
      desc = "Symbols (Trouble)",
    },
    {
      "<leader>cl",
      cmd("Trouble lsp toggle focus=false win.position=right"),
      desc = "LSP Definitions / references / ... (Trouble)",
    },
    {
      "<leader>xL",
      cmd("Trouble loclist toggle"),
      desc = "Location List (Trouble)",
    },
    {
      "<leader>xQ",
      cmd("Trouble qflist toggle"),
      desc = "Quickfix List (Trouble)",
    },
  },
}
