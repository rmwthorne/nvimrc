
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Themes
  use { 'rose-pine/neovim', as = 'rose-pine', config = function() vim.cmd('colorscheme rose-pine') end }

  -- Navigation
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.2', requires = {'nvim-lua/plenary.nvim'} }
  use {'theprimeagen/harpoon'}
  use {'mbbill/undotree'}

  -- LSP and syntax
  use {'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' }}

  -- Keymaps
  use { 'AckslD/nvim-whichkey-setup.lua', requires = {'liuchengxu/vim-which-key'}, }

end)
