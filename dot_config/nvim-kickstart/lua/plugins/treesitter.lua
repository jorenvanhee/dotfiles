return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  opts = {
    ensure_installed = {
      "html",
      "javascript",
      "typescript",
      "tsx",
      "php",
      "bash",
      "lua",
      "luadoc",
      "vim",
      "vimdoc",
    },
    highlight = {
      enable = true,
    },
    indent = {
      enable = true,
    },
  },
  config = function(_, opts)
    require('nvim-treesitter.configs').setup(opts)
  end,
}
