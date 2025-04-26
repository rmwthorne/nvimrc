return {
    {
        "rose-pine/neovim",
        name = "rose-pine",
        priority = 100,
        lazy = false,
        config = function()
            vim.cmd("colorscheme rose-pine")
        end
    },
    {
        "rebelot/kanagawa.nvim",
        name = "kanagawa",
        lazy = true,
    },
}
