local M = {}

M.as_cmd = function(command)
  return '<Cmd>'..command..'<CR>'
end;

return M
