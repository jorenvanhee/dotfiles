-- todo:
-- [ ] <c-x> to split horizontally in pickers
-- [ ] lsp pickers
-- [ ] autopairs
-- [ ] nvim-surround
-- [ ] gitsigns
-- [ ] conform (linting ?)
-- [ ] dap
-- [ ] comment.nvim
-- [ ] organize pickers
-- [x] signature (blink)
-- [x] something to close all buffers (see snacks tools)
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
})
