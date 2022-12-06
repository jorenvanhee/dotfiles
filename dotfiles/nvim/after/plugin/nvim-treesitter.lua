require("nvim-treesitter.configs").setup({
    ensure_installed = { "javascript", "php", "vue" },
    highlight = {
        enable = true,
    },
})
