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
let g:NERDTreeMapOpenInTab='<ENTER>'
" Uncomment for automatic NERDTree initialization when starting Vim
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"autocmd VimEnter * NERDTree

" Plugins to install through vim-plug
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'scrooloose/syntastic'
Plug 'vim-scripts/awk.vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.sh --clang-completer' }
Plug 'jiangmiao/auto-pairs'
Plug 'bling/vim-airline'
Plug 'majutsushi/tagbar'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'flazz/vim-colorschemes', { 'do' : 'mkdir ~/.vim/colors; mv colors/* ~/.vim/colors/' }
call plug#end()

" Cursor configuration
"http://vim.wikia.com/wiki/Configuring_the_cursor
highlight Cursor guibg=steelblue
highlight iCursor guibg=steelblue
highlight iCursor guifg=white guibg=steelblue

" Airline Settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#syntastic#enabled = 1

" YouCompleteMe Settings
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
"let g:ycm_confirm_extra_conf = 0

""""""""""""""""""""
" Colemak Mappings "
"""""""""""""""""""

noremap h :
noremap d <DEL>
noremap DD dd
imap <M-Space> <Esc>
noremap gg T

" Movement Keys
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

" Visual mode
noremap t v

" search to next
noremap <C-k> n
" search to last
noremap <C-m> N

" end of word
noremap I e
" end of line
noremap O g_
" beginning of word
noremap E b
"beginning of line
noremap N _g

" Page Half Down
noremap <C-e> <C-d>
"Page Half Up
noremap <C-i> <C-u>

" U = Redo with U
noremap U <C-r>

" c-h/c-i switches tabs [inoremap <c-i> messes up insert-mode tabbing]
noremap <C-n> <C-PageUp>
noremap <C-o> <C-PageDown>

" this nerdtree mapping interferes with movement
let g:NERDTreeMapOpenExpl = ";"
let g:NERDTreeMapOpenSplit = ";"

nmap <F2> :NERDTreeTabsOpen<CR>
nmap <F3> :TagbarToggle<CR>
