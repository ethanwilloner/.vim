set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
syntax on
colorscheme wombat
set number
let g:NERDTreeWinSize = 70
set nocompatible


"Start of Vundle config
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'klen/python-mode'
Plugin 'wting/rust.vim'
Plugin 'ervandew/supertab'
Plugin 'Rip-Rip/clang_complete'
Plugin 'scrooloose/nerdtree'
Plugin 'nicoraffo/conque'
Plugin 'vim-scripts/awk.vim'

call vundle#end()
filetype plugin indent on
"End of Vundle config

highlight Cursor guibg=steelblue
highlight iCursor guibg=steelblue
"highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue
"set guicursor=n-v-c:block-Cursor
"set guicursor+=i:ver100-iCursor
"set guicursor+=n-v-c:blinkon0
"set guicursor+=i:blinkwait10
"http://vim.wikia.com/wiki/Configuring_the_cursor

"clang_complete settings
let g:clang_use_library=1
let g:clang_library_path = '/usr/lib/llvm-3.4/lib/'
let g:clang_auto_select = 1
let g:clang_complete_auto = 0
let g:clang_complete_copen = 1
let g:clang_sort_algo = "none"

let g:SuperTabDefaultCompletionType = "context"
"let g:SuperTabDefaultCompletionType = "<c-x><c-u>"
let g:SuperTabLongestHighlight = 0
"let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']
"imap <tab> <c-x><c-u>

set completeopt=menuone,menu,longest,preview

function Dev()
	:NERDTree
	:belowright new
	:ConqueTerm bash
endfunction

:map <F2> :exec Dev()<cr> <esc>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colemak Mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"noremap <esc> <alt>

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


