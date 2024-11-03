return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function ()
    local harpoon = require('harpoon')

    harpoon.setup()

    vim.keymap.set('n', '<leader>a', function() harpoon:list():add() end, { desc = '' })
    vim.keymap.set('n', '<space>h', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = '' })
    vim.keymap.set('n', '<M-j>', function() harpoon:list():select(1) end, { desc = '' })
    vim.keymap.set('n', '<M-k>', function() harpoon:list():select(2) end, { desc = '' })
    vim.keymap.set('n', '<M-l>', function() harpoon:list():select(3) end, { desc = '' })
    vim.keymap.set('n', '<M-;>', function() harpoon:list():select(4) end, { desc = '' })
    vim.keymap.set('n', "<M-'>", function() harpoon:list():select(5) end, { desc = '' })
  end,
}
