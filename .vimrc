filetype plugin indent on
set nocp
set title
set ai
set si
set sw=4
set bs=2
set sts=4
set et
set wrap
set list listchars=tab:»·,trail:·
set spell
set spelllang=en_us
set ruler
set history=200
set showcmd
set incsearch
set hlsearch
set ignorecase
set t_Co=256
set relativenumber
set number
set guifont=Hack:h10
set cursorcolumn
syntax on

hi CursorColumn ctermbg=8

:highlight clear SpellBad
:highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
:highlight clear SpellCap
:highlight SpellCap term=underline cterm=underline
:highlight clear SpellRare
:highlight SpellRare term=underline cterm=underline
:highlight clear SpellLocal
:highlight SpellLocal term=underline cterm=underline

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:NumberToggleTrigger="<F10>"

let g:tagbar_type_make = {
    \ 'kinds': [
        \ 'm:macros',
        \ 't:targets'
    \ ]
\ }

"
" Dart Config
"
let dart_html_in_string=v:true
let dart_style_guide = 2
let dart_format_on_save = 1

map <C-n> :NERDTreeToggle<CR>
map <F8> :TagbarToggle<CR>
map <F9> :FixWhitespace<CR>

" Fix syntax positioning
map <F11> gg=G<CR>

map <F7> :lopen<CR>
map <F6> :lclose<CR>

nnoremap <silent> <C-e> :<C-u>call ToggleErrors()<CR>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q| endif
autocmd vimenter * NERDTree

execute pathogen#infect()
