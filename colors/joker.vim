" Joker
" URL: https://github.com/ksevelyar/joker.vim
" License: MIT

" Useful commands for testing colorschemes:
" :source $VIMRUNTIME/syntax/hitest.vim
" :help highlight-groups
" :help cterm-colors
" :help group-name

" Bootstrap ===================================================================

hi clear
if exists('syntax_on') | syntax reset | endif
set background=dark
let g:colors_name = 'joker'

" Helper functions =============================================================

" Execute the 'highlight' command with a List of arguments.
function! s:Highlight(args)
  exec 'highlight ' . join(a:args, ' ')
endfunction

function! s:AddGroundValues(accumulator, ground, color)
  let new_list = a:accumulator
  for [where, value] in items(a:color)
    call add(new_list, where . a:ground . '=' . value)
  endfor

  return new_list
endfunction

function! s:Col(group, fg_name, ...)
  " ... = optional bg_name

  let pieces = [a:group]

  if a:fg_name !=# ''
    let pieces = s:AddGroundValues(pieces, 'fg', g:joker_palette[a:fg_name])
  endif

  if a:0 > 0 && a:1 !=# ''
    let pieces = s:AddGroundValues(pieces, 'bg', g:joker_palette[a:1])
  endif

  call s:Clear(a:group)
  call s:Highlight(pieces)
endfunction

function! s:Attr(group, attr)
  let l:attrs = [a:group, 'term=' . a:attr, 'cterm=' . a:attr, 'gui=' . a:attr]
  call s:Highlight(l:attrs)
endfunction

function! s:Clear(group)
  exec 'highlight clear ' . a:group
endfunction


" Colors ======================================================================

" Let's store all the colors in a dictionary.
let g:joker_palette = {}

" Other colors
let g:joker_palette.dark0 = { 'gui': '#1b161f', 'cterm': 8  }
let g:joker_palette.dark1 = { 'gui': '#231e27', 'cterm': 8  }
let g:joker_palette.dark2 = { 'gui': '#2f2536', 'cterm': 8  }

let g:joker_palette.light0 = { 'gui': '#c8d6f3', 'cterm': 15 }
let g:joker_palette.light1 = { 'gui': '#919fba', 'cterm': 15 }
let g:joker_palette.light2 = { 'gui': '#5e6b85', 'cterm': 15 }

let g:joker_palette.blue    = { 'gui': '#597a90', 'cterm': 4  }
let g:joker_palette.cyan    = { 'gui': '#54c6b5', 'cterm': 6  }
let g:joker_palette.green   = { 'gui': '#57a16d', 'cterm': 2  }
let g:joker_palette.magenta = { 'gui': '#c16fb4', 'cterm': 13 }
let g:joker_palette.orange  = { 'gui': '#ffce50', 'cterm': 9  }
let g:joker_palette.red     = { 'gui': '#c84e4e', 'cterm': 1  }
let g:joker_palette.violet  = { 'gui': '#8178a6', 'cterm': 5  }
let g:joker_palette.yellow  = { 'gui': '#d5aa2a', 'cterm': 3  }

" :terminal colors
let g:terminal_color_0  = get(g:joker_palette.dark0, 'gui')
let g:terminal_color_8  = g:terminal_color_0
let g:terminal_color_1  = get(g:joker_palette.red, 'gui')
let g:terminal_color_9  = g:terminal_color_1
let g:terminal_color_2  = get(g:joker_palette.green, 'gui')
let g:terminal_color_10 = g:terminal_color_2
let g:terminal_color_3  = get(g:joker_palette.yellow, 'gui')
let g:terminal_color_11 = g:terminal_color_3
let g:terminal_color_4  = get(g:joker_palette.blue, 'gui')
let g:terminal_color_12 = g:terminal_color_4
let g:terminal_color_5  = get(g:joker_palette.violet, 'gui')
let g:terminal_color_13 = g:terminal_color_5
let g:terminal_color_6  = get(g:joker_palette.cyan, 'gui')
let g:terminal_color_14 = g:terminal_color_6
let g:terminal_color_7  = get(g:joker_palette.light0, 'gui')
let g:terminal_color_15 = g:terminal_color_7

" Native highlighting ==========================================================

call s:Col('Normal', 'light0', 'dark0')
call s:Col('NonText', 'light2')
call s:Col('ColorColumn', '', 'dark1')

" Line, cursor and so on.
call s:Col('CursorLine', '', 'dark1')
call s:Col('CursorLineNr', 'light0', 'dark1')
call s:Col('Cursor', 'dark1', 'light1')
call s:Col('CursorColumn', '', 'dark1')
call s:Col('SignColumn', '', 'dark1')


call s:Col('LineNr', 'light2', 'dark1')
call s:Col('VertSplit', 'light2', 'dark1')
call s:Col('EndOfBuffer', 'dark0')


call s:Col('Comment', 'light2')

