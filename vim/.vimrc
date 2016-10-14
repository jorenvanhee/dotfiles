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

call plug#end()





"------------Spaces and tabs-----------"
"set expandtab       "Turn tabs into spaces
"set tabstop=4       "Number of spaces a tab counts for
"set softtabstop=4   "Number of spaces added/removed with tab/backspace
"set shiftwidth=4    "Number of spaces added with reindent operations (<< & >>)





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
set macligatures

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

"Map escape key
:inoremap jf <esc>

"Make NERDTree easier to toggle
nmap <D-&> :NERDTreeToggle<cr>




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





"------------NERDTree settings-----------"

"Need this to make the vinegar plugin work
let NERDTreeHijackNetrw = 0
