---Create a Telescope picker for a builtin method
---@param method string  Name of the Telescope builtin method (e.g. "find_files")
---@param opts table|fun()|nil Either a table of options, a function returning a table, or nil
---@return fun() A function that when called invokes the picker
local function picker(method, opts)
  return function()
    local final_opts = type(opts) == "function" and opts() or (opts or {})
    require("telescope.builtin")[method](final_opts)
  end
end

local grep_dynamic_opts = function()
  -- Capture the word under cursor at execution time
  local current_word = vim.fn.expand "<cword>"
  return { prompt_title = string.format('find "%s"', current_word), search = current_word }
end

local pick_git_files_all = picker("git_files", { show_untracked = true })
local grep_cursor_word = picker("grep_string", grep_dynamic_opts)
local pick_config_files = picker("git_files", {
  cwd = vim.fn.expand "~/.config/nvim",
  prompt_title = "find config files (~/.config/nvim/)",
  show_untracked = true,
})
local pick_my_colors = picker("colorscheme", {
  colors = { "rose-pine", "kanagawa", "habamax" },
  enable_preview = true,
})

return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make", cond = vim.fn.executable "make" == 1 },
    },
    config = function()
      require("telescope").setup {}
      pcall(require("telescope").load_extension, "fzf")

      vim.api.nvim_create_user_command("ProjectFiles", function()
        local ok = pcall(pick_git_files_all)
        if not ok then
          vim.notify("Not a git repository — falling back to find_files", vim.log.levels.INFO, {
            title = "Telescope: git_files",
          })
          require("telescope.builtin").find_files({ prompt_title = 'find files (non-git)'})
        end
      end, {})
    end,
    keys = {
      -- Find files
      { "<leader>ff", ":ProjectFiles<cr>", desc = "find project files" },
      { "<leader>fa", picker "find_files", desc = "find all files (CWD)" },
      { "<leader>f.", pick_config_files, desc = "find nvimrc config files" },
      { "<leader>fr", picker "oldfiles", desc = "recent files" },
      -- Search
      { "<leader>fg", picker "live_grep", desc = "live grep" },
      { "<leader>fd", picker "diagnostics", desc = "find diagnostics" },
      { "<leader>fh", picker "help_tags", desc = "find help docs" },
      { "<leader>fr", picker "lsp_references", desc = "find LSP references" },
      { "<leader>fw", grep_cursor_word, desc = "grep word under cursor" },
      { "<leader>fc", picker "git_status", desc = "find chunks" },
      -- Toggles
      { "<leader>tc", pick_my_colors, desc = "colorscheme" },
    },
  },
}
