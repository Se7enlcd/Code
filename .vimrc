
set number
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030
set termencoding=utf-8
set expandtab
set ts=4
set shiftwidth=4
syntax on
if has('mouse')
set mouse-=a
endif
set ruler
set clipboard=unnamed
set scrolloff=3
set cursorline
set hlsearch
set noswapfile
set softtabstop=4
set shiftwidth=4
set expandtab
set linebreak
set showtabline=2
set splitbelow
set showcmd
set splitright
set ignorecase
set smartcase
syntax on
colorscheme darkblue
filetype on
filetype indent on
filetype plugin on
vmap <C-c> y
nmap <C-v> p
vmap <Tab> >>
vmap <S-Tab> <
imap jj <Esc>
nmap <UP> <Nop>
imap <UP> <Nop>

autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

autocmd BufWritePre * :%s/\s\+$//e

if executable("python")
    autocmd BufRead,BufNewFile *.py noremap         <F5> :% w !python -w<Enter
else
    autocmd BufRead,BufNewFile *.py noremap <F5> :echo "you need to install python first!"
endif
