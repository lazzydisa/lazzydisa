" General
set number
colorscheme habamax
syntax on
set mouse=a
    " :bprev & :bnext
        " <--
imap <F7> <Esc> :bprev <CR>
map <F7> :bprev <CR>
        " -->
imap <F8> <Esc> :bnext <CR>
map <F8> :bnext <CR>
    " :tabnew on F4
imap <F4> <Esc> :browse tabnew <CR>
map <F4> <Esc> :browse tabnew <CR>
    " :tabprev & :tabnext
        " <--
imap <F5> <Esc> :tabprev <CR>i 
map <F5> :tabprev <CR>
        " -->
imap <F6> <Esc> :tabnext <CR>i 
map <F6> :tabnext <CR>

" Tabulation
set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Plugins (With vim-plug)
call plug#begin()
    
    " Nim
    Plug 'zah/nim.vim'
    
    " Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

call plug#end()

" Others
    " For Nim
        fun! JumpToDef()
            if exists("*GotoDefinition_" . &filetype)
                call GotoDefinition_{&filetype}()
            else
                exe "norm! \<C-]>"
            endif
        endf

        " Jump to tag
        nn <M-g> :call JumpToDef()<cr>
        ino <M-g> <esc>:call JumpToDef()<cr>i

    " For Airline
        let g:airline#extensions#tabline#enabled = 1
        let g:airline#extensions#tabline#left_sep = ' '
        let g:airline#extensions#tabline#left_alt_sep = '|'
        let g:airline#extensions#tabline#formatter = 'unique_tail'
        let g:airline_theme='base16'         
