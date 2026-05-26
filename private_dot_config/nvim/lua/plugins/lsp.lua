vim.pack.add({ "https://github.com/neovim/nvim-lspconfig" })

-- Pick a config from here and make sure the lsp server is installed.
--
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md
vim.lsp.enable({
  "phpantom_lsp",
  "tsgo",
})
