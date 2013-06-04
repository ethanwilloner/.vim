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
