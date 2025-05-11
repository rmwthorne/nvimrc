
vim.lsp.enable "luals"
vim.lsp.enable "basedpyright"

vim.lsp.config['*'] = {
  root_markers = { '.git' },
}

-- Disagnostics
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
end, { desc = "Diagnostics" })

vim.keymap.set("n", "<leader>ti", function ()
  vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
end, { desc = "Inlay hints" })

