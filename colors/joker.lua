-- joker.lua

-- Define the color palette
local palette = {
  dark0 = "#1B161FF2",
  back = "#1B161F",
  dark1 = "#231e27",
  dark2 = "#2f2536",
  light0 = "#c8d6f3",
  light1 = "#919fba",
  light2 = "#5e6b85",
  blue = "#597a90",
  cyan = "#54c6b5",
  green = "#57a16d",
  magenta = "#c16fb4",
  orange = "#ffce50",
  red = "#c84e4e",
  violet = "#8178a6",
  yellow = "#d5aa2a",
}

-- Helper function to apply highlight
local function highlight(group, styles)
  local cmd = { 'highlight', group }
  if styles.fg then
    table.insert(cmd, 'guifg=' .. styles.fg)
  end
  if styles.bg then
    table.insert(cmd, 'guibg=' .. styles.bg)
  end
  if styles.attr then
    table.insert(cmd, 'gui=' .. styles.attr)
  end
  vim.cmd(table.concat(cmd, ' '))
end

-- Native highlights
highlight('Normal', { fg = palette.light0, bg = palette.dark0 })
highlight('NonText', { fg = palette.light2 })
highlight('ColorColumn', { bg = palette.dark1 })
highlight('CursorLine', { bg = palette.dark1 })
highlight('CursorLineNr', { fg = palette.light0, bg = palette.dark1 })
highlight('Cursor', { fg = palette.dark1, bg = palette.light1 })
highlight('CursorColumn', { bg = palette.dark1 })
highlight('SignColumn', { bg = palette.dark1 })
highlight('LineNr', { fg = palette.light2, bg = palette.dark1 })
highlight('VertSplit', { fg = palette.light2, bg = palette.dark1 })
highlight('Comment', { fg = palette.light2 })
highlight('Visual', { bg = palette.dark2 })
highlight('Search', { fg = palette.orange, bg = palette.dark2 })
highlight('IncSearch', { attr = 'reverse' })
highlight('StatusLineNC', { fg = palette.light2, bg = palette.dark1 })
highlight('StatusLine', { fg = palette.light0, bg = palette.dark1 })
highlight('StatusLineTerm', { fg = palette.cyan, bg = palette.dark1 })
highlight('StatusLineTermNC', { fg = palette.violet, bg = palette.dark1 })
highlight('WildMenu', { fg = palette.yellow, bg = palette.dark1 })
highlight('TabLineSel', { fg = palette.light0, bg = palette.dark2 })
highlight('TabLine', { fg = palette.light2, bg = palette.dark1 })
highlight('TabLineFill', { fg = palette.dark0, bg = palette.dark0 })
highlight('String', { fg = palette.cyan })
highlight('rubyStringDelimiter', { fg = palette.green })
highlight('Number', { fg = palette.orange })
highlight('Statement', { fg = palette.yellow })
highlight('pythonStatement', { fg = palette.yellow })
highlight('Special', { fg = palette.orange })
highlight('Identifier', { fg = palette.magenta })
highlight('Constant', { fg = palette.blue })
highlight('rubyDefine', { fg = palette.violet })
highlight('htmlArg', { fg = palette.blue })
highlight('htmlItalic', { fg = palette.magenta })
highlight('htmlBold', { fg = palette.cyan })
highlight('Title', { fg = palette.green })
highlight('Type', { fg = palette.magenta })
highlight('PreProc', { fg = palette.red })
highlight('Conceal', { fg = palette.cyan, bg = palette.dark0 })
highlight('Todo', { fg = palette.light1 })
highlight('MatchParen', { fg = palette.blue })
highlight('SpecialKey', { fg = palette.red, bg = palette.red })
highlight('Folded', { fg = palette.light0, bg = palette.blue })
highlight('FoldColumn', { fg = palette.light2, bg = palette.dark2 })
highlight('Pmenu', { fg = palette.light1, bg = palette.dark1 })
highlight('PmenuSel', { fg = palette.cyan, bg = palette.dark2 })
highlight('PmenuSbar', { bg = palette.dark1 })
highlight('PmenuThumb', { bg = palette.blue })
highlight('ErrorMsg', { fg = palette.red, bg = palette.dark1 })
highlight('Error', { fg = palette.red, bg = palette.dark1 })
highlight('ModeMsg', { fg = palette.blue })
highlight('WarningMsg', { fg = palette.red })
highlight('Question', { fg = palette.green })
highlight('SpellBad', { fg = palette.red })
highlight('SpellCap', { fg = palette.yellow })
highlight('SpellLocal', { fg = palette.yellow })
highlight('SpellRare', { bg = palette.violet })
highlight('DiffAdd', { fg = palette.light2, bg = palette.violet })
highlight('DiffChange', { fg = palette.light2, bg = palette.blue })
highlight('DiffDelete', { fg = palette.light2, bg = palette.red })
highlight('DiffText', { fg = palette.light2, bg = palette.cyan })
highlight('DiffAdded', { fg = palette.green })
highlight('DiffChanged', { fg = palette.blue })
highlight('DiffRemoved', { fg = palette.red })
highlight('DiffSubname', { fg = palette.blue })
highlight('Directory', { fg = palette.cyan })
highlight('EndOfBuffer', { fg = palette.back })

-- Tree-sitter highlights
highlight('@comment', { fg = palette.light2 })
highlight('@function', { fg = palette.green })
highlight('@keyword', { fg = palette.red })
highlight('@variable', { fg = palette.cyan })
highlight('@type', { fg = palette.yellow })
highlight('@string', { fg = palette.blue })

-- LSP highlights
highlight('LspDiagnosticsDefaultError', { fg = palette.red })
highlight('LspDiagnosticsDefaultWarning', { fg = palette.yellow })
highlight('LspDiagnosticsDefaultInformation', { fg = palette.blue })
highlight('LspDiagnosticsDefaultHint', { fg = palette.cyan })
highlight('LspReferenceText', { bg = palette.dark1 })
highlight('LspReferenceRead', { bg = palette.dark1 })
highlight('LspReferenceWrite', { bg = palette.dark1 })
