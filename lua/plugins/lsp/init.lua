local reserve_gutter = function()
  vim.opt.signcolumn = "yes"
end

return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    opts = {},
  },
  {
    "neovim/nvim-lspconfig",
    cmd = { "LspInfo", "LspInstall", "LspStart" },
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      { "williamboman/mason.nvim" },
      { "williamboman/mason-lspconfig.nvim" },
    },
    init = reserve_gutter,
    keys = {
      {'gd', vim.lsp.buf.definition, desc = 'LSP Go to definition' },
      {'gD', vim.lsp.buf.declaration, desc = 'LSP Go to Declaration' },
      {'gi', vim.lsp.buf.implementation, desc = 'LSP Go to implementation' },
      -- {'grr', desc = 'References' },
      -- {'gri', desc = 'Implementations' },
      -- {'gra', desc = 'Code action', icon = '' },
      -- {'grn', desc = 'Rename', icon = '' },
      {'<leader>d', vim.diagnostic.open_float, desc = 'Show diagnostic under cursor'},
      {'K', vim.lsp.buf.hover, desc = 'Hover'},
    },
  },
  {
    'j-hui/fidget.nvim'
  },
}
