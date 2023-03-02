scriptencoding utf-8

" https://www.nerdfonts.com/cheat-sheet
let s:pets = {
            \ 'vim': nr2char(0xe62b),
            \ 'clang': nr2char(0xe61e),
            \ 'python': nr2char(0xe606),
            \ 'javascript': nr2char(0xe60c),
            \ 'github': nr2char(0xf113),
            \ 'php': nr2char(0xe608),
            \ 'terminal': nr2char(0xe795),
            \ 'markdown': nr2char(0xe609),
            \ }

let g:pets#codes#lifetime_enable = 0
let g:pets#codes#birth_enable = 0
let g:pets#codes#ball_image = nr2char(0xeae8)

function! pets#codes#get_pet(name) abort
    if !has_key(s:pets, a:name)
        echohl ErrorMsg
        echo printf('"%s" is not in this world.', a:name)
        echohl None
        return ""
    endif

    return s:pets[a:name]
endfunction

function! pets#codes#get_pet_names() abort
    return keys(s:pets)
endfunction

function! pets#codes#get_bg() abort
    let bg = [
                \ "10",
                \ "01",
            \ ]
    return bg
endfunction

function! pets#codes#bg_setting() abort
    highlight PetsGardenBG1 ctermfg=22 ctermbg=None guifg=#004820 guibg=NONE
    highlight PetsGardenBG2 ctermfg=47 ctermbg=None guifg=#203510 guibg=NONE
    call matchadd('PetsGardenBG1', '0')
    call matchadd('PetsGardenBG2', '1')
endfunction

