" Basic settings

" use vim settings, rather than vi settings
" must be first, because it changes other options as a side effect
set nocompatible

" security
set modelines=0

" hide buffers, not close them
set hidden

" maintain undo history between sessions
set undofile
set undodir=~/.vim/undo
set noswapfile

" fuzzy find
set path+=**
" lazy file name tab completion
set wildmode=longest,list,full
set wildmenu
set wildignorecase
" ignore files vim doesnt use
set wildignore+=.git,.hg,.svn
set wildignore+=*.aux,*.out,*.toc
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest,*.rbc,*.class
set wildignore+=*.ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp
set wildignore+=*.avi,*.divx,*.mp4,*.webm,*.mov,*.m2ts,*.mkv,*.vob,*.mpg,*.mpeg
set wildignore+=*.mp3,*.oga,*.ogg,*.wav,*.flac
set wildignore+=*.eot,*.otf,*.ttf,*.woff
set wildignore+=*.doc,*.pdf,*.cbr,*.cbz
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*.kgb
set wildignore+=*.swp,.lock,.DS_Store,._*

filetype plugin indent on

" Syntax Highlighting
syntax on
autocmd BufRead,BufNewFile *.conf set filetype=dosini

set encoding=utf-8
set hlsearch incsearch                  " hightlight search and incremental search

" global replace by default
set gdefault

" case insensitive search
set ignorecase
set smartcase
set infercase

set nu                                " show line numbers

" use indents of 4 spaces
set shiftwidth=4

" let tabs be tabs
set noexpandtab

" an indentation every four columns
set tabstop=4

" let backspace delete indent
set softtabstop=4

" always show statusline
set laststatus=2

" use 256 colors
set t_Co=256

" disable mouse input
set mouse=

" remove trailing whitespaces and ^M chars
augroup ws
  au!
  autocmd FileType c,cpp,java,php,js,json,css,scss,sass,py,rb,coffee,python,twig,xml,yml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))
augroup end
