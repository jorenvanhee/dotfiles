return {
  'stevearc/conform.nvim',
  lazy = false,
  keys = {
    {
      '<leader>f',
      function()
        require('conform').format { async = true, lsp_fallback = true }
      end,
      mode = '',
      desc = '[F]ormat buffer',
    },
  },
  opts = {
    formatters_by_ft = {
      -- Use a sub-list to run only the first available formatter
      typescript = { { "prettierd", "prettier" }, { "eslint_d", "eslint" } },
    },
  },
}
