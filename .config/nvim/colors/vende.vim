" vende theme v1.0
"
" @author Daniel Cavanagh <@danielcavanagh>
"
" Based on Dracula Theme v1.2.7
"
" https://github.com/zenorocha/dracula-theme
"
" Copyright 2016, 2018. All rights reserved
"
" Code licensed under the MIT license
" http://zenorocha.mit-license.org
"
" @author Trevor Heins <@heinst>
" @author Éverton Ribeiro <nuxlli@gmail.com>
" @author Zeno Rocha <hi@zenorocha.com>

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "vende"

:let dark = '#282c30'
:let grey = '#44484b'
:let light_grey = '#64666d'
:let dark_white = '#aaaaaa'
:let light = '#f7f7f7'

:let purple = '#9e5fff'
:let light_purple = '#ad72ff'
:let yellow = '#ffff59'
:let green = '#00ff77'
:let blue = '#3fccff'
:let red = '#ff4040'
:let orange = '#ff923f'

" defaults
:exe 'hi Cursor ctermfg=17 ctermbg=231 cterm=NONE guifg=' . dark . ' guibg=' . light . ' gui=NONE'
:exe 'hi Visual ctermfg=NONE ctermbg=241 cterm=NONE guifg=NONE guibg=' . grey . ' gui=NONE'
:exe 'hi CursorLine ctermbg=234 cterm=NONE guifg=NONE guibg=' . grey . ' gui=NONE'
:exe 'hi CursorColumn ctermbg=234 cterm=NONE guifg=NONE guibg=' . grey . ' gui=NONE'
:exe 'hi ColorColumn ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#3d3f49 gui=NONE'
:exe 'hi LineNr ctermfg=60 ctermbg=NONE cterm=NONE guifg=' . dark_white .' guibg=' . dark . ' gui=NONE'
:exe 'hi CursorLineNr ctermfg=228 ctermbg=234 cterm=NONE guifg=' . blue . ' guibg=' . grey . ' gui=NONE'
:exe 'hi VertSplit ctermfg=231 ctermbg=236 cterm=bold guifg=' . dark_white . ' guibg=' . grey . ' gui=bold'
:exe 'hi StatusLine ctermfg=231 ctermbg=236 cterm=bold guifg=' . light . ' guibg=' . light_grey . ' gui=bold'
:exe 'hi StatusLineNC ctermfg=231 ctermbg=236 cterm=NONE guifg=' . light . ' guibg=' . light_grey . ' gui=NONE'
:exe 'hi Pmenu ctermfg=15 ctermbg=61 cterm=NONE guifg=' . light . ' guibg=' . dark . ' gui=NONE'
:exe 'hi PmenuSel ctermfg=16 ctermbg=84 cterm=bold guifg=' . dark . ' guibg=' . blue . ' gui=NONE'
:exe 'hi IncSearch ctermfg=17 ctermbg=215 cterm=none guifg=' . dark . ' guibg=' . yellow . ' gui=none'
:exe 'hi Search ctermfg=17 ctermbg=84 cterm=none guifg=' . dark . ' guibg=' . blue . ' gui=none'
:exe 'hi Directory ctermfg=141 ctermbg=NONE cterm=NONE guifg=' . purple . ' guibg=NONE gui=NONE'
:exe 'hi Folded ctermfg=61 ctermbg=235 cterm=NONE guifg=' . yellow .' guibg=' . dark . ' gui=NONE'
:exe 'hi SignColumn ctermfg=246 ctermbg=235 cterm=NONE guifg=#909194 guibg=' . grey . ' gui=NONE'
:exe 'hi FoldColmun ctermfg=246 ctermbg=235 cterm=NONE guifg=#909194 guibg=' . grey . ' gui=NONE'
:exe 'hi Normal guifg=' . light . ' guibg=' . dark . ' gui=NONE'
:exe 'hi Boolean ctermfg=141 ctermbg=NONE cterm=NONE guifg=' . blue . ' guibg=NONE gui=NONE'
:exe 'hi Character ctermfg=141 ctermbg=NONE cterm=NONE guifg=' . yellow . ' guibg=NONE gui=NONE'
:exe 'hi Comment ctermfg=61 ctermbg=NONE cterm=NONE guifg=' . green .' guibg=NONE gui=NONE'
:exe 'hi Conditional ctermfg=212 ctermbg=NONE cterm=NONE guifg=' . purple . ' guibg=NONE gui=NONE'
:exe 'hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE'
:exe 'hi Define ctermfg=212 ctermbg=NONE cterm=NONE guifg=' . purple . ' guibg=NONE gui=NONE'
:exe 'hi DiffAdd ctermfg=231 ctermbg=64 cterm=bold guifg=' . green . ' guibg=' . grey . ' gui=bold'
:exe 'hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE guifg=' . red . ' guibg=' . grey . ' gui=bold'
:exe 'hi DiffChange ctermfg=231 ctermbg=23 cterm=NONE guifg=' . light_purple . ' guibg=' . grey . ' gui=bold'
:exe 'hi DiffText ctermfg=231 ctermbg=24 cterm=bold guifg=' . light . ' guibg=#204a87 gui=bold'
:exe 'hi ErrorMsg ctermfg=231 ctermbg=212 cterm=NONE guifg=' . dark . ' guibg=' . red . ' gui=NONE'
:exe 'hi WarningMsg ctermfg=231 ctermbg=212 cterm=NONE guifg=' . dark . ' guibg=' . blue . ' gui=NONE'
:exe 'hi Float ctermfg=141 ctermbg=NONE cterm=NONE guifg=' . blue . ' guibg=NONE gui=NONE'
:exe 'hi Function ctermfg=84 ctermbg=NONE cterm=NONE guifg=' . green . ' guibg=NONE gui=NONE'
:exe 'hi Identifier ctermfg=117 ctermbg=NONE cterm=NONE guifg=' . blue . ' guibg=NONE gui=italic'
:exe 'hi Keyword ctermfg=212 ctermbg=NONE cterm=NONE guifg=' . purple . ' guibg=NONE gui=NONE'
:exe 'hi Label ctermfg=228 ctermbg=NONE cterm=NONE guifg=' . blue . ' guibg=NONE gui=NONE'
:exe 'hi MatchParen ctermfg=212 ctermbg=NONE cterm=underline guifg=' . yellow . ' guibg=NONE gui=underline'
:exe 'hi NonText ctermfg=231 ctermbg=NONE cterm=NONE guifg=#525563 guibg=NONE gui=NONE'
:exe 'hi Number ctermfg=141 ctermbg=NONE cterm=NONE guifg=' . blue . ' guibg=NONE gui=NONE'
:exe 'hi Operator ctermfg=212 ctermbg=NONE cterm=NONE guifg=' . red . ' guibg=NONE gui=NONE'
:exe 'hi PreProc ctermfg=212 ctermbg=NONE cterm=NONE guifg=' . yellow . ' guibg=NONE gui=NONE'
:exe 'hi Special ctermfg=231 ctermbg=NONE cterm=NONE guifg=' . purple . ' guibg=NONE gui=NONE'
:exe 'hi SpecialComment ctermfg=61 ctermbg=NONE cterm=NONE guifg=' . blue .' guibg=NONE gui=NONE'
:exe 'hi SpecialKey ctermfg=231 ctermbg=235 cterm=NONE guifg=#525563 guibg=NONE gui=NONE'
:exe 'hi Statement ctermfg=212 ctermbg=NONE cterm=NONE guifg=' . purple . ' guibg=NONE gui=NONE'
:exe 'hi StorageClass ctermfg=117 ctermbg=NONE cterm=NONE guifg=' . blue . ' guibg=NONE gui=italic'
:exe 'hi String ctermfg=228 ctermbg=NONE cterm=NONE guifg=' . orange . ' guibg=NONE gui=NONE'
:exe 'hi TabLineFill  cterm=NONE ctermbg=236 guifg=#333333 guibg=' . dark . ' gui=none'
:exe 'hi TabLine      cterm=NONE ctermfg=7 ctermbg=240 guifg=#666666 guibg=' . dark . ' gui=none'
:exe 'hi TabLineSel   guifg=WHITE guibg=' . dark . ' gui=none'
:exe 'hi Tag ctermfg=212 ctermbg=NONE cterm=NONE guifg=' . red . ' guibg=NONE gui=NONE'
:exe 'hi Title ctermfg=231 ctermbg=NONE cterm=bold guifg=' . light . ' guibg=NONE gui=bold'
:exe 'hi Todo ctermfg=61 ctermbg=NONE cterm=inverse,bold guifg=' . yellow .' guibg=NONE gui=inverse,bold'
:exe 'hi Type ctermfg=117 ctermbg=NONE cterm=NONE guifg=' . blue . ' guibg=NONE gui=NONE'
:exe 'hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline'

