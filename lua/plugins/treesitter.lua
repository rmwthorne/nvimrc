return {
  {
    'nvim-treesitter/nvim-treesitter',
    version = false,
    build = ':TSUpdate',
    event = { 'BufReadPre', 'BufNewFile' },
    cmd = {'TSUpdateSync', 'TSUpdate', 'TSInstall'},
    dependencies = { 'nvim-treesitter/nvim-treesitter-textobjects', },
    keys = {
    },
    config = function()
        local configs = require('nvim-treesitter.configs')
        configs.setup({
            highlight = { enable = true, use_language = true, },
            indent = { enable = true },
            ensure_installed = {
                'bash',
                'diff',
                'html',
                'javascript',
                'json',
                'lua',
                'markdown',
                'python',
                'query',
                'regex',
                'rust',
                'toml',
                'tsx',
                'typescript',
                'vim',
                'xml',
                'yaml',
            },
        })
    end,
  },
  {
    'nvim-treesitter-textobjects',
    lazy = true,
    config = function()
        require('nvim-treesitter.configs').setup({
            textobjects = {
                select = {
                    enable = true,
                    lookahead = true,
                    keymaps = {
                        ['af'] = { query = '@function.outer', desc = 'function block'},
                        ['if'] = { query = '@function.inner', desc = 'function block'},
                        ['ac'] = { query = '@class.outer', desc = 'class block'},
                        ['ic'] = { query = '@class.inner', desc = 'class block'},
                        ['ar'] = { query = '@parameter.outer', desc = 'arg/param'},
                        ['ir'] = { query = '@parameter.inner', desc = 'arg/param'},
                    },
                },
            },
        })
    end,
  },
}
