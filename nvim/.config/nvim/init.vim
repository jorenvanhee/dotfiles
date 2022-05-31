call plug#begin('~/.local/share/nvim/plugged')

Plug 'romainl/flattened', { 'branch': 'master' }
Plug 'nvim-lua/plenary.nvim', { 'branch': 'master' } " Required by telescope, gitsigns
Plug 'nvim-telescope/telescope.nvim', { 'branch': 'master' }
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'branch': 'main', 'do': 'make' }
Plug 'ms-jpq/chadtree', { 'branch': 'chad', 'do': 'python3 -m chadtree deps' }
Plug 'justinmk/vim-sneak', { 'branch': 'master' }
Plug 'tpope/vim-commentary', { 'branch': 'master' }
Plug 'tpope/vim-surround', { 'branch': 'master' }
Plug 'tpope/vim-repeat', { 'branch': 'master' }
Plug 'tpope/vim-abolish', { 'branch': 'master' }
Plug 'Raimondi/delimitMate', { 'branch': 'master' }
Plug 'mattn/emmet-vim', { 'branch': 'master' }
Plug 'neovim/nvim-lspconfig', { 'branch': 'master' }
Plug 'hrsh7th/nvim-cmp', { 'branch': 'main' }
Plug 'hrsh7th/cmp-buffer', { 'branch': 'main' }
Plug 'hrsh7th/cmp-path', { 'branch': 'main' }
Plug 'hrsh7th/cmp-nvim-lsp', { 'branch': 'main' }
Plug 'onsails/lspkind-nvim', { 'branch': 'master' }
Plug 'L3MON4D3/LuaSnip', { 'branch': 'master' }
Plug 'lepture/vim-jinja', { 'branch': 'master' }
Plug 'tpope/vim-rails', { 'branch': 'master' }
Plug 'ludovicchabant/vim-gutentags', { 'branch': 'master' }
Plug 'lewis6991/gitsigns.nvim', { 'branch': 'main' }
Plug 'kyazdani42/nvim-web-devicons', { 'branch': 'master' } " Required by lualine
Plug 'nvim-lualine/lualine.nvim', { 'branch': 'master' }
Plug 'editorconfig/editorconfig-vim', { 'branch': 'master' }
Plug 'lumiliet/vim-twig', { 'branch': 'master' }
Plug 'maxmellon/vim-jsx-pretty', { 'branch': 'master' }

call plug#end()

" The default leader is \ but a comma is easier
let mapleader = ','

" Map escape key
:inoremap jf <esc>

" Enable mouse support ->
set mouse=a

" Make colorschemes work in terminal
set termguicolors

" Always show signcolumns
set signcolumn=yes

" When splitting window, open window below
set splitbelow

" When splitting window, open window right
set splitright

" Turn tabs into spaces
set expandtab

" Number of spaces added with reindent operations (<< & >>)
set shiftwidth=2

" Colorscheme
colorscheme flattened_light

" Set relative line numbers
set number
set relativenumber

" Highlight current line
set cursorline

" Case insensitive pattern matching
set ignorecase

" Switch to case sensitive if search pattern contains upper case characters
set smartcase

" Edit init.vim
nnoremap <Leader>ev :tabedit $MYVIMRC<cr>

" Source init.vim
nnoremap <Leader>sv :source $MYVIMRC<cr>

" Move to beginning of line. Caret (^) doesn't do the job on azerty keyboards.
nnoremap <space> ^<esc>
vnoremap <space> ^

" Remove search highlight
nnoremap <Leader><Space> :nohlsearch<CR>

" Center the screen when going to the next/previous search result
nmap n nzz
nmap N Nzz

