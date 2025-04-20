local cmp = require('cmp')
local ls = require('luasnip')

local next_item = cmp.mapping(
    function(fallback)
        if cmp.visible() then
            cmp.select_next_item()
        elseif ls.locally_jumpable(1) then
            ls.jump(1)
        else
            fallback()
        end
    end, { 'i', 's' }
)
local prev_item = cmp.mapping(
    function(fallback)
        if cmp.visible() then
            cmp.select_prev_item()
        elseif ls.locally_jumpable(-1) then
            ls.jump(-1)
        else
            fallback()
        end
    end, { 'i', 's' }
)
local confirm_or_expand = cmp.mapping(
    function(fallback)
        if cmp.visible() then
            if ls.expandable() then
                ls.expand()
            else
                cmp.confirm({ select = true })
            end
        else
            fallback()
        end
    end, { 'i', 's' }
)

return{
  -- Autocompletion
  {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    dependencies = {
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-nvim-lua',
      'hrsh7th/cmp-nvim-lsp',
      'saadparwaiz1/cmp_luasnip',
      'onsails/lspkind.nvim',
    },
    config = function()
      cmp.setup({
        sources = {
          { name = 'nvim_lua' },
          { name = 'nvim_lsp' },
          { name = 'luasnip' },
          { name = 'path' },
          { name = 'buffer', keyword_length = 5},
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<Tab>'] = next_item,
          ['<S-Tab>'] = prev_item,
          ['<CR>'] = confirm_or_expand,
          ['<C-u>'] = cmp.mapping.scroll_docs(-4),
          ['<C-d>'] = cmp.mapping.scroll_docs(4),
        }),
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body)
          end,
        },
        formatting = {
            format = require('lspkind').cmp_format {
                mode = 'symbol_text',
                show_labelDetails = true,
                menu = {
                    -- buffer = '[buffer]',
                    -- nvim_lsp = '[LSP]',
                    -- nvim_lua = '[api]',
                    -- path = '[path]',
                }
            }
        },
        view = {
            entries = 'native',
        },
        experimental = {
            ghost_text = true,
        }
      })
    end
  },
}
