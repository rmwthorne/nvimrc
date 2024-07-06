# My Neovim Config

## ⚡️ Requirements

- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [packer](https://github.com/wbthomason/packer.nvim)
- A [nerd font](https://github.com/ryanoasis/nerd-fonts) such as [hack](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hack)

## 📦 Install

1. Symlink `~/.conf/nvim` to this dir
1. Run `:PackerSync` to install the plugins

## Remaps

Remaps are defined in three main places: 
- [`remap.lua`](lua/custom/remap.lua) contains nonleader remaps (typically navigation)
- [`whichkey.lua`](after/plugin/whichkey.lua) contains documented leader remaps
- Plugin-specific remaps are in their respective `after/plugin` files

