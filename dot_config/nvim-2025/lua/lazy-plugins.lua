-- todo:
-- [x] <c-x> to split horizontally in pickers
-- [ ] lsp pickers
-- [x] autopairs
-- [x] nvim-surround
-- [x] gitsigns
-- [ ] conform (linting ?)
-- [ ] dap
-- [x] comment.nvim
-- [ ] organize pickers
-- [x] signature (blink)
-- [x] something to close all buffers (see snacks tools)
-- [ ] lazygit
-- [ ] tmux sessionizer
require('lazy').setup({
  'tpope/vim-sleuth',
  'tpope/vim-abolish',
  require 'plugins/tmux',
  require 'plugins/colorscheme',
  require 'plugins/oil',
  require 'plugins/treesitter',
  require 'plugins/treesj',
  require 'plugins/snacks',
  require 'plugins/lsp',
  require 'plugins/blink',
  require 'plugins/flash',
  require 'plugins/harpoon',
  require 'plugins/comment',
  require 'plugins/autopairs',
  require 'plugins/surround',
  require 'plugins/gitsigns',
  require 'plugins/conform',
})
