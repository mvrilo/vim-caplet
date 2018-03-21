" Language:   Caplet
" Maintainer: Murilo Santana <mvrilo@gmail.com>
" URL:        https://github.com/mvrilo/vim-capletlet
" LICENSE:    MIT

if exists("b:current_syntax")
  finish
endif

syn region capletString oneline start=/"/ skip=/\\\\\|\\"/ end=/"/
syn region capletString oneline start=/'/ skip=/\\\\\|\\'/ end=/'/
syn region capletKeyDq oneline start=/"/ end=/"/ contained
syn region capletKeySq oneline start=/'/ end=/'/ contained
syn region capletComment display oneline start='\%\(^\|\s\)#' end='$' contains=capletTodo

syn match capletInteger /\<[+-]\=[0-9]\(_\=\d\)*\>/ display
syn match capletBoolean /\<\%(true\|false\)\>/ display
syn match capletBoolean /\<\%(on\|off\)\>/ display

syn match capletModules /\(^\|\s\)*\<\%(events\|sleep\|clear\|include\|ticker\|net\|syn\|tcp\|udp\|api\|update\|ble\|wifi\|arp\|http\|https\|gps\|mac\)\(\.[a-z0-9]*\|$\)*\>/ display

syn match   capletPromptVars /{\<\%(reset\|bold\|dim\|r\|g\|b\|y\|fb\|fw\|bdg\|br\|bg\|by\|blb\|cidr\|env\|net\)\(\.[a-z0-9]*\|$\)*\>}/ skipwhite
syn region  capletPromptStyle start='{' end='}' display contained contains=capletPromptVars
syn match   capletPromptIndicator '\$'

syn keyword capletKeywords get set nextgroup=capletModules skipwhite
syn keyword capletTodo TODO FIXME contained

hi def link capletString String
hi def link capletInteger Number
hi def link capletBoolean Boolean
hi def link capletKeyDq Identifier
hi def link capletKeySq Identifier
hi def link capletTodo Todo
hi def link capletComment Comment
hi def link capletKeywords Keyword
hi def link capletModules Function
hi def link capletPromptIndicator Function
hi def link capletPromptVars Tag
hi def link capletPromptStyle Tag

let b:current_syntax = "caplet"
