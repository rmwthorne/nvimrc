local as_cmd = require("custom.utils").as_cmd

return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      preset = "helix",
      spec = {
        { "<leader>f", group = "file/find" },
        { "<leader>h", group = "harpoon", icon = { icon = "󱡅", color = "yellow" } },
        {
          "<leader>b",
          group = "buffers",
          expand = function()
            return require("which-key.extras").expand.buf()
          end,
        },
        { "<leader>bd", as_cmd ":bdelete", desc = "delete current", icon = "X" },
        { "<leader>t", group = "toggle", icon = "" },
        { "<leader>d", group = "debug", icon = { icon = "", color = "red" } },
        { "<leader>tw", as_cmd "set list!", desc = "whitespace", icon = "󰇘" },
        { "<leader>tu", as_cmd "UndotreeToggle", desc = "undotree", icon = "󰕌" },
        { "<leader>c", group = "trouble" },
        { "gr", group = "LSP Reference", icon = "" },
        { "[", group = "Go to Previous" },
        { "[b", desc = "Prev buffer" },
        { "[d", desc = "Prev warning" },
        { "]", group = "Go to Next" },
        { "]b", desc = "Next buffer" },
        { "]d", desc = "Next warning" },
      },
    },
  },
}
