
-- Exit insert mode without leaving home row
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('i', 'JK', '<Esc>')

-- Tab through buffers
vim.keymap.set('n', '<Tab>', '<Cmd>bnext<CR>')
vim.keymap.set('n', '<S-Tab>', '<Cmd>bprevious<CR>')

-- Keep cursor stationary when merging lines
vim.keymap.set("n", "J", "mzJ`z")

-- Keep cursor centered when paging up/down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Search behaviour
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')
vim.keymap.set('n', '<Esc>', '<Cmd>:noh<CR>')

