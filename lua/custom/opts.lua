vim.opt.termguicolors = true
vim.opt.updatetime = 50

-- Line settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.cursorline = true

-- Sensible tab behaviour
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Whitespace characters
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"

-- Visual indicators
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
