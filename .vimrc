set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set autoindent

set number
syntax on


func! WordProcessorMode()
 setlocal smartindent
 setlocal spell spelllang=en_us
 setlocal noexpandtab
endfu

com! WP call WordProcessorMode()

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'L9'
call vundle#end()
filetype plugin indent on

highlight OUT ctermfg=red
highlight BAK ctermfg=red
highlight INT_KEYWORD ctermfg=yellow
highlight COMMENT ctermfg=blue
highlight STRING ctermfg=green
highlight INTEGER ctermfg=magenta
highlight FILE_READ_OUT ctermfg=darkmagenta
highlight STRING_KEYWORD ctermfg=yellow
highlight c_start ctermfg=magenta
highlight c_end ctermfg=magenta
highlight IF_STATEMENT ctermfg=yellow
highlight INPUT ctermfg=red
highlight FUNC ctermfg=yellow
highlight STOP ctermfg=darkmagenta
highlight VARDUMP ctermfg=darkmagenta
highlight ELSE ctermfg=yellow

let g:lightline = {
    \ 'colorscheme': 'wombat',
    \ 'component': {
    \     'myname': 'Ian Moffet' 
    \   },
    \   
    \   'left': [ [ 'mode', 'paste' ],
    \             ['readonly', 'filename', 'modified', 'myname' ] ]
   \ }
set noshowmode
set laststatus=2
colorscheme gruvbox
call plug#begin()
hi Normal guibg=NONE ctermbg=NONE
highlight Cursor guifg=grey guibg=black
command Nt NERDTree
execute pathogen#infect()
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

call plug#begin(expand('~/.vim/plugged'))
Plug 'arcticicestudio/nord-vim'
call plug#end()
" colorscheme nord
