vim.opt.termguicolors = true
vim.opt.updatetime = 50

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.cursorline = true

-- Indentation
local set_indent = require('custom.utils').set_indent
set_indent({'lua', 'javascript', 'typescript'}, 2)
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Whitespace characters
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"

-- Visual feedback
vim.opt.incsearch = true
vim.api.nvim_create_autocmd(
    'TextYankPost',
    {
        pattern = '*',
        callback = function ()
            vim.highlight.on_yank()
        end
    }
)
