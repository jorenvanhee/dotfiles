require("nvim-tree").setup({
    git = {
        enable = true,
        ignore = true,
    },
    filters = { custom = { "^.git$" } },
    renderer = {
        icons = {
            show = {
                file = true,
                folder = true,
                folder_arrow = true,
                git = true,
            },
        },
    },
})
