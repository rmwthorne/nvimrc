return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      {
        "<leader>H",
        function()
          require("harpoon"):list():add()
        end,
        desc = "Harpoon file",
      },
      {
        "<leader>he",
        function()
          local harpoon = require "harpoon"
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = "menu",
      },
      {
        "<leader>hj",
        function()
          require("harpoon"):list():select(1)
        end,
        desc = "goto 1",
      },
      {
        "<leader>hk",
        function()
          require("harpoon"):list():select(2)
        end,
        desc = "goto 2",
      },
      {
        "<leader>hl",
        function()
          require("harpoon"):list():select(3)
        end,
        desc = "goto 3",
      },
    },
  },
}
