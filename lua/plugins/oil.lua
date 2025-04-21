local as_cmd = require('custom.utils').as_cmd

return {
    {
        'stevearc/oil.nvim',
        ---@module 'oil'
        ---@type oil.SetupOpts
        opts = {},
        -- Optional dependencies
        -- dependencies = { { "echasnovski/mini.icons", opts = {} } },
        dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
        lazy = false,
        keys = {
          {'-', as_cmd('Oil'), desc = 'File explorer'},
        }
    },
}
