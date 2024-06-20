-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Go to normal mode.
vim.keymap.set('i', 'jf', '<esc>')

-- Diagnostics.
vim.keymap.set('n', '<leader>sd', vim.diagnostic.open_float, { desc = '[S]how [D]iagnostic error messages' })

-- Goto beginning and end of line, inspired by Helix editor.
vim.keymap.set({ 'n', 'x' }, 'gh', '^', { desc = 'Go to the start of the line' })
vim.keymap.set({ 'n', 'x' }, 'gl', '$', { desc = 'Go to the end of the line' })

-- Save file.
-- Kitty maps <cmd+s> to <f1>.
vim.keymap.set({ 'n', 'i', 'v' }, '<f1>', '<esc>:w<cr>')

-- Copy selection to clipboard.
-- Kitty maps <cmd+c> to <f3>.
vim.keymap.set('v', '<f3>', '"+y')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Tab navigation.
vim.keymap.set('n', '<leader>1', "1gt", { desc = "Tab 1" })
vim.keymap.set('n', '<leader>2', "2gt", { desc = "Tab 2" })
vim.keymap.set('n', '<Leader>3', '3gt', { desc = "Tab 3" })
vim.keymap.set('n', '<leader>4', "4gt", { desc = "Tab 4" })
vim.keymap.set('n', '<leader>5', "5gt", { desc = "Tab 5" })
vim.keymap.set('n', '<leader>6', "6gt", { desc = "Tab 6" })
vim.keymap.set('n', '<leader>7', "7gt", { desc = "Tab 7" })
vim.keymap.set('n', '<leader>8', "8gt", { desc = "Tab 8" })
vim.keymap.set('n', '<leader>9', "9gt", { desc = "Tab 9" })

-- Quickfix list navigation.
vim.keymap.set('n', '[q', ':cprevious<cr>zz', { desc = 'Previous quickfix list item' })
vim.keymap.set('n', ']q', ':cnext<cr>zz', { desc = 'Next quickfix list item' })
vim.keymap.set('n', '[Q', ':cfirst<cr>zz', { desc = 'First quickfix list item' })
vim.keymap.set('n', ']Q', ':clast<cr>zz', { desc = 'Last quickfix list item' })

-- Center the screen after navigating to the next and previous search results.
vim.keymap.set('n', 'n', 'nzz', { desc = 'Go to next search result and center' })
vim.keymap.set('n', 'N', 'Nzz', { desc = 'Go to previous search result and center' })

-- Close buffers
vim.keymap.set('n', '<leader>x', ':%bd<cr>', { desc = 'Close all buffers' })
vim.keymap.set('n', '<leader>X', ':%bd!<cr>', { desc = 'Force close all buffers' })

-- Remove search highlight.
vim.keymap.set('n', '<leader><space>', ':nohlsearch<cr>', { desc = 'Remove search highlight' })

-- Copy current file and line number to clipboard.
--
-- Sources:
-- https://www.nesono.com/blog/vim_copy_filename/
-- https://stackoverflow.com/questions/4525261/getting-relative-paths-in-vim
vim.keymap.set('n', '<Leader>yy', ":let @+=expand('%:~:.').':'.line('.')<cr>", { desc = "Copy current file path and line number to clipboard" })


-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
