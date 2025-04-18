local cmd = require('custom/utils').vim_command

return {
  {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    opts = {
      preset = 'helix',
      spec = {
        {'<leader>f', group = 'file/find'},
        {'<leader>h', group = 'harpoon', icon = '󱡅'},
        {'<leader>b', group = 'buffers', expand = function()
            return require('which-key.extras').expand.buf()
        end
        },
        {'<leader>t', group = 'toggle'},
        {'<leader>tw', cmd('set list!'), desc = 'whitespace', icon = ''},
        {'<leader>tu', cmd('UndotreeToggle'), desc = 'whitespace' icon = '󰇘'},
      },
    },
    keys = {
      {
        '<leader>?',
        function()
          require('which-key').show({ global = false })
        end,
        desc = 'Buffer Local Keymaps (which-key)',
      },
    },
  },
}