" Faster tab navigation, leader key followed by the characters under the
" numbers on an azerty keyboard.
nnoremap <Leader>& 1gt
nnoremap <Leader>é 2gt
nnoremap <Leader>" 3gt
nnoremap <Leader>' 4gt
nnoremap <Leader>( 5gt
nnoremap <Leader>§ 6gt
nnoremap <Leader>è 7gt
nnoremap <Leader>! 8gt
nnoremap <Leader>ç 9gt

" Faster pane navigation
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

" Save file
nnoremap <F1> :w<CR>
inoremap <F1> <Esc>:w<CR>
vnoremap <F1> <Esc>:w<CR>

" Copy selection to clipboard
vnoremap <F2> "+y

" Toggle CHADTree
nnoremap <F3> :CHADopen<CR>

" Telescope
nnoremap <F4> :Telescope find_files<CR>
nnoremap <F8> :Telescope live_grep<CR>

" Emmet
imap <F5> <C-Y>,

" Tags
nnoremap <F6> :Telescope current_buffer_tags<CR>
nnoremap <F7> :Telescope tags<CR>

" http://aperiodic.net/phil/archives/Geekery/term-function-keys.html
" nnoremap <F1> :echo 'f1'<CR> "Send ^[ [11~
" nnoremap <F2> :echo 'f2'<CR> "Send ^[ [12~
" nnoremap <F3> :echo 'f3'<CR> "Send ^[ [13~
" nnoremap <F4> :echo 'f4'<CR> "Send ^[ [14~
" nnoremap <F5> :echo 'f5'<CR> "Send ^[ [15~
" nnoremap <F6> :echo 'f6'<CR> "Send ^[ [17~
" nnoremap <F7> :echo 'f7'<CR> "Send ^[ [18~
" nnoremap <F8> :echo 'f8'<CR> "Send ^[ [19~
" nnoremap <F9> :echo 'f9'<CR> "Send ^[ [20~

" Sneak label-mode for a minimalist alternative to EasyMotion
let g:sneak#label = 1

" CHADTree settings
let g:chadtree_settings =
\ {
\   'keymap': {
\     'v_split': ['<C-v>'],
\     'h_split': ['<C-x>'],
\     'tertiary': ['<C-t>'],
\   },
\   'options': {
\     'follow': v:false,
\   },
\ }

" Telescope
lua << EOF
require('telescope').load_extension('fzf')
EOF

" LSP config
nnoremap gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap K <cmd>lua vim.lsp.buf.hover()<CR>

" Language servers
lua << EOF
require'lspconfig'.tailwindcss.setup{
  filetypes = { "html.twig", "javascriptreact" },
  init_options = {
    userLanguages = {
      ['html.twig'] = 'html'
    }
  }
}
require'lspconfig'.intelephense.setup{}
require'lspconfig'.tsserver.setup{}
EOF

" nvim-cmp
set completeopt=menu,menuone,noselect

lua << EOF
local cmp = require('cmp')
local lspkind = require('lspkind')

cmp.setup({
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = 'path' },
  }),

  mapping = {
    ['<C-y>'] = cmp.mapping.confirm({
      select = true,
    }),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end,
    ['<S-Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end,
  },

  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end
  },

  formatting = {
    format = lspkind.cmp_format({
      mode = 'symbol_text',
      menu = {
        buffer = '[buf]',
        nvim_lsp = '[LSP]',
        path = '[PATH]',
      },
    })
  },

  experimental = {
    ghost_text = true,
  },
})
EOF

" gutentags
let g:gutentags_ctags_extra_args = [
\ '--languages=PHP,ruby',
\ '--php-kinds=-v',
\ ]

" gitsigns
lua << EOF
  require('gitsigns').setup({
    on_attach = function(bufnr)
      local function map(mode, lhs, rhs, opts)
          opts = vim.tbl_extend('force', {noremap = true, silent = true}, opts or {})
          vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, opts)
      end

      -- Navigation
      map('n', ']c', "&diff ? ']c' : '<cmd>Gitsigns next_hunk<CR>'", {expr=true})
      map('n', '[c', "&diff ? '[c' : '<cmd>Gitsigns prev_hunk<CR>'", {expr=true})

      -- Actions
      map('n', '<leader>hs', ':Gitsigns stage_hunk<CR>')
      map('v', '<leader>hs', ':Gitsigns stage_hunk<CR>')
      map('n', '<leader>hr', ':Gitsigns reset_hunk<CR>')
      map('v', '<leader>hr', ':Gitsigns reset_hunk<CR>')
      map('n', '<leader>hS', '<cmd>Gitsigns stage_buffer<CR>')
      map('n', '<leader>hu', '<cmd>Gitsigns undo_stage_hunk<CR>')
      map('n', '<leader>hR', '<cmd>Gitsigns reset_buffer<CR>')
      map('n', '<leader>hp', '<cmd>Gitsigns preview_hunk<CR>')
      map('n', '<leader>hb', '<cmd>lua require"gitsigns".blame_line{full=true}<CR>')
      map('n', '<leader>tb', '<cmd>Gitsigns toggle_current_line_blame<CR>')
      map('n', '<leader>hd', '<cmd>Gitsigns diffthis<CR>')
      map('n', '<leader>hD', '<cmd>lua require"gitsigns".diffthis("~")<CR>')
      map('n', '<leader>td', '<cmd>Gitsigns toggle_deleted<CR>')

      -- Text object
      map('o', 'ih', ':<C-U>Gitsigns select_hunk<CR>')
      map('x', 'ih', ':<C-U>Gitsigns select_hunk<CR>')
    end
  })
EOF

" lualine
lua << EOF
  require('lualine').setup({
    options = {
      theme = 'solarized_light',
    },
    extensions = { 'chadtree' },
  })
EOF