" ruby
:exe 'hi rubyClass ctermfg=212 ctermbg=NONE cterm=NONE guifg=' . red . ' guibg=NONE gui=NONE'
:exe 'hi rubyFunction ctermfg=84 ctermbg=NONE cterm=NONE guifg=' . blue . ' guibg=NONE gui=NONE'
:exe 'hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE'
:exe 'hi rubySymbol ctermfg=141 ctermbg=NONE cterm=NONE guifg=' . purple . ' guibg=NONE gui=NONE'
:exe 'hi rubyConstant ctermfg=81 ctermbg=NONE cterm=NONE guifg=' . blue . ' guibg=NONE gui=italic'
:exe 'hi rubyStringDelimiter ctermfg=228 ctermbg=NONE cterm=NONE guifg=' . orange . ' guibg=NONE gui=NONE'
:exe 'hi rubyBlockParameter ctermfg=215 ctermbg=NONE cterm=NONE guifg=' . yellow . ' guibg=NONE gui=italic'
:exe 'hi rubyInstanceVariable ctermfg=203 ctermbg=NONE cterm=NONE guifg=' . yellow . ' guibg=NONE gui=NONE'
:exe 'hi rubyInclude ctermfg=212 ctermbg=NONE cterm=NONE guifg=' . red . ' guibg=NONE gui=NONE'
:exe 'hi rubyGlobalVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE'
:exe 'hi rubyRegexp ctermfg=228 ctermbg=NONE cterm=NONE guifg=' . orange . ' guibg=NONE gui=NONE'
:exe 'hi rubyRegexpDelimiter ctermfg=228 ctermbg=NONE cterm=NONE guifg=' . orange . ' guibg=NONE gui=NONE'
:exe 'hi rubyEscape ctermfg=141 ctermbg=NONE cterm=NONE guifg=' . purple . ' guibg=NONE gui=NONE'
:exe 'hi rubyControl ctermfg=212 ctermbg=NONE cterm=NONE guifg=' . red . ' guibg=NONE gui=NONE'
:exe 'hi rubyClassVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE'
:exe 'hi rubyOperator ctermfg=212 ctermbg=NONE cterm=NONE guifg=' . red . ' guibg=NONE gui=NONE'
:exe 'hi rubyException ctermfg=212 ctermbg=NONE cterm=NONE guifg=' . red . ' guibg=NONE gui=NONE'
:exe 'hi rubyPseudoVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE'
:exe 'hi rubyRailsUserClass ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=italic'
:exe 'hi rubyRailsARAssociationMethod ctermfg=117 ctermbg=NONE cterm=NONE guifg=' . blue . ' guibg=NONE gui=NONE'
:exe 'hi rubyRailsARMethod ctermfg=117 ctermbg=NONE cterm=NONE guifg=' . blue . ' guibg=NONE gui=NONE'
:exe 'hi rubyRailsRenderMethod ctermfg=117 ctermbg=NONE cterm=NONE guifg=' . blue . ' guibg=NONE gui=NONE'
:exe 'hi rubyRailsMethod ctermfg=117 ctermbg=NONE cterm=NONE guifg=' . blue . ' guibg=NONE gui=NONE'

