require("nvim-tree").setup({
    open_on_setup = false,
    git = {
        enable = false,
    },
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
