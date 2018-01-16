" show matching brackets/parenthesis
set showmatch

" disable startup message
set shortmess+=I

" syntax highlighting
syntax on
set synmaxcol=512
filetype plugin on

" show line numbers
set number

" no folding
set nofoldenable
set foldlevel=99
set foldminlines=99
set foldlevelstart=99

" highlight cursor
set cursorline
"set cursorcolumn

" show invisibles
set list
set listchars=
set listchars+=tab:𐄙\
set listchars+=trail:·
set listchars+=extends:»
set listchars+=precedes:«
set listchars+=nbsp:⣿

" split style
set fillchars=vert:▒

" tree style file explorer
let g:netrw_liststyle=3
let g:netrw_browse_split=4
let g:netrw_winsize=25
