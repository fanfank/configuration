"============================
"Normal preferrence settings
"============================
set nocompatible
syntax enable
syntax on
colorscheme evening
set nu!
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

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
set smartindent
set autoindent!

"============================
"ctags
"============================
filetype plugin indent on
set completeopt=longest,menu
map <F6> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :Tlist Update<CR>:set tags=tags<CR>

"============================
"Taglist
"============================
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

"============================
"Minibuffer
"============================
let g:miniBufExplMapCTabSwitchBufs=1

"============================
"QuickFix
"============================
map <F3> :cp<CR>
map <F4> :cn<CR>

"============================
"Compile and Run
"============================
map <F2> :cclose<CR>
map <F5> :w<CR>:make %<<CR>:copen<CR><C-W>5_
map <F9> :!./%<<CR>

"============================
"Personal Preferrencies
"============================
map zs <ESC>^i//<ESC>
map zc <ESC>^xx
imap {<Tab> {}<Left><CR><ESC>O
imap [<Tab> []<Left>
imap (<Tab> ()<Left>
imap <<Tab> <><Left>
imap "<Tab> ""<Left>
imap '<Tab> ''<Left>
imap ;<Tab> <ESC>$a;<ESC>
