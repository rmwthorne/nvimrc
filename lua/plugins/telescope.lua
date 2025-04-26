
---Create a Telescope picker for a builtin method
---@param method string  Name of the Telescope builtin method (e.g. "find_files")
---@param opts table|fun()|nil Either a table of options, a function returning a table, or nil
---@return fun() A function that when called invokes the picker
local function picker(method, opts)
    return function()
        local final_opts = type(opts) == "function" and opts() or (opts or {})
        require 'telescope.builtin'[method](final_opts)
    end
end

local grep_dynamic_opts = function ()
    local current_word = vim.fn.expand('<cword>')
    return { prompt_title = string.format('find "%s"', current_word), search = current_word }
end

local pick_git_files_all = picker('git_files', { show_untracked = true })
local grep_cursor_word = picker('grep_string', grep_dynamic_opts)
local pick_config_files = picker(
    'git_files',
    {
        cwd = '~/.config/nvim',
        prompt_title = 'config files',
        show_untracked = true,
    }
)
local pick_my_colors = picker(
    'colorscheme',
    {
        colors = { 'rose-pine', 'kanagawa', 'habamax' },
        enable_preview = true,
    }
)

return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make', cond = vim.fn.executable('make') == 1 },
    },
    config = function()
        require('telescope').setup {}
        pcall(require('telescope').load_extension, 'fzf')
    end,
    keys = {
      -- Find
      {'<leader>ff', pick_git_files_all, desc = 'find project files'},
      {'<leader>fa', picker('find_files'), desc = 'find all files (CWD)'},
      {'<leader>f.', pick_config_files, desc = 'find nvimrc config files'},
      {'<leader>fr', picker('oldfiles'), desc = 'recent files'},
      {'<leader>fg', picker('live_grep'), desc = 'live grep'},
      {'<leader>fh', picker('help_tags'), desc = 'find help docs'},
      {'<leader>fr', picker('lsp_references'), desc = 'find LSP references'},
      {'<leader>fw', grep_cursor_word, desc = 'grep word under cursor'},
      {'<leader>fc', picker('git_status'), desc = 'find chunks'},
      -- Toggles
      {'<leader>tc', pick_my_colors, desc = 'colorscheme'},
    },
  },
}
