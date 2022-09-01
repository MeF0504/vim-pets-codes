" pets-codes
" Version: 0.0.1
" Author: MeF
" License: MIT

if exists('g:loaded_pets_codes')
  finish
endif
let g:loaded_pets_codes = 1

let s:save_cpo = &cpo
set cpo&vim

let g:pets_worlds = get(g:, 'pets_worlds', [])
call add(g:pets_worlds, 'codes')

let &cpo = s:save_cpo
unlet s:save_cpo

" vim:set et:
