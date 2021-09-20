# Nervana

A simple, swift, lightweight configuration for Neovim written in Lua.

## Prerequisite

- Neovim version: 0.5 and newer.
- `Packer.nvim` is installed.
- `Node.js` is installed.

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

2. Open neovim, input `":PackerSync"` and run it.

3. All done. For personal configure, just edit `extra_config.lua`, or add your personal plugins in `plugins.lua`.

## Components

- `base.lua`
  
  The basic configurations for Neovim.

- `plugins.lua`
  
  Default plugins to install in your Neovim.
  To add your plugins, follow the insruction of `Packer.nvim`.

- `plugin.settings.lua`
  
  Some settings for default plugins.

- `extra_config.lua`
  
  Personal configurations.