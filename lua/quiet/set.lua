vim.opt.termguicolors = true

-- Line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Overriding vim's tab shenanigans
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Whitespace
vim.opt.list = true
vim.opt.listchars:append "space:⋅"
-- vim.opt.listchars:append "eol:↴"
