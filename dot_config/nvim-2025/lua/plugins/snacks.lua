return {
  'folke/snacks.nvim',
  opts = {
    picker = {},
    explorer = {},
  },
  keys = {
    { '<leader>t', function() Snacks.explorer() end, desc = 'File explorer' },
    { '<space>f', function() Snacks.picker.smart() end, desc = 'Smart file picker' },
    { '<space>p', function() Snacks.picker.pickers() end, desc = 'All pickers' },
    { '<space>g', function() Snacks.picker.git_status() end, desc = 'Git status picker' },
    { '<space>/', function() Snacks.picker.grep() end, desc = 'Search picker' },
    { '<space>\'', function() Snacks.picker.resume() end, desc = 'Open last picker' },
    { 'gr', function() Snacks.picker.lsp_references() end, desc = 'References' },
    { '<leader>bd', function() Snacks.bufdelete() end, desc = 'Buffer delete' },
    { '<leader>ba', function()
      Snacks.bufdelete.all()
      vim.cmd('silent! only')
      vim.cmd('silent! tabonly')
    end, desc = 'Buffer delete all' },
    { '<leader>bA', function()
      Snacks.bufdelete.all({ force = true })
      vim.cmd('silent! only')
      vim.cmd('silent! tabonly')
    end, desc = 'Buffer force delete all' },
    { '<leader>bo', function()
      Snacks.bufdelete.other()
      vim.cmd('silent! only')
      vim.cmd('silent! tabonly')
    end, desc = 'Buffer delete other' },
    { '<leader>bO', function()
      Snacks.bufdelete.other({ force = true })
      vim.cmd('silent! only')
      vim.cmd('silent! tabonly')
    end, desc = 'Buffer force delete other' },
  },
  lazy = false,
}
