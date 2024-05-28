return {
  'nvim-telescope/telescope.nvim',
  event = 'VimEnter',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope-ui-select.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  },
  config = function()
    require('telescope').setup({
      extensions = {
        ['ui-select'] = {
          require('telescope.themes').get_dropdown(),
        },
      },
    })

    require('telescope').load_extension('fzf')
    require('telescope').load_extension('ui-select')

    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<space>f', builtin.find_files, { desc = 'Open file picker' })
    vim.keymap.set('n', '<space>/', builtin.live_grep, { desc = 'Global search in workspace folder' })
    vim.keymap.set('n', '<space>\'', builtin.resume, { desc = 'Open last picker' })
    vim.keymap.set('n', '<space>?', builtin.commands, { desc = 'Open command palette' })
  end,
}
