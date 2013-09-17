set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
syntax on
colorscheme phd 
set number
let g:NERDTreeWinSize = 70

function Dev()
	:NERDTree
	:belowright new
	:ConqueTerm bash
endfunction

:map <F2> :exec Dev()<cr> <esc>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colemak Mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" hnei = arrows
  noremap n gj|noremap e gk|noremap i l|noremap gn j|noremap ge k
" s/S = inSert
  noremap s i|noremap S I
" k/K = last search
  noremap k n|noremap K N
" l/L = BOL / EOL | <c-l> = join lines
  noremap l ^|noremap L $|noremap <C-l> J
" j/J = end of word
  noremap j e|noremap J E
" _r_ = inneR text objects
  onoremap r i
" c-e/c-n/c-m or <cr> = High/Low/Mid
  noremap <c-e> H|noremap <c-n> L|noremap <c-m> M
" shift+direction switches split panes
  noremap H <C-W>h|noremap I <C-W>l|noremap N <C-W>j|noremap E <C-W>k
" c-h/c-i switches tabs [inoremap <c-i> messes up insert-mode tabbing]
  nnoremap <c-i> <C-PageDown>|nnoremap <c-h> <C-PageUp>
" U = Redo with U
  noremap U <C-r>

 noremap o ;|noremap O :

