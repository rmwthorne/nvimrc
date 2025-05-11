return {
  {
    "lewis6991/gitsigns.nvim",
    dependencies = { 'nvim-lua/plenary.nvim' },
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      auto_attach = true,
      attach_to_untracked = true,
      signs = {
        delete = { show_count = true },
        topdelete = { show_count = true },
        changedelete = { show_count = true },
      },
      current_line_blame_opts = {
        delay = 0,
      },
    },
    keys = {
      {
        "<leader>tb",
        function()
          require("gitsigns").toggle_current_line_blame()
        end,
        desc = "git blame line",
      },
      {
        "]h",
        function()
          require('gitsigns').nav_hunk('next')
        end,
        desc = 'Next git hunk'
      },
      {
        "[h",
        function()
          require('gitsigns').nav_hunk('next')
        end,
        desc = 'Previous git hunk'
      },
    },
  },
}