" eruby
:exe 'hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE'
:exe 'hi erubyComment ctermfg=61 ctermbg=NONE cterm=NONE guifg=' . yellow .' guibg=NONE gui=NONE'
:exe 'hi erubyRailsMethod ctermfg=117 ctermbg=NONE cterm=NONE guifg=' . blue . ' guibg=NONE gui=NONE'

" html
:exe 'hi htmlTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=' . blue . ' guibg=NONE gui=NONE'
:exe 'hi htmlEndTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=' . red . ' guibg=NONE gui=NONE'
:exe 'hi htmlTagName ctermfg=NONE ctermbg=NONE cterm=NONE guifg=' . green . ' guibg=NONE gui=NONE'
:exe 'hi htmlArg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=' . purple . ' guibg=NONE gui=NONE'
:exe 'hi htmlSpecialChar ctermfg=141 ctermbg=NONE cterm=NONE guifg=' . purple . ' guibg=NONE gui=NONE'

" java
:exe 'hi javaScriptFunction ctermfg=117 ctermbg=NONE cterm=NONE guifg=' . blue . ' guibg=NONE gui=italic'
:exe 'hi javaScriptRailsFunction ctermfg=117 ctermbg=NONE cterm=NONE guifg=' . blue . ' guibg=NONE gui=NONE'
:exe 'hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE'

