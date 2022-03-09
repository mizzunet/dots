set number
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a
filetype plugin indent on
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
set incsearch ignorecase smartcase hlsearch
set wildmode=longest,list,full wildmenu
set ruler laststatus=2 showcmd showmode
set wrap breakindent
set encoding=utf-8
set textwidth=0
set hidden
set number
set title

call plug#begin()
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }


call plug#end()


autocmd BufReadPost * if @% !~# '\.git[\/\\]COMMIT_EDITMSG$' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
syntax on

map ` :set invnumber<CR>

