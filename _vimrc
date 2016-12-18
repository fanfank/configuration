"============================
"Normal preferrence settings
"============================
set nocompatible
syntax enable
syntax on
colorscheme koehler
set nu
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set backspace=indent,eol,start

set encoding=utf-8 termencoding=utf-8 fileencoding=utf-8
set fencs=utf-8,gbk,gb2312

"set cindent
"set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s "specify how to indent
"set whichwrap=b,s,<,>,[,] "光标在行首或末可以到前后行
set hlsearch
set incsearch
set ruler
"----*about programming*----
set showmatch
"set smartindent
set autoindent

"============================
"Personal Preferrencies
"============================

" Remove trailing spaces
au BufWritePre * :%s/[ \t]\+$//ge

"highlight OverLength ctermbg=white ctermfg=red guibg=#592929
"if exists('+colorcolumn')
"  set colorcolumn=100
"else
"  match OverLength /\%>100v.\+/
"endif
highlight OverLength ctermbg=blue ctermfg=white guibg=#592929
au WinEnter *.h   match OverLength /\%81v./
au WinEnter *.c   match OverLength /\%81v./
au WinEnter *.cpp match OverLength /\%81v./
au WinEnter *.php match OverLength /\%81v./
au WinEnter *.go  match OverLength /\%81v./
au BufWinEnter *.h   match OverLength /\%81v./
au BufWinEnter *.c   match OverLength /\%81v./
au BufWinEnter *.cpp match OverLength /\%81v./
au BufWinEnter *.php match OverLength /\%81v./
au BufWinEnter *.go  match OverLength /\%81v./

highlight ExtraSpaceOrTab ctermbg=red ctermfg=white guibg=#592929
au WinEnter * match ExtraSpaceOrTab /[ \t]\+$/
au BufWinEnter * match ExtraSpaceOrTab /[ \t]\+$/

map zs <ESC>^i//<ESC>
map zc <ESC>^xx

map <C-l> <C-w>l
map <C-k> <C-w>k
map <C-j> <C-w>j
map <C-h> <C-w>h
map <C-n> :tabe<CR>
map <C-c> :tabc<CR>
map <C-d> :tabo<CR>
map { :tabN<CR>
map } :tabn<CR>

imap {<Tab> {}<Left><CR><ESC>O
imap [<Tab> []<Left>
imap (<Tab> ()<Left>
imap <<Tab> <><Left>
imap "<Tab> ""<Left>
imap '<Tab> ''<Left>
imap ;<Tab> <ESC>$a;<ESC>
