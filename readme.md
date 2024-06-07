# Joker

Dark colorscheme Neovim inspired by Batman: The Animated Series 🖤 with TS and LSP support.

Requires [true color](https://github.com/alacritty/alacritty) for transparency.

## Install with [lazy](https://github.com/folke/lazy.nvim)

```lua
{
  "ksevelyar/joker.vim",
  lazy = false,    -- to make sure it's loaded on startup
  priority = 1000, -- to load before other plugins
  config = function()
    vim.cmd('colorscheme joker')
  end,
}
```
