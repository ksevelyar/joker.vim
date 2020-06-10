# Joker

![screen](https://i.imgur.com/XFf02K8.png)

Dark colorscheme for Vim/Neovim inspired by [vim-gotham](https://github.com/whatyouhide/vim-gotham) and [Batman: The Animated Series](https://www.youtube.com/watch?v=-XJ3HJXxDwc) 🖤

Requires [true color](https://gist.github.com/XVilka/8346728#now-supporting-true-color) for transparency. I use [Alacritty](https://github.com/alacritty/alacritty).

## Install

### [vim-plug](https://github.com/junegunn/vim-plug)

```vim
call plug#begin()
Plug 'ksevelyar/joker.vim'
Plug 'itchyny/lightline.vim'

call plug#end()

colorscheme joker
```

## Plugs

Intended to use with [vim-devicons](https://github.com/ryanoasis/vim-devicons) and [vim-lightline](https://github.com/itchyny/lightline.vim). An example: [init.vim](https://github.com/ksevelyar/dotfiles/blob/master/home/.config/nvim/init.vim).

## Todo

- [ ] Fix [limelight.vim](https://github.com/junegunn/limelight.vim) integration
