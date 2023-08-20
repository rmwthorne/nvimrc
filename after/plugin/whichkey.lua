vim.g.mapleader = " "

local cmd = function(command)
  return '<Cmd>'..command..'<CR>'
end;

local leader_keymaps = {
    b = {
        name = '+ buffers',
        n = {cmd('bnext'), 'next'},
        p = {cmd('bprevious'), 'previous'},
        d = {cmd('bd!'), 'delete buffer'},
    },
    e = {cmd('Ex'), 'filetree'},
    f = {
        name = '+ find',
        -- q = {'Telescope quickfix', 'quickfix'},
	f = {cmd('Telescope git_files'), 'find files'},
        a = {cmd('Telescope find_files'), 'find all files'},
        o = {cmd('Telescope oldfiles'), 'recent files'},
        g = {cmd('Telescope live_grep'), 'live grep'},
        t = {cmd('Telescope treesitter'), 'tags'},
        w = {
	    cmd('lua require("telescope.builtin").grep_string { search = vim.fn.expand("<cword>") }'),
            'grep word under cursor'
	},
        -- s = {cmd('Telescope spell_suggest'), 'spellcheck'},
        -- d = {
	--     cmd(':lua require("telescope.builtin").find_files { cwd = "~/.config/nvim/", prompt_title = "Search vimrc files", }'),
        --     'dotfiles/vimrc'
	-- },
    },
--[[
    g = {
        name = '+ git',
        s = {cmd('Git'), 'status'},
        d = {cmd('Gvdiffsplit!'), 'diff merge'},
        g = {cmd('diffget //2'), '<- grab target hunk'},
        h = {cmd('diffget //3'), 'grab merge hunk ->'},
    },
    l = {
        name = '+ lsp', -- defined in ./mappings.vim
        r = 'rename word',
        d = 'goto definition',
        j = 'jump references',
        i = 'goto implementation',
    },
]] --
    h = {
        name = '+ harpoon',
        m = {cmd('lua require("harpoon.mark").add_file()'), 'mark'},
        e = {cmd('lua require("harpoon.ui").toggle_quick_menu()'), 'menu'},
        j = {cmd('lua require("harpoon.ui").nav_file(1)'), 'goto 1'},
        k = {cmd('lua require("harpoon.ui").nav_file(2)'), 'goto 2'},
        l = {cmd('lua require("harpoon.ui").nav_file(3)'), 'goto 3'},
        [';'] = {cmd('lua require("harpoon.ui").nav_file(4)'), 'goto 4'},
    },
    t = {
        name = '+ toggle',
        i = {cmd('IndentBlanklineToggle'), 'indent guides'},
        w = {cmd('set list!'), 'whitespace chars'},
        u = {cmd('UndotreeToggle'), 'undotree'},
        x = {cmd('TroubleToggle'), 'diagnostics'},
    },
    w = {
        name = '+ window',
        h = {cmd('wincmd h'), 'left'},
        j = {cmd('wincmd j'), 'down'},
        k = {cmd('wincmd k'), 'up'},
        l = {cmd('wincmd l'), 'right'},
    },
}

require('whichkey_setup').register_keymap('leader', leader_keymaps)