" yaml
:exe 'hi yamlKey ctermfg=212 ctermbg=NONE cterm=NONE guifg=' . red . ' guibg=NONE gui=NONE'
:exe 'hi yamlAnchor ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE'
:exe 'hi yamlAlias ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE'
:exe 'hi yamlDocumentHeader ctermfg=228 ctermbg=NONE cterm=NONE guifg=' . orange . ' guibg=NONE gui=NONE'

" css
:exe 'hi cssURL ctermfg=215 ctermbg=NONE cterm=NONE guifg=' . yellow . ' guibg=NONE gui=italic'
:exe 'hi cssFunctionName ctermfg=117 ctermbg=NONE cterm=NONE guifg=' . blue . ' guibg=NONE gui=NONE'
:exe 'hi cssColor ctermfg=141 ctermbg=NONE cterm=NONE guifg=' . purple . ' guibg=NONE gui=NONE'
:exe 'hi cssPseudoClassId ctermfg=84 ctermbg=NONE cterm=NONE guifg=' . green . ' guibg=NONE gui=NONE'
:exe 'hi cssClassName ctermfg=84 ctermbg=NONE cterm=NONE guifg=' . green . ' guibg=NONE gui=NONE'
:exe 'hi cssValueLength ctermfg=141 ctermbg=NONE cterm=NONE guifg=' . purple . ' guibg=NONE gui=NONE'
:exe 'hi cssCommonAttr ctermfg=81 ctermbg=NONE cterm=NONE guifg=#6be5fd guibg=NONE gui=NONE'
:exe 'hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE'

" elixir
:exe 'hi elixirAtom ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=italic'
:exe 'hi elixirModuleDeclaration ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=italic'
:exe 'hi elixirAlias ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=italic'
:exe 'hi elixirInterpolationDelimiter ctermfg=84 ctermbg=NONE cterm=NONE guifg=' . green . ' guibg=NONE gui=NONE'
:exe 'hi elixirStringDelimiter ctermfg=228 ctermbg=NONE cterm=NONE guifg=' . orange . ' guibg=NONE gui=NONE'

" vim script
:exe 'hi vimGroupName ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE'
:exe 'hi vimGroup ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE'
:exe 'hi vimOption ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE'
:exe 'hi vimHiCtermFgBg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE'
:exe 'hi vimHiGuiFgBg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE'

