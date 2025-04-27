return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  keys = {
    {'<leader>fm', function() require('conform').format({ async = true }) end, desc='format buffer' },
    {'<leader>fp', ':FormatProject<CR>', desc = 'format project' },
  },
  ---@module 'conform'
  ---@conform.setupOpts
  opts = {
    formatters_by_ft = {
      lua = { 'stylua' },
      python = { 'isort', 'black' },
      rust = { 'rustfmt' },
      javascript = { 'prettierd' },
    },
  },
  config = function(_, opts)
    require('conform').setup(opts)
    vim.api.nvim_create_user_command('FormatProject', function()
      require('conform').format({ all = true, opts = {} })
    end,
      { desc = 'Format the entire project' }
    )
  end
}
