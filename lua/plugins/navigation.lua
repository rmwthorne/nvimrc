local cmd = require('custom.utils').vim_command

return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
      {'<leader>ff', cmd('Telescope git_files show_untracked=true'), desc = 'find project files'},
      {'<leader>fa', cmd('Telescope find_files'), desc = 'find all files (CWD)'},
      {'<leader>fr', cmd('Telescope oldfiles'), desc = 'recent files'},
      {'<leader>fg', cmd('Telescope live_grep'), desc = 'live grep'},
      {
        '<leader>fw',
        cmd('lua require("telescope.builtin").grep_string{ search = vim.fn.expand("<cword>") }'),
        desc = 'grep word under cursor',
      },
    },
  },
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
      {'<leader>H', function() require('harpoon'):list():add() end, desc = 'Harpoon file'},
      {
        '<leader>he', 
        function()
          local harpoon = require('harpoon')
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = 'menu',
      },
      {'<leader>hj', function() require('harpoon'):list():select(1) end, desc = 'goto 1'},
      {'<leader>hk', function() require('harpoon'):list():select(2) end, desc = 'goto 2'},
      {'<leader>hl', function() require('harpoon'):list():select(3) end, desc = 'goto 3'},
    },
  },
  'mbbill/undotree',
}