" Visual selection.
call s:Col('Visual', '', 'dark2')
" Search selection.
call s:Col('Search', 'orange', 'dark2')
call s:Attr('IncSearch', 'reverse')

" The column separating vertical splits.
call s:Col('StatusLineNC', 'light2', 'dark1')
call s:Col('StatusLine', 'light0', 'dark1')
call s:Col('WildMenu', 'yellow', 'dark1')

" Tab line.
call s:Col('TabLineSel', 'light0', 'dark2')  " the selected tab
call s:Col('TabLine', 'light2', 'dark1')     " the non-selected tabs
call s:Col('TabLineFill', 'dark0', 'dark0') " the rest of the tab line

" Easy-to-guess code elements.
call s:Col('String', 'cyan')
call s:Col('rubyStringDelimiter', 'green')
call s:Col('Number', 'orange')
call s:Col('Statement', 'yellow')
call s:Col('pythonStatement', 'yellow')
call s:Col('Special', 'orange')
call s:Col('Identifier', 'magenta')
call s:Col('Constant', 'blue')
call s:Col('rubyDefine', 'violet')

call s:Col('htmlArg', 'blue')
call s:Col('htmlItalic', 'magenta')
call s:Col('htmlBold', 'cyan', '')

" Some HTML tags (<title>, some <h*>s), tabs title
call s:Col('Title', 'green')
call s:Col('Type', 'magenta') " Types, HTML attributes, Ruby constants (and class names).
call s:Col('PreProc', 'red') " Stuff like 'require' in Ruby.
"
" " <a> tags.
" call s:Col('Underlined', 'yellow')
" call s:Attr('Underlined', 'underline')
"
"
"
"
" " Concealed stuff.
call s:Col('Conceal', 'cyan', 'dark0')
"
" " TODO and similar tags.
call s:Col('Todo', 'light1', '')

" Matching parenthesis.
call s:Col('MatchParen', 'blue', '')
"
" " Special keys, e.g. some of the chars in 'listchars'. See ':h listchars'.
call s:Col('SpecialKey', 'red', 'red')

" Folds.
call s:Col('Folded', 'light0', 'blue')
call s:Col('FoldColumn', 'light2', 'dark2')

" Popup menu.
call s:Col('Pmenu', 'light1', 'dark1')
call s:Col('PmenuSel', 'light2', 'blue')
call s:Col('PmenuSbar', '', 'dark1')
call s:Col('PmenuThumb', '', 'blue')

" Command line stuff.
call s:Col('ErrorMsg', 'red', 'dark1')
call s:Col('Error', 'red', 'dark1')
call s:Col('ModeMsg', 'blue')
call s:Col('WarningMsg', 'red')

" The 'Hit ENTER to continue prompt'.
call s:Col('Question', 'green')

" Spelling.
call s:Col('SpellBad', 'red')
call s:Col('SpellCap', 'yellow')
call s:Col('SpellLocal', 'yellow')
call s:Col('SpellRare', '', 'violet')

" Diffing.
call s:Col('DiffAdd', 'light2', 'green')
call s:Col('DiffChange', 'light2', 'blue')
call s:Col('DiffDelete', 'light2', 'red')
call s:Col('DiffText', 'light2', 'cyan')
call s:Col('DiffAdded', 'green')
call s:Col('DiffChanged', 'blue')
call s:Col('DiffRemoved', 'red')
call s:Col('DiffSubname', 'blue')
"
" " Directories (e.g. netrw).
call s:Col('Directory', 'cyan')
"
"
"
" " Plugin =======================================================================
"
" " GitGutter
call s:Col('GitGutterAdd', 'green', 'dark1')
call s:Col('GitGutterChange', 'cyan', 'dark1')
call s:Col('GitGutterDelete', 'red', 'dark1')
call s:Col('GitGutterChangeDelete', 'violet', 'dark1')
"
" CtrlP
call s:Col('CtrlPNoEntries', 'light2', 'dark0') " the message when no match is found (Error)
call s:Col('CtrlPMatch', 'yellow')               " the matched pattern (Identifier)
call s:Col('CtrlPPrtBase', 'light2')             " '>>>', the prompt's base (Comment)
call s:Col('CtrlPPrtText', 'yellow')              " text in the prompt
call s:Col('CtrlPPrtCursor', 'light2', 'dark1') " the prompt's cursor when moving over the text (Constant)

"
" unite.vim
" call s:Col('UniteGrep', 'light2', 'green')
" let g:unite_source_grep_search_word_highlight = 'UniteGrep'

" ale https://github.com/w0rp/ale
call s:Col('ALEWarningSign', 'yellow', 'dark1')
call s:Col('ALEErrorSign', 'red', 'dark1')

" neomake https://github.com/neomake/neomake
call s:Col('NeomakeWarningSign', 'yellow', 'dark1')
call s:Col('NeomakeErrorSign', 'red', 'dark1')
call s:Col('NeomakeWarning', 'yellow')
call s:Col('NeomakeError', 'red')
"
