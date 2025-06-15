return {
  {
    "nvim-treesitter/nvim-treesitter",
    version = false,
    build = ":TSUpdate",
    event = { "BufReadPre", "BufNewFile" },
    cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" },
    dependencies = { "nvim-treesitter/nvim-treesitter-textobjects" },
    keys = {},
    config = function()
      local configs = require "nvim-treesitter.configs"
      configs.setup {
        highlight = { enable = true, use_language = true },
        indent = { enable = true },
        ensure_installed = {
          "bash",
          "comment",
          "css",
          "diff",
          "dockerfile",
          "git_config",
          "git_rebase",
          "gitcommit",
          "gitattributes",
          "gitignore",
          "html",
          "htmldjango",
          "java",
          "javascript",
          "jinja",
          "jsdoc",
          "json",
          "lua",
          "luadoc",
          "markdown",
          "requirements",
          "python",
          "query",
          "r",
          "regex",
          "rust",
          "sql",
          "todotxt",
          "toml",
          "tsv",
          "tsx",
          "typescript",
          "vim",
          "vimdoc",
          "xml",
          "yaml",
        },
      }
    end,
  },
  {
    "nvim-treesitter-textobjects",
    lazy = true,
    config = function()
      require("nvim-treesitter.configs").setup {
        textobjects = {
          select = {
            enable = true,
            lookahead = true,
            keymaps = {
              ["af"] = { query = "@function.outer", desc = "function block" },
              ["if"] = { query = "@function.inner", desc = "function block" },
              ["ac"] = { query = "@class.outer", desc = "class block" },
              ["ic"] = { query = "@class.inner", desc = "class block" },
              ["ar"] = { query = "@parameter.outer", desc = "arg/param" },
              ["ir"] = { query = "@parameter.inner", desc = "arg/param" },
            },
          },
          move = {
            enable = true,
            goto_next_start = {
              ["]f"] = { query = "@function.outer", desc = "function" },
              ["]c"] = { query = "@class.outer", desc = "class" },
            },
            goto_previous_start = {
              ["[f"] = { query = "@function.outer", desc = "function" },
              ["[c"] = { query = "@class.outer", desc = "class" },
            },
          },
        },
      }
    end,
  },
}
