return {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  keys = {
    { '<Leader>t', '<cmd>NvimTreeToggle<cr>', desc = 'Toggle tree' },
    { '<Leader>gt', '<cmd>NvimTreeFindFile<cr>', desc = 'Open tree with current file visible' },
  },
  opts = {
    git = {
      enable = true,
      ignore = true,
    },
    filters = { custom = { "^.git$" } },
    renderer = {
      icons = {
        show = {
          file = true,
          folder = true,
          folder_arrow = true,
          git = true,
        },
      },
    },
  },
}
