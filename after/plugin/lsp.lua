local lsp = require('lsp-zero').preset({'recommended'})

lsp.ensure_installed({
    'jedi-language-server', -- python
    'eslint', -- js, ts lint
    'tsserver', -- js, ts
    'sumneko_lua',
    'rust_analyzer',
})

lsp.set_sign_icons({
    error = '',
    warn = '',
    hint = '',
    info = ''
})

lsp.on_attach(function(_, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

