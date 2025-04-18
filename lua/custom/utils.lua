local M = {}

M.vim_command = function(command)
  return '<Cmd>'..command..'<CR>'
end;

return M
