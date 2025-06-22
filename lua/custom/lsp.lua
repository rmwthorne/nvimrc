
vim.lsp.enable({
  "luals",          -- Lua
  "basedpyright",   -- Python
  "ts_ls",          -- Javascript/Typescript
  "jdtls",          -- Java
  "markdown_oxide", -- Markdown
})

vim.lsp.config['*'] = {
  root_markers = { '.git' },
}

-- Keymaps
--
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(event)
    local opts = {buffer = event.buf}
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'grt', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', 'grd', vim.lsp.buf.declaration, opts)
  end,
})

-- Diagnostics
--
vim.diagnostic.config {
  virtual_text = true,
  update_in_insert = false,
  underline = false,
  severity_sort = true,
  float = {
    border = "rounded",
    source = "if_many",
    header = "Lint",
  },
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = " ",
      [vim.diagnostic.severity.WARN] = "󰀪 ",
      [vim.diagnostic.severity.HINT] = "󰌶 ",
      [vim.diagnostic.severity.INFO] = " ",
    },
  },
}

vim.keymap.set("n", "<leader>td", function ()
  vim.diagnostic.enable(not vim.diagnostic.is_enabled())
  require("custom.utils").notify_toggled("Diagnostics", vim.diagnostic.is_enabled())
end, { desc = "Diagnostics" })

vim.keymap.set("n", "<leader>ti", function ()
  vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
  require("custom.utils").notify_toggled("Inlay Hints", vim.lsp.inlay_hint.is_enabled())
end, { desc = "Inlay hints" })

