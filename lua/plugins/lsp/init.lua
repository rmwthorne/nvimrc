local reserve_gutter = function()
  vim.opt.signcolumn = "yes"
end

return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    opts = {},
  },

  -- LSP
  {
    "neovim/nvim-lspconfig",
    cmd = { "LspInfo", "LspInstall", "LspStart" },
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      { "hrsh7th/nvim-cmp" },
      { "hrsh7th/cmp-nvim-lsp" },
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
    -- config = function()

    --   -- Set LSP capabilities
    --   local lsp_defaults = require("lspconfig").util.default_config
    --   lsp_defaults.capabilities =
    --     vim.tbl_deep_extend("force", lsp_defaults.capabilities, require("cmp_nvim_lsp").default_capabilities())

    --   -- Setup servers
    --   require("mason-lspconfig").setup {
    --     ensure_installed = {
    --       "basedpyright", -- python
    --       "ts_ls", -- js, ts
    --       "lua_ls", -- lua
    --       "rust_analyzer", -- rust
    --     },
    --     automatic_installation = true,
    --     handlers = {
    --       -- Default handler
    --       function(server_name)
    --         require("lspconfig")[server_name].setup {}
    --       end,
    --       pyright = {
    --         analysis = {
    --           typeCheckingMode = "basic",
    --             diagnosticSeverityOverrides = {
    --                 reportOptionalMemberAccess = "none",
    --                 reportOptionalSubscript = "none",
    --                 reportGeneralTypeIssues = "none",
    --             },
    --         },
    --       }
    --     },
    --   }

    --   -- Diagnostics
    --   vim.diagnostic.config {
    --     virtual_text = true,
    --     update_in_insert = false,
    --     underline = false,
    --     severity_sort = true,
    --     signs = {
    --       text = {
    --         [vim.diagnostic.severity.ERROR] = "󰅚 ",
    --         [vim.diagnostic.severity.WARN] = "󰀪 ",
    --         [vim.diagnostic.severity.HINT] = "󰌶 ",
    --         [vim.diagnostic.severity.INFO] = "󰅚 ",
    --       },
    --     },
    --   }
    -- end,
  },
}
