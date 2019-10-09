set number
set relativenumber

" Do this manually to install vim-plug
" ===
" curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
"     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'romainl/flattened'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'justinmk/vim-sneak'
Plug 'Raimondi/delimitMate' " Trying this instead of https://github.com/jiangmiao/auto-pairs
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/emmet-vim'
Plug 'lumiliet/vim-twig'

call plug#end()

let g:coc_global_extensions = [
    \ 'coc-tsserver',
    \ 'coc-json',
    \ 'coc-html',
    \ 'coc-css',
    \ 'coc-tailwindcss',
\ ]

colorscheme flattened_light

" The default leader is \, but a comma is easier
let mapleader = ','

" Map escape key
:inoremap jf <esc>

" Remove search highlight
nmap <Leader><space> :nohlsearch<cr>

" Center the screen when going to the next/previous search result
nmap n nzz
nmap N Nzz

" Toggle NERDTree
nmap <D-@> :NERDTreeToggle<cr>

" Navigate tabs
nmap <Leader>& 1gt
nmap <Leader>é 2gt
nmap <Leader>" 3gt
nmap <Leader>' 4gt
nmap <Leader>( 5gt

" fzf
" https://github.com/junegunn/fzf.vim/issues/129
nmap <D-t> :GFiles --exclude-standard --cached --others<cr>
nmap <D-S-t> :Files<cr>
nmap <D-r> :BTags<cr>

" Better pane navigation
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

" Save file and go back to normal mode
:nmap <D-s> :w<cr>
:inoremap <D-s> <esc>:w<cr>
:vmap <D-s> <esc>:w<cr>

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>

" Automatically source the Vimrc file on save
augroup autosourcing
        autocmd!
        autocmd BufWritePost $MYVIMRC source %
augroup END

augroup autosourcing
    autocmd!
    autocmd FileType javascript nmap <buffer> <silent> <C-]> <Plug>(coc-definition)
augroup END

" Highlight current line
set cursorline

" NERDTree settings
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.swp$', '\~$', '\.git$', '.DS_Store$', 'tags$', '\.idea$']

" Sneak settings
let g:sneak#label = 1

" Case insensitive pattern matching
set ignorecase

" Switch to case sensitive if you use any capital letters
set smartcase

" fzf settings
let g:fzf_layout = { 'up': '~40%' }

" When splitting window, open window below
set splitbelow

" When splitting window, open window right
set splitright

" Turn tabs into spaces
set expandtab

" Number of spaces a tab counts for
set tabstop=4

" Number of spaces added/removed with tab/backspace
set softtabstop=4

" Number of spaces added with reindent operations (<< & >>)
set shiftwidth=4

" Emmet expand
imap <D-e> <C-Y>,

" Always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Some servers have issues with backup files, see #649 (coc.nvim)
set nobackup
set nowritebackup
