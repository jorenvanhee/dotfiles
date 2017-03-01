"Things to look at:
"http://dougblack.io/words/a-good-vimrc.html
"http://stackoverflow.com/questions/16082991/vim-switching-between-files-rapidly-using-vanilla-vim-no-plugins
"https://github.com/Valloric/YouCompleteMe

"Turn on syntax highlighting
syntax on

"Allow switching to another buffer with changes in the current one
set hidden

"Visual autocomplete for command menu
set wildmenu

"Make backpace behave like in every other editor
set backspace=indent,eol,start

"Set the shell to bash, because I'm using fish shell and that was causing
"some issues with the CtrlP plugin (CtrlPBufTag command).
set shell=/bin/bash





"------------Plugins-----------"
call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-vinegar'
Plug 'mattn/emmet-vim'
Plug 'jwalton512/vim-blade'
Plug 'terryma/vim-multiple-cursors'
Plug 'lumiliet/vim-twig'
Plug 'tpope/vim-commentary'
Plug 'sirver/UltiSnips'
Plug 'honza/vim-snippets'
Plug 'ludovicchabant/vim-gutentags'
Plug 'arnaud-lb/vim-php-namespace'
Plug 'joonty/vdebug'
Plug 'majutsushi/tagbar'

call plug#end()





"------------Spaces and tabs-----------"

"Turn tabs into spaces
set expandtab

"Number of spaces a tab counts for
set tabstop=4

"Number of spaces added/removed with tab/backspace
set softtabstop=4

"Number of spaces added with reindent operations (<< & >>)
set shiftwidth=4

"Causes wrapped lines to be indented to line up with the start of the line
if v:version >= 704
    set breakindent
endif





"------------Search-----------"

"Highlight all results
set hlsearch

"Start searching while typing
set incsearch

"Case insensitive pattern matching
set ignorecase

"Switch to case sensitive if you use any capital letters
set smartcase





"------------Windows-----------"

"When splitting window, open window below
set splitbelow

"When splitting window, open window right
set splitright

"Better window navigation
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>





"------------Visuals-----------"

"Number combined with relativenumber works in Vim 7.4+
"Set line numbers, if relativenumber, 0 becomes line number
set number

"Set relative line numbers
set relativenumber

"Highlight current line
set cursorline

"Remove gui tabs
set guioptions-=e

"set t_Co=256
set guifont=Fira_Code:h14

"Use ligatures
if has("gui_macvim")
    set macligatures
endif

"Macvim-specific line-height
set linespace=10

"This is for iTerm and terminal
let g:solarized_termcolors=256

"Set colorscheme
colorscheme solarized

"Light or dark
set background=light

"Disable Gui scrollbars.
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R





"------------Mappings-----------"

"The default leader is \, but a comma is easier.
let mapleader = ','

"Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>

"Center the screen when going to the next/previous search result.
nmap n nzz
nmap N Nzz

"Map escape key
:inoremap jf <esc>

"Make NERDTree easier to toggle
nmap <D-&> :NERDTreeToggle<cr>

"CtrlPBufTag mapping
nmap <D-r> :CtrlPBufTag<cr>

"If file is saved in insert mode, go back into normal mode
:inoremap <D-s> <esc>:w<cr>
"Since <D-s> is disabled in .gvimrc, make it work again here.
:nmap <D-s> :w<cr>
"If saved in visual mode, go to normal mode, save, and reselect the last
"selected visual area.
:vmap <D-s> <esc>:w<cr>gv

"vim-php-namespace insert use
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>nu <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>nu :call PhpInsertUse()<CR>

"vim-php-namespace expand class
function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>ne <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>ne :call PhpExpandClass()<CR>

"tagbar
nmap <D-)> :TagbarToggle<cr>





"------------Auto-Commands-----------"

"Automatically source the Vimrc file on save
augroup autosourcing
        autocmd!
        autocmd BufWritePost .vimrc source %
augroup END





"------------CtrlP settings-----------"

"I had to 'brew install ctags' to make this work (CtrlPBufTag command).

"Change the default mapping
let g:ctrlp_map = '<D-t>'

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_match_window = 'top,order:ttb'





"------------NERDTree settings-----------"

"Need this to make the vinegar plugin work
let NERDTreeHijackNetrw = 0





"------------Emmet settings-----------"

"Emmet leader key
let g:user_emmet_leader_key='<C-Y>'

"Emmet expand
imap <D-e> <C-Y>,





"------------Vim Multiple Cursors Settings-----------"

"If set to 0, then pressing g:multi_cursor_quit_key in Insert mode will not quit and delete all existing cursors.
let g:multi_cursor_exit_from_insert_mode=0





"------------Vim Commentary settings-----------"

"Twig
autocmd FileType html.twig setlocal commentstring={#\ %s\ #}





"------------UltiSnips settings-----------"
let g:UltiSnipsExpandTrigger="<c-z>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
