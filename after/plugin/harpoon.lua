
local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

local switch_to = function(file_number)
  return function()
    ui.nav_file(file_number)
    print('Harpoon file '..file_number)
  end;
end;

vim.keymap.set("n", "<leader>hm", mark.add_file)
vim.keymap.set("n", "<leader>he", ui.toggle_quick_menu)
vim.keymap.set("n", "<leader>hj", switch_to(1))
vim.keymap.set("n", "<leader>hk", switch_to(2))
vim.keymap.set("n", "<leader>hl", switch_to(3))
vim.keymap.set("n", "<leader>h;", switch_to(4))

