require("nvim-tree").setup({
    open_on_setup = false,
    git = {
        enable = false,
    },
    renderer = {
        icons = {
            show = {
                file = false,
                folder = false,
                folder_arrow = false,
                git = false,
            },
        },
    },
})
