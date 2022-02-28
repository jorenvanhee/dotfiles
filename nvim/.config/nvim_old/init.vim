" Table of contents 📖
"
" 1_Plugins 📦
" 2_Coc_extensions 🐓
" 3_General_settings ⚙️
" 4_Keyboard_mappings 🎹
" 5_Automatic_commands 🕹
" 6_Plugin_settings 🔧
"   > 6a_Sneak 👞
"   > 6b_NERDTree 🎄
"   > 6c_Gutentags 🗂
"   > 6d_fzf 🔎



" 1_Plugins 📦
" ===

" Execute this manually to install vim-plug:
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
Plug 'Raimondi/delimitMate'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/emmet-vim'
Plug 'lumiliet/vim-twig'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-abolish'
Plug 'ludovicchabant/vim-gutentags'
Plug 'majutsushi/tagbar'
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'vim-ruby/vim-ruby'
Plug 'airblade/vim-gitgutter'
Plug 'rodrigore/coc-tailwind-intellisense', {'do': 'npm install'}
Plug 'lepture/vim-jinja'

call plug#end()



" 2_Coc_extensions 🐓
" ===

let g:coc_global_extensions = [
    \ 'coc-tsserver',
    \ 'coc-json',
    \ 'coc-html',
    \ 'coc-css',
    \ 'coc-phpls',
    \ 'coc-eslint',
\ ]



" 3_General_settings 🔧
" ===

set number
set relativenumber

colorscheme flattened_light

" Make colors work better in terminal
set termguicolors

" Highlight current line
set cursorline

" Case insensitive pattern matching
set ignorecase

" Switch to case sensitive if you use any capital letters
set smartcase

" Always show signcolumns
set signcolumn=yes

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

" Some servers have issues with backup files, see #649 (coc.nvim)
set nobackup
set nowritebackup



" 4_Keyboard_mappings 🎹
" ===

" The default leader is \ but a comma is easier
let mapleader = ','

" Map escape key
:inoremap jf <esc>

" Remove search highlight
nmap <Leader><space> :nohlsearch<cr>

" Remap caret since it does something weird on an azerty keyboard. For
" instance, try going into insert mode after going to the beginning of the
" line with ^.
nmap <space> ^<esc>
xmap <space> ^

" Center the screen when going to the next/previous search result
nmap n nzz
nmap N Nzz

" Toggle NERDTree
nmap <D-@> :NERDTreeToggle<cr>

" Save file and go back to normal mode
:nmap <D-s> :w<cr>
:inoremap <D-s> <esc>:w<cr>
:vmap <D-s> <esc>:w<cr>

" Navigate tabs
nmap <Leader>& 1gt
nmap <Leader>é 2gt
nmap <Leader>" 3gt
nmap <Leader>' 4gt
nmap <Leader>( 5gt

" Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>

" Better pane navigation
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

" Toggle Tagbar
nmap <D--> :TagbarToggle<cr>

" Emmet expand
imap <D-e> <C-Y>,

" fzf
" https://github.com/junegunn/fzf.vim/issues/129
nmap <D-t> :GFiles --exclude-standard --cached --others<cr>
nmap <D-S-t> :Files<cr>

nmap <D-r> :CocList outline<cr>
nmap <D-S-r> :Tags<cr>

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Use K to show documentation in preview window
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Rename symbol under cursor to a new word
nmap <leader>rn <Plug>(coc-rename)

" Remap for do codeAction of selected region
" ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Apply AutoFix to problem on the current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Get and run code action(s) for current line
nmap <leader>A <Plug>(coc-codeaction)



" 5_Automatic_commands 🕹
" ===

" Automatically source the Vimrc file on save
augroup autosourcing
        autocmd!
        autocmd BufWritePost $MYVIMRC source %
augroup END

" Go to definition via coc
augroup coc
    autocmd!
    autocmd FileType javascript,typescript,php nmap <buffer> <silent> <C-]> <Plug>(coc-definition)
augroup END



" 6_Plugin_settings 📦
" ===

" 6a_Sneak 👞
" ---

let g:sneak#label = 1


" 6b_NERDTree 🎄
" ---

let NERDTreeShowHidden = 1

let NERDTreeIgnore = [
    \ '\.swp$',
    \ '\~$',
    \ '\.git$',
    \ '.DS_Store$',
    \ 'tags$',
    \ '\.idea$',
    \ ]


" 6c_Gutentags 🗂
" ---

let g:gutentags_ctags_extra_args = [
    \ '--languages=PHP',
    \ '--php-kinds=-v',
    \ ]


" 6d_fzf 🔎
" ---

" Vim specific fzf options
let $FZF_DEFAULT_OPTS = '--color bg+:#eee8d5,fg+:#000000,hl+:#FF0000'

let g:fzf_layout = { 'up': '~40%' }

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   "rg --column --line-number --no-heading --color=always --smart-case --hidden --glob '!.git' ".shellescape(<q-args>), 1, <bang>0
  \ )
