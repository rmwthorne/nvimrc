local tel = require('telescope.builtin')

local grep_cursor_word = function()
    tel.grep_string { search = vim.fn.expand("<cword>") }
end

local all_git_files = function ()
    tel.git_files { show_untracked = true }
end

local find_config_files = function ()
    tel.git_files {
        cwd = '~/.config/nvim',
        prompt_title = 'config files',
        show_untracked = true,
    }
end


return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
      {'<leader>ff', all_git_files, desc = 'find project files'},
      {'<leader>fa', tel.find_files, desc = 'find all files (CWD)'},
      {'<leader>f.', find_config_files, desc = 'find nvimrc config files'},
      {'<leader>fr', tel.oldfiles, desc = 'recent files'},
      {'<leader>fg', tel.live_grep, desc = 'live grep'},
      {'<leader>fh', tel.help_tags, desc = 'help docs'},
      {'<leader>fw', grep_cursor_word, desc = 'grep word under cursor'},
    },
  },
}
