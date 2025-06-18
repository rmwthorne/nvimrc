-- https://github.com/eclipse-jdtls/eclipse.jdt.ls
-- See also https://github.com/mfussenegger/nvim-jdtls
-- Requires Java 21
-- This config assumes jdtls installed with mason

local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
local config_path = vim.fn.stdpath('data') .. '/mason/packages/jdtls/config_linux'
local workspace_path = vim.fn.stdpath('data') .. '/jdtls-workspaces/' .. project_name
vim.fn.mkdir(workspace_path, 'p')

return {
  cmd = {
    "jdtls",
    "-configuration", config_path,
    "-data", workspace_path,
  },
  filetypes = { "java" },
  root_markers = {
    "build.gradle",
    "build.gradle.kts",
    "build.xml",
    "pom.xml",
    "settings.gradle",
    "settings.gradle.kts",
    ".git",
  },
}
