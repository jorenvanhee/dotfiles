return {
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      -- Install LSPs.
      { 'williamboman/mason.nvim', opts = {} },
      'williamboman/mason-lspconfig.nvim',

      -- Show LSP status messages.
      { 'j-hui/fidget.nvim', opts = {} },

      -- Allows extra capabilities provided by blink.cmp.
      'saghen/blink.cmp',
    },
    config = function ()
      vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('kickstart-lsp-attach', { clear = true }),
        callback = function (event)
        end
      })

      local capabilities = require('blink.cmp').get_lsp_capabilities()

      local servers = {
      }

      require('mason-lspconfig').setup({
        handlers = {
          function (server_name)
            local server = servers[server_name] or {}

            server.capabilities = vim.tbl_deep_extend('force', {}, capabilities, server.capabilities or {})

            vim.lsp.enable(server_name)
            vim.lsp.config(server_name, server)
          end,
        },
      })
    end
  }
}
