" General Settings

syntax on

set hidden                          "hide files rather than close them
set noerrorbells
set background=dark
set number relativenumber 
set title
set fileencoding=utf-8
set termguicolors

set smartindent

set expandtab                       "tab to spaces
set tabstop=4 softtabstop=4         "width of a tab
set shiftwidth=4                    "width for indent
set smartindent

set ignorecase      "ignore the case when search texts
set smartcase       "if searching text contains uppercase, case will not be ignored
set incsearch       "incremental search
set cursorline
set nowrap

set noswapfile
set nobackup
set nowritebackup
set undodir=~/.vim/undodir
set undofile

set cmdheight=2                     "give more space for messages

"80 character ruler
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=#592929

set scrolloff=10                    " at least X lines above and below

set modifiable                      " modify files in sidebar

set splitright
set splitbelow
