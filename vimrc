execute pathogen#infect()
set nocompatible
syntax on
set number
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set smartindent
set mouse=a
set incsearch
set paste
set hlsearch
set autoread
filetype plugin on

"vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>
"vmap <M-C> y:call system("pbcopy", getreg("\""))<CR>
"vmap <S-c> y:call system("pbcopy", getreg("\""))<CR>

"nmap <C-v> :call setreg("\"",system("pbpaste"))<CR>p

map <F2> :NERDTreeToggle<CR>
vmap <C-c> "+y
vmap <S-c> "+y
"imap <C-c> "+y<CR>

set statusline=
set statusline+=%7*\[%n]                                  "buffernr
set statusline+=%1*\ %<%F\                                "File+path
set statusline+=%2*\ %y\                                  "FileType
set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      "Encoding
set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2
set statusline+=%4*\ %{&ff}\                              "FileFormat (dos/unix..) 
set statusline+=%5*\ %{&spelllang}\%{HighlightSearch()}\  "Spellanguage & Highlight on?
set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\             "Rownumber/total (%)
set statusline+=%9*\ col:%03c\                            "Colnr
set statusline+=%0*\ \ %m%r%w\ %P\ \                      "Modified? Readonly? Top/bot.

function! HighlightSearch()
    if &hls
        return 'H'
    else
        return ''
    endif
endfunction

set laststatus=2

hi User1 ctermfg=3  ctermbg=4
hi User2 ctermfg=101  ctermbg=91
hi User3 ctermfg=102  ctermbg=92
hi User4 ctermfg=103  ctermbg=93
hi User5 ctermfg=104  ctermbg=94
hi User7 ctermfg=3  ctermbg=4 gui=bold
hi User8 ctermfg=106  ctermbg=96
hi User9 ctermfg=107  ctermbg=97
hi User0 ctermfg=3  ctermbg=4

"hi statusline ctermfg=white ctermbg=3
"hi statusline ctermfg=white ctermbg=4

au BufNewFile,BufRead *.gradle set filetype=groovy

