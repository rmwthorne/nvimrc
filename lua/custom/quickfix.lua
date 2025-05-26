local M = {}

M.quickfix_is_open = function()
  for _, win in ipairs(vim.fn.getwininfo()) do
    if win.quickfix == 1 then
      return true
    end
  end
  return false
end

M.next_quickfix =  function()
  local qf_list = vim.fn.getqflist()
  local qf_index = vim.fn.getqflist({ idx = 0 }).idx
  if qf_index < #qf_list then
    vim.cmd("cnext")
  else
    vim.notify("Already at last quickfix item", vim.log.levels.INFO)
  end
end

M.prev_quickfix = function()
  local qf_index = vim.fn.getqflist({ idx = 0 }).idx
  if qf_index > 1 then
    vim.cmd("cprevious")
  else
    vim.notify("Already at first quickfix item", vim.log.levels.INFO)
  end
end

return M
