return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  keys = {
    {'<leader>fm', function() require('conform').format({ async = true }) end, desc='Format buffer' }
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
}
