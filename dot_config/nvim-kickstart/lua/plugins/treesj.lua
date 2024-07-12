return {
  'Wansmer/treesj',
  dependencies = { 'nvim-treesitter/nvim-treesitter' }, -- if you install parsers with `nvim-treesitter`
  config = function ()
    local treesj = require('treesj')

    treesj.setup()

    vim.keymap.set('n', 'gJ', treesj.join, { desc = 'Join lines' })
    vim.keymap.set('n', 'gS', treesj.split, { desc = 'Split into multiple lines' })
  end,
}
