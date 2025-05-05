return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  main = 'nvim-treesitter.configs',
  opts = {
    ensure_installed = {
      "html",
      "javascript",
      "typescript",
      "tsx",
      "php",
      "bash",
      "blade",
      "lua",
      "luadoc",
      "vim",
      "vimdoc",
      "vue",
    },
    highlight = {
      enable = true,
    },
    indent = {
      enable = true,
    },
  },
}