" markdown
:exe 'hi markdownH1 ctermfg=141 ctermbg=NONE cterm=bold guifg=' . purple . ' guibg=NONE gui=bold'
:exe 'hi markdownH2 ctermfg=141 ctermbg=NONE cterm=bold guifg=' . purple . ' guibg=NONE gui=bold'
:exe 'hi markdownH3 ctermfg=212 ctermbg=NONE cterm=bold guifg=' . red . ' guibg=NONE gui=bold'
:exe 'hi markdownH4 ctermfg=212 ctermbg=NONE cterm=bold guifg=' . red . ' guibg=NONE gui=bold'
:exe 'hi markdownH5 ctermfg=212 ctermbg=NONE cterm=NONE guifg=' . red . ' guibg=NONE gui=NONE'
:exe 'hi markdownH6 ctermfg=212 ctermbg=NONE cterm=NONE guifg=' . red . ' guibg=NONE gui=NONE'
:exe 'hi markdownCode ctermfg=228 ctermbg=NONE cterm=NONE guifg=' . orange . ' guibg=NONE gui=NONE'
:exe 'hi markdownCodeBlock ctermfg=228 ctermbg=NONE cterm=NONE guifg=' . orange . ' guibg=NONE gui=NONE'
:exe 'hi markdownCodeDelimiter ctermfg=228 ctermbg=NONE cterm=NONE guifg=' . orange . ' guibg=NONE gui=NONE'
:exe 'hi markdownBlockquote ctermfg=84 ctermbg=NONE cterm=NONE guifg=' . green . ' guibg=NONE gui=NONE'
:exe 'hi markdownListMarker ctermfg=84 ctermbg=NONE cterm=NONE guifg=' . green . ' guibg=NONE gui=NONE'
:exe 'hi markdownOrderedListMarker ctermfg=84 ctermbg=NONE cterm=NONE guifg=' . green . ' guibg=NONE gui=NONE'
:exe 'hi markdownRule ctermfg=84 ctermbg=NONE cterm=NONE guifg=' . green . ' guibg=NONE gui=NONE'
:exe 'hi markdownHeadingRule ctermfg=84 ctermbg=NONE cterm=NONE guifg=' . green . ' guibg=NONE gui=NONE'
:exe 'hi markdownUrlDelimiter ctermfg=215 ctermbg=NONE cterm=NONE guifg=' . yellow . ' guibg=NONE gui=italic'
:exe 'hi markdownLinkDelimiter ctermfg=215 ctermbg=NONE cterm=NONE guifg=' . yellow . ' guibg=NONE gui=italic'
:exe 'hi markdownLinkTextDelimiter ctermfg=215 ctermbg=NONE cterm=NONE guifg=' . yellow . ' guibg=NONE gui=italic'
:exe 'hi markdownHeadingDelimiter ctermfg=117 ctermbg=NONE cterm=bold guifg=' . blue . ' guibg=NONE gui=bold'
:exe 'hi markdownUrl ctermfg=141 ctermbg=NONE cterm=NONE guifg=' . purple . ' guibg=NONE gui=NONE'
:exe 'hi markdownUrlTitleDelimiter ctermfg=84 ctermbg=NONE cterm=NONE guifg=' . green . ' guibg=NONE gui=NONE'

" ocaml
:exe 'hi ocamlModule ctermfg=117 ctermbg=NONE cterm=NONE guifg=' . blue . ' guibg=NONE gui=italic'
:exe 'hi ocamlConstructor ctermfg=117 ctermbg=NONE cterm=NONE guifg=' . blue . ' guibg=NONE gui=italic'
:exe 'hi ocamlType ctermfg=141 ctermbg=NONE cterm=NONE guifg=' . purple . ' guibg=NONE gui=NONE'
:exe 'hi ocamlModPath ctermfg=141 ctermbg=NONE cterm=NONE guifg=' . purple . ' guibg=NONE gui=NONE'
:exe 'hi ocamlTodo ctermfg=215 ctermbg=NONE cterm=NONE guifg=' . yellow . ' guibg=NONE gui=italic'
:exe 'hi ocamlLabel ctermfg=84 ctermbg=NONE cterm=NONE guifg=' . green . ' guibg=NONE gui=NONE'
:exe 'hi ocamlFullMod ctermfg=117 ctermbg=NONE cterm=NONE guifg=' . blue . ' guibg=NONE gui=italic'
:exe 'hi ocamlWith ctermfg=117 ctermbg=NONE cterm=NONE guifg=' . blue . ' guibg=NONE gui=italic'
:exe 'hi ocamlUnit ctermfg=212 ctermbg=NONE cterm=NONE guifg=' . red . ' guibg=NONE gui=NONE'

" cygwin has an annoying behavior where it resets background to light regardless of what is set above, so we force it yet again
execute "set background=dark"
