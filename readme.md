# Joker

Dark colorscheme Neovim inspired by Batman: The Animated Series 🖤 with TS and LSP support.

## Install with [home-manager](https://github.com/ksevelyar/idempotent-desktop/blob/main/users/shared.nix)

```nix
  joker-vim = pkgs.vimUtils.buildVimPlugin {
    name = "joker-vim";
    src = pkgs.fetchFromGitHub {
      owner = "ksevelyar";
      repo = "joker.vim";
      rev = "main";
      sha256 = "sha256-YYzU9MyetxZEGVxDEraH7jK/70SCW3Gv57JfUVuQa4A=";
    };
  };
```

```nix
  programs.neovim = {
    enable = true;
    defaultEditor = true;

    plugins = with pkgs.vimPlugins; [
      # UI & Status Line
      lualine-nvim
      nvim-web-devicons

      # File Explorer
      nvim-tree-lua

      # Search & Navigation
      telescope-nvim
      plenary-nvim
      leap-nvim

      # Git Integration
      vim-fugitive
      gitsigns-nvim

      # LSP & Completion
      nvim-lspconfig
      nvim-cmp
      cmp-nvim-lsp
      cmp-buffer
      cmp-path
      cmp-cmdline
      cmp-vsnip
      vim-vsnip

      # Syntax & Highlighting
      nvim-treesitter.withAllGrammars
      nvim-colorizer-lua

      # Utilities
      indent-blankline-nvim
      direnv-vim
      vim-openscad

      # Themes
      joker-vim
      oxocarbon-nvim

      # LLM/AI
      codecompanion-nvim
    ];
  };
```
