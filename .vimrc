" Standard Vim Settings
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
syntax on
colorscheme wombat
set number
set nocompatible
set shell=bash
set clipboard=unnamedplus

" NERDTree Settings
let g:NERDTreeWinSize = 40
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * NERDTree

" Plugins to install through vim-plug
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'nicoraffo/conque'
Plug 'vim-scripts/awk.vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.sh --clang-completer' }
Plug 'rust-lang/rust.vim'
"Plug 'phildawes/racer'
"Plug 'powerline/powerline'
Plug 'flazz/vim-colorschemes', { 'do' : 'mkdir ~/.vim/colors; mv colors/* ~/.vim/colors/' }
call plug#end()

" Cursor configuration
"http://vim.wikia.com/wiki/Configuring_the_cursor
highlight Cursor guibg=steelblue
highlight iCursor guibg=steelblue
highlight iCursor guifg=white guibg=steelblue

" YouCompleteMe Settings
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
"let g:ycm_confirm_extra_conf = 0

" Custom Function Mappings
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

"let mapleader = "\<Space>"

""""""""""""""""""""
" Colemak Mappings "
""""""""""""""""""""
noremap h :
noremap d <DEL>
noremap DD dd
imap <M-Space> <Esc>

noremap n h
noremap e j
noremap i k
noremap o l

" insert
noremap a i
" insert at beginning of line
noremap A I
" append
noremap s a
" append at end of line
noremap S A

" search to next
noremap <C-k> n
" search to last
noremap <C-m> N

" end of word
noremap <C-i> e
" end of line
noremap <C-o> $
" beginning of word
noremap <C-e> b
"beginning of line
noremap <C-n> 0

" shift+direction switches split panes
noremap N <C-W>h
noremap O <C-W>l
noremap E <C-W>j
noremap I <C-W>k

" U = Redo with U
noremap U <C-r>

" c-h/c-i switches tabs [inoremap <c-i> messes up insert-mode tabbing]
nnoremap <C-N> <C-PageDown>
nnoremap <C-O> <C-PageUp>

" this nerdtree mapping interferes with movement
let g:NERDTreeMapOpenExpl = ";"
let g:NERDTreeMapOpenSplit = ";"
