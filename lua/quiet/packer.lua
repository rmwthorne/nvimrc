
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Themes
  use {
      'rose-pine/neovim',
      as = 'rose-pine',
      config = function()
          vim.cmd('colorscheme rose-pine')
      end,
  }

  -- UI
  use 'lukas-reineke/indent-blankline.nvim'
  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

  -- Navigation
  use {'nvim-telescope/telescope.nvim', tag = '0.1.2', requires = {'nvim-lua/plenary.nvim'}}
  use {'theprimeagen/harpoon'}
  use {'mbbill/undotree'}

  -- LSP and syntax
  use {'nvim-treesitter/nvim-treesitter'}
  use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      requires = {
          -- LSP Support
          {'neovim/nvim-lspconfig'},
          {'williamboman/mason.nvim'},
          {'williamboman/mason-lspconfig.nvim'},
          -- Autocompletion
          {'hrsh7th/nvim-cmp'},
          {'hrsh7th/cmp-nvim-lsp'},
          {'L3MON4D3/LuaSnip'},
      },
  }
  use {'folke/trouble.nvim', requires = {'nvim-tree/nvim-web-devicons'}}

  -- Keymaps
  use { 'AckslD/nvim-whichkey-setup.lua', requires = {'liuchengxu/vim-which-key'}}

end)
