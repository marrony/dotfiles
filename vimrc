set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'derekwyatt/vim-scala'
Plugin 'leafgarland/typescript-vim'

Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'

"status line
Plugin 'bling/vim-airline'
"Plugin 'powerline/powerline'
"Plugin 'itchyny/lightline.vim'

Plugin 'elmcast/elm-vim'

call vundle#end()

syntax on
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set smarttab
set smartindent
set number
set mouse=a
set incsearch
set paste
set hlsearch
set autoread
set laststatus=2

autocmd Filetype python setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype elm    setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2

"vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>
"vmap <M-C> y:call system("pbcopy", getreg("\""))<CR>
"vmap <S-c> y:call system("pbcopy", getreg("\""))<CR>

"nmap <C-v> :call setreg("\"",system("pbpaste"))<CR>p

map <F2> :NERDTreeToggle<CR>
vmap <C-c> "+y
vmap <S-c> "+y
imap <C-c> "+y<CR>

"au BufNewFile,BufRead *.gradle set filetype=groovy
"au BufNewFile,BufRead *.scala set filetype=scala

set background=dark
colorscheme solarized

