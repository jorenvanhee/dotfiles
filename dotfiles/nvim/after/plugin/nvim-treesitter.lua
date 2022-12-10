require("nvim-treesitter.configs").setup({
    ensure_installed = { "javascript", "php", "vue", "ruby", "lua", "vim", "typescript", "tsx" },
    highlight = {
        enable = true,
    },
    indent = {
        enable = true,
    },
})
