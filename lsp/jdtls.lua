-- https://github.com/eclipse-jdtls/eclipse.jdt.ls
-- See also https://github.com/mfussenegger/nvim-jdtls
-- Requires Java 21
-- This config assumes jdtls installed with mason
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
local mason_path = vim.fn.stdpath('data') .. '/mason/packages/jdtls'
local workspace_path = vim.fn.stdpath('data') .. '/jdtls-workspaces/' .. project_name
return {
  cmd = { "jdtls", "-configuration", mason_path .. '/config_linux'},
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
  init_args = {},
  workspace = workspace_path,
  -- handlers = {
  --   ["language/status"] = <function 1>,
  --   ["textDocument/codeAction"] = <function 2>,
  --   ["textDocument/rename"] = <function 3>,
  --   ["workspace/applyEdit"] = <function 4>
  -- },
}
