" =============================================================================
" URL: https://github.com/sainnhe/lightline_foobar.vim/
" Filename: autoload/lightline/colorscheme/neodark_alter.vim
" Author: Sainnhepark
" Email: sainnhe@gmail.com
" License: MIT License & Anti-996 License
" =============================================================================

"{{{Palette
let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:dark = [ '#303030', 236 ]
let s:darker = [ '#3f3f3f', 237 ]
let s:gray = [ '#bcbcbc', 250 ]
if exists('g:neodark#use_256color')
    if g:neodark#use_256color == 1
        let s:blue = [ '#5fafd7', 74 ]
        let s:green = [ '#87af87', 108 ]
        let s:red = [ '#d75f87', 168 ]
        let s:orange = [ '#d7875f', 173 ]
        let s:purple = [ '#af87d7', 140 ]
    else
        let s:blue = [ '#639EE4', 75 ]
        let s:green = [ '#84B97C', 108 ]
        let s:red = [ '#DC657D', 168 ]
        let s:orange = [ '#E18254', 173 ]
        let s:purple = [ '#B888E2', 140 ]
    endif
else
    let s:blue = [ '#639EE4', 75 ]
    let s:green = [ '#84B97C', 108 ]
    let s:red = [ '#DC657D', 168 ]
    let s:orange = [ '#E18254', 173 ]
    let s:purple = [ '#B888E2', 140 ]
endif
"}}}

"{{{Definition
let s:tab_l_fg = s:purple
let s:tab_l_bg = s:darker
let s:tab_r_fg = s:blue
let s:tab_r_bg = s:darker
let s:tab_sel_fg = s:dark
let s:tab_sel_bg = s:purple
let s:tab_middle_fg = s:blue
let s:tab_middle_bg = s:dark

let s:warningfg = s:dark
let s:warningbg = s:orange
let s:errorfg = s:dark
let s:errorbg = s:red

let s:normal_l1_fg = s:dark
let s:normal_l1_bg = s:blue
let s:normal_l2_fg = s:blue
let s:normal_l2_bg = s:darker
let s:normal_r1_fg = s:dark
let s:normal_r1_bg = s:blue
let s:normal_r2_fg = s:blue
let s:normal_r2_bg = s:darker
let s:normal_middle_fg = s:blue
let s:normal_middle_bg = s:dark

let s:insert_l1_fg = s:dark
let s:insert_l1_bg = s:green
let s:insert_l2_fg = s:green
let s:insert_l2_bg = s:darker
let s:insert_r1_fg = s:dark
let s:insert_r1_bg = s:green
let s:insert_r2_fg = s:green
let s:insert_r2_bg = s:darker
let s:insert_middle_fg = s:green
let s:insert_middle_bg = s:dark

let s:visual_l1_fg = s:dark
let s:visual_l1_bg = s:red
let s:visual_l2_fg = s:red
let s:visual_l2_bg = s:darker
let s:visual_r1_fg = s:dark
let s:visual_r1_bg = s:red
let s:visual_r2_fg = s:red
let s:visual_r2_bg = s:darker
let s:visual_middle_fg = s:red
let s:visual_middle_bg = s:dark

let s:replace_l1_fg = s:dark
let s:replace_l1_bg = s:red
let s:replace_l2_fg = s:red
let s:replace_l2_bg = s:darker
let s:replace_r1_fg = s:dark
let s:replace_r1_bg = s:red
let s:replace_r2_fg = s:red
let s:replace_r2_bg = s:darker
let s:replace_middle_fg = s:red
let s:replace_middle_bg = s:dark

let s:inactive_l1_fg = s:purple
let s:inactive_l1_bg = s:darker
let s:inactive_l2_fg = s:purple
let s:inactive_l2_bg = s:darker
let s:inactive_r1_fg = s:purple
let s:inactive_r1_bg = s:darker
let s:inactive_r2_fg = s:purple
let s:inactive_r2_bg = s:darker
let s:inactive_middle_fg = s:purple
let s:inactive_middle_bg = s:dark
"}}}

"{{{Implementation
let s:p.normal.left = [ [ s:normal_l1_fg, s:normal_l1_bg ], [ s:normal_l2_fg, s:normal_l2_bg ] ]
let s:p.normal.middle = [ [ s:normal_middle_fg, s:normal_middle_bg ] ]
let s:p.normal.right = [ [ s:normal_r1_fg, s:normal_r1_bg ], [ s:normal_r2_fg, s:normal_r2_bg ] ]

