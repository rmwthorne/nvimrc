local cmp = require('cmp')
local next_item = cmp.mapping(
    function(fallback)
        if cmp.visible() then
            cmp.select_next_item()
        else
            fallback()
        end
    end
)
local prev_item = cmp.mapping(
    function(fallback)
        if cmp.visible() then
            cmp.select_prev_item()
        else
            fallback()
        end
    end
)

return{
  -- Autocompletion
  {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    config = function()
      cmp.setup({
        sources = {
          {name = 'nvim_lsp'},
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<Tab>'] = next_item,
          ['<S-Tab>'] = prev_item,
          ['<CR>'] = cmp.mapping.confirm({ select = true}),
          ['<C-u>'] = cmp.mapping.scroll_docs(-4),
          ['<C-d>'] = cmp.mapping.scroll_docs(4),
        }),
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body)
          end,
        },
      })
    end
  },
}
