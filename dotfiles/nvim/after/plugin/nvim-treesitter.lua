require("nvim-treesitter.configs").setup({
    ensure_installed = { "javascript", "php", "vue", "ruby", "lua" },
    highlight = {
        enable = true,
    },
})
