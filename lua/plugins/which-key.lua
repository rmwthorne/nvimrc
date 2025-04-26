local as_cmd = require('custom.utils').as_cmd

return {
  {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    opts = {
      preset = 'helix',
      spec = {
        {'<leader>f', group = 'file/find'},
        {'<leader>h', group = 'harpoon', icon = '󱡅'},
        {'<leader>b', group = 'buffers', expand = function() return require('which-key.extras').expand.buf() end },
        {'<leader>bd', as_cmd(':bdelete'), desc = 'delete current', icon = 'X'},
        {'<leader>t', group = 'toggle', icon = ''},
        {'<leader>d', group = 'debug', icon = ''},
        {'<leader>tw', as_cmd('set list!'), desc = 'whitespace', icon = '󰇘'},
        {'<leader>tu', as_cmd('UndotreeToggle'), desc = 'undotree', icon = '󰕌'},
        {'[', group = 'prev'},
        {']', group = 'next'},
        -- {'gs', group = 'surround'},
      },
    },
  },
}
