# My Neovim Config

## ⚡️ Requirements

- Neovim >= 0.10.0
- Git >= 2.19.0
- A [nerd font](https://github.com/ryanoasis/nerd-fonts) such as [hack](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hack)
- [ripgrep](https://github.com/BurntSushi/ripgrep)

## 📦 Install

1. Symlink `~/.conf/nvim` to this dir

## Remaps

Remaps are defined in three main places: 
- [`remaps.lua`](lua/custom/remaps.lua) contains nonleader remaps (typically navigation mods)
- [`which-key.lua`](lua/plugins/whichkey.lua) contains documented leader keymaps
- [`plugins/*.lua`](lua/plugins/) contains plugin-specific keymaps in their respective specs

