require("nvim-treesitter.configs").setup({
    ensure_installed = { "javascript", "php", "vue", "ruby", "lua", "vim" },
    highlight = {
        enable = true,
    },
})
