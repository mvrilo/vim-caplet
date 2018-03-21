" File: ftplugin/caplet.vim
" Author: Murilo Santana <mvrilo@gmail.com>
" Description: FileType Plugin for Bettercap's Caplet
" Last Change: Mar 18, 2018

if exists('b:did_ftplugin')
    finish
endif
let b:did_ftplugin = 1

let s:save_cpo = &cpo
set cpo&vim

setlocal commentstring=#\ %s

" Add NERDCommenter delimiters

let s:delims = { 'left': '#' }
if exists('g:NERDDelimiterMap')
    if !has_key(g:NERDDelimiterMap, 'caplet')
        let g:NERDDelimiterMap.caplet = s:delims
    endif
elseif exists('g:NERDCustomDelimiters')
    if !has_key(g:NERDCustomDelimiters, 'caplet')
        let g:NERDCustomDelimiters.caplet = s:delims
    endif
else
    let g:NERDCustomDelimiters = { 'caplet': s:delims }
endif
unlet s:delims

let b:undo_ftplugin = ""

let &cpo = s:save_cpo
unlet s:save_cpo

" vim: set et sw=4 ts=4:
