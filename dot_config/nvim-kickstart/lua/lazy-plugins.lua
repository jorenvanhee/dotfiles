-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins you can run
--    :Lazy update
--
-- NOTE: Here is where you install your plugins.
require('lazy').setup({
  'tpope/vim-sleuth',
  'tpope/vim-abolish',

  -- Priority forces loading certain plugins first. Default priority is 50.
  -- It's recommended to set this to a high number for colorschemes.
  {
    'catppuccin/nvim', name = 'catppuccin', priority = 1000,
    init = function ()
      vim.cmd.colorscheme 'catppuccin-macchiato'
    end,
  },

  {
    'justinmk/vim-sneak',
    init = function ()
      vim.g['sneak#label'] = true
    end,
  },

  { 'numToStr/Comment.nvim', opts = {} },

  { 'aserowy/tmux.nvim', opts = {} },

  require 'plugins/nvim-tree',

  require 'plugins/nvim-surround',

  require 'plugins/autopairs',

  require 'plugins/telescope',

  require 'plugins/lspconfig',

  require 'plugins/cmp',

  require 'plugins/treesitter',

  require 'plugins/gitsigns',

  -- todo: treesitter, ... (see packer.lua)

  -- require 'kickstart/plugins/conform',
})
