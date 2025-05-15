return {
  'Wansmer/treesj',
  -- If you install parsers with `nvim-treesitter`.
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  config = function ()
    local treesj = require('treesj')

    treesj.setup({
      use_default_keymaps = false,
    })

    vim.keymap.set('n', 'gJ', treesj.join, { desc = 'Join lines' })
    vim.keymap.set('n', 'gS', treesj.split, { desc = 'Split into multiple lines' })
  end,
}
