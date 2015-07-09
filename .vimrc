set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
syntax on
colorscheme wombat
set number
let g:NERDTreeWinSize = 70
set nocompatible
set shell=bash
set clipboard=unnamedplus

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'nicoraffo/conque'
Plug 'vim-scripts/awk.vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.sh --clang-completer' }
Plug 'rust-lang/rust.vim'
Plug 'flazz/vim-colorschemes'
call plug#end()

"http://vim.wikia.com/wiki/Configuring_the_cursor
highlight Cursor guibg=steelblue
highlight iCursor guibg=steelblue
highlight iCursor guifg=white guibg=steelblue

let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
"let g:ycm_confirm_extra_conf = 0

"let mapleader = "\<Space>"

function Dev()
	:NERDTree
	:belowright new
	:ConqueTerm bash
endfunction

function Tree()
	:NERDTree
endfunction

:map <F2> :exec Dev()<cr> <esc>
:map <F3> :exec Tree()<cr> <esc>

""""""""""""""""""""
" Colemak Mappings "
""""""""""""""""""""
noremap <esc> <alt>
noremap n gj
noremap e gk
noremap i l
noremap gn j
noremap ge k

noremap a i
noremap A I
noremap s a
noremap S A

" k/K = last search
noremap k n
noremap K N

" l/L = BOL / EOL | <c-l> = join lines
noremap l ^
noremap L $
noremap <C-l> J

" j/J = end of word
noremap j e
noremap J E

" c-e/c-n/c-m or <cr> = High/Low/Mid
noremap <c-e> H
noremap <c-n> L
noremap <c-m> M

" shift+direction switches split panes
noremap H <C-W>h
noremap I <C-W>l
noremap N <C-W>j
noremap E <C-W>k

" U = Redo with U
noremap U <C-r>

noremap o ;
noremap O :

" _r_ = inneR text objects
onoremap r i

" c-h/c-i switches tabs [inoremap <c-i> messes up insert-mode tabbing]
nnoremap <c-i> <C-PageDown>
nnoremap <c-h> <C-PageUp>

nnoremap o :
nnoremap l u

" this nerdtree mapping interferes with movement
let g:NERDTreeMapOpenExpl = "j"

