-- joker.lua

vim.g.colors_name = "joker"

-- Define the color palette
local palette = {
  dark0 = "#1B161F",
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

local function highlight(group, styles)
  local hl_opts = {
    fg = styles.fg,
    bg = styles.bg,
  }

  if styles.attr then
    for attr in string.gmatch(styles.attr, "([^,]+)") do
      hl_opts[attr] = true
    end
  end

  vim.api.nvim_set_hl(0, group, hl_opts)
end

-- Native highlights
highlight('ColorColumn', { bg = palette.dark1 })
highlight('Comment', { fg = palette.light2 })
highlight('Conceal', { fg = palette.cyan, bg = palette.dark0 })
highlight('Constant', { fg = palette.blue })
highlight('Cursor', { fg = palette.dark1, bg = palette.light1 })
highlight('CursorColumn', { bg = palette.dark1 })
highlight('CursorLine', { bg = palette.dark1 })
highlight('CursorLineNr', { fg = palette.light0, bg = palette.dark1 })
highlight('DiffAdd', { fg = palette.light2, bg = palette.violet })
highlight('DiffAdded', { fg = palette.green })
highlight('DiffChange', { fg = palette.light2, bg = palette.blue })
highlight('DiffChanged', { fg = palette.blue })
highlight('DiffDelete', { fg = palette.light2, bg = palette.red })
highlight('DiffRemoved', { fg = palette.red })
highlight('DiffSubname', { fg = palette.blue })
highlight('DiffText', { fg = palette.light2, bg = palette.cyan })
highlight('Directory', { fg = palette.cyan })
highlight('EndOfBuffer', { fg = palette.back })
highlight('Error', { fg = palette.red, bg = palette.dark1 })
highlight('ErrorMsg', { fg = palette.red, bg = palette.dark1 })
highlight('FloatBorder', { fg = palette.blue, bg = palette.dark0 })
highlight('FoldColumn', { fg = palette.light2, bg = palette.dark2 })
highlight('Folded', { fg = palette.light0, bg = palette.blue })
highlight('Identifier', { fg = palette.magenta })
highlight('IncSearch', { attr = 'reverse' })
highlight('LineNr', { fg = palette.light2, bg = palette.dark1 })
highlight('MatchParen', { fg = palette.blue })
highlight('ModeMsg', { fg = palette.blue })
highlight('NonText', { fg = palette.light2 })
highlight('Normal', { fg = palette.light0, bg = palette.dark0 })
highlight('Number', { fg = palette.orange })
highlight('Pmenu', { fg = palette.light1, bg = palette.dark1 })
highlight('PmenuSbar', { bg = palette.dark1 })
highlight('PmenuSel', { fg = palette.cyan, bg = palette.dark2 })
highlight('PmenuThumb', { bg = palette.blue })
highlight('PreProc', { fg = palette.red })
highlight('Question', { fg = palette.green })
highlight('Search', { fg = palette.orange, bg = palette.dark2 })
highlight('SignColumn', { bg = palette.dark1 })
highlight('Special', { fg = palette.orange })
highlight('SpecialKey', { fg = palette.red, bg = palette.red })
highlight('SpellBad', { fg = palette.red })
highlight('SpellCap', { fg = palette.yellow })
highlight('SpellLocal', { fg = palette.yellow })
highlight('SpellRare', { bg = palette.violet })
highlight('Statement', { fg = palette.yellow })
highlight('StatusLine', { fg = palette.light0, bg = palette.dark1 })
highlight('StatusLineNC', { fg = palette.light2, bg = palette.dark1 })
highlight('StatusLineTerm', { fg = palette.cyan, bg = palette.dark1 })
highlight('StatusLineTermNC', { fg = palette.violet, bg = palette.dark1 })
highlight('String', { fg = palette.cyan })
highlight('TabLine', { fg = palette.light2, bg = palette.dark1 })
highlight('TabLineFill', { fg = palette.dark0, bg = palette.dark0 })
highlight('TabLineSel', { fg = palette.light0, bg = palette.dark2 })
highlight('Title', { fg = palette.green })
highlight('Todo', { fg = palette.light1 })
highlight('Type', { fg = palette.magenta })
highlight('VertSplit', { fg = palette.light2, bg = palette.dark1 })
highlight('Visual', { bg = palette.dark2 })
highlight('WarningMsg', { fg = palette.red })
highlight('WildMenu', { fg = palette.yellow, bg = palette.dark1 })
highlight('WinSeparator', { fg = palette.dark2, bg = palette.dark0 })
highlight('htmlArg', { fg = palette.blue })
highlight('htmlBold', { fg = palette.cyan })
highlight('htmlItalic', { fg = palette.magenta })
highlight('pythonStatement', { fg = palette.yellow })
highlight('rubyDefine', { fg = palette.violet })
highlight('rubyStringDelimiter', { fg = palette.green })

-- Tree-sitter highlights
highlight('@comment', { fg = palette.light2 })
highlight('@function', { fg = palette.green })
highlight('@keyword', { fg = palette.red })
highlight('@string', { fg = palette.blue })
highlight('@tag.attribute', { fg = palette.cyan })
highlight('@type', { fg = palette.yellow })
highlight('@variable', { fg = palette.cyan })

-- LSP highlights
highlight('LspDiagnosticsDefaultError', { fg = palette.red })
highlight('LspDiagnosticsDefaultHint', { fg = palette.cyan })
highlight('LspDiagnosticsDefaultInformation', { fg = palette.blue })
highlight('LspDiagnosticsDefaultWarning', { fg = palette.yellow })
highlight('LspReferenceRead', { bg = palette.dark1 })
highlight('LspReferenceText', { bg = palette.dark1 })
highlight('LspReferenceWrite', { bg = palette.dark1 })