let s:p.insert.left = [ [ s:insert_l1_fg, s:insert_l1_bg ], [ s:insert_l2_fg, s:insert_l2_bg ] ]
let s:p.insert.middle = [ [ s:insert_middle_fg, s:insert_middle_bg ] ]
let s:p.insert.right = [ [ s:insert_r1_fg, s:insert_r1_bg ], [ s:insert_r2_fg, s:insert_r2_bg ] ]

let s:p.visual.left = [ [ s:visual_l1_fg, s:visual_l1_bg ], [ s:visual_l2_fg, s:visual_l2_bg ] ]
let s:p.visual.middle = [ [ s:visual_middle_fg, s:visual_middle_bg ] ]
let s:p.visual.right = [ [ s:visual_r1_fg, s:visual_r1_bg ], [ s:visual_r2_fg, s:visual_r2_bg ] ]

let s:p.replace.left = [ [ s:replace_l1_fg, s:replace_l1_bg ], [ s:replace_l2_fg, s:replace_l2_bg ] ]
let s:p.replace.middle = [ [ s:replace_middle_fg, s:replace_middle_bg ] ]
let s:p.replace.right = [ [ s:replace_r1_fg, s:replace_r1_bg ], [ s:replace_r2_fg, s:replace_r2_bg ] ]

let s:p.inactive.left = [ [ s:inactive_l1_fg, s:inactive_l1_bg ], [ s:inactive_l2_fg, s:inactive_l2_bg ] ]
let s:p.inactive.middle = [ [ s:inactive_middle_fg, s:inactive_middle_bg ] ]
let s:p.inactive.right = [ [ s:inactive_r1_fg, s:inactive_r1_bg ], [ s:inactive_r2_fg, s:inactive_r2_bg ] ]

let s:p.tabline.left = [ [ s:tab_l_fg, s:tab_l_bg] ]
let s:p.tabline.right = [ [ s:tab_r_fg, s:tab_r_bg] ]
let s:p.tabline.tabsel = [ [ s:tab_sel_fg, s:tab_sel_bg ] ]
let s:p.tabline.middle = [ [ s:tab_middle_fg, s:tab_middle_bg] ]

let s:p.normal.error = [ [ s:errorfg, s:errorbg ] ]
let s:p.normal.warning = [ [ s:warningfg, s:warningbg ] ]


if exists('g:lightline_foobar_bold')
    if g:lightline_foobar_bold == 1
        let s:p.normal.left = [ [ s:normal_l1_fg, s:normal_l1_bg, 'bold' ], [ s:normal_l2_fg, s:normal_l2_bg ] ]
        let s:p.normal.right = [ [ s:normal_r1_fg, s:normal_r1_bg, 'bold' ], [ s:normal_r2_fg, s:normal_r2_bg ] ]
        let s:p.insert.left = [ [ s:insert_l1_fg, s:insert_l1_bg, 'bold' ], [ s:insert_l2_fg, s:insert_l2_bg ] ]
        let s:p.insert.right = [ [ s:insert_r1_fg, s:insert_r1_bg, 'bold' ], [ s:insert_r2_fg, s:insert_r2_bg ] ]
        let s:p.visual.left = [ [ s:visual_l1_fg, s:visual_l1_bg, 'bold' ], [ s:visual_l2_fg, s:visual_l2_bg ] ]
        let s:p.visual.right = [ [ s:visual_r1_fg, s:visual_r1_bg, 'bold' ], [ s:visual_r2_fg, s:visual_r2_bg ] ]
        let s:p.replace.left = [ [ s:replace_l1_fg, s:replace_l1_bg, 'bold' ], [ s:replace_l2_fg, s:replace_l2_bg ] ]
        let s:p.replace.right = [ [ s:replace_r1_fg, s:replace_r1_bg, 'bold' ], [ s:replace_r2_fg, s:replace_r2_bg ] ]
        let s:p.tabline.tabsel = [ [ s:tab_sel_fg, s:tab_sel_bg, 'bold' ] ]
    endif
endif
"}}}

let g:lightline#colorscheme#neodark_alter#palette = lightline#colorscheme#flatten(s:p)
