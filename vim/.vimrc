"Things to look at:
"http://dougblack.io/words/a-good-vimrc.html
"http://stackoverflow.com/questions/16082991/vim-switching-between-files-rapidly-using-vanilla-vim-no-plugins
"https://github.com/Valloric/YouCompleteMe

syntax on               "Turn on syntax highlighting

set hidden      "Allow switching to another buffer with changes in the current one
set wildmenu    "Visual autocomplete for command menu





"------------Plugins-----------"
call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'

call plug#end()





"------------Spaces and tabs-----------"
set expandtab       "Turn tabs into spaces
set tabstop=4       "Number of spaces a tab counts for
set softtabstop=4   "Number of spaces added/removed with tab/backspace
set shiftwidth=4    "Number of spaces added with reindent operations (<< & >>)





"------------Search-----------"
set hlsearch    "Highlight all results
set incsearch   "Start searching while typing
set ignorecase  "Case insensitive pattern matching
set smartcase   "Switch to case sensitive if you use any capital letters





"------------Windows-----------"
set splitbelow  "When splitting window, open window below
set splitright  "When splitting window, open window right

"Better window navigation
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>





"------------Visuals-----------"
" number combined with relativenumber works in Vim 7.4+
set number              "Set line numbers, if relativenumber, 0 becomes line number
set relativenumber      "Set relative line numbers

set cursorline          "Highlight current line
set guioptions-=e       "Remove gui tabs

set t_Co=256
set guifont=Fira_Code:h14
set linespace=10 "Macvim-specific line-height

set background=light
let g:solarized_termcolors=256 "This is for iTerm and terminal
colorscheme solarized

"Disable Gui scrollbars.
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R





"------------Mappings-----------"
let mapleader = ','     "The default leader is \, but a comma is easier.

"Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>

"Map escape key
:inoremap jf <esc>





"------------Auto-Commands-----------"

"Automatically source the Vimrc file on save
augroup autosourcing
        autocmd!
        autocmd BufWritePost .vimrc source %
augroup END
