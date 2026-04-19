return {
    'ThePrimeagen/refactoring.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {
        prompt_func_param_type = {
            cpp = true,
            hpp = true,
            c = true,
            h = true,
        },
        prompt_func_return_type = {
            cpp = true,
            hpp = true,
            c = true,
            h = true,
        },
    },
    cmd = 'Refactor',
    keys = {
        {
            '<Leader>rr',
            function()
                require('refactoring').select_refactor({})
            end,
            desc = 'Select',
            mode = { 'x', 'n' },
        },
        {
            '<Leader>ri',
            function()
                require('refactoring').refactor('Inline Variable')
            end,
            desc = 'Inline variable',
            mode = { 'x', 'n' },
        },
        {
            '<Leader>rf',
            ':Refactor extract_block',
            desc = 'Extract function',
        },
        {
            '<Leader>rf',
            ':Refactor extract ',
            desc = 'Extract function',
            mode = 'x',
        },
        {
            '<Leader>rF',
            ':Refactor extract_block_to_file ',
            desc = 'Extract function to file',
        },
        {
            '<Leader>rF',
            ':Refactor extract_to_file ',
            desc = 'Extract function to file',
            mode = 'x',
        },
        {
            '<Leader>rv',
            ':Refactor extract_var ',
            desc = 'Extract variable',
            mode = 'x',
        },
    },
}
