return {
  'stevearc/conform.nvim',
  keys = {
    {
      '<leader>f',
      function()
        require('conform').format({ async = true, lsp_format = true })
      end,
      mode = 'n',
      desc = 'Format buffer',
    }
  },
  opts = {
    formatters_by_ft = {
      typescript = { "biome-check", stop_after_first = true },
    },
  },
}
