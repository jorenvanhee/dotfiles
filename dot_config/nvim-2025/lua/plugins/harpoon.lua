return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require('harpoon')

    harpoon.setup({
      global_settings = {
        -- set marks specific to each git branch inside git repository
        mark_branch = true,
      },
    })

    vim.keymap.set('n', '<leader>ha', function() harpoon:list():add() end, { desc = 'Harpoon add file' })
    vim.keymap.set('n', '<leader>hs', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = 'Harpoon show list' })
    vim.keymap.set('n', '<M-j>', function() harpoon:list():select(1) end, { desc = '' })
    vim.keymap.set('n', '<M-k>', function() harpoon:list():select(2) end, { desc = '' })
    vim.keymap.set('n', '<M-l>', function() harpoon:list():select(3) end, { desc = '' })
    vim.keymap.set('n', '<M-;>', function() harpoon:list():select(4) end, { desc = '' })
    vim.keymap.set('n', "<M-'>", function() harpoon:list():select(5) end, { desc = '' })
  end,
}
