vim.api.nvim_create_user_command(
  "TrimWhitespace", function()
    MiniTrailspace.trim()
  end, {}
)
return {
  'nvim-mini/mini.trailspace',
  opts = {},
  version = false
}
