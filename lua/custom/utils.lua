local M = {}

M.as_cmd = function(command)
  return "<Cmd>" .. command .. "<CR>"
end

M.set_indent = function(filetypes, tabsize)
  vim.api.nvim_create_autocmd("FileType", {
    pattern = filetypes,
    callback = function()
      vim.opt_local.tabstop = tabsize
      vim.opt_local.shiftwidth = tabsize
    end,
  })
end

return M
