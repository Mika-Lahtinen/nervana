# Nervana

A simple, swift, lightweight configuration for Neovim written in Lua.

## Prerequisite

- Neovim version >= 0.8 .
- `Node.js` is installed (Only if you choose Coc.nvim as your LSP client).

## How to use it

1. Clone the repository to the path configuring for Neovim.
   
   > For *nix system:
   ```shell
   git clone --depth=1 https://github.com/Mika-Lahtinen/nervana.git\
   ~/.config/nvim
   ```

   > For Microsoft Windows:
   ```shell
   git clone --depth=1 https://github.com/Mika-Lahtinen/nervana.git "$env:LOCALAPPDATA\nvim"
   ```

2. Install [packer.nvim](https://github.com/wbthomason/packer.nvim) .
   > For *nix system:
   ```shell
   git clone --depth=1 https://github.com/wbthomason/packer.nvim\
   ~/.local/share/nvim/site/pack/packer/start/packer.nvim
   ```

   > For Microsoft Windows:
   ```shell
   git clone --depth=1 https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
   ```

3. Open Neovim, input `:PackInstall` to install plugins.
4. All done. For personal configure, just edit `extra_config.lua`, or add your personal plugins in `plugins.lua`.

## Components

- `base.lua`
  
  The basic configurations for Neovim.

- `key_binding.lua`
  
  Key bindings for your Neovim. 

- `plugins.lua`
  
  Default plugins to install in your Neovim.
  To add your plugins, please follow the instruction of `Lazy.nvim`.

- `plugin_settings.lua`
  
  Some settings for default plugins.

- `extra_config.lua`
  
  Personal configurations.
