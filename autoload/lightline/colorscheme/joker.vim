let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:base1 = [ '#1b161f', '8' ]
let s:base2 = [ '#231e27', '10' ]
let s:base3 = [ '#2f2536', '12' ]
let s:base4  = [ '#5e6b85', '14' ]
let s:base5  = [ '#919fba', '7' ]
let s:base6  = [ '#c8d6f3', '15' ]

let s:blue    = [ '#597a90', '4' ]
let s:cyan    = [ '#54c6b5', '6' ]
let s:green   = [ '#57a16d', '2' ]
let s:magenta = [ '#c16fb4', '13' ]
let s:orange  = [ '#ffce50', '9' ]
let s:red     = [ '#c84e4e', '1' ]
let s:violet  = [ '#8178a6', '5' ]

let s:yellow  = [ '#bea149', '3' ]

let s:joker0 = ["#2E3440", "NONE"]
let s:joker1 = ["#1b161f", 0]
let s:joker2 = ["#434C5E", "NONE"]
let s:joker3 = ["#231e27", 8]
let s:joker4 = ["#D8DEE9", "NONE"]
let s:joker5 = ["#E5E9F0", 7]
let s:joker6 = ["#ECEFF4", 15]
let s:joker7 = ["#8FBCBB", 14]
let s:joker8 = ["#88C0D0", 6]
let s:joker9 = ["#81A1C1", 4]
let s:joker10 = ["#5E81AC", 12]
let s:joker11 = ["#BF616A", 1]
let s:joker12 = ["#D08770", 11]
let s:joker13 = ["#EBCB8B", 3]
let s:joker14 = ["#A3BE8C", 2]
let s:joker15 = ["#B48EAD", 5]

let s:p.normal.left = [ [ s:joker1, s:joker15 ], [ s:violet, s:joker1 ] ]
let s:p.normal.middle = [ [ s:joker5, s:joker3 ] ]
let s:p.normal.right = [ [ s:joker15, s:joker1 ], [ s:joker5, s:joker1 ] ]
let s:p.normal.warning = [ [ s:joker1, s:joker13 ] ]
let s:p.normal.error = [ [ s:joker1, s:joker11 ] ]

let s:p.inactive.left =  [ [ s:joker1, s:violet ], [ s:joker5, s:joker1 ] ]
" let s:p.inactive.middle = [ [ s:joker5, s:joker1 ] ]
" let s:p.inactive.right = [ [ s:joker5, s:joker1 ], [ s:joker5, s:joker1 ] ]

let s:p.insert.left = [ [ s:joker1, s:joker6 ], [ s:joker5, s:joker1 ] ]
let s:p.replace.left = [ [ s:joker1, s:joker13 ], [ s:joker5, s:joker1 ] ]
let s:p.visual.left = [ [ s:joker1, s:joker7 ], [ s:joker5, s:joker1 ] ]

let s:p.tabline.left = [ [ s:joker1, s:violet ] ]
let s:p.tabline.middle = [ [ s:joker5, s:joker3 ] ]
let s:p.tabline.right = [ [ s:joker15, s:joker3 ] ]
let s:p.tabline.tabsel = [ [ s:joker1, s:joker15 ] ]

let g:lightline#colorscheme#joker#palette = lightline#colorscheme#flatten(s:p)
